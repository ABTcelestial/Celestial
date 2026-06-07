unit UnitFSPlanificateur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, ExtCtrls, Buttons, ComCtrls;

type
  TFSPlanificateur = class(TForm)
    Bevel1: TBevel;
    EditCodeProjet: TEdit;
    EditProjet: TEdit;
    EditNumFicheTechnique: TEdit;
    EditFicheTechnique: TEdit;
    EditNumRubrique: TEdit;
    EditRubrique: TEdit;
    TableauPlanificateur: TStringGrid;
    AfficheOperationPlanificateur: TPanel;
    Label15: TLabel;
    EditCodeTiers: TEdit;
    EditTiers: TEdit;
    Label17: TLabel;
    EditQuantiteOperation: TEdit;
    Label16: TLabel;
    EditPrixOperation: TEdit;
    Label19: TLabel;
    EditStructureProjet: TEdit;
    EditCodeStructureProjet: TEdit;
    Bevel5: TBevel;
    TableauTiers: TStringGrid;
    EditChargementFichierConcerne: TEdit;
    EditChargementTypeProces: TEdit;
    EditTypeAvis: TEdit;
    EditTotal: TEdit;
    Label6: TLabel;
    Bevel6: TBevel;
    BitBtn1: TBitBtn;
    BitOperationPlanificateur: TBitBtn;
    Bevel7: TBevel;
    EditNumPlanificateur: TEdit;
    Label7: TLabel;
    EditTypeUniteOperation: TEdit;
    Label8: TLabel;
    EditDesignationPlanificateur: TEdit;
    EditDatePlanificateur: TDateTimePicker;
    Label9: TLabel;
    AffichageTiers: TPanel;
    BitTiersPlanificateur: TBitBtn;
    Bevel8: TBevel;
    EditRechercheTiers: TEdit;
    Label10: TLabel;
    Bevel9: TBevel;
    Bevel10: TBevel;
    Bevel11: TBevel;
    EditRechercheCodeTiers: TEdit;
    AfficheStructure: TPanel;
    TableauStructure: TStringGrid;
    Label23: TLabel;
    EditRonStructure: TComboBox;
    Bevel13: TBevel;
    TitreEtat: TRichEdit;
    AfficheMessage: TPanel;
    Bevel38: TBevel;
    BitNonAfficheMessage: TBitBtn;
    TimerAfficheMessage: TTimer;
    Bevel14: TBevel;
    BitOuiAfficheMessage: TBitBtn;
    AfficheTypeAvis: TPanel;
    EditTypeAvisChoisir: TComboBox;
    Label12: TLabel;
    AfficheRecapPlanificateur: TPanel;
    Bevel12: TBevel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label11: TLabel;
    EditCautionReservation: TEdit;
    UpDown1: TUpDown;
    Bevel3: TBevel;
    Label3: TLabel;
    EditQuantitePlanificateur: TEdit;
    Bevel2: TBevel;
    Label4: TLabel;
    EditMontantPlanificateur: TEdit;
    AfficheInfoPlanificateur: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    EditMontantRubriqueFicheTechnique: TEdit;
    EditQuantiteRubriqueFicheTechnique: TEdit;
    EditMontantUnitaireRubriqueFicheTechnique: TEdit;
    EditTypeUniteRubriqueFicheTechnique: TEdit;
    Bevel4: TBevel;
    EditMontant: TEdit;
    EditApport: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    Bevel15: TBevel;
    AffichePreselection: TLabel;
    TableauPreselectionParTiers: TStringGrid;
    Label18: TLabel;
    AfficheDocumentAssocierPlanificateur: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Bevel16: TBevel;
    Bevel17: TBevel;
    Bevel18: TBevel;
    RBAfficheValeurBien: TCheckBox;
    Bevel19: TBevel;
    EditNumPlanificateurSelect: TEdit;
    BitAfficheSource: TBitBtn;
    BitBtn7: TBitBtn;
    EditPositionFormulairePreselection: TEdit;
    RBChargerPointeur: TCheckBox;
    TimerLancerAfficheTiers: TTimer;
    TimerAfficheTiers: TTimer;
    Bevel20: TBevel;
    BitBtn8: TBitBtn;
    AfficheDecision: TPanel;
    BitPrint: TBitBtn;
    AfficheNatureEtat: TPanel;
    EditTitreReference: TEdit;
    Label20: TLabel;
    CadreDate: TBevel;
    Bevel22: TBevel;
    BitBtn10: TBitBtn;
    Bevel23: TBevel;
    Label21: TLabel;
    EditTitreDate: TDateTimePicker;
    TitreNRC: TLabel;
    EditNumRegistreCommerce: TEdit;
    EditListeIdentificateurEntreprise: TComboBox;
    RBImporteEditNumRegistreCommerce: TCheckBox;
    TitreNAgrement: TLabel;
    EditNumAgrement: TEdit;
    RBImporteEditNumAgrement: TCheckBox;
    EditTypeDataEntreprise: TComboBox;
    TitreNITNPI: TLabel;
    EditNITNPI: TEdit;
    RBImporteEditNITNPI: TCheckBox;
    NPermisConstruire: TLabel;
    EditPK: TEdit;
    RBImporteEditPK: TCheckBox;
    NConventionPretBanque: TLabel;
    EditConventionPret: TEdit;
    RBImporteEditConventionPret: TCheckBox;
    Bevel24: TBevel;
    Bevel25: TBevel;
    Label28: TLabel;
    EditNatureBien: TEdit;
    Label29: TLabel;
    EditReferenceBien: TEdit;
    Label30: TLabel;
    EditLocalisationPrecise: TEdit;
    EditSurfaceHabitable: TEdit;
    Label32: TLabel;
    Label33: TLabel;
    EditSurfaceUtile: TEdit;
    Label34: TLabel;
    EditAdresseProjet: TEdit;
    Label35: TLabel;
    EditMontantTTC: TEdit;
    Bevel27: TBevel;
    Label36: TLabel;
    EditDemandeur: TEdit;
    Label37: TLabel;
    EditTypeBien: TEdit;
    BitBtn11: TBitBtn;
    AfficheModifierDecision: TPanel;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    RBDecisionModifier: TCheckBox;
    EditMontantTTCLettre: TMemo;
    Label44: TLabel;
    Bevel21: TBevel;
    RBCopieADM: TCheckBox;
    BitBtn14: TBitBtn;
    AfficheVerssement: TPanel;
    Label22: TLabel;
    EditMontantVersement: TEdit;
    EditMontantVersementLettre: TMemo;
    EditFonctionSignataire: TComboBox;
    Label24: TLabel;
    EditSignataire: TEdit;
    Label83: TLabel;
    EditSelectTypeProces: TComboBox;
    EditTitreFichierConcerne: TLabel;
    EditFichierConcerne: TComboBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label38: TLabel;
    DataArticle1: TMemo;
    Label39: TLabel;
    DataArticle2: TMemo;
    Label40: TLabel;
    DataArticle3: TMemo;
    Label41: TLabel;
    DataArticle4: TMemo;
    Label42: TLabel;
    DataArticle5: TMemo;
    DataVu: TMemo;
    EditNumOrdrePaiement: TEdit;
    UpDown2: TUpDown;
    Label25: TLabel;
    AfficheModifierAttestationPaiement: TPanel;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    DataVersement: TMemo;
    BitBtn17: TBitBtn;
    EditMontantHT: TEdit;
    EditTVA: TEdit;
    Label26: TLabel;
    Label27: TLabel;
    Label31: TLabel;
    EditTypeUsage: TEdit;
    Label43: TLabel;
    BitBtn18: TBitBtn;
    AfficheMontantTTCADeduire: TPanel;
    EditMontantTTCADeduire: TEdit;
    Bevel26: TBevel;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    Bevel28: TBevel;
    Bevel29: TBevel;
    BitBtn21: TBitBtn;
    AfficheOptionsTexte: TPanel;
    Bevel30: TBevel;
    Panel1: TPanel;
    Label45: TLabel;
    EditFontSize: TEdit;
    UpDown5: TUpDown;
    Label46: TLabel;
    EditFrequenceFontSize: TEdit;
    Label47: TLabel;
    EditEcartTexte: TEdit;
    UpDown4: TUpDown;
    AfficheDocumentBanque: TPanel;
    EditDocumentBanque: TEdit;
    EditTitreDocumentBanque: TComboBox;
    RBAfficherNumLot: TCheckBox;
    AfficheNumLot: TPanel;
    EditNumLot: TEdit;
    IncrimenteNumLot: TUpDown;
    Label48: TLabel;
    RBInclureArticle1: TCheckBox;
    RBInclureArticle2: TCheckBox;
    RBInclureArticle3: TCheckBox;
    RBInclureArticle4: TCheckBox;
    RBInclureArticle5: TCheckBox;
    Panel2: TPanel;
    EditPartieDecimale: TEdit;
    Label49: TLabel;
    RadioGroup1: TRadioGroup;
    RBDossierCreditBancaire: TRadioButton;
    RBValoircequedeDroit: TRadioButton;
    BitBtn9: TBitBtn;
    Bevel31: TBevel;
    IncrimenteEditPartieDecimale: TUpDown;
    AfficheDomiciliation: TPanel;
    Bevel32: TBevel;
    BitBtn22: TBitBtn;
    PageControl2: TPageControl;
    PageAgence: TTabSheet;
    TableauDomiciliation: TStringGrid;
    PageTexteAutorisation: TTabSheet;
    EditTexteAutorisation: TRichEdit;
    RadioGroup2: TRadioGroup;
    RBDossierCreditBancaireBis: TRadioButton;
    RBValoircequedeDroitBis: TRadioButton;
    AttestationVersementModifier: TCheckBox;
    BitBtn23: TBitBtn;
    BitBtn24: TBitBtn;
    AutorisationVersementModifier: TCheckBox;
    procedure TableauPlanificateurKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditTiersEnter(Sender: TObject);
    procedure TableauPlanificateurClick(Sender: TObject);
    procedure EditTiersKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditTiersKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditQuantiteOperationEnter(Sender: TObject);
    procedure EditPrixOperationEnter(Sender: TObject);
    procedure EditQuantiteOperationExit(Sender: TObject);
    procedure EditPrixOperationExit(Sender: TObject);
    procedure EditQuantiteOperationKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditPrixOperationKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauTiersKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitOperationPlanificateurClick(Sender: TObject);
    procedure EditDesignationPlanificateurKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure TableauPlanificateurKeyPress(Sender: TObject; var Key: Char);
    procedure EditStructureProjetKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitTiersPlanificateurClick(Sender: TObject);
    procedure EditRechercheTiersEnter(Sender: TObject);
    procedure EditRechercheTiersKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditRechercheTiersKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure EditRonStructureSelect(Sender: TObject);
    procedure TableauStructureKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
    procedure EditStructureProjetEnter(Sender: TObject);
    procedure TimerAfficheMessageTimer(Sender: TObject);
    procedure BitNonAfficheMessageClick(Sender: TObject);
    procedure BitOuiAfficheMessageClick(Sender: TObject);
    procedure AfficheStructureEnter(Sender: TObject);
    procedure AfficheStructureExit(Sender: TObject);
    procedure EditTypeAvisChoisirSelect(Sender: TObject);
    procedure EditRechercheTiersDblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure EditCautionReservationKeyPress(Sender: TObject;
      var Key: Char);
    procedure EditApportEnter(Sender: TObject);
    procedure EditApportExit(Sender: TObject);
    procedure EditApportKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure EditCautionReservationKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditPartieDecimaleKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitAfficheSourceClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AfficheOperationPlanificateurEnter(Sender: TObject);
    procedure TimerLancerAfficheTiersTimer(Sender: TObject);
    procedure TimerAfficheTiersTimer(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitPrintClick(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure EditListeIdentificateurEntrepriseChange(Sender: TObject);
    procedure RBImporteEditNumRegistreCommerceClick(Sender: TObject);
    procedure RBImporteEditNumAgrementClick(Sender: TObject);
    procedure RBImporteEditNITNPIClick(Sender: TObject);
    procedure RBImporteEditPKClick(Sender: TObject);
    procedure RBImporteEditConventionPretClick(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure EditTypeDataEntrepriseChange(Sender: TObject);
    procedure EditMontantTTCExit(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure EditMontantVersementExit(Sender: TObject);
    procedure EditFonctionSignataireChange(Sender: TObject);
    procedure EditSelectTypeProcesChange(Sender: TObject);
    procedure EditFichierConcerneChange(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure EditLocalisationPreciseChange(Sender: TObject);
    procedure EditMontantHTKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditTVAKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditTVAExit(Sender: TObject);
    procedure EditSurfaceHabitableKeyPress(Sender: TObject; var Key: Char);
    procedure EditSurfaceUtileKeyPress(Sender: TObject; var Key: Char);
    procedure EditMontantHTKeyPress(Sender: TObject; var Key: Char);
    procedure EditTVAKeyPress(Sender: TObject; var Key: Char);
    procedure EditMontantTTCKeyPress(Sender: TObject; var Key: Char);
    procedure EditMontantVersementKeyPress(Sender: TObject; var Key: Char);
    procedure EditMontantTTCADeduireKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn18Click(Sender: TObject);
    procedure EditMontantTTCADeduireKeyPress(Sender: TObject;
      var Key: Char);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure AfficheOptionsTexteClick(Sender: TObject);
    procedure AfficheOptionsTexteExit(Sender: TObject);
    procedure EditMontantVersementKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditMontantVersementKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UpDown5Click(Sender: TObject; Button: TUDBtnType);
    procedure EditFontSizeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauPlanificateurDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauTiersDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure RBAfficherNumLotClick(Sender: TObject);
    procedure RBValoircequedeDroitClick(Sender: TObject);
    procedure RBDossierCreditBancaireClick(Sender: TObject);
    procedure EditTitreDateChange(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure TableauDomiciliationDblClick(Sender: TObject);
    procedure TableauDomiciliationKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RBDossierCreditBancaireBisClick(Sender: TObject);
    procedure RBValoircequedeDroitBisClick(Sender: TObject);
    procedure BitBtn24Click(Sender: TObject);
    procedure BitBtn23Click(Sender: TObject);
    procedure TableauDomiciliationClick(Sender: TObject);
    procedure EditTexteAutorisationKeyPress(Sender: TObject;
      var Key: Char);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSPlanificateur: TFSPlanificateur;

Procedure AffichePlanificateur(TableauPlanificateur:TStringGrid; NumRubrique,CodeTiers,TypeProces,FichierConserne,NumPlanificateurSelect:string; var Quantite,Montant:real);
Procedure ListePlanificateurTiers(TableauPlanificateur:TStringGrid; NumRubrique,CodeTiers,NumPlanificateurSelect:string; var Quantite,Montant:real);
Procedure ImprimeAutorisationVersementPlanificateur;
Procedure ChargerArticles;

implementation

Uses UnitInitialisation, UnitFSGenerateurBase, UnitFSAvis, UnitFSTraitementDonnees,
     UnitPrintConvention, UnitPrintConvention1, UnitPrintConvention2,
     UnitFSMenuPrincipal, UnitFSFicheTechniqueProjet, UnitSuppression, UnitFSTiers,
     UnitPrintDemandePlanification, UnitFSFormulairePreselection,
     UnitPrintDECISION, UnitFSParametresAvances,
     UnitPrintAttestationVersement, UnitPrintFactureDinamique,
     UnitPrintFactureBienImmobilier, UnitPrintRemiseCles,
     UnitPrintReservesRemiseCles, UnitPrintDeclarationSurHonneur,
  UnitPrintDECISIONBis, UnitPrintAutorisationVerssement;

Var

RParc:RInstalle;
FParc:FInstalle;
ParcInstalle:string100;

TTypeAvis:TTypeAviss;
RTypeAvis:RTypeAviss;
FTypeAvis:FTypeAviss;
ChTypeAvis:string250;

TFicheTechnique,TFicheTechniqueCopie:TFicheTechniques;
RFicheTechnique,RFicheTechniqueCopie:RFicheTechniques;
FFicheTechnique,FFicheTechniqueCopie:FFicheTechniques;
ChFicheTechnique,ChFicheTechniqueCopie:string250;

TRubriqueFicheTechnique,TRubriqueFicheTechniqueCopie:TRubriqueFicheTechniques;
RRubriqueFicheTechnique,RRubriqueFicheTechniqueCopie:RRubriqueFicheTechniques;
FRubriqueFicheTechnique,FRubriqueFicheTechniqueCopie:FRubriqueFicheTechniques;
ChRubriqueFicheTechnique,ChRubriqueFicheTechniqueCopie:string250;

TDetailRubriqueFicheTechnique,TDetailRubriqueFicheTechniqueCopie:TDetailRubriqueFicheTechniques;
RDetailRubriqueFicheTechnique,RDetailRubriqueFicheTechniqueCopie:RDetailRubriqueFicheTechniques;
FDetailRubriqueFicheTechnique,FDetailRubriqueFicheTechniqueCopie:FDetailRubriqueFicheTechniques;
ChDetailRubriqueFicheTechnique,ChDetailRubriqueFicheTechniqueCopie:string250;

TPlanificateur,TPlanificateurCopie:TPlanificateurs;
RPlanificateur,RPlanificateurCopie:RPlanificateurs;
FPlanificateur,FPlanificateurCopie:FPlanificateurs;
ChPlanificateur,ChPlanificateurCopie:string250;

TClient:TTierss;
RClient:RTierss;
FClient:FTierss;
ChClient:string250;

TProjetFinance:TProjetFinances;
RProjetFinance:RProjetFinances;
FProjetFinance:FProjetFinances;
ChProjetFinance:string250;

{$R *.dfm}

Procedure ListePlanificateurTiers(TableauPlanificateur:TStringGrid; NumRubrique,CodeTiers,NumPlanificateurSelect:string; var Quantite,Montant:real);
var   i,RowSelect:integer;
begin
     TableauPlanificateur.Visible:=true;
     TableauPlanificateur.ColCount:=12;
     TableauPlanificateur.RowCount:=2;
     TableauPlanificateur.Rows[1].Text:='';
     TableauPlanificateur.Cols[0].Text:='N°';
     TableauPlanificateur.Cols[1].Text:='Date';
     TableauPlanificateur.Cols[2].Text:='N° Rubrique';
     TableauPlanificateur.Cols[3].Text:='N° Planificateur';
     TableauPlanificateur.Cols[4].Text:='Planification';
     TableauPlanificateur.Cols[5].Text:='CodeTiers';
     TableauPlanificateur.Cols[6].Text:='Tiers';
     TableauPlanificateur.Cols[7].Text:='Quantité';
     TableauPlanificateur.Cols[8].Text:='Prix.U.';
     TableauPlanificateur.Cols[9].Text:='Montant';
     TableauPlanificateur.Cols[10].Text:='CodeStructure';
     TableauPlanificateur.Cols[11].Text:='Structure';

     OpenFParc(RParc);
     ChPlanificateur:=RParc.Parcours+'\'+Exercice+'FPlanificateur';
     assignfile(FPlanificateur,ChPlanificateur);
     if FileExists(ChPlanificateur)then
     Reset(FPlanificateur)
     else Rewrite(FPlanificateur);
     Seek(FPlanificateur,0);
     RowSelect:=1;
     i:=0;
     Quantite:=0;
     Montant:=0;
     while not eof(FPlanificateur)do
     begin
          read(FPlanificateur,RPlanificateur);
          if(RPlanificateur.CodeTiers=CodeTiers)then
          begin
               i:=i+1;
               RubriqueArborescence('',NumRubrique,RRubriqueFicheTechnique,RFicheTechnique,RTypeAvis);
               TableauPlanificateur.Rows[i].Text:=inttostr(i);
               TableauPlanificateur.Cells[1,i]:=RPlanificateur.DatePlanificateur;
               TableauPlanificateur.Cells[2,i]:=inttostr(RPlanificateur.NumRubrique);
               TableauPlanificateur.Cells[3,i]:=inttostr(RPlanificateur.NumPlanificateur);
               TableauPlanificateur.Cells[4,i]:=RPlanificateur.DesignationPlanificateur;
               TableauPlanificateur.Cells[5,i]:=RPlanificateur.CodeTiers;
               TableauPlanificateur.Cells[6,i]:=ImporteDataProcesTiers(RTypeAvis.TypeProces,RTypeAvis.FichierConserne,RPlanificateur.CodeTiers,PositionTiersRecherche);
               TableauPlanificateur.Cells[7,i]:=Vergule(Floattostr(RPlanificateur.Quantite),'2','C','');
               TableauPlanificateur.Cells[8,i]:=Vergule(Floattostr(RPlanificateur.PrixUnitaire),'2','C','');
               TableauPlanificateur.Cells[9,i]:=Vergule(Floattostr(RPlanificateur.Quantite*RPlanificateur.PrixUnitaire),'2','C','');
               TableauPlanificateur.Cells[10,i]:=RPlanificateur.CodeStructureProjet;
               TableauPlanificateur.Cells[11,i]:=RPlanificateur.DesignationStructureProjet;
               Quantite:=Quantite+RPlanificateur.Quantite;
               Montant:=Montant+(RPlanificateur.Quantite*RPlanificateur.PrixUnitaire);

               if(NumPlanificateurSelect<>'')then if(RPlanificateur.NumPlanificateur=strtointeger(NumPlanificateurSelect))then RowSelect:=i;
          end;
     end;
     CloseFile(FPlanificateur);

     if(i>0)then
            begin
                 TableauPlanificateur.RowCount:=i+1;
            end
            else
            begin
                 TableauPlanificateur.RowCount:=2;
                 TableauPlanificateur.Rows[1].Text:='';
            end;

     TableauPlanificateur.ColWidths[2]:=0;
     TableauPlanificateur.ColWidths[3]:=0;
     TableauPlanificateur.ColWidths[5]:=0;
     TableauPlanificateur.ColWidths[6]:=0;
     AjusterColWidth(TableauPlanificateur,'','2;3;5;6');

     if(NumPlanificateurSelect<>'')then TableauPlanificateur.Row:=RowSelect;
end;

Procedure AffichePlanificateur(TableauPlanificateur:TStringGrid; NumRubrique,CodeTiers,TypeProces,FichierConserne,NumPlanificateurSelect:string; var Quantite,Montant:real);
var   i,RowSelect:integer; OKPlanification:boolean; 
begin
     TableauPlanificateur.ColCount:=12;
     TableauPlanificateur.RowCount:=2;
     TableauPlanificateur.Rows[1].Text:='';
     TableauPlanificateur.Cols[0].Text:='N°';
     TableauPlanificateur.Cols[1].Text:='Date';
     TableauPlanificateur.Cols[2].Text:='N° Rubrique';
     TableauPlanificateur.Cols[3].Text:='N° Planificateur';
     TableauPlanificateur.Cols[4].Text:='Planification';
     TableauPlanificateur.Cols[5].Text:='CodeTiers';
     TableauPlanificateur.Cols[6].Text:='Tiers';
     TableauPlanificateur.Cols[7].Text:='Quantité';
     TableauPlanificateur.Cols[8].Text:='Prix.U.';
     TableauPlanificateur.Cols[9].Text:='Montant';
     TableauPlanificateur.Cols[10].Text:='CodeStructure';
     TableauPlanificateur.Cols[11].Text:='Structure';

     OpenFParc(RParc);
     ChPlanificateur:=RParc.Parcours+'\'+Exercice+'FPlanificateur';
     assignfile(FPlanificateur,ChPlanificateur);
     if FileExists(ChPlanificateur)then
     Reset(FPlanificateur)
     else Rewrite(FPlanificateur);
     Seek(FPlanificateur,0);
     RowSelect:=1;
     i:=0;
     Quantite:=0;
     Montant:=0;
     while not eof(FPlanificateur)do
     begin
          read(FPlanificateur,RPlanificateur);

          if(NumRubrique<>'')then
          begin
               if(RPlanificateur.NumRubrique=strtointeger(NumRubrique))
               then OKPlanification:=true
               else OKPlanification:=false;
          end
          else OKPlanification:=true;

          if(OKPlanification=true)then
          begin
               if(CodeTiers<>'')then
               begin
                    if(RPlanificateur.CodeTiers=CodeTiers)
                    then OKPlanification:=true
                    else OKPlanification:=false;
               end;
          end;

          if(OKPlanification=true)then
          begin
               i:=i+1;
               if(NumRubrique<>'')then
               begin
                    RubriqueArborescence('',NumRubrique,RRubriqueFicheTechnique,RFicheTechnique,RTypeAvis);
                    TypeProces:=RTypeAvis.TypeProces;
                    FichierConserne:=RTypeAvis.FichierConserne;
               end;
               TableauPlanificateur.Rows[i].Text:=inttostr(i);
               TableauPlanificateur.Cells[1,i]:=RPlanificateur.DatePlanificateur;
               TableauPlanificateur.Cells[2,i]:=inttostr(RPlanificateur.NumRubrique);
               TableauPlanificateur.Cells[3,i]:=inttostr(RPlanificateur.NumPlanificateur);
               TableauPlanificateur.Cells[4,i]:=RPlanificateur.DesignationPlanificateur;
               TableauPlanificateur.Cells[5,i]:=RPlanificateur.CodeTiers;
               TableauPlanificateur.Cells[6,i]:=ImporteDataProcesTiers(TypeProces,FichierConserne,RPlanificateur.CodeTiers,PositionTiersRecherche);
               TableauPlanificateur.Cells[7,i]:=Vergule(Floattostr(RPlanificateur.Quantite),FSPlanificateur.EditPartieDecimale.Text,'C','');
               TableauPlanificateur.Cells[8,i]:=Vergule(Floattostr(RPlanificateur.PrixUnitaire),FSPlanificateur.EditPartieDecimale.Text,'C','');
               TableauPlanificateur.Cells[9,i]:=Vergule(Floattostr(RPlanificateur.Quantite*RPlanificateur.PrixUnitaire),FSPlanificateur.EditPartieDecimale.Text,'C','');
               TableauPlanificateur.Cells[10,i]:=RPlanificateur.CodeStructureProjet;
               TableauPlanificateur.Cells[11,i]:=RPlanificateur.DesignationStructureProjet;
               Quantite:=Quantite+RPlanificateur.Quantite;
               Montant:=Montant+(RPlanificateur.Quantite*RPlanificateur.PrixUnitaire);

               if(NumPlanificateurSelect<>'')then if(RPlanificateur.NumPlanificateur=strtointeger(NumPlanificateurSelect))then RowSelect:=i;
          end;
     end;
     CloseFile(FPlanificateur);

     if(i>0)then
            begin
                 TableauPlanificateur.RowCount:=i+3;
                 TableauPlanificateur.Rows[TableauPlanificateur.RowCount-1].Text:='';
                 TableauPlanificateur.Rows[TableauPlanificateur.RowCount-2].Text:='';
                 TableauPlanificateur.Cells[6,TableauPlanificateur.RowCount-1]:='Total: ';
                 TableauPlanificateur.Cells[7,TableauPlanificateur.RowCount-1]:=Vergule(floattostr(Quantite),'2','C','');
                 TableauPlanificateur.Cells[9,TableauPlanificateur.RowCount-1]:=Vergule(floattostr(Montant),'2','C','');
            end
            else
            begin
                 TableauPlanificateur.RowCount:=2;
                 TableauPlanificateur.Rows[1].Text:='';
            end;

     TableauPlanificateur.Col:=4;
     TableauPlanificateur.ColWidths[2]:=0;
     TableauPlanificateur.ColWidths[3]:=0;
     AjusterColWidth(TableauPlanificateur,'','2;3');

     if(NumPlanificateurSelect<>'')then TableauPlanificateur.Row:=RowSelect;
end;

procedure TFSPlanificateur.TableauPlanificateurKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if(FSPlanificateur.AffichageTiers.Width<>89)then
begin
     showmessage('Veuillez désactiver la recherche SVP !');
     FSPlanificateur.BitTiersPlanificateur.SetFocus;
     Exit;
end;

if key in[VK_RETURN]then
begin
      FSPlanificateur.AfficheOperationPlanificateur.Visible:=true;
      FSPlanificateur.BitOperationPlanificateur.Kind:=bkAll;
      FSPlanificateur.BitOperationPlanificateur.Caption:='Valider';
      FSPlanificateur.EditDatePlanificateur.Date:=date;
      FSPlanificateur.EditNumPlanificateur.Text:='';
      FSPlanificateur.EditDesignationPlanificateur.Text:='';
      FSPlanificateur.EditCodeTiers.Text:='';
      FSPlanificateur.EditTiers.Text:='';
      FSPlanificateur.EditQuantiteOperation.Text:='';
      FSPlanificateur.EditTypeUniteOperation.Text:=FSPlanificateur.EditTypeUniteRubriqueFicheTechnique.Text;
      FSPlanificateur.EditPrixOperation.Text:=FSPlanificateur.EditMontantUnitaireRubriqueFicheTechnique.Text;
      FSPlanificateur.EditCodeStructureProjet.Text:='';
      FSPlanificateur.EditStructureProjet.Text:='';

      FSPlanificateur.EditDesignationPlanificateur.SetFocus;
end;

if key in[VK_DELETE]then
begin
      FSPlanificateur.AfficheOperationPlanificateur.Visible:=true;
      FSPlanificateur.BitOperationPlanificateur.Kind:=bkCancel;
      FSPlanificateur.BitOperationPlanificateur.Caption:='Supprimer';
      FSPlanificateur.EditDatePlanificateur.Date:=strtodate(FSPlanificateur.TableauPlanificateur.Cells[1,FSPlanificateur.TableauPlanificateur.Row]);
      FSPlanificateur.EditNumPlanificateur.Text:=FSPlanificateur.TableauPlanificateur.Cells[3,FSPlanificateur.TableauPlanificateur.Row];
      FSPlanificateur.EditDesignationPlanificateur.Text:=FSPlanificateur.TableauPlanificateur.Cells[4,FSPlanificateur.TableauPlanificateur.Row];
      FSPlanificateur.EditCodeTiers.Text:=FSPlanificateur.TableauPlanificateur.Cells[5,FSPlanificateur.TableauPlanificateur.Row];
      FSPlanificateur.EditTiers.Text:=FSPlanificateur.TableauPlanificateur.Cells[6,FSPlanificateur.TableauPlanificateur.Row];
      FSPlanificateur.EditQuantiteOperation.Text:=FSPlanificateur.TableauPlanificateur.Cells[7,FSPlanificateur.TableauPlanificateur.Row];
      FSPlanificateur.EditTypeUniteOperation.Text:=FSPlanificateur.EditTypeUniteRubriqueFicheTechnique.Text;
      FSPlanificateur.EditPrixOperation.Text:=FSPlanificateur.TableauPlanificateur.Cells[8,FSPlanificateur.TableauPlanificateur.Row];
      FSPlanificateur.EditTotal.Text:=FSPlanificateur.TableauPlanificateur.Cells[9,FSPlanificateur.TableauPlanificateur.Row];
      FSPlanificateur.EditCodeStructureProjet.Text:=FSPlanificateur.TableauPlanificateur.Cells[10,FSPlanificateur.TableauPlanificateur.Row];
      FSPlanificateur.EditStructureProjet.Text:=FSPlanificateur.TableauPlanificateur.Cells[11,FSPlanificateur.TableauPlanificateur.Row];

      FSPlanificateur.BitOperationPlanificateur.SetFocus;
end;

end;

procedure TFSPlanificateur.EditTiersEnter(Sender: TObject);
begin
FSPlanificateur.TableauTiers.Left:=FSPlanificateur.AfficheOperationPlanificateur.Left+
                                   FSPlanificateur.EditTiers.Left;
FSPlanificateur.TableauTiers.Top:=FSPlanificateur.AfficheOperationPlanificateur.Top+
                                  FSPlanificateur.EditTiers.Top+FSPlanificateur.EditTiers.Height+1;

FSPlanificateur.TableauTiers.Visible:=true;
//ListeTiersPointeur(FSPlanificateur.TableauTiers,FSPlanificateur.EditChargementTypeProces.Text,FSPlanificateur.EditChargementFichierConcerne.Text,'','',FSPlanificateur.EditTiers.Text,true,FSPlanificateur.RBChargerPointeur.Checked);
FSPlanificateur.TimerLancerAfficheTiers.Enabled:=true;
//FSPlanificateur.RBChargerPointeur.Checked:=false;
end;

procedure TFSPlanificateur.TableauPlanificateurClick(Sender: TObject);
var  OKFormulaire:boolean;
begin
FSPlanificateur.AfficheDomiciliation.Visible:=false;
FSPlanificateur.AfficheDecision.Visible:=false;
FSPlanificateur.AfficheDocumentAssocierPlanificateur.Visible:=false;
FSPlanificateur.AfficheOperationPlanificateur.Left:=152;
FSPlanificateur.AfficheOperationPlanificateur.Top:=144;

FSPlanificateur.EditNumPlanificateurSelect.Text:=FSPlanificateur.TableauPlanificateur.Cells[3,FSPlanificateur.TableauPlanificateur.Row];

FSPlanificateur.EditMontant.Text:=Vergule(FSPlanificateur.TableauPlanificateur.Cells[9,FSPlanificateur.TableauPlanificateur.Row],'2','C','');
FSPlanificateur.EditApport.Text:='';
FSPlanificateur.AffichePreselection.Caption:='';

     OKFormulaire:=false;
     if(FSPlanificateur.TableauPlanificateur.Cells[5,FSPlanificateur.TableauPlanificateur.Row]<>'')then
     begin
          OpenFParc(RParc);
          ChFormulairePreselection:=RParc.Parcours+'\'+Exercice+'FFormulairePreselection';
          assignfile(FFormulairePreselection,ChFormulairePreselection);
          if FileExists(ChFormulairePreselection)then
          Reset(FFormulairePreselection)
          else Rewrite(FFormulairePreselection);
          Seek(FFormulairePreselection,0);
          while not eof(FFormulairePreselection)and(OKFormulaire=false)do
          begin
               read(FFormulairePreselection,RFormulairePreselection);
               if(RFormulairePreselection.CodeTier=FSPlanificateur.TableauPlanificateur.Cells[5,FSPlanificateur.TableauPlanificateur.Row])
               and(RFormulairePreselection.NumProjet=FSPlanificateur.TableauPlanificateur.Cells[10,FSPlanificateur.TableauPlanificateur.Row])
               then
               begin
                    OKFormulaire:=true;
                    FSPlanificateur.AffichePreselection.Caption:='Présélection N°: '+inttostr(RFormulairePreselection.NumFormulairePreselection);
                    FSPlanificateur.EditPositionFormulairePreselection.Text:=inttostr(RFormulairePreselection.NumFormulairePreselection);
                    if(RFormulairePreselection.MontantLogement=strtoreal(FSPlanificateur.EditMontant.Text))
                    then FSPlanificateur.EditMontant.Color:=clLime
                    else FSPlanificateur.EditMontant.Color:=clRed;

                    FSPlanificateur.EditApport.Text:=Vergule(floattostr(RFormulairePreselection.ApportInitial),'2','C','')
               end;
          end;
          CloseFile(FFormulairePreselection);
     end;

if(OKFormulaire=false)then
begin
     FSPlanificateur.AffichePreselection.Caption:='Aucune Présélection !';
     FSPlanificateur.EditMontant.Color:=clRed;
     FSPlanificateur.EditApport.Color:=clRed;
     if(strtoreal(FSPlanificateur.EditCautionReservation.Text)>0)
     then FSPlanificateur.EditApport.Text:=Vergule(floattostr((strtoreal(FSPlanificateur.EditMontant.Text)*strtoreal(FSPlanificateur.EditCautionReservation.Text))/100),'2','C','')
     else FSPlanificateur.EditApport.Text:='';
end
else
begin
     FSPlanificateur.EditApport.Color:=clLime;
end;

if(strtoreal(FSPlanificateur.EditMontant.Text)>0)
then FSPlanificateur.EditCautionReservation.Text:=floattostr((strtoreal(FSPlanificateur.EditApport.Text)/strtoreal(FSPlanificateur.EditMontant.Text))*100);

FSPlanificateur.AfficheOperationPlanificateur.Visible:=false;
FSPlanificateur.AfficheStructure.Visible:=false;
FSPlanificateur.TableauTiers.Visible:=false;

FSPlanificateur.TimerAfficheMessage.Enabled:=false;
FSPlanificateur.AfficheMessage.Visible:=false;
end;

procedure TFSPlanificateur.EditTiersKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     if(FSPlanificateur.TableauTiers.Visible=true)
     then FSPlanificateur.TableauTiers.SetFocus
     else FSPlanificateur.EditQuantiteOperation.SetFocus;
end;

end;

procedure TFSPlanificateur.EditTiersKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
FSPlanificateur.EditCodeTiers.text:='';
FSPlanificateur.TableauTiers.Visible:=true;
//ListeTiersPointeur(FSPlanificateur.TableauTiers,FSPlanificateur.EditChargementTypeProces.Text,FSPlanificateur.EditChargementFichierConcerne.Text,'','',FSPlanificateur.EditTiers.Text,true,FSPlanificateur.RBChargerPointeur.Checked);
FSPlanificateur.TimerLancerAfficheTiers.Enabled:=true;
//FSPlanificateur.RBChargerPointeur.Checked:=false;
end;

procedure TFSPlanificateur.EditQuantiteOperationEnter(Sender: TObject);
begin
FSPlanificateur.EditQuantiteOperation.Text:=WithoutPoint(FSPlanificateur.EditQuantiteOperation.Text);
end;

procedure TFSPlanificateur.EditPrixOperationEnter(Sender: TObject);
begin
FSPlanificateur.EditPrixOperation.Text:=WithoutPoint(FSPlanificateur.EditPrixOperation.Text);
end;

procedure TFSPlanificateur.EditQuantiteOperationExit(Sender: TObject);
begin
FSPlanificateur.EditTotal.Text:=Vergule(floattostr(strtoreal(FSPlanificateur.EditQuantiteOperation.Text)*strtoreal(FSPlanificateur.EditPrixOperation.Text)),'2','C','');
FSPlanificateur.EditQuantiteOperation.Text:=Vergule(FSPlanificateur.EditQuantiteOperation.Text,FSPlanificateur.EditPartieDecimale.Text,'C','');
end;

procedure TFSPlanificateur.EditPrixOperationExit(Sender: TObject);
begin
FSPlanificateur.EditTotal.Text:=Vergule(floattostr(strtoreal(FSPlanificateur.EditQuantiteOperation.Text)*strtoreal(FSPlanificateur.EditPrixOperation.Text)),'2','C','');
FSPlanificateur.EditPrixOperation.Text:=Vergule(FSPlanificateur.EditPrixOperation.Text,FSPlanificateur.EditPartieDecimale.Text,'C','');
end;

procedure TFSPlanificateur.EditQuantiteOperationKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSPlanificateur.EditPrixOperation.SetFocus;
end;

end;

procedure TFSPlanificateur.EditPrixOperationKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     if(FSPlanificateur.EditStructureProjet.Text='')
     then FSPlanificateur.EditStructureProjet.SetFocus
     else FSPlanificateur.BitOperationPlanificateur.SetFocus;
end;

end;

procedure TFSPlanificateur.TableauTiersKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var  Quantite,Montant:real;
begin

if key in[VK_RETURN]then
begin
     if(FSPlanificateur.AffichageTiers.Left=8)then
     begin
          FSPlanificateur.EditRechercheCodeTiers.Text:=FSPlanificateur.TableauTiers.Cells[1,FSPlanificateur.TableauTiers.Row];
          FSPlanificateur.EditRechercheTiers.Text:=FSPlanificateur.TableauTiers.Cells[2,FSPlanificateur.TableauTiers.Row];
          FSPlanificateur.TableauTiers.Visible:=false;
          ListePlanificateurTiers(FSPlanificateur.TableauPlanificateur,FSPlanificateur.EditNumRubrique.Text,FSPlanificateur.EditRechercheCodeTiers.Text,FSPlanificateur.EditNumPlanificateurSelect.Text,Quantite,Montant);
          FSPlanificateur.EditQuantitePlanificateur.Text:=Vergule(floattostr(Quantite),'2','C','');
          FSPlanificateur.EditMontantPlanificateur.Text:=Vergule(floattostr(Montant),'2','C','');
     end
     else
     begin
          FSPlanificateur.EditCodeTiers.Text:=FSPlanificateur.TableauTiers.Cells[1,FSPlanificateur.TableauTiers.Row];
          FSPlanificateur.EditTiers.Text:=FSPlanificateur.TableauTiers.Cells[2,FSPlanificateur.TableauTiers.Row];
          FSPlanificateur.EditQuantiteOperation.SetFocus;
          FSPlanificateur.TableauTiers.Visible:=false;
     end;
end;

end;

procedure TFSPlanificateur.BitBtn1Click(Sender: TObject);
begin
FSPlanificateur.AfficheOperationPlanificateur.Visible:=false;
FSPlanificateur.AfficheStructure.Visible:=false;
FSPlanificateur.TableauTiers.Visible:=false;
FSPlanificateur.AfficheMessage.Visible:=false;
end;

procedure TFSPlanificateur.BitOperationPlanificateurClick(Sender: TObject);
var   i,NumPlanificateur,RExistant,RSupprimer,RSauvgarder:integer;   OKPlanificateur:boolean; Quantite,Montant:real;
begin

if(FSPlanificateur.BitOperationPlanificateur.Caption='Valider')then
begin
     OpenFParc(RParc);
     ChPlanificateur:=RParc.Parcours+'\'+Exercice+'FPlanificateur';
     assignfile(FPlanificateur,ChPlanificateur);
     if FileExists(ChPlanificateur)then
     Reset(FPlanificateur)
     else Rewrite(FPlanificateur);
     Seek(FPlanificateur,0);
     i:=0;
     NumPlanificateur:=1;
     while not eof(FPlanificateur)do
     begin
          read(FPlanificateur,RPlanificateur);
          if(NumPlanificateur<=RPlanificateur.NumPlanificateur)then NumPlanificateur:=RPlanificateur.NumPlanificateur+1;
          i:=i+1;
     end;

     RPlanificateur.DatePlanificateur:=datetostr(FSPlanificateur.EditDatePlanificateur.Date);
     RPlanificateur.NumRubrique:=strtointeger(FSPlanificateur.EditNumRubrique.Text);
     RPlanificateur.NumPlanificateur:=NumPlanificateur;
     RPlanificateur.DesignationPlanificateur:=FSPlanificateur.EditDesignationPlanificateur.Text;
     RPlanificateur.CodeTiers:=FSPlanificateur.EditCodeTiers.Text;
     RPlanificateur.Quantite:=strtoreal(FSPlanificateur.EditQuantiteOperation.Text);
     RPlanificateur.TypeUnite:=FSPlanificateur.EditTypeUniteOperation.Text;
     RPlanificateur.PrixUnitaire:=strtoreal(FSPlanificateur.EditPrixOperation.Text);
     RPlanificateur.CodeStructureProjet:=FSPlanificateur.EditCodeStructureProjet.Text;
     RPlanificateur.DesignationStructureProjet:=FSPlanificateur.EditStructureProjet.Text;

     Seek(FPlanificateur,i);
     write(FPlanificateur,RPlanificateur);

     CloseFile(FPlanificateur);
end;

if(FSPlanificateur.BitOperationPlanificateur.Caption='Modifier')and(FSPlanificateur.EditNumPlanificateur.Text<>'')then
begin
     OpenFParc(RParc);
     ChPlanificateur:=RParc.Parcours+'\'+Exercice+'FPlanificateur';
     assignfile(FPlanificateur,ChPlanificateur);
     if FileExists(ChPlanificateur)then
     Reset(FPlanificateur)
     else Rewrite(FPlanificateur);
     Seek(FPlanificateur,0);
     i:=0;
     OKPlanificateur:=false;
     while not eof(FPlanificateur)and(OKPlanificateur=false)do
     begin
          read(FPlanificateur,RPlanificateur);
          if(RPlanificateur.NumPlanificateur=strtointeger(FSPlanificateur.EditNumPlanificateur.Text))then
          begin
               OKPlanificateur:=true;
               NumPlanificateur:=strtointeger(FSPlanificateur.EditNumPlanificateur.Text);
          end
          else i:=i+1;
     end;

     RPlanificateur.DatePlanificateur:=datetostr(FSPlanificateur.EditDatePlanificateur.Date);
     RPlanificateur.NumRubrique:=strtointeger(FSPlanificateur.EditNumRubrique.Text);
     RPlanificateur.NumPlanificateur:=NumPlanificateur;
     RPlanificateur.DesignationPlanificateur:=FSPlanificateur.EditDesignationPlanificateur.Text;
     RPlanificateur.CodeTiers:=FSPlanificateur.EditCodeTiers.Text;
     RPlanificateur.Quantite:=strtoreal(FSPlanificateur.EditQuantiteOperation.Text);
     RPlanificateur.TypeUnite:=FSPlanificateur.EditTypeUniteOperation.Text;
     RPlanificateur.PrixUnitaire:=strtoreal(FSPlanificateur.EditPrixOperation.Text);
     RPlanificateur.CodeStructureProjet:=FSPlanificateur.EditCodeStructureProjet.Text;
     RPlanificateur.DesignationStructureProjet:=FSPlanificateur.EditStructureProjet.Text;

     Seek(FPlanificateur,i);
     write(FPlanificateur,RPlanificateur);

     CloseFile(FPlanificateur);
end;

if(FSPlanificateur.BitOperationPlanificateur.Caption='Supprimer')and(FSPlanificateur.EditNumPlanificateur.Text<>'')then
begin
     if(SupprimerFPlanificateur('','','',FSPlanificateur.EditNumPlanificateur.Text,RExistant,RSupprimer,RSauvgarder))then
     if(RSupprimer>0)
     then AfficherMessage('Suppression réussie ! FTotal: '+inttostr(RExistant)+' FSupprimer: '+inttostr(RSupprimer)+' FSauvgarder: '+inttostr(RSauvgarder))
     else AfficherMessage('Aucun Registre Supprimer ! FTotal: '+inttostr(RExistant)+' FSupprimer: '+inttostr(RSupprimer)+' FSauvgarder: '+inttostr(RSauvgarder));
end;

AffichePlanificateur(FSPlanificateur.TableauPlanificateur,FSPlanificateur.EditNumRubrique.Text,'','','','',Quantite,Montant);
FSPlanificateur.EditQuantitePlanificateur.Text:=Vergule(floattostr(Quantite),'2','C','');
FSPlanificateur.EditMontantPlanificateur.Text:=Vergule(floattostr(Montant),'2','C','');
FSPlanificateur.AfficheOperationPlanificateur.Visible:=false;
FSPlanificateur.TableauTiers.Visible:=false;
end;

procedure TFSPlanificateur.EditDesignationPlanificateurKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSPlanificateur.EditTiers.SetFocus;
end;

end;

procedure TFSPlanificateur.TableauPlanificateurKeyPress(Sender: TObject;
  var Key: Char);
begin

if(FSPlanificateur.AffichageTiers.Width<>89)then
begin
     showmessage('Veuillez désactiver la recherche SVP !');
     FSPlanificateur.BitTiersPlanificateur.SetFocus;
     Exit;
end;

if key in['+','n','N']then
begin
      FSPlanificateur.AfficheOperationPlanificateur.Visible:=true;
      FSPlanificateur.BitOperationPlanificateur.Kind:=bkAll;
      FSPlanificateur.BitOperationPlanificateur.Caption:='Valider';
      FSPlanificateur.EditDatePlanificateur.Date:=date;
      FSPlanificateur.EditNumPlanificateur.Text:='';
      FSPlanificateur.EditDesignationPlanificateur.Text:='';
      FSPlanificateur.EditCodeTiers.Text:='';
      FSPlanificateur.EditTiers.Text:='';
      FSPlanificateur.EditQuantiteOperation.Text:='';
      FSPlanificateur.EditTypeUniteOperation.Text:=FSPlanificateur.EditTypeUniteRubriqueFicheTechnique.Text;
      FSPlanificateur.EditPrixOperation.Text:=FSPlanificateur.EditMontantUnitaireRubriqueFicheTechnique.Text;
      FSPlanificateur.EditCodeStructureProjet.Text:='';
      FSPlanificateur.EditStructureProjet.Text:='';

      FSPlanificateur.EditDesignationPlanificateur.SetFocus;
end;

if key in['m','M']then
begin
      FSPlanificateur.AfficheOperationPlanificateur.Visible:=true;
      FSPlanificateur.BitOperationPlanificateur.Kind:=bkAll;
      FSPlanificateur.BitOperationPlanificateur.Caption:='Modifier';
      FSPlanificateur.EditDatePlanificateur.Date:=strtodate(FSPlanificateur.TableauPlanificateur.Cells[1,FSPlanificateur.TableauPlanificateur.Row]);
      FSPlanificateur.EditNumPlanificateur.Text:=FSPlanificateur.TableauPlanificateur.Cells[3,FSPlanificateur.TableauPlanificateur.Row];
      FSPlanificateur.EditDesignationPlanificateur.Text:=FSPlanificateur.TableauPlanificateur.Cells[4,FSPlanificateur.TableauPlanificateur.Row];
      FSPlanificateur.EditCodeTiers.Text:=FSPlanificateur.TableauPlanificateur.Cells[5,FSPlanificateur.TableauPlanificateur.Row];
      FSPlanificateur.EditTiers.Text:=FSPlanificateur.TableauPlanificateur.Cells[6,FSPlanificateur.TableauPlanificateur.Row];
      FSPlanificateur.EditQuantiteOperation.Text:=FSPlanificateur.TableauPlanificateur.Cells[7,FSPlanificateur.TableauPlanificateur.Row];
      FSPlanificateur.EditTypeUniteOperation.Text:=FSPlanificateur.EditTypeUniteRubriqueFicheTechnique.Text;
      FSPlanificateur.EditPrixOperation.Text:=FSPlanificateur.TableauPlanificateur.Cells[8,FSPlanificateur.TableauPlanificateur.Row];
      FSPlanificateur.EditTotal.Text:=FSPlanificateur.TableauPlanificateur.Cells[9,FSPlanificateur.TableauPlanificateur.Row];
      FSPlanificateur.EditCodeStructureProjet.Text:=FSPlanificateur.TableauPlanificateur.Cells[10,FSPlanificateur.TableauPlanificateur.Row];
      FSPlanificateur.EditStructureProjet.Text:=FSPlanificateur.TableauPlanificateur.Cells[11,FSPlanificateur.TableauPlanificateur.Row];

      FSPlanificateur.EditDesignationPlanificateur.SetFocus;
end;

if key in['s','S']then
begin
      FSPlanificateur.AfficheOperationPlanificateur.Visible:=true;
      FSPlanificateur.BitOperationPlanificateur.Kind:=bkCancel;
      FSPlanificateur.BitOperationPlanificateur.Caption:='Supprimer';
      FSPlanificateur.EditDatePlanificateur.Date:=strtodate(FSPlanificateur.TableauPlanificateur.Cells[1,FSPlanificateur.TableauPlanificateur.Row]);
      FSPlanificateur.EditNumPlanificateur.Text:=FSPlanificateur.TableauPlanificateur.Cells[3,FSPlanificateur.TableauPlanificateur.Row];
      FSPlanificateur.EditDesignationPlanificateur.Text:=FSPlanificateur.TableauPlanificateur.Cells[4,FSPlanificateur.TableauPlanificateur.Row];
      FSPlanificateur.EditCodeTiers.Text:=FSPlanificateur.TableauPlanificateur.Cells[5,FSPlanificateur.TableauPlanificateur.Row];
      FSPlanificateur.EditTiers.Text:=FSPlanificateur.TableauPlanificateur.Cells[6,FSPlanificateur.TableauPlanificateur.Row];
      FSPlanificateur.EditQuantiteOperation.Text:=FSPlanificateur.TableauPlanificateur.Cells[7,FSPlanificateur.TableauPlanificateur.Row];
      FSPlanificateur.EditTypeUniteOperation.Text:=FSPlanificateur.EditTypeUniteRubriqueFicheTechnique.Text;
      FSPlanificateur.EditPrixOperation.Text:=FSPlanificateur.TableauPlanificateur.Cells[8,FSPlanificateur.TableauPlanificateur.Row];
      FSPlanificateur.EditTotal.Text:=FSPlanificateur.TableauPlanificateur.Cells[9,FSPlanificateur.TableauPlanificateur.Row];
      FSPlanificateur.EditCodeStructureProjet.Text:=FSPlanificateur.TableauPlanificateur.Cells[10,FSPlanificateur.TableauPlanificateur.Row];
      FSPlanificateur.EditStructureProjet.Text:=FSPlanificateur.TableauPlanificateur.Cells[11,FSPlanificateur.TableauPlanificateur.Row];

      FSPlanificateur.BitOperationPlanificateur.SetFocus;
end;

end;

procedure TFSPlanificateur.EditStructureProjetKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     
end;

end;

procedure TFSPlanificateur.BitTiersPlanificateurClick(Sender: TObject);
var  Quantite,Montant:real;
begin
FSPlanificateur.AfficheOperationPlanificateur.Visible:=false;
FSPlanificateur.TableauTiers.Visible:=false;
TableauPlanificateur.RowCount:=2;
TableauPlanificateur.Rows[1].Text:='';
FSPlanificateur.EditQuantitePlanificateur.Text:='';
FSPlanificateur.EditMontantPlanificateur.Text:='';

if(FSPlanificateur.BitTiersPlanificateur.Kind=bkAll)then
begin
     FSPlanificateur.BitTiersPlanificateur.Kind:=bkCancel;
     FSPlanificateur.BitTiersPlanificateur.Caption:='Tiers';
     FSPlanificateur.AffichageTiers.Left:=8;
     FSPlanificateur.AffichageTiers.Width:=481;
     ListePlanificateurTiers(FSPlanificateur.TableauPlanificateur,FSPlanificateur.EditNumRubrique.Text,FSPlanificateur.EditRechercheCodeTiers.Text,FSPlanificateur.EditNumPlanificateurSelect.Text,Quantite,Montant);
     FSPlanificateur.EditQuantitePlanificateur.Text:=Vergule(floattostr(Quantite),'2','C','');
     FSPlanificateur.EditMontantPlanificateur.Text:=Vergule(floattostr(Montant),'2','C','');
     FSPlanificateur.TableauPlanificateur.Col:=6;
     FSPlanificateur.RBChargerPointeur.Checked:=true;
end
else
begin
     FSPlanificateur.BitTiersPlanificateur.Kind:=bkAll;
     FSPlanificateur.BitTiersPlanificateur.Caption:='Tiers';
     FSPlanificateur.AffichageTiers.Width:=89;
     FSPlanificateur.AffichageTiers.Left:=400;
     AffichePlanificateur(FSPlanificateur.TableauPlanificateur,FSPlanificateur.EditNumRubrique.Text,'','','',FSPlanificateur.EditNumPlanificateurSelect.Text,Quantite,Montant);
     FSPlanificateur.EditQuantitePlanificateur.Text:=Vergule(floattostr(Quantite),'2','C','');
     FSPlanificateur.EditMontantPlanificateur.Text:=Vergule(floattostr(Montant),'2','C','');
     FSPlanificateur.TableauPlanificateur.Col:=6;
end;

end;

procedure TFSPlanificateur.EditRechercheTiersEnter(Sender: TObject);
var  PositionTypeAvis,NumTypeAvis,ChercheSigneDebitCredit:integer; CompteImputation,DebitCredit,TypeProces,FichierConserne,JourneauxAuxiliaireUtilise:string;
begin

if(IndiqueTypeAvis(FSPlanificateur.EditTypeAvis.Text,PositionTypeAvis,NumTypeAvis,ChercheSigneDebitCredit,CompteImputation,DebitCredit,TypeProces,FichierConserne,JourneauxAuxiliaireUtilise))then
begin
     FSPlanificateur.TableauTiers.Left:=144;
     FSPlanificateur.TableauTiers.Top:=45;
     FSPlanificateur.TableauTiers.Visible:=true;
     //ListeTiersPointeur(FSPlanificateur.TableauTiers,FSPlanificateur.EditChargementTypeProces.Text,FSPlanificateur.EditChargementFichierConcerne.Text,'','',FSPlanificateur.EditRechercheTiers.Text,true,FSPlanificateur.RBChargerPointeur.Checked);
     FSPlanificateur.TimerLancerAfficheTiers.Enabled:=true;
     //FSPlanificateur.RBChargerPointeur.Checked:=false;
end
else
begin
     FSPlanificateur.AfficheTypeAvis.Visible:=true;
     OpenFParc(RParc);
     ChTypeAvis:=RParc.Parcours+'\'+Exercice+'FTypeAvis';
     assignfile(FTypeAvis,ChTypeAvis);
     if FileExists(ChTypeAvis)then
     Reset(FTypeAvis)
     else Rewrite(FTypeAvis);
     Seek(FTypeAvis,0);
     FSPlanificateur.EditTypeAvisChoisir.Items.Text:='';
     while not eof(FTypeAvis)do
     begin
          read(FTypeAvis,RTypeAvis);
          FSPlanificateur.EditTypeAvisChoisir.Items.Add(RTypeAvis.DesignationTypeAvis);
     end;
     CloseFile(FTypeAvis);

     FSPlanificateur.EditTypeAvisChoisir.ItemIndex:=0;
     FSPlanificateur.EditTypeAvisChoisir.SetFocus;
end;

end;

procedure TFSPlanificateur.EditRechercheTiersKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     if(FSPlanificateur.TableauTiers.Visible=true)
     then FSPlanificateur.TableauTiers.SetFocus;
end;

end;

procedure TFSPlanificateur.EditRechercheTiersKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
FSPlanificateur.EditRechercheCodeTiers.Text:='';
FSPlanificateur.TableauTiers.Visible:=true;
//ListeTiersPointeur(FSPlanificateur.TableauTiers,FSPlanificateur.EditChargementTypeProces.Text,FSPlanificateur.EditChargementFichierConcerne.Text,'','',FSPlanificateur.EditRechercheTiers.Text,true,FSPlanificateur.RBChargerPointeur.Checked);
FSPlanificateur.TimerLancerAfficheTiers.Enabled:=true;
//FSPlanificateur.RBChargerPointeur.Checked:=false;
end;

procedure TFSPlanificateur.FormShow(Sender: TObject);
begin
ActiverNomForm(1,(Sender as TComponent).Name);
     FSPlanificateur.Caption:=RRegistre.Repertoire+' - Exercice '+RRegistre.Exercice+' - Planification des Finances';

FSPlanificateur.AfficheOperationPlanificateur.Visible:=false;
FSPlanificateur.TableauTiers.Visible:=false;
TableauPlanificateur.RowCount:=2;
TableauPlanificateur.Rows[1].Text:='';
FSPlanificateur.EditQuantitePlanificateur.Text:='';
FSPlanificateur.EditMontantPlanificateur.Text:='';
end;

procedure TFSPlanificateur.BitBtn2Click(Sender: TObject);
begin
     FSPlanificateur.AfficheDocumentAssocierPlanificateur.Visible:=true;
end;

procedure TFSPlanificateur.EditRonStructureSelect(Sender: TObject);
begin
ListeProjetFinance(FSPlanificateur.TableauStructure,'','',inttostr(10+(FSPlanificateur.EditRonStructure.ItemIndex*5)),true,'1','',false,false,'','');
end;

procedure TFSPlanificateur.TableauStructureKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var OKProjet:boolean;
begin

if key in[VK_RETURN]then
begin
     if(FSPlanificateur.TableauStructure.Cells[FSPlanificateur.TableauStructure.ColCount-1,FSPlanificateur.TableauStructure.Row]<>'Adéquate !')
     and(Firstlaters(FSPlanificateur.TableauStructure.Cells[FSPlanificateur.TableauStructure.ColCount-1,FSPlanificateur.TableauStructure.Row],12)<>'Présélection')
     then
     begin
          FSPlanificateur.AfficheMessage.Visible:=true;
          FSPlanificateur.AfficheMessage.Caption:='Structure '+FSPlanificateur.TableauStructure.Cells[FSPlanificateur.TableauStructure.ColCount-1,FSPlanificateur.TableauStructure.Row]+', voulez vous comme-même planifier !';
          FSPlanificateur.TimerAfficheMessage.Enabled:=true;
          FSPlanificateur.BitNonAfficheMessage.SetFocus;
     end
     else
     begin
          OpenFParc(RParc);
          ChProjetFinance:=RParc.Parcours+'\'+Exercice+'FProjetFinance';
          assignfile(FProjetFinance,ChProjetFinance);
          if FileExists(ChProjetFinance)then
          Reset(FProjetFinance)
          else Rewrite(FProjetFinance);
          Seek(FProjetFinance,0);
          OKProjet:=false;
          while not eof(FProjetFinance)and(OKProjet=false)do
          begin
               read(FProjetFinance,RProjetFinance);
               if(RProjetFinance.NumProjetFinance=FSPlanificateur.TableauStructure.Cells[1,FSPlanificateur.TableauStructure.Row])then
               begin
                    OKProjet:=true;

                    if(FSPlanificateur.EditDesignationPlanificateur.Text='')then FSPlanificateur.EditDesignationPlanificateur.Text:='Réservation d''un '+RProjetFinance.DesignationProjetFinance+' Type '+RProjetFinance.NatureProjetFinance;
                    FSPlanificateur.EditQuantiteOperation.Text:=Vergule(floattostr(RProjetFinance.MesureGlobaleProjetFinance),'2','C','');
                    FSPlanificateur.EditTypeUniteOperation.Text:=RProjetFinance.UniteMesureProjetFinance;
                    FSPlanificateur.EditPrixOperation.Text:=Vergule(floattostr(RProjetFinance.PrixUniteHTMesureProjetFinance),FSPlanificateur.EditPartieDecimale.Text,'C','');
                    FSPlanificateur.EditTotal.Text:=Vergule(floattostr(RProjetFinance.MesureGlobaleProjetFinance*RProjetFinance.PrixUniteHTMesureProjetFinance),'2','C','');
                    FSPlanificateur.EditCodeStructureProjet.Text:=RProjetFinance.NumProjetFinance;
                    FSPlanificateur.EditStructureProjet.Text:='N° '+RProjetFinance.Codification;
                    if(FSPlanificateur.EditTiers.Text='')
                    then FSPlanificateur.EditTiers.SetFocus
                    else FSPlanificateur.BitOperationPlanificateur.SetFocus;
               end;
          end;
          CloseFile(FProjetFinance);
          FSPlanificateur.AfficheStructure.Visible:=false;
     end;
end;

end;

procedure TFSPlanificateur.BitBtn3Click(Sender: TObject);
var  DebutRow,EcartTableau:integer;
     TitreEtat,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol:string;
     ImprimeEtat:boolean;
begin

FSPlanificateur.TitreEtat.Text:='Planification; ';

if(FSPlanificateur.AffichageTiers.Left=8)then
begin
     if(FSPlanificateur.EditRechercheTiers.Text<>'')
     then FSPlanificateur.TitreEtat.Lines.Add('Tiers:   '+FSPlanificateur.EditRechercheTiers.Text);
end
else
begin
     if(FSPlanificateur.EditProjet.Text<>'')
     then FSPlanificateur.TitreEtat.Lines.Add('Projet:   '+FSPlanificateur.EditProjet.Text);

     if(FSPlanificateur.EditFicheTechnique.Text<>'')
     then FSPlanificateur.TitreEtat.Lines.Add('Fiche:    '+FSPlanificateur.EditFicheTechnique.Text);

     if(FSPlanificateur.EditRubrique.Text<>'')
     then FSPlanificateur.TitreEtat.Lines.Add('Rubrique: '+FSPlanificateur.EditRubrique.Text);
end;

GrasARow:='0';
GrasACol:='0';
CenterARow:='';
CenterACol:='0;1';
RightARow:='';
RightACol:='7;8;9';

EcartTableau:=2;
DebutRow:=0;
ImprimeEtat:=true;
OptionsImpression(FSPlanificateur.TableauPlanificateur,'Center',DebutRow,1,FSPlanificateur.TitreEtat.Text,true,'Automatique',GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,ImprimeEtat,EcartTableau,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
end;

procedure TFSPlanificateur.EditStructureProjetEnter(Sender: TObject);
var R,l,C,Rong:integer; Classement,NotCol,ListeCodeStructure:string;  OKProjet,OKStructure:boolean;
begin
     FSPlanificateur.TableauPreselectionParTiers.ColCount:=4;
     FSPlanificateur.TableauPreselectionParTiers.Cols[0].Text:='Ordre';
     FSPlanificateur.TableauPreselectionParTiers.Cols[1].Text:='N° Prését°';
     FSPlanificateur.TableauPreselectionParTiers.Cols[2].Text:='Code Structure';
     FSPlanificateur.TableauPreselectionParTiers.Cols[3].Text:='Structure';
     FSPlanificateur.TableauPreselectionParTiers.RowCount:=2;
     FSPlanificateur.TableauPreselectionParTiers.Rows[1].Text:='';

     if(FSPlanificateur.EditCodeTiers.Text<>'')then
     begin
          OpenFParc(RParc);
          ChFormulairePreselection:=RParc.Parcours+'\'+Exercice+'FFormulairePreselection';
          assignfile(FFormulairePreselection,ChFormulairePreselection);
          if FileExists(ChFormulairePreselection)then
          Reset(FFormulairePreselection)
          else Rewrite(FFormulairePreselection);
          Seek(FFormulairePreselection,0);
          R:=0;
          while not eof(FFormulairePreselection)do
          begin
               read(FFormulairePreselection,RFormulairePreselection);
               if(RFormulairePreselection.CodeTier=FSPlanificateur.EditCodeTiers.Text)then
               begin
                    R:=R+1;
                    FSPlanificateur.TableauPreselectionParTiers.Rows[R].Text:=inttostr(R);
                    FSPlanificateur.TableauPreselectionParTiers.Cells[1,R]:=inttostr(RFormulairePreselection.NumFormulairePreselection);
                    FSPlanificateur.TableauPreselectionParTiers.Cells[2,R]:=RFormulairePreselection.NumProjet;
                    FSPlanificateur.TableauPreselectionParTiers.Cells[3,R]:=RFormulairePreselection.DesignationProjet;
               end;
          end;
          CloseFile(FFormulairePreselection);
     end
     else
     begin
          AfficherMessage('Indiquer le Tiers SVP !');
          FSPlanificateur.EditCodeTiers.SetFocus;
          Exit;
     end;

     if(R>0)then FSPlanificateur.TableauPreselectionParTiers.RowCount:=R+1
            else FSPlanificateur.TableauPreselectionParTiers.RowCount:=2;
     AjusterColWidth(FSPlanificateur.TableauPreselectionParTiers,'','');


FSPlanificateur.AfficheStructure.Visible:=true;
OpenFParc(RParc);
ChProjetFinance:=RParc.Parcours+'\'+Exercice+'FProjetFinance';
assignfile(FProjetFinance,ChProjetFinance);
if FileExists(ChProjetFinance)then
Reset(FProjetFinance)
else Rewrite(FProjetFinance);
Seek(FProjetFinance,0);
Rong:=0;
while not eof(FProjetFinance)do
begin
     read(FProjetFinance,RProjetFinance);
     if(Firstlaters(RProjetFinance.NumProjetFinance,Longueur(FSPlanificateur.EditCodeProjet.Text))=FSPlanificateur.EditCodeProjet.Text)then
     begin
          if(Rong<=longueur(RProjetFinance.NumProjetFinance))then Rong:=longueur(RProjetFinance.NumProjetFinance);
     end;
end;
CloseFile(FProjetFinance);

Rong:=ValeAbsolue(Rong/5);

FSPlanificateur.EditRonStructure.Items.Text:='';
for R:=1to(Rong-1)do
begin
     Classement:=inttostr(R);
     if(R=1)
     then Classement:=Classement+'er'
     else Classement:=Classement+'ème';
     FSPlanificateur.EditRonStructure.Items.Add('Structure '+Classement+' Rong');
end;
FSPlanificateur.EditRonStructure.ItemIndex:=Rong-2;

ListeProjetFinance(FSPlanificateur.TableauStructure,'',FSPlanificateur.EditCodeProjet.Text,inttostr(10+(FSPlanificateur.EditRonStructure.ItemIndex*5)),true,'1','',false,false,'','');

FSPlanificateur.TableauStructure.ColCount:=FSPlanificateur.TableauStructure.ColCount+1;
FSPlanificateur.TableauStructure.Cols[FSPlanificateur.TableauStructure.ColCount-1].Text:=' Structures adéquates ';
R:=1;
while(R<=FSPlanificateur.TableauStructure.RowCount-1)do
begin
     RProjetFinance:=ChercherProjetFinance(FSPlanificateur.TableauStructure.Cells[1,R],PositionProjetFinancesRecherche);
     RPlanificateurCopie:=ChercherCodeStructureProjetPlanificateur(RProjetFinance.NumProjetFinance);

     if(RProjetFinance.NumProjetFinance=RPlanificateurCopie.CodeStructureProjet)
     then OKProjet:=true
     else OKProjet:=false;

     if(OKProjet=false)then
     begin
          OKStructure:=false;
          l:=1;
          while(l<=FSPlanificateur.TableauPreselectionParTiers.RowCount-1)and(OKStructure=false)do
          begin
               if(RProjetFinance.NumProjetFinance=FSPlanificateur.TableauPreselectionParTiers.Cells[2,l])then
               begin
                    OKStructure:=true;
                    FSPlanificateur.TableauStructure.Cells[FSPlanificateur.TableauStructure.ColCount-1,R]:='Présélection N°: '+FSPlanificateur.TableauPreselectionParTiers.Cells[1,l];
               end;
          l:=l+1;
          end;

          if(OKStructure=false)then
          begin
               RProjetFinanceCopie:=ChercherProjetFinance(Firstlaters(FSPlanificateur.TableauStructure.Cells[1,R],longueur(FSPlanificateur.TableauStructure.Cells[1,R])-5),PositionProjetFinancesRecherche);

               if(ExisteCharinString(RProjetFinance.DesignationProjetFinance+' '+RProjetFinance.NatureProjetFinance,FSPlanificateur.EditRubrique.Text))
               and(ExisteCharinString(RProjetFinanceCopie.DesignationProjetFinance+' '+RProjetFinanceCopie.Codification,FSPlanificateur.EditRubrique.Text))
               then
               begin
                    FSPlanificateur.TableauStructure.Cells[FSPlanificateur.TableauStructure.ColCount-1,R]:='Adéquate !';
               end
               else FSPlanificateur.TableauStructure.Cells[FSPlanificateur.TableauStructure.ColCount-1,R]:='pas adéquate !'
          end;
     end
     else
     begin
          FSPlanificateur.TableauStructure.Cells[FSPlanificateur.TableauStructure.ColCount-1,R]:='Déjà planifié !';
     end;
R:=R+1;
end;

C:=0;
NotCol:='1';
while(C<=FSPlanificateur.TableauStructure.ColCount-1)do
begin
     if(FSPlanificateur.TableauStructure.ColWidths[C]=0)then NotCol:=NotCol+';'+inttostr(C);
C:=C+1;
end;
AjusterColWidth(FSPlanificateur.TableauStructure,'',NotCol);

FSPlanificateur.TableauStructure.SetFocus;
end;

procedure TFSPlanificateur.TimerAfficheMessageTimer(Sender: TObject);
begin
     if(FSPlanificateur.AfficheMessage.Visible=true)then
     begin
          if(FSPlanificateur.AfficheMessage.Color=$00E4E4E4)then
          begin
               FSPlanificateur.AfficheMessage.Color:=clWhite;
               FSPlanificateur.AfficheMessage.Font.Color:=clRed;
          end
          else
          begin
               FSPlanificateur.AfficheMessage.Color:=$00E4E4E4;
               FSPlanificateur.AfficheMessage.Font.Color:=clNavy;
          end;
     end;
end;

procedure TFSPlanificateur.BitNonAfficheMessageClick(Sender: TObject);
begin
FSPlanificateur.TimerAfficheMessage.Enabled:=false;
FSPlanificateur.AfficheMessage.Visible:=false;
FSPlanificateur.TableauStructure.SetFocus;
end;

procedure TFSPlanificateur.BitOuiAfficheMessageClick(Sender: TObject);
begin
     FSPlanificateur.TableauStructure.Cells[FSPlanificateur.TableauStructure.ColCount-1,FSPlanificateur.TableauStructure.Row]:='Adéquate !';
     FSPlanificateur.TimerAfficheMessage.Enabled:=false;
     FSPlanificateur.AfficheMessage.Visible:=false;
     FSPlanificateur.TableauStructure.SetFocus;
end;

procedure TFSPlanificateur.AfficheStructureEnter(Sender: TObject);
begin
FSPlanificateur.AfficheOperationPlanificateur.Left:=8;
FSPlanificateur.AfficheOperationPlanificateur.Top:=8;

FSPlanificateur.AfficheStructure.Left:=FSPlanificateur.AfficheOperationPlanificateur.Left+
                                   FSPlanificateur.EditStructureProjet.Left;
FSPlanificateur.AfficheStructure.Top:=FSPlanificateur.AfficheOperationPlanificateur.Top+
                                  FSPlanificateur.EditStructureProjet.Top+FSPlanificateur.EditStructureProjet.Height+1;
end;

procedure TFSPlanificateur.AfficheStructureExit(Sender: TObject);
begin
     if(FSPlanificateur.AfficheStructure.Visible=false)then
     begin
          FSPlanificateur.AfficheOperationPlanificateur.Left:=152;
          FSPlanificateur.AfficheOperationPlanificateur.Top:=144;
     end;
end;

procedure TFSPlanificateur.EditTypeAvisChoisirSelect(Sender: TObject);
var  PositionTypeAvis,NumTypeAvis,ChercheSigneDebitCredit:integer; CompteImputation,DebitCredit,TypeProces,FichierConserne,JourneauxAuxiliaireUtilise:string;
begin
FSPlanificateur.EditTypeAvis.Text:=FSPlanificateur.EditTypeAvisChoisir.Text;
if(IndiqueTypeAvis(FSPlanificateur.EditTypeAvis.Text,PositionTypeAvis,NumTypeAvis,ChercheSigneDebitCredit,CompteImputation,DebitCredit,TypeProces,FichierConserne,JourneauxAuxiliaireUtilise))then
begin
     FSPlanificateur.EditChargementTypeProces.Text:=TypeProces;
     FSPlanificateur.EditChargementFichierConcerne.Text:=FichierConserne;
end;
FSPlanificateur.AfficheTypeAvis.Visible:=false;
end;

procedure TFSPlanificateur.EditRechercheTiersDblClick(Sender: TObject);
begin
     FSPlanificateur.AfficheTypeAvis.Visible:=true;
     OpenFParc(RParc);
     ChTypeAvis:=RParc.Parcours+'\'+Exercice+'FTypeAvis';
     assignfile(FTypeAvis,ChTypeAvis);
     if FileExists(ChTypeAvis)then
     Reset(FTypeAvis)
     else Rewrite(FTypeAvis);
     Seek(FTypeAvis,0);
     FSPlanificateur.EditTypeAvisChoisir.Items.Text:='';
     while not eof(FTypeAvis)do
     begin
          read(FTypeAvis,RTypeAvis);
          FSPlanificateur.EditTypeAvisChoisir.Items.Add(RTypeAvis.DesignationTypeAvis);
     end;
     CloseFile(FTypeAvis);

     FSPlanificateur.EditTypeAvisChoisir.ItemIndex:=0;
     FSPlanificateur.EditTypeAvisChoisir.SetFocus;
end;

procedure TFSPlanificateur.FormResize(Sender: TObject);
begin
     FSPlanificateur.AfficheRecapPlanificateur.Width:=FSPlanificateur.Width-30;
     FSPlanificateur.AfficheRecapPlanificateur.Top:=FSPlanificateur.Height-FSPlanificateur.AfficheRecapPlanificateur.Height-42;

     FSPlanificateur.TableauPlanificateur.Width:=FSPlanificateur.Width-31;
     FSPlanificateur.TableauPlanificateur.Height:=FSPlanificateur.Height-190;

     FSPlanificateur.AfficheInfoPlanificateur.Left:=FSPlanificateur.Width-FSPlanificateur.AfficheInfoPlanificateur.Width-25;
end;

procedure TFSPlanificateur.EditCautionReservationKeyPress(Sender: TObject;
  var Key: Char);
begin
if key in['?','.',';','/',':']then key:=',';
if not(key in['0'..'9',','])then key:=#0;
end;

procedure TFSPlanificateur.EditApportEnter(Sender: TObject);
begin
     FSPlanificateur.EditApport.Text:=Vergule(FSPlanificateur.EditApport.Text,'2','N','');
end;

procedure TFSPlanificateur.EditApportExit(Sender: TObject);
begin
     FSPlanificateur.EditApport.Text:=Vergule(FSPlanificateur.EditApport.Text,'2','C','');
end;

procedure TFSPlanificateur.EditApportKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if(strtoreal(FSPlanificateur.EditMontant.Text)>0)
then FSPlanificateur.EditCautionReservation.Text:=floattostr((strtoreal(FSPlanificateur.EditApport.Text)/strtoreal(FSPlanificateur.EditMontant.Text))*100);
end;

procedure TFSPlanificateur.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
begin
if(strtoreal(FSPlanificateur.EditCautionReservation.Text)>0)
then FSPlanificateur.EditApport.Text:=Vergule(floattostr((strtoreal(FSPlanificateur.EditMontant.Text)*strtoreal(FSPlanificateur.EditCautionReservation.Text))/100),'2','C','')
else FSPlanificateur.EditApport.Text:='';
end;

procedure TFSPlanificateur.EditCautionReservationKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if(strtoreal(FSPlanificateur.EditCautionReservation.Text)>0)
then FSPlanificateur.EditApport.Text:=Vergule(floattostr((strtoreal(FSPlanificateur.EditMontant.Text)*strtoreal(FSPlanificateur.EditCautionReservation.Text))/100),'2','C','')
else FSPlanificateur.EditApport.Text:='';
end;

procedure TFSPlanificateur.EditPartieDecimaleKeyPress(Sender: TObject;
  var Key: Char);
begin
if not(key in['0'..'9'])then key:=#0;
end;

procedure TFSPlanificateur.BitBtn4Click(Sender: TObject);
begin
     FSPlanificateur.AfficheDocumentAssocierPlanificateur.Visible:=false;
end;

procedure TFSPlanificateur.BitBtn5Click(Sender: TObject);
var Texte,Caution,Approximativement:string;
begin
//FSPlanificateur.AfficheDocumentAssocierPlanificateur.Visible:=false;
RProjetFinance:=ChercherProjetFinance(FSPlanificateur.EditCodeProjet.Text,PositionProjetFinancesRecherche);
RClient:=ChercherClients(FSPlanificateur.TableauPlanificateur.Cells[5,FSPlanificateur.TableauPlanificateur.Row],FSPlanificateur.EditChargementTypeProces.Text,FSPlanificateur.EditChargementFichierConcerne.Text);

OpenFParc(RParc);
PrintConvention.TextEntreprise.Caption:=RParc.Text1;
PrintConvention.TextD2.Caption:=RParc.Text2;
PrintConvention.TextD3.Caption:=RParc.Text3;
PrintConvention.TextD4.Caption:=RParc.Text4;
PrintConvention.Logo.Picture:=FSMenuPrincipal.Logo.Picture;

PrintConvention1.TextEntreprise.Caption:=RParc.Text1;
PrintConvention1.TextD2.Caption:=RParc.Text2;
PrintConvention1.TextD3.Caption:=RParc.Text3;
PrintConvention1.TextD4.Caption:=RParc.Text4;
PrintConvention1.Logo.Picture:=FSMenuPrincipal.Logo.Picture;

PrintConvention2.TextEntreprise.Caption:=RParc.Text1;
PrintConvention2.TextD2.Caption:=RParc.Text2;
PrintConvention2.TextD3.Caption:=RParc.Text3;
PrintConvention2.TextD4.Caption:=RParc.Text4;
PrintConvention2.Logo.Picture:=FSMenuPrincipal.Logo.Picture;

////////////////////////////////////////////////////////////////////////////////
PrintConvention.TitreDate.Caption:=FSPlanificateur.TableauPlanificateur.Cells[1,FSPlanificateur.TableauPlanificateur.Row];
PrintConvention.TitreEtat.Caption:='Convention N° '+FSPlanificateur.TableauPlanificateur.Cells[3,FSPlanificateur.TableauPlanificateur.Row];
PrintConvention.TitreProjet.Caption:=FSPlanificateur.EditProjet.Text;
PrintConvention.DataObjet.Caption:=FSPlanificateur.TableauPlanificateur.Cells[4,FSPlanificateur.TableauPlanificateur.Row]+' '+FSPlanificateur.TableauPlanificateur.Cells[11,FSPlanificateur.TableauPlanificateur.Row];
PrintConvention.DataIntroduction.Lines.Text:='          Suite à votre demande de '+
                                             FSPlanificateur.TableauPlanificateur.Cells[4,FSPlanificateur.TableauPlanificateur.Row]+' '+
                                             'dans le projet '+FSPlanificateur.EditProjet.Text+', '+
                                             'nous avons l''honneur de vous informer que vous êtes sélectionner sous réserves de respecter les critères de sélection de notre établissement.';
PrintConvention.DataEntreprise.Caption:=RParc.Text1;
PrintConvention.DataActiviteEntreprise.Caption:=RParc.Text2;
PrintConvention.DataRepesenteEntreprise.Caption:='';
PrintConvention.DataFonctionRepresenteEntreprise.Caption:='';
PrintConvention.DataDenommeEntreprise.Caption:='Entreprise';

PrintConvention.DataConventionne.Lines.Text:=FSPlanificateur.TableauPlanificateur.Cells[6,FSPlanificateur.TableauPlanificateur.Row];
PrintConvention.DataDateLieuNaisConventionne.Caption:=RClient.DateNaisTiers+' à '+RClient.LieuNaisTiers;
PrintConvention.DataPieceConventionne.Lines.Text:=RClient.NaturePieceIdentiteTiers+' {'+RClient.NumPieceIdentiteTiers+'}';
PrintConvention.DataFonctionConventionne.Caption:=RClient.FonctionTiers;
PrintConvention.DataDenommeConventionne.Caption:='Acquéreur';

PrintConvention.Preview;
////////////////////////////////////////////////////////////////////////////////

{::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::}
PrintConvention1.TitreDate.Caption:=FSPlanificateur.TableauPlanificateur.Cells[1,FSPlanificateur.TableauPlanificateur.Row];

PrintConvention1.DataArticle1.Lines.Text:='';
PrintConvention1.DataArticle2.Lines.Text:='';
PrintConvention1.DataArticle3.Lines.Text:='';
PrintConvention1.DataArticle4.Lines.Text:='';
PrintConvention1.DataArticle5.Lines.Text:='';
PrintConvention1.DataArticle6.Lines.Text:='';
PrintConvention1.DataArticle7.Lines.Text:='';
PrintConvention1.DataArticle1.Lines.Text:='                         La présente convention à pour objet de déterminer les droits et les obligations des deux partie, qui régissent sur la '+
                                           FSPlanificateur.TableauPlanificateur.Cells[4,FSPlanificateur.TableauPlanificateur.Row]+' '+FSPlanificateur.TableauPlanificateur.Cells[11,FSPlanificateur.TableauPlanificateur.Row]+' '+
                                           'pour le compte de '+
                                           FSPlanificateur.TableauPlanificateur.Cells[6,FSPlanificateur.TableauPlanificateur.Row];

PrintConvention1.DataArticle2.Lines.Text:='                         Le bien objet de la convention sera livré à l''état fini, clé en mains, dans un délai de '+
                                           inttostr(RProjetFinance.DelaisRealisationProjetFinance)+' '+RProjetFinance.UniteDelaisRealisationProjetFinance+' '+
                                           'à compter de la date du démarrage des travaux';

PrintConvention1.DataArticle3.Lines.Text:='                         l''acquéreur réserve le droit de choisir les matériaux de finition intérieure en réglant un montant qui sera calculé en fonction de la différence du prix entre les matériaux choisi a ceux porter dans le cahier de charge du projet.';

PrintConvention1.DataArticle4.Lines.Text:='';
PrintConvention1.DataArticle4.Lines.Add('                         le montant en HT du bien réserver est de :');
PrintConvention1.DataArticle4.Lines.Add('                         En chiffres : '+FSPlanificateur.TableauPlanificateur.Cells[9,FSPlanificateur.TableauPlanificateur.Row]+' DA');

PrintConvention1.DataArticle4.Lines.Add('                         En lettre : '+Chiffreenlettre(FSPlanificateur.TableauPlanificateur.Cells[9,FSPlanificateur.TableauPlanificateur.Row]));

if(strtoreal(FSPlanificateur.EditCautionReservation.Text)<>strtoreal(Vergule(FSPlanificateur.EditCautionReservation.Text,FSPlanificateur.EditPartieDecimale.Text,'C','')))
then Approximativement:=' Approximativement '
else Approximativement:=' ';
PrintConvention1.DataArticle5.Lines.Add('                         L''intéressé est tenu de verser une caution de réservation'+Approximativement+'de '+Vergule(FSPlanificateur.EditCautionReservation.Text,FSPlanificateur.EditPartieDecimale.Text,'C','')+'%, soit: ');
                                                                  Caution:=FSPlanificateur.EditApport.Text;
PrintConvention1.DataArticle5.Lines.Add('                         En chiffres : '+Vergule(Caution,'2','C','')+' DA');

PrintConvention1.DataArticle5.Lines.Add('                         En lettre : '+Chiffreenlettre(Caution));

PrintConvention1.DataArticle6.Lines.Add('                         le montant restant sera régler par l''acquéreur en fonction du mode de financement du projet soit, un crédit bancaire, cas échéant, il sera inviter à régler');
PrintConvention1.DataArticle6.Lines.Add('des somme, en rapport à l''avancement des travaux, justifier par une situation qu''il  pourra retirer au prés de notre siège sociale. ');

PrintConvention1.DataArticle7.Lines.Text:='                         un rapport d''avancement et une étude prévisionnelle seront mises à la disposition des acquéreurs pour être mieux informer sur la situation de leur projet.';

PrintConvention1.Preview;
{::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::}

{XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX}
PrintConvention2.TitreDate.Caption:=FSPlanificateur.TableauPlanificateur.Cells[1,FSPlanificateur.TableauPlanificateur.Row];

PrintConvention2.DataArticle8.Lines.Text:='';
PrintConvention2.DataArticle9.Lines.Text:='';
PrintConvention2.DataArticle10.Lines.Text:='';

PrintConvention2.DataArticle8.Lines.Text:='                         dans le cas de non satisfaction d''un payement d''une tranche de règlement cité dans l''article 06, cas échéant, le promoteur se réserve le droit de résilier la décision de réservation en prélevant un taux de 05 % du montant versé.';

PrintConvention2.DataArticle9.Lines.Text:='                         En cas de désistement de l''acquéreur, le promoteur se réserve le droit de prélever un taux de 05 % du montant versé.';

PrintConvention2.DataArticle10.Lines.Text:='                         La présente convention de réservation, est établie dans la limite où la loi le prévoit, en attendant l''établissement de l''acte translatif de propriété.';

PrintConvention2.Preview;
{XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX}
end;

procedure TFSPlanificateur.BitBtn6Click(Sender: TObject);
var Texte,Caution,Approximativement:string;
begin
//FSPlanificateur.AfficheDocumentAssocierPlanificateur.Visible:=false;
RProjetFinance:=ChercherProjetFinance(FSPlanificateur.EditCodeProjet.Text,PositionProjetFinancesRecherche);
RClient:=ChercherClients(FSPlanificateur.TableauPlanificateur.Cells[5,FSPlanificateur.TableauPlanificateur.Row],FSPlanificateur.EditChargementTypeProces.Text,FSPlanificateur.EditChargementFichierConcerne.Text);

OpenFParc(RParc);
PrintDemandePlanification.TextEntreprise.Caption:=RParc.Text1;
PrintDemandePlanification.TextD2.Caption:=RParc.Text2;
PrintDemandePlanification.TextD3.Caption:=RParc.Text3;
PrintDemandePlanification.TextD4.Caption:=RParc.Text4;
PrintDemandePlanification.Logo.Picture:=FSMenuPrincipal.Logo.Picture;

////////////////////////////////////////////////////////////////////////////////
PrintDemandePlanification.TitreDate.Caption:=FSPlanificateur.TableauPlanificateur.Cells[1,FSPlanificateur.TableauPlanificateur.Row];
PrintDemandePlanification.TitreEtat.Caption:='Demande de réservation N° '+FSPlanificateur.TableauPlanificateur.Cells[3,FSPlanificateur.TableauPlanificateur.Row];
PrintDemandePlanification.TitreProjet.Caption:=FSPlanificateur.EditProjet.Text;
PrintDemandePlanification.DataObjet.Caption:=FSPlanificateur.TableauPlanificateur.Cells[4,FSPlanificateur.TableauPlanificateur.Row]+' '+FSPlanificateur.TableauPlanificateur.Cells[11,FSPlanificateur.TableauPlanificateur.Row];
PrintDemandePlanification.DataIntroduction.Lines.Text:='          Nous, soussigné, dénommé demandeur, avons l''honneur de solliciter votre bienveuillance de bien vouloir accorder notre demande de '+
                                                        FSPlanificateur.TableauPlanificateur.Cells[4,FSPlanificateur.TableauPlanificateur.Row]+' '+
                                                        'dans le projet '+FSPlanificateur.EditProjet.Text+'.';
PrintDemandePlanification.DataIntroduction.Lines.Add('');
PrintDemandePlanification.DataIntroduction.Lines.Add('Veuillez trouver ci dessous les informations concernant notre demande.');

PrintDemandePlanification.DataConventionne.Lines.Text:=FSPlanificateur.TableauPlanificateur.Cells[6,FSPlanificateur.TableauPlanificateur.Row];
PrintDemandePlanification.DataDateLieuNaisConventionne.Caption:=RClient.DateNaisTiers+' à '+RClient.LieuNaisTiers;
PrintDemandePlanification.DataPieceConventionne.Lines.Text:=RClient.NaturePieceIdentiteTiers+' {'+RClient.NumPieceIdentiteTiers+'}';
PrintDemandePlanification.DataFonctionConventionne.Caption:=RClient.FonctionTiers;
PrintDemandePlanification.DataDenommeConventionne.Caption:='Demandeur';

if(FSPlanificateur.RBAfficheValeurBien.Checked=true)then
begin
     PrintDemandePlanification.DataArticle1.Lines.Text:='';
     PrintDemandePlanification.DataArticle1.Lines.Add('Nous certifions  avoir pris connaissance de la localisation et la valeur du bien demander:');
     PrintDemandePlanification.DataArticle1.Lines.Add('');
     PrintDemandePlanification.DataArticle1.Lines.Add('le montant en HT du bien réserver est de :');
     PrintDemandePlanification.DataArticle1.Lines.Add('En chiffres : '+FSPlanificateur.TableauPlanificateur.Cells[9,FSPlanificateur.TableauPlanificateur.Row]+' DA');
     PrintDemandePlanification.DataArticle1.Lines.Add('En lettre : '+Chiffreenlettre(FSPlanificateur.TableauPlanificateur.Cells[9,FSPlanificateur.TableauPlanificateur.Row]));

     PrintDemandePlanification.DataDemandeur.Top:=PrintDemandePlanification.DataArticle1.Top+PrintDemandePlanification.DataArticle1.Height+50;
     PrintDemandePlanification.DataLuApprove.Top:=PrintDemandePlanification.DataDemandeur.Top+PrintDemandePlanification.DataDemandeur.Height+2;
     PrintDemandePlanification.DataEntreprise.Top:=PrintDemandePlanification.DataDemandeur.Top;
end
else
begin
     PrintDemandePlanification.DataArticle1.Lines.Text:='';
     PrintDemandePlanification.DataDemandeur.Top:=PrintDemandePlanification.DataArticle1.Top+50;
     PrintDemandePlanification.DataLuApprove.Top:=PrintDemandePlanification.DataDemandeur.Top+PrintDemandePlanification.DataDemandeur.Height+2;
     PrintDemandePlanification.DataEntreprise.Top:=PrintDemandePlanification.DataDemandeur.Top;
end;

PrintDemandePlanification.Preview;
{::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::}
end;

procedure TFSPlanificateur.BitBtn7Click(Sender: TObject);
var  AColSelect,Reste:integer;
begin
     if not AccesPrivilegies('FS Générateur Projets',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;
     
     FSGenerateurBase.Show;
     FSGenerateurBase.PageGenerateurBaseAvis.Show;
     FSGenerateurBase.PageProjet.Show;

     FSGenerateurBase.AfficheIndiqueArchivePhoto.Left:=1040;
     FSGenerateurBase.AfficheIndiqueArchivePhoto.Height:=225;
     FSGenerateurBase.AfficheIndiqueArchivePhoto.Width:=225;

     FSGenerateurBase.AffichePropositionFicheTechnique.Left:=0;
     FSGenerateurBase.AffichePropositionFicheTechnique.Top:=0;

     FSGenerateurBase.RBAfficheTiers.Checked:=false;
     ListeProjetFinance(FSGenerateurBase.TableauProjetFinance,'',Firstlaters(FSPlanificateur.TableauPlanificateur.Cells[10,FSPlanificateur.TableauPlanificateur.Row],10),'',false,'',FSPlanificateur.TableauPlanificateur.Cells[10,FSPlanificateur.TableauPlanificateur.Row],FSGenerateurBase.RBIndiquerReservationStructure.Checked,false,'','');
     Division(Longueur(FSPlanificateur.TableauPlanificateur.Cells[10,FSPlanificateur.TableauPlanificateur.Row]),5,AColSelect,Reste);
     FSGenerateurBase.TableauProjetFinance.Col:=AColSelect;
     FSGenerateurBase.TableauProjetFinance.SetFocus;
end;

procedure TFSPlanificateur.BitAfficheSourceClick(Sender: TObject);
var  i,ColBeginEdit:integer; DateTrue:boolean;  Quantite,Montant:real;
begin
     if(FSPlanificateur.EditNumPlanificateurSelect.Text<>'')then
     begin
          FSFormulairePreselection.Show;
          FSFormulairePreselection.Left:=FSMenuPrincipal.Left;
          FSFormulairePreselection.Top:=FSMenuPrincipal.Top;
          FSFormulairePreselection.Height:=FSMenuPrincipal.Height;
          FSFormulairePreselection.Width:=FSMenuPrincipal.Width;
          
          FSFormulairePreselection.Caption:=RRegistre.Repertoire+' - Exercice '+RRegistre.Exercice+' - Formulaire de Présélection';

          FSFormulairePreselection.AfficheOperationDureePreselection.Left:=8;
          FSFormulairePreselection.AfficheOperationDureePreselection.Top:=8;
          FSFormulairePreselection.AfficheDetailApportInitial.Left:=8;
          FSFormulairePreselection.AfficheDetailApportInitial.Top:=8;
          ListeFormulairePreselection(FSFormulairePreselection.TableauFormulairePreselection,'','','','','',strtointeger(FSPlanificateur.EditPositionFormulairePreselection.Text),FSFormulairePreselection.RBEtatAfficheTraitement.Caption);
          FSFormulairePreselection.TableauFormulairePreselection.Col:=1;
     end;
end;

procedure TFSPlanificateur.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ActiverNomForm(0,(Sender as TComponent).Name);
end;

procedure TFSPlanificateur.AfficheOperationPlanificateurEnter(
  Sender: TObject);
begin
     FSPlanificateur.RBChargerPointeur.Checked:=true;
end;

procedure TFSPlanificateur.TimerLancerAfficheTiersTimer(Sender: TObject);
begin
     FSPlanificateur.TimerLancerAfficheTiers.Enabled:=false;
     FSPlanificateur.TimerAfficheTiers.Enabled:=true;
end;

procedure TFSPlanificateur.TimerAfficheTiersTimer(Sender: TObject);
begin
     FSPlanificateur.TimerAfficheTiers.Enabled:=false;

     ListeTiersPointeur(FSPlanificateur.TableauTiers,FSPlanificateur.EditChargementTypeProces.Text,FSPlanificateur.EditChargementFichierConcerne.Text,'','',FSPlanificateur.EditTiers.Text,FSTiers.EditNbrKeyUp,FSTiers.EditNbrKeyUpMemo,FSPlanificateur.TimerLancerAfficheTiers,false,FSPlanificateur.RBChargerPointeur.Checked);

     FSPlanificateur.RBChargerPointeur.Checked:=false;
end;

procedure TFSPlanificateur.BitBtn8Click(Sender: TObject);
var Resultat,Reste:Integer;  RProjet,RBien,RBloc:RProjetFinances;
    IntitulleIdentificateur:string;
begin

//FSPlanificateur.AfficheDocumentAssocierPlanificateur.Visible:=false;
FSPlanificateur.AfficheModifierDecision.Visible:=false;
FSPlanificateur.AfficheModifierAttestationPaiement.Visible:=false;
FSPlanificateur.AfficheVerssement.Visible:=false;
FSPlanificateur.AfficheDecision.Left:=344;
FSPlanificateur.AfficheDecision.Top:=96;
FSPlanificateur.AfficheDecision.Visible:=true;
FSPlanificateur.AfficheNatureEtat.Caption:='DECISION FINANCIERE';
FSPlanificateur.RBDecisionModifier.Checked:=false;
FSPlanificateur.RBDecisionModifier.Caption:='Système';

RProjet:=ChercherProjetFinance(FSPlanificateur.EditCodeProjet.Text,PositionProjetFinancesRecherche);
RBloc:=ChercherProjetFinance(Firstlaters(FSPlanificateur.TableauPlanificateur.Cells[10,FSPlanificateur.TableauPlanificateur.Row],longueur(FSPlanificateur.TableauPlanificateur.Cells[10,FSPlanificateur.TableauPlanificateur.Row])-5),PositionProjetFinancesRecherche);
RBien:=ChercherProjetFinance(FSPlanificateur.TableauPlanificateur.Cells[10,FSPlanificateur.TableauPlanificateur.Row],PositionProjetFinancesRecherche);
RClient:=ChercherClients(FSPlanificateur.TableauPlanificateur.Cells[5,FSPlanificateur.TableauPlanificateur.Row],FSPlanificateur.EditChargementTypeProces.Text,FSPlanificateur.EditChargementFichierConcerne.Text);


if(FSPlanificateur.EditTypeDataEntreprise.Text='')then
begin
     ListeOrganismeTutelleComboBox(FSPlanificateur.EditTypeDataEntreprise,false);
     FSPlanificateur.EditTypeDataEntreprise.ItemIndex:=0;
end;
FSPlanificateur.EditTitreDate.Date:=date;
FSPlanificateur.EditTitreReference.Text:='D'+CompleteZeroGauche(FSPlanificateur.TableauPlanificateur.Cells[3,FSPlanificateur.TableauPlanificateur.Row],'2')+'/P'+lastlaters(RProjet.NumProjetFinance,2)+'/'+lastlaters(datetostr(date),4);
FSPlanificateur.NPermisConstruire.Caption:='N° Permis de Const. P'+lastlaters(RProjet.NumProjetFinance,2)+':';
FSPlanificateur.RBImporteEditPK.Caption:='N° Permis de Const. P'+lastlaters(RProjet.NumProjetFinance,2);
FSPlanificateur.NConventionPretBanque.Caption:='N° Convention Prêt P'+lastlaters(RProjet.NumProjetFinance,2)+':';
FSPlanificateur.RBImporteEditConventionPret.Caption:='N° Convention Prêt P'+lastlaters(RProjet.NumProjetFinance,2);

if(FSPlanificateur.RBImporteEditNumRegistreCommerce.Caption<>'')then IntitulleIdentificateur:=FSPlanificateur.RBImporteEditNumRegistreCommerce.Caption
else if(FSPlanificateur.RBImporteEditNumAgrement.Caption<>'')then IntitulleIdentificateur:=FSPlanificateur.RBImporteEditNumAgrement.Caption
else if(FSPlanificateur.RBImporteEditNITNPI.Caption<>'')then IntitulleIdentificateur:=FSPlanificateur.RBImporteEditNITNPI.Caption
else if(FSPlanificateur.RBImporteEditPK.Caption<>'')then IntitulleIdentificateur:=FSPlanificateur.RBImporteEditPK.Caption
else if(FSPlanificateur.RBImporteEditConventionPret.Caption<>'')then IntitulleIdentificateur:=FSPlanificateur.RBImporteEditConventionPret.Caption
else IntitulleIdentificateur:='';
FSPlanificateur.EditTypeDataEntreprise.Text:=ChercherOrganismePourIdentifiant(IntitulleIdentificateur);

if(FSPlanificateur.RBImporteEditNumRegistreCommerce.Checked=true)
then FSPlanificateur.EditNumRegistreCommerce.Text:=ImporteDataIdentificateurEntreprise(FSPlanificateur.RBImporteEditNumRegistreCommerce.Caption)
else FSPlanificateur.EditNumRegistreCommerce.Text:='';

if(FSPlanificateur.RBImporteEditNumAgrement.Checked=true)
then FSPlanificateur.EditNumAgrement.Text:=ImporteDataIdentificateurEntreprise(FSPlanificateur.RBImporteEditNumAgrement.Caption)
else FSPlanificateur.EditNumAgrement.Text:='';

if(FSPlanificateur.RBImporteEditNITNPI.Checked=true)
then FSPlanificateur.EditNITNPI.Text:=ImporteDataIdentificateurEntreprise(FSPlanificateur.RBImporteEditNITNPI.Caption)
else FSPlanificateur.EditNITNPI.Text:='';

if(FSPlanificateur.RBImporteEditPK.Checked=true)
then FSPlanificateur.EditPK.Text:=ImporteDataIdentificateurEntreprise(FSPlanificateur.RBImporteEditPK.Caption)
else FSPlanificateur.EditPK.Text:='';

if(FSPlanificateur.RBImporteEditConventionPret.Checked=true)
then FSPlanificateur.EditConventionPret.Text:=ImporteDataIdentificateurEntreprise(FSPlanificateur.RBImporteEditConventionPret.Caption)
else FSPlanificateur.EditConventionPret.Text:='';

FSPlanificateur.AfficheDocumentBanque.Visible:=false;

FSPlanificateur.EditDemandeur.Text:='Mr '+RClient.NomTiers+' '+RClient.PrenomTiers;
FSPlanificateur.EditNatureBien.Text:=RBien.DesignationProjetFinance;
FSPlanificateur.EditTypeBien.Text:=RBien.NatureProjetFinance;
FSPlanificateur.EditReferenceBien.Text:=RBien.Codification;

if(RBien.LocalisationPreciseProjetFinance='')then
begin
     FSPlanificateur.EditLocalisationPrecise.Text:='';

     if(strtointeger(Midellaters(RBien.Codification,2,2))=0)then
     begin
          FSPlanificateur.EditLocalisationPrecise.Text:='RDC';
     end
     else
     if(strtointeger(Midellaters(RBien.Codification,2,2))=1)then
     begin
          FSPlanificateur.EditLocalisationPrecise.Text:=Midellaters(RBien.Codification,2,2)+' er étage';
     end
     else
     if(strtointeger(Midellaters(RBien.Codification,2,2))>1)then
     begin
          FSPlanificateur.EditLocalisationPrecise.Text:=Midellaters(RBien.Codification,2,2)+' ème étage';
     end;

     FSPlanificateur.EditLocalisationPrecise.Text:=FSPlanificateur.EditLocalisationPrecise.Text+' du '+RBloc.DesignationProjetFinance;

     Division(strtointeger(Midellaters(RBien.Codification,3,3)),2,Resultat,Reste);
     if(Reste=0)then FSPlanificateur.EditLocalisationPrecise.Text:=FSPlanificateur.EditLocalisationPrecise.Text+' du coté GAUCHE' else FSPlanificateur.EditLocalisationPrecise.Text:=FSPlanificateur.EditLocalisationPrecise.Text+' du coté DROIT';
end
else
begin
     FSPlanificateur.EditLocalisationPrecise.Text:=RBien.LocalisationPreciseProjetFinance;
end;

if(RBien.NumLotProjetFinance<>'')then
begin
     FSPlanificateur.RBAfficherNumLot.Checked:=true;
     FSPlanificateur.EditNumLot.Text:=RBien.NumLotProjetFinance;
end
else
begin
     FSPlanificateur.RBAfficherNumLot.Checked:=false;
     FSPlanificateur.EditNumLot.Text:='';
end;

FSPlanificateur.EditSurfaceHabitable.Text:=Vergule(floattostr(RBien.MesurePartielleProjetFinance),'2','C','');
FSPlanificateur.EditSurfaceUtile.Text:=Vergule(FSPlanificateur.TableauPlanificateur.Cells[7,FSPlanificateur.TableauPlanificateur.Row],'2','C','');
FSPlanificateur.EditTypeUsage.Text:=RBien.TypeUsage;
FSPlanificateur.EditMontantHT.Text:=Vergule(FSPlanificateur.TableauPlanificateur.Cells[9,FSPlanificateur.TableauPlanificateur.Row],'2','C','');
FSPlanificateur.EditTVA.Text:=Vergule(floattostr(RBien.TaxePourcentage),'2','C','');
FSPlanificateur.EditMontantTTC.Text:=Vergule(floattostr(strtoreal(FSPlanificateur.TableauPlanificateur.Cells[9,FSPlanificateur.TableauPlanificateur.Row])*(1+(RBien.TaxePourcentage/100))),'2','C','');
FSPlanificateur.EditMontantTTCLettre.Text:=ChiffreEnLettre(FSPlanificateur.EditMontantTTC.Text);
FSPlanificateur.EditAdresseProjet.Text:=RProjet.AdresseProjetFinance;
end;

procedure TFSPlanificateur.BitPrintClick(Sender: TObject);
var  Interesse,LeBien:string;  TopHeightLastDatatTitre:integer;
begin
//FSPlanificateur.AfficheDecision.Visible:=false;
FSPlanificateur.AfficheOptionsTexte.Height:=41;

ChargerArticles;

if(FSPlanificateur.AfficheNatureEtat.Caption='DECISION FINANCIERE')then
begin
      RProjetFinance:=ChercherProjetFinance(FSPlanificateur.EditCodeProjet.Text,PositionProjetFinancesRecherche);
      RClient:=ChercherClients(FSPlanificateur.TableauPlanificateur.Cells[5,FSPlanificateur.TableauPlanificateur.Row],FSPlanificateur.EditChargementTypeProces.Text,FSPlanificateur.EditChargementFichierConcerne.Text);

      OpenFParc(RParc);
      PrintDECISIONBis.TextEntreprise.Caption:=RParc.Text1;
      PrintDECISIONBis.TextD2.Caption:=RParc.Text2;
      PrintDECISIONBis.TextD3.Caption:=RParc.Text3;
      PrintDECISIONBis.TextD4.Caption:=RParc.Text4;
      PrintDECISIONBis.Logo.Picture:=FSMenuPrincipal.Logo.Picture;

      PrintDECISIONBis.TitreEtat.Caption:='DECISION';

      ////////////////////////////////////////////////////////////////////////////////
      PrintDECISIONBis.TitreDate.Caption:='Fait à AKBOU le '+datetostr(FSPlanificateur.EditTitreDate.Date);
      PrintDECISIONBis.TitreReferenceEtat.Caption:='Réf. N° : '+FSPlanificateur.EditTitreReference.Text;
      PrintDECISIONBis.TitreEntreprise.Lines.Text:='';

      {if(FSPlanificateur.RBDecisionModifier.Checked=false)then
      begin
           PrintDECISIONBis.TitreEntreprise.Lines.Add('L''Entreprise de Promotion Immobilière '+RParc.Text1+':');

           PrintDECISIONBis.TitreVu.Lines.Text:='';
           PrintDECISIONBis.TitreVu.Lines.Add('-Vu le registre de commerce n° '+FSPlanificateur.EditNumRegistreCommerce.Text);
           PrintDECISIONBis.TitreVu.Lines.Add('-Vu le décret législatif n°: 93/03 du 01/03/1993 modifié et complété relatif à l''activité Immobilière.');
           PrintDECISIONBis.TitreVu.Lines.Add('-Vu la décision du Ministère de l''Habitat et de l''Urbanisme portant Agrément n° '+FSPlanificateur.EditNumAgrement.Text+' pour l''exercice de la profession de promoteur immobilier');
           PrintDECISIONBis.TitreVu.Lines.Add('-Vu l''attestation d''inscription au tableau national des promoteurs immobiliers sous le Numéro: '+FSPlanificateur.EditNITNPI.Text);
           PrintDECISIONBis.TitreVu.Lines.Add('-Vu l''Arrêté portant permis de construire N° '+FSPlanificateur.EditPK.Text);
           PrintDECISIONBis.TitreVu.Lines.Add('-Vu la convention de prêt immobilier n° '+FSPlanificateur.EditConventionPret.Text);
           PrintDECISIONBis.TitreVu.Lines.Add('-Vu la demande de '+FSPlanificateur.EditDemandeur.Text+' portant l''acquisition d''un '+FSPlanificateur.EditNatureBien.Text+' '+FSPlanificateur.EditTypeUsage.Text+' de type '+FSPlanificateur.EditTypeBien.Text);


           PrintDECISIONBis.DatatTitreArticle1.Lines.Text:='';
           PrintDECISIONBis.DatatTitreArticle1.Lines.Add('le '+FSPlanificateur.EditNatureBien.Text+' portant référence '+FSPlanificateur.EditReferenceBien.Text+' est vendu à:');

           if ExisteCharinString(' et ',FSPlanificateur.EditDemandeur.Text)
           then PrintDECISIONBis.DatatTitreArticle1.Lines.Add(FSPlanificateur.EditDemandeur.Text+', demeurent à '+RClient.AdresseTiers+', '+RClient.NaturePieceIdentiteTiers+' respective '+RClient.NumPieceIdentiteTiers)
           else PrintDECISIONBis.DatatTitreArticle1.Lines.Add(FSPlanificateur.EditDemandeur.Text+' Né le: '+RClient.DateNaisTiers+' à '+RClient.LieuNaisTiers+', demeurent à '+RClient.AdresseTiers+', '+RClient.NaturePieceIdentiteTiers+' '+RClient.NumPieceIdentiteTiers);

           PrintDECISIONBis.DatatTitreArticle2.Lines.Text:='';

           if(FSPlanificateur.RBAfficherNumLot.Checked=true)
           then PrintDECISIONBis.DatatTitreArticle2.Lines.Add('Typologie du '+FSPlanificateur.EditNatureBien.Text+': '+FSPlanificateur.EditTypeBien.Text+', situé au '+FSPlanificateur.EditLocalisationPrecise.Text+', dont le numéro du lot est le '+FSPlanificateur.EditNumLot.Text+' et le numéro identifiant est le '+FSPlanificateur.EditReferenceBien.Text
           +', d''une surface habitable de '+FSPlanificateur.EditSurfaceHabitable.Text+' m² et d''une surface utile de '+FSPlanificateur.EditSurfaceUtile.Text+' m², au projet de '+RProjetFinance.DesignationProjetFinance+' sise au '+FSPlanificateur.EditAdresseProjet.Text)
           else PrintDECISIONBis.DatatTitreArticle2.Lines.Add('Typologie du '+FSPlanificateur.EditNatureBien.Text+': '+FSPlanificateur.EditTypeBien.Text+', situé au '+FSPlanificateur.EditLocalisationPrecise.Text+', dont le numéro identifiant est le '+FSPlanificateur.EditReferenceBien.Text
           +', d''une surface habitable de '+FSPlanificateur.EditSurfaceHabitable.Text+' m² et d''une surface utile de '+FSPlanificateur.EditSurfaceUtile.Text+' m², au projet de '+RProjetFinance.DesignationProjetFinance+' sise au '+FSPlanificateur.EditAdresseProjet.Text);

           PrintDECISIONBis.DatatTitreArticle3.Lines.Text:='';
           PrintDECISIONBis.DatatTitreArticle3.Lines.Add('Le prix de cession en TTC du bien immobilier est de: '+FSPlanificateur.EditMontantTTC.Text+' DA, soit en toute lettre '+FSPlanificateur.EditMontantTTCLettre.Text+' (Hors frais du notaire)');

           PrintDECISIONBis.DatatTitreArticle4.Lines.Text:='';
           PrintDECISIONBis.DatatTitreArticle4.Lines.Add('Le bien en question reste la propriété de l''entreprise de promotion immobilière '+RParc.Text1+' jusqu''au payement total de ce dérnier, et l''établissement de l''acte de vente se fera devant le notaire');

           PrintDECISIONBis.DatatTitreArticle5.Lines.Text:='';
           PrintDECISIONBis.DatatTitreArticle5.Lines.Add('Cette décision est établie pour dossier de crédit bancaire');

           TopHeightLastDatatTitre:=PrintDECISIONBis.DatatTitreArticle5.Top+PrintDECISIONBis.DatatTitreArticle5.Height;
      end
      else}
      begin
           TopHeightLastDatatTitre:=0;

           PrintDECISIONBis.TitreVu.Lines.Text:=FSPlanificateur.DataVu.Lines.Text;

           if(FSPlanificateur.RBInclureArticle1.Checked=true)then
           begin
                PrintDECISIONBis.TitreArticle1.Caption:='Article 1 : ';
                PrintDECISIONBis.DatatTitreArticle1.Lines.Text:=FSPlanificateur.DataArticle1.Lines.Text;
                TopHeightLastDatatTitre:=PrintDECISIONBis.DatatTitreArticle1.Top+PrintDECISIONBis.DatatTitreArticle1.Height;
           end
           else
           begin
                PrintDECISIONBis.TitreArticle1.Caption:='';
                PrintDECISIONBis.DatatTitreArticle1.Lines.Text:='';
           end;

           if(FSPlanificateur.RBInclureArticle2.Checked=true)then
           begin
                PrintDECISIONBis.TitreArticle2.Caption:='Article 2 : ';
                PrintDECISIONBis.DatatTitreArticle2.Lines.Text:=FSPlanificateur.DataArticle2.Lines.Text;
                TopHeightLastDatatTitre:=PrintDECISIONBis.DatatTitreArticle2.Top+PrintDECISIONBis.DatatTitreArticle2.Height;
           end
           else
           begin
                PrintDECISIONBis.TitreArticle2.Caption:='';
                PrintDECISIONBis.DatatTitreArticle2.Lines.Text:='';
           end;

           if(FSPlanificateur.RBInclureArticle3.Checked=true)then
           begin
                PrintDECISIONBis.TitreArticle3.Caption:='Article 3 : ';
                PrintDECISIONBis.DatatTitreArticle3.Lines.Text:=FSPlanificateur.DataArticle3.Lines.Text;
                TopHeightLastDatatTitre:=PrintDECISIONBis.DatatTitreArticle3.Top+PrintDECISIONBis.DatatTitreArticle3.Height;
           end
           else
           begin
                PrintDECISIONBis.TitreArticle3.Caption:='';
                PrintDECISIONBis.DatatTitreArticle3.Lines.Text:='';
           end;

           if(FSPlanificateur.RBInclureArticle4.Checked=true)then
           begin
                PrintDECISIONBis.TitreArticle4.Caption:='Article 4 : ';
                PrintDECISIONBis.DatatTitreArticle4.Lines.Text:=FSPlanificateur.DataArticle4.Lines.Text;
                TopHeightLastDatatTitre:=PrintDECISIONBis.DatatTitreArticle4.Top+PrintDECISIONBis.DatatTitreArticle4.Height;
           end
           else
           begin
                PrintDECISIONBis.TitreArticle4.Caption:='';
                PrintDECISIONBis.DatatTitreArticle4.Lines.Text:='';
           end;

           if(FSPlanificateur.RBInclureArticle5.Checked=true)then
           begin
                PrintDECISIONBis.TitreArticle5.Caption:='Article 5 : ';
                PrintDECISIONBis.DatatTitreArticle5.Lines.Text:=FSPlanificateur.DataArticle5.Lines.Text;
                TopHeightLastDatatTitre:=PrintDECISIONBis.DatatTitreArticle5.Top+PrintDECISIONBis.DatatTitreArticle5.Height;
           end
           else
           begin
                PrintDECISIONBis.TitreArticle5.Caption:='';
                PrintDECISIONBis.DatatTitreArticle5.Lines.Text:='';
           end;
      end;

      PrintDECISIONBis.TitreArticle1.Font.Style:=[fsUnderline];
      PrintDECISIONBis.TitreArticle2.Font.Style:=[fsUnderline];
      PrintDECISIONBis.TitreArticle3.Font.Style:=[fsUnderline];
      PrintDECISIONBis.TitreArticle4.Font.Style:=[fsUnderline];
      PrintDECISIONBis.TitreArticle5.Font.Style:=[fsUnderline];

      PrintDECISIONBis.DataEntreprise.Top:=TopHeightLastDatatTitre+29;
      PrintDECISIONBis.CadreTitreSignature.Top:=TopHeightLastDatatTitre;
      PrintDECISIONBis.TitreSignature.Top:=PrintDECISIONBis.CadreTitreSignature.Top+11;
      PrintDECISIONBis.TitreLuApprouve.Top:=PrintDECISIONBis.TitreSignature.Top+24;

      PrintDECISIONBis.CadreTitreSignature.Enabled:=true;
      PrintDECISIONBis.Preview;

      if(FSPlanificateur.RBCopieADM.Checked=true)then
      begin
           PrintDECISIONBis.CadreTitreSignature.Enabled:=false;
           PrintDECISIONBis.Preview;
      end;
end;

if(FSPlanificateur.AfficheNatureEtat.Caption='DECISION PHYSIQUE')then
begin
      RProjetFinance:=ChercherProjetFinance(FSPlanificateur.EditCodeProjet.Text,PositionProjetFinancesRecherche);
      RClient:=ChercherClients(FSPlanificateur.TableauPlanificateur.Cells[5,FSPlanificateur.TableauPlanificateur.Row],FSPlanificateur.EditChargementTypeProces.Text,FSPlanificateur.EditChargementFichierConcerne.Text);

      OpenFParc(RParc);
      PrintDECISION.TextEntreprise.Caption:=RParc.Text1;
      PrintDECISION.TextD2.Caption:=RParc.Text2;
      PrintDECISION.TextD3.Caption:=RParc.Text3;
      PrintDECISION.TextD4.Caption:=RParc.Text4;
      PrintDECISION.Logo.Picture:=FSMenuPrincipal.Logo.Picture;

      PrintDECISION.TitreEtat.Caption:='DECISION D''ATTRIBUTION';

      ////////////////////////////////////////////////////////////////////////////////
      PrintDECISION.TitreDate.Caption:='Fait à AKBOU le '+datetostr(FSPlanificateur.EditTitreDate.Date);
      PrintDECISION.TitreReferenceEtat.Caption:='Réf. N° : '+FSPlanificateur.EditTitreReference.Text;
      PrintDECISION.TitreEntreprise.Lines.Text:='';

      {if(FSPlanificateur.RBDecisionModifier.Checked=false)then
      begin
           PrintDECISION.TitreEntreprise.Lines.Add('L''Entreprise de Promotion Immobilière '+RParc.Text1+':');

           PrintDECISION.TitreVu.Lines.Text:='';
           PrintDECISION.TitreVu.Lines.Add('-Vu le registre de commerce n° '+FSPlanificateur.EditNumRegistreCommerce.Text);
           PrintDECISION.TitreVu.Lines.Add('-Vu le décret législatif n°: 93/03 du 01/03/1993 modifié et complété relatif à l''activité Immobilière.');
           PrintDECISION.TitreVu.Lines.Add('-Vu la décision du Ministère de l''Habitat et de l''Urbanisme portant Agrément n° '+FSPlanificateur.EditNumAgrement.Text+' pour l''exercice de la profession de promoteur immobilier');
           PrintDECISION.TitreVu.Lines.Add('-Vu l''attestation d''inscription au tableau national des promoteurs immobiliers sous le Numéro: '+FSPlanificateur.EditNITNPI.Text);
           PrintDECISION.TitreVu.Lines.Add('-Vu l''Arrêté portant permis de construire N° '+FSPlanificateur.EditPK.Text);
           PrintDECISION.TitreVu.Lines.Add('-Vu la convention de prêt immobilier n° '+FSPlanificateur.EditConventionPret.Text);
           PrintDECISION.TitreVu.Lines.Add('-Vu la demande de '+FSPlanificateur.EditDemandeur.Text+' portant l''acquisition d''un '+FSPlanificateur.EditNatureBien.Text+' '+FSPlanificateur.EditTypeUsage.Text+' de type '+FSPlanificateur.EditTypeBien.Text);

           PrintDECISION.DatatTitreArticle1.Lines.Text:='';
           PrintDECISION.DatatTitreArticle1.Lines.Add('le '+FSPlanificateur.EditNatureBien.Text+' portant référence '+FSPlanificateur.EditReferenceBien.Text+' est vendu à:');

           if ExisteCharinString(' et ',FSPlanificateur.EditDemandeur.Text)
           then PrintDECISION.DatatTitreArticle1.Lines.Add(FSPlanificateur.EditDemandeur.Text+', demeurent à '+RClient.AdresseTiers+', '+RClient.NaturePieceIdentiteTiers+' respective '+RClient.NumPieceIdentiteTiers)
           else PrintDECISION.DatatTitreArticle1.Lines.Add(FSPlanificateur.EditDemandeur.Text+' Né le: '+RClient.DateNaisTiers+' à '+RClient.LieuNaisTiers+', demeurent à '+RClient.AdresseTiers+', '+RClient.NaturePieceIdentiteTiers+' '+RClient.NumPieceIdentiteTiers);

           PrintDECISION.DatatTitreArticle2.Lines.Text:='';
           PrintDECISION.DatatTitreArticle2.Lines.Add('Typologie du '+FSPlanificateur.EditNatureBien.Text+': '+FSPlanificateur.EditTypeBien.Text+', situé au '+FSPlanificateur.EditLocalisationPrecise.Text+', dont le numéro identifiant est le '+FSPlanificateur.EditReferenceBien.Text+', d''une surface habitable de '+FSPlanificateur.EditSurfaceHabitable.Text+' m² et d''une surface utile de '+FSPlanificateur.EditSurfaceUtile.Text+' m², au projet de '+RProjetFinance.DesignationProjetFinance+' sise au '+FSPlanificateur.EditAdresseProjet.Text);

           PrintDECISION.DatatTitreArticle3.Lines.Text:='';
           PrintDECISION.DatatTitreArticle3.Lines.Add('Le bien en question reste la propriété de l''entreprise de promotion immobilière '+RParc.Text1+' jusqu''au payement total de ce dérnier, et l''établissement de l''acte de vente se fera devant le notaire');

           PrintDECISION.TitreArticle4.Caption:='';
           PrintDECISION.DatatTitreArticle4.Lines.Text:='';

           PrintDECISION.TitreArticle5.Caption:='';
           PrintDECISION.DatatTitreArticle5.Lines.Text:='';
      end
      else }
      begin
           PrintDECISIONBis.TitreVu.Lines.Text:=FSPlanificateur.DataVu.Lines.Text;

           if(FSPlanificateur.RBInclureArticle1.Checked=true)then
           begin
                PrintDECISION.TitreArticle1.Caption:='Article 1 : ';
                PrintDECISION.DatatTitreArticle1.Lines.Text:=FSPlanificateur.DataArticle1.Lines.Text;
           end
           else
           begin
                PrintDECISION.TitreArticle1.Caption:='';
                PrintDECISION.DatatTitreArticle1.Lines.Text:='';
           end;

           if(FSPlanificateur.RBInclureArticle2.Checked=true)then
           begin
                PrintDECISION.TitreArticle2.Caption:='Article 2 : ';
                PrintDECISION.DatatTitreArticle2.Lines.Text:=FSPlanificateur.DataArticle2.Lines.Text;
           end
           else
           begin
                PrintDECISION.TitreArticle2.Caption:='';
                PrintDECISION.DatatTitreArticle2.Lines.Text:='';
           end;

           if(FSPlanificateur.RBInclureArticle3.Checked=true)then
           begin
                PrintDECISION.TitreArticle3.Caption:='Article 3 : ';
                PrintDECISION.DatatTitreArticle3.Lines.Text:=FSPlanificateur.DataArticle3.Lines.Text;
           end
           else
           begin
                PrintDECISION.TitreArticle3.Caption:='';
                PrintDECISION.DatatTitreArticle3.Lines.Text:='';
           end;

           if(FSPlanificateur.RBInclureArticle4.Checked=true)then
           begin
                PrintDECISION.TitreArticle4.Caption:='Article 4 : ';
                PrintDECISION.DatatTitreArticle4.Lines.Text:=FSPlanificateur.DataArticle4.Lines.Text;
           end
           else
           begin
                PrintDECISION.TitreArticle4.Caption:='';
                PrintDECISION.DatatTitreArticle4.Lines.Text:='';
           end;

           if(FSPlanificateur.RBInclureArticle5.Checked=true)then
           begin
                PrintDECISION.TitreArticle5.Caption:='Article 5 : ';
                PrintDECISION.DatatTitreArticle5.Lines.Text:=FSPlanificateur.DataArticle5.Lines.Text;
           end
           else
           begin
                PrintDECISION.TitreArticle5.Caption:='';
                PrintDECISION.DatatTitreArticle5.Lines.Text:='';
           end;
      end;

      PrintDECISION.TitreArticle1.Font.Style:=[fsUnderline];
      PrintDECISION.TitreArticle2.Font.Style:=[fsUnderline];
      PrintDECISION.TitreArticle3.Font.Style:=[fsUnderline];
      PrintDECISION.TitreArticle4.Font.Style:=[fsUnderline];
      PrintDECISION.TitreArticle5.Font.Style:=[fsUnderline];

      PrintDECISION.DataEntreprise.Top:=PrintDECISION.DatatTitreArticle3.Top+PrintDECISION.DatatTitreArticle3.Height+29;
      PrintDECISION.CadreTitreSignature.Top:=PrintDECISION.DatatTitreArticle3.Top+PrintDECISION.DatatTitreArticle3.Height;
      PrintDECISION.TitreSignature.Top:=PrintDECISION.CadreTitreSignature.Top+11;
      PrintDECISION.TitreLuApprouve.Top:=PrintDECISION.TitreSignature.Top+24;

      PrintDECISION.CadreTitreSignature.Enabled:=true;
      PrintDECISION.Preview;

      if(FSPlanificateur.RBCopieADM.Checked=true)then
      begin
           PrintDECISION.CadreTitreSignature.Enabled:=false;
           PrintDECISION.Preview;
      end;
end;

if(FSPlanificateur.AfficheNatureEtat.Caption='Procès verbal de remise des clés')then
begin
      RProjetFinance:=ChercherProjetFinance(FSPlanificateur.EditCodeProjet.Text,PositionProjetFinancesRecherche);
      RClient:=ChercherClients(FSPlanificateur.TableauPlanificateur.Cells[5,FSPlanificateur.TableauPlanificateur.Row],FSPlanificateur.EditChargementTypeProces.Text,FSPlanificateur.EditChargementFichierConcerne.Text);

      OpenFParc(RParc);
      PrintRemiseCles.TextEntreprise.Caption:=RParc.Text1;
      PrintRemiseCles.TextD2.Caption:=RParc.Text2;
      PrintRemiseCles.TextD3.Caption:=RParc.Text3;
      PrintRemiseCles.TextD4.Caption:=RParc.Text4;
      PrintRemiseCles.Logo.Picture:=FSMenuPrincipal.Logo.Picture;

      PrintRemiseCles.TitreEtat.Caption:='Procès verbal de remise des clés';
      PrintRemiseCles.TitreSousEtat.Caption:='Et de prise de possession';

      ////////////////////////////////////////////////////////////////////////////////
      PrintRemiseCles.DataTexte.Font.Size:=strtointeger(FSPlanificateur.EditFontSize.Text);

      PrintRemiseCles.TitreDate.Caption:='Fait à AKBOU le '+datetostr(FSPlanificateur.EditTitreDate.Date);
      PrintRemiseCles.TitreReferenceEtat.Caption:='Réf. N° : '+FSPlanificateur.EditTitreReference.Text;

      PrintRemiseCles.DataTexte.Lines.Text:='';

      {if(FSPlanificateur.RBDecisionModifier.Checked=false)then
      begin
           PrintRemiseCles.DataTexte.Lines.Add('L''Entreprise de Promotion Immobilière '+RParc.Text1+':');
           PrintRemiseCles.DataTexte.Lines.Add('');
           PrintRemiseCles.DataTexte.Lines.Add('-Vu le registre de commerce n° '+FSPlanificateur.EditNumRegistreCommerce.Text);
           PrintRemiseCles.DataTexte.Lines.Add('-Vu le décret législatif n°: 93/03 du 01/03/1993 modifié et complété relatif à l''activité Immobilière.');
           PrintRemiseCles.DataTexte.Lines.Add('-Vu la décision du Ministère de l''Habitat et de l''Urbanisme portant Agrément n° '+FSPlanificateur.EditNumAgrement.Text+' pour l''exercice de la profession de promoteur immobilier');
           PrintRemiseCles.DataTexte.Lines.Add('-Vu l''attestation d''inscription au tableau national des promoteurs immobiliers sous le Numéro: '+FSPlanificateur.EditNITNPI.Text);
           PrintRemiseCles.DataTexte.Lines.Add('-Vu l''Arrêté portant permis de construire N° '+FSPlanificateur.EditPK.Text);
           PrintRemiseCles.DataTexte.Lines.Add('-Vu la convention de prêt immobilier n° '+FSPlanificateur.EditConventionPret.Text);
           PrintRemiseCles.DataTexte.Lines.Add('-Vu la demande de '+FSPlanificateur.EditDemandeur.Text+' portant l''acquisition d''un '+FSPlanificateur.EditNatureBien.Text+' '+FSPlanificateur.EditTypeUsage.Text+' de type '+FSPlanificateur.EditTypeBien.Text);
           PrintRemiseCles.DataTexte.Lines.Add('-Vu la '+FSPlanificateur.EditTitreDocumentBanque.Text+' '+FSPlanificateur.EditDocumentBanque.Text);
           PrintRemiseCles.DataTexte.Lines.Add('');

           PrintRemiseCles.DataTexte.Lines.Add('le '+FSPlanificateur.EditNatureBien.Text+' portant référence '+FSPlanificateur.EditReferenceBien.Text+' est vendu à:');

           if ExisteCharinString(' et ',FSPlanificateur.EditDemandeur.Text)
           then PrintRemiseCles.DataTexte.Lines.Add(FSPlanificateur.EditDemandeur.Text+', demeurent à '+RClient.AdresseTiers+', '+RClient.NaturePieceIdentiteTiers+' respective '+RClient.NumPieceIdentiteTiers)
           else PrintRemiseCles.DataTexte.Lines.Add(FSPlanificateur.EditDemandeur.Text+' Né le: '+RClient.DateNaisTiers+' à '+RClient.LieuNaisTiers+', demeurent à '+RClient.AdresseTiers+', '+RClient.NaturePieceIdentiteTiers+' '+RClient.NumPieceIdentiteTiers);

           PrintRemiseCles.DataTexte.Lines.Add('');

           PrintRemiseCles.DataTexte.Lines.Add('Typologie du '+FSPlanificateur.EditNatureBien.Text+': '+FSPlanificateur.EditTypeBien.Text+', situé au '+FSPlanificateur.EditLocalisationPrecise.Text+', dont le numéro identifiant est le '+FSPlanificateur.EditReferenceBien.Text+', d''une surface habitable de '+FSPlanificateur.EditSurfaceHabitable.Text+' m² et d''une surface utile de '+FSPlanificateur.EditSurfaceUtile.Text+' m², au projet de '+RProjetFinance.DesignationProjetFinance+' sise au '+FSPlanificateur.EditAdresseProjet.Text);

           PrintRemiseCles.DataTexte.Lines.Add('');

           PrintRemiseCles.DataTexte.Lines.Add('Le bien en question reste la propriété de l''entreprise de promotion immobilière '+RParc.Text1+' jusqu''au payement total de ce dérnier, et l''établissement de l''acte de vente se fera devant le notaire');

           PrintRemiseCles.DataTexte.Lines.Add('');

           PrintRemiseCles.DataTexte.Lines.Add('Le promoteur, soussigné certifie par le présent procès verbal avoir délivré au bénéficiaire le '+FSPlanificateur.EditNatureBien.Text
           +' en parfait état et exempt de tous vices apparents (à part ceux mentionnés dans l''Etat des lieux en annexe de ce procès verbal).');
           PrintRemiseCles.DataTexte.Lines.Add('Le bénéficiaire déclare :');
           PrintRemiseCles.DataTexte.Lines.Add('1. Que le '+FSPlanificateur.EditNatureBien.Text+' est en parfaite conformité avec le descriptif de la promesse de vente.');
           PrintRemiseCles.DataTexte.Lines.Add('2. Qu''il a pris bonne et valable possession des clés du dit '+FSPlanificateur.EditNatureBien.Text+' ainsi que la clé de la porte de la résidence.');
      end
      else}
      begin
           PrintRemiseCles.DataTexte.Lines.Text:=FSPlanificateur.DataVu.Lines.Text;

           PrintRemiseCles.DataTexte.Lines.Add('');

           PrintRemiseCles.DataTexte.Lines.Add(FSPlanificateur.DataArticle1.Lines.Text);

           PrintRemiseCles.DataTexte.Lines.Add('');

           PrintRemiseCles.DataTexte.Lines.Add(FSPlanificateur.DataArticle2.Lines.Text);

           PrintRemiseCles.DataTexte.Lines.Add('');

           PrintRemiseCles.DataTexte.Lines.Add(FSPlanificateur.DataArticle3.Lines.Text);

           PrintRemiseCles.DataTexte.Lines.Add('');
           
           PrintRemiseCles.DataTexte.Lines.Add(FSPlanificateur.DataArticle4.Lines.Text);
      end;

      PrintRemiseCles.DataTexte.Height:=ValeAbsolue(PrintRemiseCles.DataTexte.Lines.Capacity*strtointeger(FSPlanificateur.EditFrequenceFontSize.Text));

      PrintRemiseCles.DataEntreprise.Top:=PrintRemiseCles.DataTexte.Top+PrintRemiseCles.DataTexte.Height+(strtointeger(FSPlanificateur.EditEcartTexte.Text)*2);
      PrintRemiseCles.TitreSignature.Top:=PrintRemiseCles.DataEntreprise.Top;
      PrintRemiseCles.CadreTitreSignature.Top:=PrintRemiseCles.TitreSignature.Top-11;
      PrintRemiseCles.CadreTitreSignature.Left:=PrintRemiseCles.TitreSignature.Left-11;

      PrintRemiseCles.CadreTitreSignature.Enabled:=false;
      PrintRemiseCles.Preview;

      if(FSPlanificateur.RBCopieADM.Checked=true)then
      begin
           PrintRemiseCles.CadreTitreSignature.Enabled:=false;
           PrintRemiseCles.Preview;

           /////////////////////////////////////////////////////////////////////
           PrintReservesRemiseCles.TextEntreprise.Caption:=RParc.Text1;
           PrintReservesRemiseCles.TextD2.Caption:=RParc.Text2;
           PrintReservesRemiseCles.TextD3.Caption:=RParc.Text3;
           PrintReservesRemiseCles.TextD4.Caption:=RParc.Text4;
           PrintReservesRemiseCles.Logo.Picture:=FSMenuPrincipal.Logo.Picture;

           PrintReservesRemiseCles.TitreDate.Caption:='Fait à AKBOU le '+datetostr(FSPlanificateur.EditTitreDate.Date);
           PrintReservesRemiseCles.TitreReferenceEtat.Caption:='Réf. N° : '+FSPlanificateur.EditTitreReference.Text;

           PrintReservesRemiseCles.Preview;
           /////////////////////////////////////////////////////////////////////
      end;
end;

if(FSPlanificateur.AfficheNatureEtat.Caption='Déclaration sur l''honneur')then
begin
      RProjetFinance:=ChercherProjetFinance(FSPlanificateur.EditCodeProjet.Text,PositionProjetFinancesRecherche);
      RClient:=ChercherClients(FSPlanificateur.TableauPlanificateur.Cells[5,FSPlanificateur.TableauPlanificateur.Row],FSPlanificateur.EditChargementTypeProces.Text,FSPlanificateur.EditChargementFichierConcerne.Text);

      OpenFParc(RParc);
      PrintDeclarationSurHonneur.TextEntreprise.Caption:=RParc.Text1;
      PrintDeclarationSurHonneur.TextD2.Caption:=RParc.Text2;
      PrintDeclarationSurHonneur.TextD3.Caption:=RParc.Text3;
      PrintDeclarationSurHonneur.TextD4.Caption:=RParc.Text4;
      PrintDeclarationSurHonneur.Logo.Picture:=FSMenuPrincipal.Logo.Picture;

      PrintDeclarationSurHonneur.TitreEtat.Caption:='Déclaration sur l''honneur';

      ////////////////////////////////////////////////////////////////////////////////
      PrintDeclarationSurHonneur.TitreDate.Caption:='Fait à AKBOU le '+datetostr(FSPlanificateur.EditTitreDate.Date);
      PrintDeclarationSurHonneur.TitreReferenceEtat.Lines.Text:='Réf. N° : '+FSPlanificateur.EditTitreReference.Text;

      PrintDeclarationSurHonneur.DataTexte.Font.Size:=strtointeger(FSPlanificateur.EditFontSize.Text);
      PrintDeclarationSurHonneur.TitreSignature.Font.Size:=strtointeger(FSPlanificateur.EditFontSize.Text);
      PrintDeclarationSurHonneur.TitreObjet.Font.Size:=strtointeger(FSPlanificateur.EditFontSize.Text);
      PrintDeclarationSurHonneur.TitreEtat.Font.Size:=strtointeger(FSPlanificateur.EditFontSize.Text);

      {if(FSPlanificateur.RBDecisionModifier.Checked=false)then
      begin
           LeBien:=FSPlanificateur.EditNatureBien.Text+' portant référence '+FSPlanificateur.EditReferenceBien.Text;

           Interesse:='';
           if ExisteCharinString(' et ',FSPlanificateur.EditDemandeur.Text)then
           begin
                Interesse:=FSPlanificateur.EditDemandeur.Text+', demeurent à '+RClient.AdresseTiers+', '+RClient.NaturePieceIdentiteTiers+' respective '+RClient.NumPieceIdentiteTiers;

                PrintDeclarationSurHonneur.DataTexte.Lines.Text:='';
                PrintDeclarationSurHonneur.DataTexte.Lines.Add('          Nous soussignés, '+Interesse+', attestons sur l''honneur que nous somme redevables, pour le compte de l''entreprise '+RParc.Text1
                +', d''un montant de, en chiffre '+FSPlanificateur.EditMontantVersement.Text+' DA et en lettres '+FSPlanificateur.EditMontantVersementLettre.Text+', qui correspond au solde de notre apport personnel sur l''achat du bien dit '+LeBien
                +', et que nous réglerons en une seule fois avant l''établissement de l''acte définitif. ');

                PrintDeclarationSurHonneur.DataTexte.Lines.Add('');

                PrintDeclarationSurHonneur.DataTexte.Lines.Add('          Par ailleurs, nous, nous engageons à vous signaler tout changement qui interviendrait dans notre situation à compter de l''établissement de la présente attestation.');

                PrintDeclarationSurHonneur.DataTexte.Lines.Add('');

                PrintDeclarationSurHonneur.DataTexte.Lines.Add('          Nous avons parfaitement conscience que ce document pourrait être produit en justice à notre encontre et qu''en cas de fausse déclaration, des sanctions pénales pourraient nous être appliquées.');
           end
           else
           begin
                Interesse:=FSPlanificateur.EditDemandeur.Text+' Né le: '+RClient.DateNaisTiers+' à '+RClient.LieuNaisTiers+', demeurent à '+RClient.AdresseTiers+', '+RClient.NaturePieceIdentiteTiers+' '+RClient.NumPieceIdentiteTiers;

                PrintDeclarationSurHonneur.DataTexte.Lines.Text:='';
                PrintDeclarationSurHonneur.DataTexte.Lines.Add('          je soussigné, '+Interesse+', atteste sur l''honneur que je suis redevable, au compte de l''entreprise '+RParc.Text1
                +', d''un montant de, en chiffre '+FSPlanificateur.EditMontantVersement.Text+' et en lettres '+FSPlanificateur.EditMontantVersementLettre.Text+', qui correspond au solde de mon apport personnel sur l''achat du bien dit '+LeBien
                +', et que je réglerais en une seule fois avant l''établissement de l''acte définitif. ');

                PrintDeclarationSurHonneur.DataTexte.Lines.Add('');

                PrintDeclarationSurHonneur.DataTexte.Lines.Add('          Par ailleurs, je m''engage à vous signaler tout changement qui interviendrait dans ma situation à compter de l''établissement de la présente attestation.');

                PrintDeclarationSurHonneur.DataTexte.Lines.Add('');

                PrintDeclarationSurHonneur.DataTexte.Lines.Add('          J''ai parfaitement conscience que ce document pourrait être produit en justice à mon encontre et qu''en cas de fausse déclaration, des sanctions pénales pourraient m''être appliquées.');
           end;

           PrintDeclarationSurHonneur.DataTexte.Lines.Add('');

           PrintDeclarationSurHonneur.DataTexte.Lines.Add('          Fait pour servir et valoir ce que de droit.');

      end
      else}
      begin
           PrintDeclarationSurHonneur.DataTexte.Lines.Text:=FSPlanificateur.DataVu.Lines.Text;
      end;

      PrintDeclarationSurHonneur.DataTexte.Height:=ValeAbsolue(PrintDeclarationSurHonneur.DataTexte.Lines.Capacity*strtointeger(FSPlanificateur.EditFrequenceFontSize.Text));

      PrintDeclarationSurHonneur.TitreSignature.Lines.Text:='';
      PrintDeclarationSurHonneur.TitreSignature.Lines.Add(Lastlaters(FSPlanificateur.EditChargementFichierConcerne.Text,longueur(FSPlanificateur.EditChargementFichierConcerne.Text)-1));
      PrintDeclarationSurHonneur.TitreSignature.Lines.Add(FSPlanificateur.EditDemandeur.Text);
      PrintDeclarationSurHonneur.TitreSignature.Top:=PrintDeclarationSurHonneur.DataTexte.Top+PrintDeclarationSurHonneur.DataTexte.Height+(strtointeger(FSPlanificateur.EditEcartTexte.Text)*2);

      PrintDeclarationSurHonneur.Preview;
end;

if(FSPlanificateur.AfficheNatureEtat.Caption='Attestation de versement')then
begin
      RProjetFinance:=ChercherProjetFinance(FSPlanificateur.EditCodeProjet.Text,PositionProjetFinancesRecherche);
      RClient:=ChercherClients(FSPlanificateur.TableauPlanificateur.Cells[5,FSPlanificateur.TableauPlanificateur.Row],FSPlanificateur.EditChargementTypeProces.Text,FSPlanificateur.EditChargementFichierConcerne.Text);

      OpenFParc(RParc);
      PrintAttestationVersement.TextEntreprise.Caption:=RParc.Text1;
      PrintAttestationVersement.TextD2.Caption:=RParc.Text2;
      PrintAttestationVersement.TextD3.Caption:=RParc.Text3;
      PrintAttestationVersement.TextD4.Caption:=RParc.Text4;
      PrintAttestationVersement.Logo.Picture:=FSMenuPrincipal.Logo.Picture;

      ////////////////////////////////////////////////////////////////////////////////
      PrintAttestationVersement.TitreDate.Caption:='Fait à AKBOU le '+datetostr(FSPlanificateur.EditTitreDate.Date);
      PrintAttestationVersement.TitreNumEtat.Caption:='N° : R'+CompleteZeroGauche(FSPlanificateur.EditNumOrdrePaiement.Text,'2')+'/'+FSPlanificateur.EditTitreReference.Text;

      {if(FSPlanificateur.RBDecisionModifier.Checked=false)then
      begin
           PrintAttestationVersement.Data.Lines.Text:='';

           if ExisteCharinString(' et ',FSPlanificateur.EditDemandeur.Text)
           then PrintAttestationVersement.Data.Lines.Add('     Nous soussigé, '+RParc.Text1+' représenté par son '+FSPlanificateur.EditFonctionSignataire.Text+' '+FSPlanificateur.EditSignataire.Text+', attestons par la présente que '+FSPlanificateur.EditDemandeur.Text+', ont procédé au versement au prés de notre société d''un montant: '+FSPlanificateur.EditMontantVersement.Text+' DA soit en toute lettre: '+FSPlanificateur.EditMontantVersementLettre.Text+', représentant leur apport personnel.')
           else PrintAttestationVersement.Data.Lines.Add('     Nous soussigé, '+RParc.Text1+' représenté par son '+FSPlanificateur.EditFonctionSignataire.Text+' '+FSPlanificateur.EditSignataire.Text+', attestons par la présente que '+FSPlanificateur.EditDemandeur.Text+' né le '+RClient.DateNaisTiers+', a procédé au versement au prés de notre société d''un montant: '+FSPlanificateur.EditMontantVersement.Text+' DA soit en toute lettre: '+FSPlanificateur.EditMontantVersementLettre.Text+', représentant son apport personnel.');;
           PrintAttestationVersement.Data.Lines.Add('');
           PrintAttestationVersement.Data.Lines.Add('     Relatif à l''acquisition d''un '+FSPlanificateur.EditNatureBien.Text+' '+FSPlanificateur.EditTypeUsage.Text+' de type '+FSPlanificateur.EditTypeBien.Text+', situé au '+FSPlanificateur.EditLocalisationPrecise.Text+' dont le numéro de lot est le '+FSPlanificateur.EditReferenceBien.Text+' d''une surface habitable de '+FSPlanificateur.EditSurfaceHabitable.Text+' m² et d''une surface utile de '+FSPlanificateur.EditSurfaceUtile.Text+' m² sis au projet '+RProjetFinance.DesignationProjetFinance+' à '+FSPlanificateur.EditAdresseProjet.Text);
           PrintAttestationVersement.Data.Lines.Add('');
           PrintAttestationVersement.Data.Lines.Add('     et dont le prix de cession s''élève à: '+FSPlanificateur.EditMontantTTC.Text+' DA soit en toute lettre: '+FSPlanificateur.EditMontantTTCLettre.Text);
           PrintAttestationVersement.Data.Lines.Add('');

           if ExisteCharinString(' et ',FSPlanificateur.EditDemandeur.Text)
           then PrintAttestationVersement.Data.Lines.Add('     Enfoi de quoi, la présent attestation de peiement leur est délivrée pour servir et valoir ce que de droit.')
           else PrintAttestationVersement.Data.Lines.Add('     Enfoi de quoi, la présent attestation de peiement lui est délivrée pour servir et valoir ce que de droit.');
      end
      else}
      begin
           PrintAttestationVersement.Data.Lines.Text:='';
           PrintAttestationVersement.Data.Lines.Text:=FSPlanificateur.DataVersement.Text;
      end;

      PrintAttestationVersement.CadreTitreSignature.Enabled:=true;
      PrintAttestationVersement.Preview;

      if(FSPlanificateur.RBCopieADM.Checked=true)then
      begin
           PrintAttestationVersement.CadreTitreSignature.Enabled:=false;
           PrintAttestationVersement.Preview;
      end;
end;

if(FSPlanificateur.AfficheNatureEtat.Caption='FACTURE')then
begin
      RProjetFinance:=ChercherProjetFinance(FSPlanificateur.EditCodeProjet.Text,PositionProjetFinancesRecherche);
      RClient:=ChercherClients(FSPlanificateur.TableauPlanificateur.Cells[5,FSPlanificateur.TableauPlanificateur.Row],FSPlanificateur.EditChargementTypeProces.Text,FSPlanificateur.EditChargementFichierConcerne.Text);

      OpenFParc(RParc);
      PrintFactureBienImmobilier.TextEntreprise.Caption:=RParc.Text1;

      PrintFactureBienImmobilier.DataEntreprise.Lines.Text:='';
      PrintFactureBienImmobilier.DataEntreprise.Lines.Add(RParc.Text2);
      PrintFactureBienImmobilier.DataEntreprise.Lines.Add(RParc.Text3);
      PrintFactureBienImmobilier.DataEntreprise.Lines.Add(RParc.Text4);
      PrintFactureBienImmobilier.DataEntreprise.Lines.Add(RParc.Text5);
      PrintFactureBienImmobilier.DataEntreprise.Lines.Add(RParc.Text6);
      PrintFactureBienImmobilier.DataEntreprise.Lines.Add(RParc.Text7);
      PrintFactureBienImmobilier.DataEntreprise.Lines.Add(RParc.Text8);
      PrintFactureBienImmobilier.DataEntreprise.Lines.Add(RParc.Text9);
      PrintFactureBienImmobilier.DataEntreprise.Lines.Add(RParc.Text10);
      PrintFactureBienImmobilier.Logo.Picture:=FSMenuPrincipal.Logo.Picture;

      PrintFactureBienImmobilier.EnteteTitre.Caption:='FACTURE N°: '+FSPlanificateur.EditTitreReference.Text;
      PrintFactureBienImmobilier.TextDateFact.Caption:=datetostr(FSPlanificateur.EditTitreDate.Date);
      PrintFactureBienImmobilier.TextProjet.Lines.Text:=RProjetFinance.DesignationProjetFinance;

      PrintFactureBienImmobilier.DataTiers.Lines.Text:='';
      PrintFactureBienImmobilier.DataTiers.Lines.Add(RClient.NomTiers+' '+RClient.PrenomTiers);
      PrintFactureBienImmobilier.DataTiers.Lines.Add(RClient.AdresseTiers);
      PrintFactureBienImmobilier.DataTiers.Lines.Add(RClient.Data1);
      PrintFactureBienImmobilier.DataTiers.Lines.Add(RClient.Data2);
      PrintFactureBienImmobilier.DataTiers.Lines.Add(RClient.Data3);
      PrintFactureBienImmobilier.DataTiers.Lines.Add(RClient.Data4);
      PrintFactureBienImmobilier.DataTiers.Lines.Add(RClient.Data5);
      PrintFactureBienImmobilier.DataTiers.Lines.Add(RClient.Data6);

      PrintFactureBienImmobilier.TextPayement.Lines.Text:='';


      PrintFactureBienImmobilier.Code.Lines.Text:=FSPlanificateur.EditReferenceBien.Text;

      //PrintFactureBienImmobilier.Desig.Lines.Text:='Acquisition d''un '+FSPlanificateur.EditNatureBien.Text+' à '+FSPlanificateur.EditTypeUsage.Text+' de type '+FSPlanificateur.EditTypeBien.Text+', situé au '+FSPlanificateur.EditLocalisationPrecise.Text+' dont le numéro de lot est le '+FSPlanificateur.EditReferenceBien.Text+' d''une surface habitable de '+FSPlanificateur.EditSurfaceHabitable.Text+' m² et d''une surface utile de '+FSPlanificateur.EditSurfaceUtile.Text+' m² sis au projet '+RProjetFinance.DesignationProjetFinance+' à '+FSPlanificateur.EditAdresseProjet.Text;

      PrintFactureBienImmobilier.Desig.Lines.Text:='';

      {if(FSPlanificateur.RBDecisionModifier.Checked=false)then
      begin
           if(FSPlanificateur.RBAfficherNumLot.Checked=true)
           then PrintFactureBienImmobilier.Desig.Lines.Add('Acquisition d''un '+FSPlanificateur.EditNatureBien.Text+': '+FSPlanificateur.EditTypeBien.Text+', situé au '+FSPlanificateur.EditLocalisationPrecise.Text+', dont le numéro du lot est le '+FSPlanificateur.EditNumLot.Text+' et le numéro identifiant est le '+FSPlanificateur.EditReferenceBien.Text
           +', d''une surface habitable de '+FSPlanificateur.EditSurfaceHabitable.Text+' m² et d''une surface utile de '+FSPlanificateur.EditSurfaceUtile.Text+' m², au projet de '+RProjetFinance.DesignationProjetFinance+' sise au '+FSPlanificateur.EditAdresseProjet.Text)
           else PrintFactureBienImmobilier.Desig.Lines.Add('Acquisition d''un '+FSPlanificateur.EditNatureBien.Text+': '+FSPlanificateur.EditTypeBien.Text+', situé au '+FSPlanificateur.EditLocalisationPrecise.Text+', dont le numéro identifiant est le '+FSPlanificateur.EditReferenceBien.Text
           +', d''une surface habitable de '+FSPlanificateur.EditSurfaceHabitable.Text+' m² et d''une surface utile de '+FSPlanificateur.EditSurfaceUtile.Text+' m², au projet de '+RProjetFinance.DesignationProjetFinance+' sise au '+FSPlanificateur.EditAdresseProjet.Text);
      end
      else}
      begin
           PrintFactureBienImmobilier.Desig.Lines.Text:=FSPlanificateur.DataVu.Lines.Text;
      end;
      
      PrintFactureBienImmobilier.UM.Lines.Text:='m²';
      PrintFactureBienImmobilier.Qte.Lines.Text:=FSPlanificateur.EditSurfaceUtile.Text;
      PrintFactureBienImmobilier.PUHT.Lines.Text:=Vergule(floattostr(strtoreal(FSPlanificateur.EditMontantHT.Text)/strtoreal(FSPlanificateur.EditSurfaceUtile.Text)),'2','C','');
      PrintFactureBienImmobilier.MHT.Lines.Text:=FSPlanificateur.EditMontantHT.Text;

      PrintFactureBienImmobilier.TotalMHT.Caption:=FSPlanificateur.EditMontantHT.Text;
      PrintFactureBienImmobilier.TVA.Caption:=Vergule(FSPlanificateur.EditTVA.Text,'2','C','')+'%';
      PrintFactureBienImmobilier.TotalMTVA.Caption:=Vergule(floattostr(strtoreal(FSPlanificateur.EditMontantHT.Text)*strtoreal(FSPlanificateur.EditTVA.Text)/100),'2','C','');
      PrintFactureBienImmobilier.TotalMTTC.Caption:=FSPlanificateur.EditMontantTTC.Text;
      PrintFactureBienImmobilier.TextChiffreenLettre.Lines.Text:=FSPlanificateur.EditMontantTTCLettre.Text;

      PrintFactureBienImmobilier.Preview;
end;

end;

procedure TFSPlanificateur.BitBtn10Click(Sender: TObject);
begin
     FSPlanificateur.AfficheDecision.Visible:=false;
     FSPlanificateur.AfficheDomiciliation.Visible:=false;
end;

procedure TFSPlanificateur.EditListeIdentificateurEntrepriseChange(
  Sender: TObject);
begin
     if(FSPlanificateur.EditListeIdentificateurEntreprise.Top=FSPlanificateur.RBImporteEditNumRegistreCommerce.Top)then
     begin
          FSPlanificateur.EditListeIdentificateurEntreprise.Visible:=false;
          FSPlanificateur.RBImporteEditNumRegistreCommerce.Caption:=FSPlanificateur.EditListeIdentificateurEntreprise.Text;
          FSPlanificateur.EditNumRegistreCommerce.Text:=ImporteDataIdentificateurEntreprise(FSPlanificateur.RBImporteEditNumRegistreCommerce.Caption);
     end;

     if(FSPlanificateur.EditListeIdentificateurEntreprise.Top=FSPlanificateur.RBImporteEditNumAgrement.Top)then
     begin
          FSPlanificateur.EditListeIdentificateurEntreprise.Visible:=false;
          FSPlanificateur.RBImporteEditNumAgrement.Caption:=FSPlanificateur.EditListeIdentificateurEntreprise.Text;
          FSPlanificateur.EditNumAgrement.Text:=ImporteDataIdentificateurEntreprise(FSPlanificateur.RBImporteEditNumAgrement.Caption);
     end;

     if(FSPlanificateur.EditListeIdentificateurEntreprise.Top=FSPlanificateur.RBImporteEditNITNPI.Top)then
     begin
          FSPlanificateur.EditListeIdentificateurEntreprise.Visible:=false;
          FSPlanificateur.RBImporteEditNITNPI.Caption:=FSPlanificateur.EditListeIdentificateurEntreprise.Text;
          FSPlanificateur.EditNITNPI.Text:=ImporteDataIdentificateurEntreprise(FSPlanificateur.RBImporteEditNITNPI.Caption);
     end;

     if(FSPlanificateur.EditListeIdentificateurEntreprise.Top=FSPlanificateur.RBImporteEditPK.Top)then
     begin
          FSPlanificateur.EditListeIdentificateurEntreprise.Visible:=false;
          FSPlanificateur.RBImporteEditPK.Caption:=FSPlanificateur.EditListeIdentificateurEntreprise.Text;
          FSPlanificateur.EditPK.Text:=ImporteDataIdentificateurEntreprise(FSPlanificateur.RBImporteEditPK.Caption);
     end;

     if(FSPlanificateur.EditListeIdentificateurEntreprise.Top=FSPlanificateur.RBImporteEditConventionPret.Top)then
     begin
          FSPlanificateur.EditListeIdentificateurEntreprise.Visible:=false;
          FSPlanificateur.RBImporteEditConventionPret.Caption:=FSPlanificateur.EditListeIdentificateurEntreprise.Text;
          FSPlanificateur.EditConventionPret.Text:=ImporteDataIdentificateurEntreprise(FSPlanificateur.RBImporteEditConventionPret.Caption);
     end;
end;

procedure TFSPlanificateur.RBImporteEditNumRegistreCommerceClick(
  Sender: TObject);
begin
     if(FSPlanificateur.RBImporteEditNumRegistreCommerce.Checked=true)then
     begin
          FSPlanificateur.EditListeIdentificateurEntreprise.Left:=FSPlanificateur.RBImporteEditNumRegistreCommerce.Left;
          FSPlanificateur.EditListeIdentificateurEntreprise.Top:=FSPlanificateur.RBImporteEditNumRegistreCommerce.Top;
          FSPlanificateur.EditListeIdentificateurEntreprise.Visible:=FSPlanificateur.RBImporteEditNumRegistreCommerce.Enabled;
          ListeIdentificateurEntrepriseComboBox(FSPlanificateur.EditListeIdentificateurEntreprise,false,FSPlanificateur.EditTypeDataEntreprise.Text);
          FSPlanificateur.EditListeIdentificateurEntreprise.ItemIndex:=0;
     end
     else
     begin
          FSPlanificateur.RBImporteEditNumRegistreCommerce.Caption:='..........';
          FSPlanificateur.EditNumRegistreCommerce.Text:='';
          FSPlanificateur.EditNumRegistreCommerce.SetFocus;
     end;
end;

procedure TFSPlanificateur.RBImporteEditNumAgrementClick(Sender: TObject);
begin
     if(FSPlanificateur.RBImporteEditNumAgrement.Checked=true)then
     begin
          FSPlanificateur.EditListeIdentificateurEntreprise.Left:=FSPlanificateur.RBImporteEditNumAgrement.Left;
          FSPlanificateur.EditListeIdentificateurEntreprise.Top:=FSPlanificateur.RBImporteEditNumAgrement.Top;
          FSPlanificateur.EditListeIdentificateurEntreprise.Visible:=FSPlanificateur.RBImporteEditNumAgrement.Enabled;
          ListeIdentificateurEntrepriseComboBox(FSPlanificateur.EditListeIdentificateurEntreprise,false,FSPlanificateur.EditTypeDataEntreprise.Text);
          FSPlanificateur.EditListeIdentificateurEntreprise.ItemIndex:=0;
     end
     else
     begin
          FSPlanificateur.RBImporteEditNumAgrement.Caption:='..........';
          FSPlanificateur.EditNumAgrement.Text:='';
          FSPlanificateur.EditNumAgrement.SetFocus;
     end;
end;

procedure TFSPlanificateur.RBImporteEditNITNPIClick(Sender: TObject);
begin
     if(FSPlanificateur.RBImporteEditNITNPI.Checked=true)then
     begin
          FSPlanificateur.EditListeIdentificateurEntreprise.Left:=FSPlanificateur.RBImporteEditNITNPI.Left;
          FSPlanificateur.EditListeIdentificateurEntreprise.Top:=FSPlanificateur.RBImporteEditNITNPI.Top;
          FSPlanificateur.EditListeIdentificateurEntreprise.Visible:=FSPlanificateur.RBImporteEditNITNPI.Enabled;
          ListeIdentificateurEntrepriseComboBox(FSPlanificateur.EditListeIdentificateurEntreprise,false,FSPlanificateur.EditTypeDataEntreprise.Text);
          FSPlanificateur.EditListeIdentificateurEntreprise.ItemIndex:=0;
     end
     else
     begin
          FSPlanificateur.RBImporteEditNITNPI.Caption:='..........';
          FSPlanificateur.EditNITNPI.Text:='';
          FSPlanificateur.EditNITNPI.SetFocus;
     end;
end;

procedure TFSPlanificateur.RBImporteEditPKClick(Sender: TObject);
begin
     if(FSPlanificateur.RBImporteEditPK.Checked=true)then
     begin
          FSPlanificateur.EditListeIdentificateurEntreprise.Left:=FSPlanificateur.RBImporteEditPK.Left;
          FSPlanificateur.EditListeIdentificateurEntreprise.Top:=FSPlanificateur.RBImporteEditPK.Top;
          FSPlanificateur.EditListeIdentificateurEntreprise.Visible:=FSPlanificateur.RBImporteEditPK.Enabled;
          ListeIdentificateurEntrepriseComboBox(FSPlanificateur.EditListeIdentificateurEntreprise,false,FSPlanificateur.EditTypeDataEntreprise.Text);
          FSPlanificateur.EditListeIdentificateurEntreprise.ItemIndex:=0;
     end
     else
     begin
          FSPlanificateur.RBImporteEditPK.Caption:='..........';
          FSPlanificateur.EditPK.Text:='';
          FSPlanificateur.EditPK.SetFocus;
     end;
end;

procedure TFSPlanificateur.RBImporteEditConventionPretClick(
  Sender: TObject);
begin
     if(FSPlanificateur.RBImporteEditConventionPret.Checked=true)then
     begin
          FSPlanificateur.EditListeIdentificateurEntreprise.Left:=FSPlanificateur.RBImporteEditConventionPret.Left;
          FSPlanificateur.EditListeIdentificateurEntreprise.Top:=FSPlanificateur.RBImporteEditConventionPret.Top;
          FSPlanificateur.EditListeIdentificateurEntreprise.Visible:=FSPlanificateur.RBImporteEditConventionPret.Enabled;
          ListeIdentificateurEntrepriseComboBox(FSPlanificateur.EditListeIdentificateurEntreprise,false,FSPlanificateur.EditTypeDataEntreprise.Text);
          FSPlanificateur.EditListeIdentificateurEntreprise.ItemIndex:=0;
          FSPlanificateur.AfficheDocumentBanque.Visible:=true;
          FSPlanificateur.EditDocumentBanque.Text:='';
          FSPlanificateur.EditDocumentBanque.SetFocus;
     end
     else
     begin
          FSPlanificateur.RBImporteEditConventionPret.Caption:='..........';
          FSPlanificateur.EditConventionPret.Text:='';
          FSPlanificateur.EditConventionPret.SetFocus;
          FSPlanificateur.AfficheDocumentBanque.Visible:=false;
     end;
end;

procedure TFSPlanificateur.BitBtn13Click(Sender: TObject);
begin
     FSPlanificateur.AfficheModifierDecision.Visible:=false;
     FSPlanificateur.RBDecisionModifier.Checked:=false;
     FSPlanificateur.RBDecisionModifier.Caption:='Système';
end;

procedure TFSPlanificateur.BitBtn12Click(Sender: TObject);
begin
     FSPlanificateur.AfficheModifierDecision.Visible:=false;
     FSPlanificateur.RBDecisionModifier.Checked:=true;
     FSPlanificateur.RBDecisionModifier.Caption:='Modifié';
end;

procedure TFSPlanificateur.BitBtn11Click(Sender: TObject);
begin
     ChargerArticles;

     FSPlanificateur.AfficheModifierDecision.Left:=FSPlanificateur.CadreDate.Left;
     FSPlanificateur.AfficheModifierDecision.Top:=FSPlanificateur.CadreDate.Top;
     FSPlanificateur.AfficheModifierDecision.Visible:=true;
end;

procedure TFSPlanificateur.EditTypeDataEntrepriseChange(Sender: TObject);
begin
     if(FSPlanificateur.EditListeIdentificateurEntreprise.Visible=true)then
     begin
          ListeIdentificateurEntrepriseComboBox(FSPlanificateur.EditListeIdentificateurEntreprise,false,FSPlanificateur.EditTypeDataEntreprise.Text);
          FSPlanificateur.EditListeIdentificateurEntreprise.ItemIndex:=0;
     end;
end;

procedure TFSPlanificateur.EditMontantTTCExit(Sender: TObject);
begin
     FSPlanificateur.EditMontantHT.Text:=Vergule(FSPlanificateur.EditMontantHT.Text,'2','C','');
end;

procedure TFSPlanificateur.BitBtn14Click(Sender: TObject);
var Resultat,Reste:Integer;  RProjet,RBien,RBloc:RProjetFinances;
    IntitulleIdentificateur:string;
begin

//FSPlanificateur.AfficheDocumentAssocierPlanificateur.Visible:=false;
FSPlanificateur.AfficheModifierDecision.Visible:=false;
FSPlanificateur.AfficheModifierAttestationPaiement.Visible:=false;
FSPlanificateur.AfficheVerssement.Visible:=true;
FSPlanificateur.AfficheDecision.Left:=344;
FSPlanificateur.AfficheDecision.Top:=96;
FSPlanificateur.AfficheDecision.Visible:=true;
FSPlanificateur.AfficheNatureEtat.Caption:='Attestation de versement';
FSPlanificateur.RBDecisionModifier.Checked:=false;
FSPlanificateur.RBDecisionModifier.Caption:='Système';
FSPlanificateur.AttestationVersementModifier.Checked:=false;
FSPlanificateur.AttestationVersementModifier.Caption:='Système';

RProjet:=ChercherProjetFinance(FSPlanificateur.EditCodeProjet.Text,PositionProjetFinancesRecherche);
RBloc:=ChercherProjetFinance(Firstlaters(FSPlanificateur.TableauPlanificateur.Cells[10,FSPlanificateur.TableauPlanificateur.Row],longueur(FSPlanificateur.TableauPlanificateur.Cells[10,FSPlanificateur.TableauPlanificateur.Row])-5),PositionProjetFinancesRecherche);
RBien:=ChercherProjetFinance(FSPlanificateur.TableauPlanificateur.Cells[10,FSPlanificateur.TableauPlanificateur.Row],PositionProjetFinancesRecherche);
RClient:=ChercherClients(FSPlanificateur.TableauPlanificateur.Cells[5,FSPlanificateur.TableauPlanificateur.Row],FSPlanificateur.EditChargementTypeProces.Text,FSPlanificateur.EditChargementFichierConcerne.Text);


if(FSPlanificateur.EditTypeDataEntreprise.Text='')then
begin
     ListeOrganismeTutelleComboBox(FSPlanificateur.EditTypeDataEntreprise,false);
     FSPlanificateur.EditTypeDataEntreprise.ItemIndex:=0;
end;
FSPlanificateur.EditTitreDate.Date:=date;
FSPlanificateur.EditTitreReference.Text:='D'+CompleteZeroGauche(FSPlanificateur.TableauPlanificateur.Cells[3,FSPlanificateur.TableauPlanificateur.Row],'2')+'/P'+lastlaters(RProjet.NumProjetFinance,2)+'/'+lastlaters(datetostr(date),4);
FSPlanificateur.NPermisConstruire.Caption:='N° Permis de Const. P'+lastlaters(RProjet.NumProjetFinance,2)+':';
FSPlanificateur.RBImporteEditPK.Caption:='N° Permis de Const. P'+lastlaters(RProjet.NumProjetFinance,2);
FSPlanificateur.NConventionPretBanque.Caption:='N° Convention Prêt P'+lastlaters(RProjet.NumProjetFinance,2)+':';
FSPlanificateur.RBImporteEditConventionPret.Caption:='N° Convention Prêt P'+lastlaters(RProjet.NumProjetFinance,2);

if(FSPlanificateur.RBImporteEditNumRegistreCommerce.Caption<>'')then IntitulleIdentificateur:=FSPlanificateur.RBImporteEditNumRegistreCommerce.Caption
else if(FSPlanificateur.RBImporteEditNumAgrement.Caption<>'')then IntitulleIdentificateur:=FSPlanificateur.RBImporteEditNumAgrement.Caption
else if(FSPlanificateur.RBImporteEditNITNPI.Caption<>'')then IntitulleIdentificateur:=FSPlanificateur.RBImporteEditNITNPI.Caption
else if(FSPlanificateur.RBImporteEditPK.Caption<>'')then IntitulleIdentificateur:=FSPlanificateur.RBImporteEditPK.Caption
else if(FSPlanificateur.RBImporteEditConventionPret.Caption<>'')then IntitulleIdentificateur:=FSPlanificateur.RBImporteEditConventionPret.Caption
else IntitulleIdentificateur:='';
FSPlanificateur.EditTypeDataEntreprise.Text:=ChercherOrganismePourIdentifiant(IntitulleIdentificateur);

if(FSPlanificateur.RBImporteEditNumRegistreCommerce.Checked=true)
then FSPlanificateur.EditNumRegistreCommerce.Text:=ImporteDataIdentificateurEntreprise(FSPlanificateur.RBImporteEditNumRegistreCommerce.Caption)
else FSPlanificateur.EditNumRegistreCommerce.Text:='';

if(FSPlanificateur.RBImporteEditNumAgrement.Checked=true)
then FSPlanificateur.EditNumAgrement.Text:=ImporteDataIdentificateurEntreprise(FSPlanificateur.RBImporteEditNumAgrement.Caption)
else FSPlanificateur.EditNumAgrement.Text:='';

if(FSPlanificateur.RBImporteEditNITNPI.Checked=true)
then FSPlanificateur.EditNITNPI.Text:=ImporteDataIdentificateurEntreprise(FSPlanificateur.RBImporteEditNITNPI.Caption)
else FSPlanificateur.EditNITNPI.Text:='';

if(FSPlanificateur.RBImporteEditPK.Checked=true)
then FSPlanificateur.EditPK.Text:=ImporteDataIdentificateurEntreprise(FSPlanificateur.RBImporteEditPK.Caption)
else FSPlanificateur.EditPK.Text:='';

if(FSPlanificateur.RBImporteEditConventionPret.Checked=true)
then FSPlanificateur.EditConventionPret.Text:=ImporteDataIdentificateurEntreprise(FSPlanificateur.RBImporteEditConventionPret.Caption)
else FSPlanificateur.EditConventionPret.Text:='';

FSPlanificateur.AfficheDocumentBanque.Visible:=false;

FSPlanificateur.EditDemandeur.Text:='Mr '+RClient.NomTiers+' '+RClient.PrenomTiers;
FSPlanificateur.EditNatureBien.Text:=RBien.DesignationProjetFinance;
FSPlanificateur.EditTypeBien.Text:=RBien.NatureProjetFinance;
FSPlanificateur.EditReferenceBien.Text:=RBien.Codification;

if(RBien.LocalisationPreciseProjetFinance='')then
begin
     FSPlanificateur.EditLocalisationPrecise.Text:='';

     if(strtointeger(Midellaters(RBien.Codification,2,2))=0)then
     begin
          FSPlanificateur.EditLocalisationPrecise.Text:='RDC';
     end
     else
     if(strtointeger(Midellaters(RBien.Codification,2,2))=1)then
     begin
          FSPlanificateur.EditLocalisationPrecise.Text:=Midellaters(RBien.Codification,2,2)+' er étage';
     end
     else
     if(strtointeger(Midellaters(RBien.Codification,2,2))>1)then
     begin
          FSPlanificateur.EditLocalisationPrecise.Text:=Midellaters(RBien.Codification,2,2)+' ème étage';
     end;

     FSPlanificateur.EditLocalisationPrecise.Text:=FSPlanificateur.EditLocalisationPrecise.Text+' du '+RBloc.DesignationProjetFinance;

     Division(strtointeger(Midellaters(RBien.Codification,3,3)),2,Resultat,Reste);
     if(Reste=0)then FSPlanificateur.EditLocalisationPrecise.Text:=FSPlanificateur.EditLocalisationPrecise.Text+' du coté GAUCHE' else FSPlanificateur.EditLocalisationPrecise.Text:=FSPlanificateur.EditLocalisationPrecise.Text+' du coté DROIT';
end
else
begin
     FSPlanificateur.EditLocalisationPrecise.Text:=RBien.LocalisationPreciseProjetFinance;
end;

if(RBien.NumLotProjetFinance<>'')then
begin
     FSPlanificateur.RBAfficherNumLot.Checked:=true;
     FSPlanificateur.EditNumLot.Text:=RBien.NumLotProjetFinance;
end
else
begin
     FSPlanificateur.RBAfficherNumLot.Checked:=false;
     FSPlanificateur.EditNumLot.Text:='';
end;

FSPlanificateur.EditSurfaceHabitable.Text:=Vergule(floattostr(RBien.MesurePartielleProjetFinance),'2','C','');
FSPlanificateur.EditSurfaceUtile.Text:=Vergule(FSPlanificateur.TableauPlanificateur.Cells[7,FSPlanificateur.TableauPlanificateur.Row],'2','C','');
FSPlanificateur.EditTypeUsage.Text:=RBien.TypeUsage;
FSPlanificateur.EditMontantHT.Text:=Vergule(FSPlanificateur.TableauPlanificateur.Cells[9,FSPlanificateur.TableauPlanificateur.Row],'2','C','');
FSPlanificateur.EditTVA.Text:=Vergule(floattostr(RBien.TaxePourcentage),'2','C','');
FSPlanificateur.EditMontantTTC.Text:=Vergule(floattostr(strtoreal(FSPlanificateur.TableauPlanificateur.Cells[9,FSPlanificateur.TableauPlanificateur.Row])*(1+(RBien.TaxePourcentage/100))),'2','C','');
FSPlanificateur.EditMontantTTCLettre.Text:=ChiffreEnLettre(FSPlanificateur.EditMontantTTC.Text);
FSPlanificateur.EditMontantVersement.Text:=Vergule(FSPlanificateur.EditApport.Text,'2','C','');
FSPlanificateur.EditMontantVersementLettre.Text:=ChiffreEnLettre(FSPlanificateur.EditMontantVersement.Text);
FSPlanificateur.EditAdresseProjet.Text:=RProjet.AdresseProjetFinance;

ListeTypeFichierTiersBox(FSPlanificateur.EditSelectTypeProces.Text,'','',FSPlanificateur.EditFichierConcerne,FSPlanificateur.EditTitreFichierConcerne);
FSPlanificateur.EditSignataire.Text:=ImporteDataProcesTiersSpeciale(FSPlanificateur.EditSelectTypeProces.Text,FSPlanificateur.EditFichierConcerne.Text,'',FSPlanificateur.EditFonctionSignataire.Text);

FSPlanificateur.EditMontantVersement.Text:='';
FSPlanificateur.EditMontantVersementLettre.Lines.Text:='';

FSPlanificateur.EditMontantVersement.SetFocus;
end;

procedure TFSPlanificateur.EditMontantVersementExit(Sender: TObject);
begin
     FSPlanificateur.EditMontantVersement.Text:=Vergule(FSPlanificateur.EditMontantVersement.Text,'2','C','');
     FSPlanificateur.EditMontantVersementLettre.Text:=ChiffreEnLettre(FSPlanificateur.EditMontantVersement.Text);
end;

procedure TFSPlanificateur.EditFonctionSignataireChange(Sender: TObject);
begin
ListeTypeFichierTiersBox(FSPlanificateur.EditSelectTypeProces.Text,'','',FSPlanificateur.EditFichierConcerne,FSPlanificateur.EditTitreFichierConcerne);
FSPlanificateur.EditSignataire.Text:=ImporteDataProcesTiersSpeciale(FSPlanificateur.EditSelectTypeProces.Text,FSPlanificateur.EditFichierConcerne.Text,'',FSPlanificateur.EditFonctionSignataire.Text);
end;

procedure TFSPlanificateur.EditSelectTypeProcesChange(Sender: TObject);
begin
ListeTypeFichierTiersBox(FSPlanificateur.EditSelectTypeProces.Text,'','',FSPlanificateur.EditFichierConcerne,FSPlanificateur.EditTitreFichierConcerne);
FSPlanificateur.EditSignataire.Text:=ImporteDataProcesTiersSpeciale(FSPlanificateur.EditSelectTypeProces.Text,FSPlanificateur.EditFichierConcerne.Text,'',FSPlanificateur.EditFonctionSignataire.Text);
end;

procedure TFSPlanificateur.EditFichierConcerneChange(Sender: TObject);
begin
ListeTypeFichierTiersBox(FSPlanificateur.EditSelectTypeProces.Text,'','',FSPlanificateur.EditFichierConcerne,FSPlanificateur.EditTitreFichierConcerne);
FSPlanificateur.EditSignataire.Text:=ImporteDataProcesTiersSpeciale(FSPlanificateur.EditSelectTypeProces.Text,FSPlanificateur.EditFichierConcerne.Text,'',FSPlanificateur.EditFonctionSignataire.Text);
end;

procedure TFSPlanificateur.BitBtn15Click(Sender: TObject);
begin
     FSPlanificateur.AfficheModifierAttestationPaiement.Visible:=false;
end;

procedure TFSPlanificateur.BitBtn16Click(Sender: TObject);
begin
     FSPlanificateur.AfficheModifierAttestationPaiement.Visible:=false;
     FSPlanificateur.AttestationVersementModifier.Checked:=true;
     FSPlanificateur.AttestationVersementModifier.Caption:='Modifié';
end;

procedure TFSPlanificateur.BitBtn17Click(Sender: TObject);
var Resultat,Reste:Integer;  RProjet,RBien,RBloc:RProjetFinances;
    IntitulleIdentificateur:string;
begin

//FSPlanificateur.AfficheDocumentAssocierPlanificateur.Visible:=false;
FSPlanificateur.AfficheModifierDecision.Visible:=false;
FSPlanificateur.AfficheModifierAttestationPaiement.Visible:=false;
FSPlanificateur.AfficheVerssement.Visible:=false;
FSPlanificateur.AfficheDecision.Left:=344;
FSPlanificateur.AfficheDecision.Top:=96;
FSPlanificateur.AfficheDecision.Visible:=true;
FSPlanificateur.AfficheNatureEtat.Caption:='FACTURE';
FSPlanificateur.RBDecisionModifier.Checked:=false;
FSPlanificateur.RBDecisionModifier.Caption:='Système';

RProjet:=ChercherProjetFinance(FSPlanificateur.EditCodeProjet.Text,PositionProjetFinancesRecherche);
RBloc:=ChercherProjetFinance(Firstlaters(FSPlanificateur.TableauPlanificateur.Cells[10,FSPlanificateur.TableauPlanificateur.Row],longueur(FSPlanificateur.TableauPlanificateur.Cells[10,FSPlanificateur.TableauPlanificateur.Row])-5),PositionProjetFinancesRecherche);
RBien:=ChercherProjetFinance(FSPlanificateur.TableauPlanificateur.Cells[10,FSPlanificateur.TableauPlanificateur.Row],PositionProjetFinancesRecherche);
RClient:=ChercherClients(FSPlanificateur.TableauPlanificateur.Cells[5,FSPlanificateur.TableauPlanificateur.Row],FSPlanificateur.EditChargementTypeProces.Text,FSPlanificateur.EditChargementFichierConcerne.Text);


if(FSPlanificateur.EditTypeDataEntreprise.Text='')then
begin
     ListeOrganismeTutelleComboBox(FSPlanificateur.EditTypeDataEntreprise,false);
     FSPlanificateur.EditTypeDataEntreprise.ItemIndex:=0;
end;
FSPlanificateur.EditTitreDate.Date:=date;
FSPlanificateur.EditTitreReference.Text:='D'+CompleteZeroGauche(FSPlanificateur.TableauPlanificateur.Cells[3,FSPlanificateur.TableauPlanificateur.Row],'2')+'/P'+lastlaters(RProjet.NumProjetFinance,2)+'/'+lastlaters(datetostr(date),4);
FSPlanificateur.NPermisConstruire.Caption:='N° Permis de Const. P'+lastlaters(RProjet.NumProjetFinance,2)+':';
FSPlanificateur.RBImporteEditPK.Caption:='N° Permis de Const. P'+lastlaters(RProjet.NumProjetFinance,2);
FSPlanificateur.NConventionPretBanque.Caption:='N° Convention Prêt P'+lastlaters(RProjet.NumProjetFinance,2)+':';
FSPlanificateur.RBImporteEditConventionPret.Caption:='N° Convention Prêt P'+lastlaters(RProjet.NumProjetFinance,2);

if(FSPlanificateur.RBImporteEditNumRegistreCommerce.Caption<>'')then IntitulleIdentificateur:=FSPlanificateur.RBImporteEditNumRegistreCommerce.Caption
else if(FSPlanificateur.RBImporteEditNumAgrement.Caption<>'')then IntitulleIdentificateur:=FSPlanificateur.RBImporteEditNumAgrement.Caption
else if(FSPlanificateur.RBImporteEditNITNPI.Caption<>'')then IntitulleIdentificateur:=FSPlanificateur.RBImporteEditNITNPI.Caption
else if(FSPlanificateur.RBImporteEditPK.Caption<>'')then IntitulleIdentificateur:=FSPlanificateur.RBImporteEditPK.Caption
else if(FSPlanificateur.RBImporteEditConventionPret.Caption<>'')then IntitulleIdentificateur:=FSPlanificateur.RBImporteEditConventionPret.Caption
else IntitulleIdentificateur:='';
FSPlanificateur.EditTypeDataEntreprise.Text:=ChercherOrganismePourIdentifiant(IntitulleIdentificateur);

if(FSPlanificateur.RBImporteEditNumRegistreCommerce.Checked=true)
then FSPlanificateur.EditNumRegistreCommerce.Text:=ImporteDataIdentificateurEntreprise(FSPlanificateur.RBImporteEditNumRegistreCommerce.Caption)
else FSPlanificateur.EditNumRegistreCommerce.Text:='';

if(FSPlanificateur.RBImporteEditNumAgrement.Checked=true)
then FSPlanificateur.EditNumAgrement.Text:=ImporteDataIdentificateurEntreprise(FSPlanificateur.RBImporteEditNumAgrement.Caption)
else FSPlanificateur.EditNumAgrement.Text:='';

if(FSPlanificateur.RBImporteEditNITNPI.Checked=true)
then FSPlanificateur.EditNITNPI.Text:=ImporteDataIdentificateurEntreprise(FSPlanificateur.RBImporteEditNITNPI.Caption)
else FSPlanificateur.EditNITNPI.Text:='';

if(FSPlanificateur.RBImporteEditPK.Checked=true)
then FSPlanificateur.EditPK.Text:=ImporteDataIdentificateurEntreprise(FSPlanificateur.RBImporteEditPK.Caption)
else FSPlanificateur.EditPK.Text:='';

if(FSPlanificateur.RBImporteEditConventionPret.Checked=true)
then FSPlanificateur.EditConventionPret.Text:=ImporteDataIdentificateurEntreprise(FSPlanificateur.RBImporteEditConventionPret.Caption)
else FSPlanificateur.EditConventionPret.Text:='';

FSPlanificateur.AfficheDocumentBanque.Visible:=false;

FSPlanificateur.EditDemandeur.Text:='Mr '+RClient.NomTiers+' '+RClient.PrenomTiers;
FSPlanificateur.EditNatureBien.Text:=RBien.DesignationProjetFinance;
FSPlanificateur.EditTypeBien.Text:=RBien.NatureProjetFinance;
FSPlanificateur.EditReferenceBien.Text:=RBien.Codification;

if(RBien.LocalisationPreciseProjetFinance='')then
begin
     FSPlanificateur.EditLocalisationPrecise.Text:='';

     if(strtointeger(Midellaters(RBien.Codification,2,2))=0)then
     begin
          FSPlanificateur.EditLocalisationPrecise.Text:='RDC';
     end
     else
     if(strtointeger(Midellaters(RBien.Codification,2,2))=1)then
     begin
          FSPlanificateur.EditLocalisationPrecise.Text:=Midellaters(RBien.Codification,2,2)+' er étage';
     end
     else
     if(strtointeger(Midellaters(RBien.Codification,2,2))>1)then
     begin
          FSPlanificateur.EditLocalisationPrecise.Text:=Midellaters(RBien.Codification,2,2)+' ème étage';
     end;

     FSPlanificateur.EditLocalisationPrecise.Text:=FSPlanificateur.EditLocalisationPrecise.Text+' du '+RBloc.DesignationProjetFinance;

     Division(strtointeger(Midellaters(RBien.Codification,3,3)),2,Resultat,Reste);
     if(Reste=0)then FSPlanificateur.EditLocalisationPrecise.Text:=FSPlanificateur.EditLocalisationPrecise.Text+' du coté GAUCHE' else FSPlanificateur.EditLocalisationPrecise.Text:=FSPlanificateur.EditLocalisationPrecise.Text+' du coté DROIT';
end
else
begin
     FSPlanificateur.EditLocalisationPrecise.Text:=RBien.LocalisationPreciseProjetFinance;
end;

if(RBien.NumLotProjetFinance<>'')then
begin
     FSPlanificateur.RBAfficherNumLot.Checked:=true;
     FSPlanificateur.EditNumLot.Text:=RBien.NumLotProjetFinance;
end
else
begin
     FSPlanificateur.RBAfficherNumLot.Checked:=false;
     FSPlanificateur.EditNumLot.Text:='';
end;

FSPlanificateur.EditSurfaceHabitable.Text:=Vergule(floattostr(RBien.MesurePartielleProjetFinance),'2','C','');
FSPlanificateur.EditSurfaceUtile.Text:=Vergule(FSPlanificateur.TableauPlanificateur.Cells[7,FSPlanificateur.TableauPlanificateur.Row],'2','C','');
FSPlanificateur.EditTypeUsage.Text:=RBien.TypeUsage;
FSPlanificateur.EditMontantHT.Text:=Vergule(FSPlanificateur.TableauPlanificateur.Cells[9,FSPlanificateur.TableauPlanificateur.Row],'2','C','');
FSPlanificateur.EditTVA.Text:=Vergule(floattostr(RBien.TaxePourcentage),'2','C','');
FSPlanificateur.EditMontantTTC.Text:=Vergule(floattostr(strtoreal(FSPlanificateur.TableauPlanificateur.Cells[9,FSPlanificateur.TableauPlanificateur.Row])*(1+(RBien.TaxePourcentage/100))),'2','C','');
FSPlanificateur.EditMontantTTCLettre.Text:=ChiffreEnLettre(FSPlanificateur.EditMontantTTC.Text);
FSPlanificateur.EditAdresseProjet.Text:=RProjet.AdresseProjetFinance;
end;

procedure TFSPlanificateur.EditLocalisationPreciseChange(Sender: TObject);
begin
     FSPlanificateur.EditLocalisationPrecise.Text
end;

procedure TFSPlanificateur.EditMontantHTKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     FSPlanificateur.EditMontantTTC.Text:=Vergule(floattostr(strtoreal(FSPlanificateur.EditMontantHT.Text)+(strtoreal(FSPlanificateur.EditMontantHT.Text)*strtoreal(FSPlanificateur.EditTVA.Text)/100)),'2','C','');
     FSPlanificateur.EditMontantTTCLettre.Text:=ChiffreEnLettre(FSPlanificateur.EditMontantTTC.Text);
end;

procedure TFSPlanificateur.EditTVAKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     FSPlanificateur.EditMontantTTC.Text:=Vergule(floattostr(strtoreal(FSPlanificateur.EditMontantHT.Text)+(strtoreal(FSPlanificateur.EditMontantHT.Text)*strtoreal(FSPlanificateur.EditTVA.Text)/100)),'2','C','');
     FSPlanificateur.EditMontantTTCLettre.Text:=ChiffreEnLettre(FSPlanificateur.EditMontantTTC.Text);
end;

procedure TFSPlanificateur.EditTVAExit(Sender: TObject);
begin
     FSPlanificateur.EditTVA.Text:=Vergule(FSPlanificateur.EditTVA.Text,'2','C','');
end;

procedure TFSPlanificateur.EditSurfaceHabitableKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key in[',','.']then key:=DecimalSeparator;
end;

procedure TFSPlanificateur.EditSurfaceUtileKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key in[',','.']then key:=DecimalSeparator;
end;

procedure TFSPlanificateur.EditMontantHTKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key in[',','.']then key:=DecimalSeparator;
end;

procedure TFSPlanificateur.EditTVAKeyPress(Sender: TObject; var Key: Char);
begin
     if key in[',','.']then key:=DecimalSeparator;
end;

procedure TFSPlanificateur.EditMontantTTCKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key in[',','.']then key:=DecimalSeparator;
end;

procedure TFSPlanificateur.EditMontantVersementKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key in[',','.']then key:=DecimalSeparator;
end;

procedure TFSPlanificateur.EditMontantTTCADeduireKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in [VK_RETURN]then
     begin
          FSPlanificateur.EditMontantHT.Text:=Vergule(floattostr(strtoreal(FSPlanificateur.TableauPlanificateur.Cells[9,FSPlanificateur.TableauPlanificateur.Row])-(strtoreal(FSPlanificateur.EditMontantTTCADeduire.Text)/(1+(strtoreal(FSPlanificateur.EditTVA.Text)/100)))),'2','C','');
          FSPlanificateur.EditMontantTTC.Text:=Vergule(floattostr(strtoreal(FSPlanificateur.EditMontantHT.Text)+(strtoreal(FSPlanificateur.EditMontantHT.Text)*strtoreal(FSPlanificateur.EditTVA.Text)/100)),'2','C','');
          FSPlanificateur.EditMontantTTCLettre.Text:=ChiffreEnLettre(FSPlanificateur.EditMontantTTC.Text);

          FSPlanificateur.AfficheMontantTTCADeduire.Visible:=false;
     end;
end;

procedure TFSPlanificateur.BitBtn18Click(Sender: TObject);
begin
     FSPlanificateur.AfficheMontantTTCADeduire.Visible:=true;
     FSPlanificateur.EditMontantTTCADeduire.Text:='';
     FSPlanificateur.EditMontantTTCADeduire.SetFocus;
end;

procedure TFSPlanificateur.EditMontantTTCADeduireKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key in[',','.']then key:=DecimalSeparator;
end;

procedure TFSPlanificateur.BitBtn19Click(Sender: TObject);
var Resultat,Reste:Integer;  RProjet,RBien,RBloc:RProjetFinances;
    IntitulleIdentificateur:string;
begin

//FSPlanificateur.AfficheDocumentAssocierPlanificateur.Visible:=false;
FSPlanificateur.AfficheModifierDecision.Visible:=false;
FSPlanificateur.AfficheModifierAttestationPaiement.Visible:=false;
FSPlanificateur.AfficheVerssement.Visible:=false;
FSPlanificateur.AfficheDecision.Left:=344;
FSPlanificateur.AfficheDecision.Top:=96;
FSPlanificateur.AfficheDecision.Visible:=true;
FSPlanificateur.AfficheNatureEtat.Caption:='DECISION PHYSIQUE';
FSPlanificateur.RBDecisionModifier.Checked:=false;
FSPlanificateur.RBDecisionModifier.Caption:='Système';

RProjet:=ChercherProjetFinance(FSPlanificateur.EditCodeProjet.Text,PositionProjetFinancesRecherche);
RBloc:=ChercherProjetFinance(Firstlaters(FSPlanificateur.TableauPlanificateur.Cells[10,FSPlanificateur.TableauPlanificateur.Row],longueur(FSPlanificateur.TableauPlanificateur.Cells[10,FSPlanificateur.TableauPlanificateur.Row])-5),PositionProjetFinancesRecherche);
RBien:=ChercherProjetFinance(FSPlanificateur.TableauPlanificateur.Cells[10,FSPlanificateur.TableauPlanificateur.Row],PositionProjetFinancesRecherche);
RClient:=ChercherClients(FSPlanificateur.TableauPlanificateur.Cells[5,FSPlanificateur.TableauPlanificateur.Row],FSPlanificateur.EditChargementTypeProces.Text,FSPlanificateur.EditChargementFichierConcerne.Text);


if(FSPlanificateur.EditTypeDataEntreprise.Text='')then
begin
     ListeOrganismeTutelleComboBox(FSPlanificateur.EditTypeDataEntreprise,false);
     FSPlanificateur.EditTypeDataEntreprise.ItemIndex:=0;
end;
FSPlanificateur.EditTitreDate.Date:=date;
FSPlanificateur.EditTitreReference.Text:='D'+CompleteZeroGauche(FSPlanificateur.TableauPlanificateur.Cells[3,FSPlanificateur.TableauPlanificateur.Row],'2')+'/P'+lastlaters(RProjet.NumProjetFinance,2)+'/'+lastlaters(datetostr(date),4);
FSPlanificateur.NPermisConstruire.Caption:='N° Permis de Const. P'+lastlaters(RProjet.NumProjetFinance,2)+':';
FSPlanificateur.RBImporteEditPK.Caption:='N° Permis de Const. P'+lastlaters(RProjet.NumProjetFinance,2);
FSPlanificateur.NConventionPretBanque.Caption:='N° Convention Prêt P'+lastlaters(RProjet.NumProjetFinance,2)+':';
FSPlanificateur.RBImporteEditConventionPret.Caption:='N° Convention Prêt P'+lastlaters(RProjet.NumProjetFinance,2);

if(FSPlanificateur.RBImporteEditNumRegistreCommerce.Caption<>'')then IntitulleIdentificateur:=FSPlanificateur.RBImporteEditNumRegistreCommerce.Caption
else if(FSPlanificateur.RBImporteEditNumAgrement.Caption<>'')then IntitulleIdentificateur:=FSPlanificateur.RBImporteEditNumAgrement.Caption
else if(FSPlanificateur.RBImporteEditNITNPI.Caption<>'')then IntitulleIdentificateur:=FSPlanificateur.RBImporteEditNITNPI.Caption
else if(FSPlanificateur.RBImporteEditPK.Caption<>'')then IntitulleIdentificateur:=FSPlanificateur.RBImporteEditPK.Caption
else if(FSPlanificateur.RBImporteEditConventionPret.Caption<>'')then IntitulleIdentificateur:=FSPlanificateur.RBImporteEditConventionPret.Caption
else IntitulleIdentificateur:='';
FSPlanificateur.EditTypeDataEntreprise.Text:=ChercherOrganismePourIdentifiant(IntitulleIdentificateur);

if(FSPlanificateur.RBImporteEditNumRegistreCommerce.Checked=true)
then FSPlanificateur.EditNumRegistreCommerce.Text:=ImporteDataIdentificateurEntreprise(FSPlanificateur.RBImporteEditNumRegistreCommerce.Caption)
else FSPlanificateur.EditNumRegistreCommerce.Text:='';

if(FSPlanificateur.RBImporteEditNumAgrement.Checked=true)
then FSPlanificateur.EditNumAgrement.Text:=ImporteDataIdentificateurEntreprise(FSPlanificateur.RBImporteEditNumAgrement.Caption)
else FSPlanificateur.EditNumAgrement.Text:='';

if(FSPlanificateur.RBImporteEditNITNPI.Checked=true)
then FSPlanificateur.EditNITNPI.Text:=ImporteDataIdentificateurEntreprise(FSPlanificateur.RBImporteEditNITNPI.Caption)
else FSPlanificateur.EditNITNPI.Text:='';

if(FSPlanificateur.RBImporteEditPK.Checked=true)
then FSPlanificateur.EditPK.Text:=ImporteDataIdentificateurEntreprise(FSPlanificateur.RBImporteEditPK.Caption)
else FSPlanificateur.EditPK.Text:='';

if(FSPlanificateur.RBImporteEditConventionPret.Checked=true)
then FSPlanificateur.EditConventionPret.Text:=ImporteDataIdentificateurEntreprise(FSPlanificateur.RBImporteEditConventionPret.Caption)
else FSPlanificateur.EditConventionPret.Text:='';

FSPlanificateur.EditDemandeur.Text:='Mr '+RClient.NomTiers+' '+RClient.PrenomTiers;
FSPlanificateur.EditNatureBien.Text:=RBien.DesignationProjetFinance;
FSPlanificateur.EditTypeBien.Text:=RBien.NatureProjetFinance;
FSPlanificateur.EditReferenceBien.Text:=RBien.Codification;

FSPlanificateur.AfficheDocumentBanque.Visible:=false;

if(RBien.LocalisationPreciseProjetFinance='')then
begin
     FSPlanificateur.EditLocalisationPrecise.Text:='';

     if(strtointeger(Midellaters(RBien.Codification,2,2))=0)then
     begin
          FSPlanificateur.EditLocalisationPrecise.Text:='RDC';
     end
     else
     if(strtointeger(Midellaters(RBien.Codification,2,2))=1)then
     begin
          FSPlanificateur.EditLocalisationPrecise.Text:=Midellaters(RBien.Codification,2,2)+' er étage';
     end
     else
     if(strtointeger(Midellaters(RBien.Codification,2,2))>1)then
     begin
          FSPlanificateur.EditLocalisationPrecise.Text:=Midellaters(RBien.Codification,2,2)+' ème étage';
     end;

     FSPlanificateur.EditLocalisationPrecise.Text:=FSPlanificateur.EditLocalisationPrecise.Text+' du '+RBloc.DesignationProjetFinance;

     Division(strtointeger(Midellaters(RBien.Codification,3,3)),2,Resultat,Reste);
     if(Reste=0)then FSPlanificateur.EditLocalisationPrecise.Text:=FSPlanificateur.EditLocalisationPrecise.Text+' du coté GAUCHE' else FSPlanificateur.EditLocalisationPrecise.Text:=FSPlanificateur.EditLocalisationPrecise.Text+' du coté DROIT';
end
else
begin
     FSPlanificateur.EditLocalisationPrecise.Text:=RBien.LocalisationPreciseProjetFinance;
end;

if(RBien.NumLotProjetFinance<>'')then
begin
     FSPlanificateur.RBAfficherNumLot.Checked:=true;
     FSPlanificateur.EditNumLot.Text:=RBien.NumLotProjetFinance;
end
else
begin
     FSPlanificateur.RBAfficherNumLot.Checked:=false;
     FSPlanificateur.EditNumLot.Text:='';
end;

FSPlanificateur.EditSurfaceHabitable.Text:=Vergule(floattostr(RBien.MesurePartielleProjetFinance),'2','C','');
FSPlanificateur.EditSurfaceUtile.Text:=Vergule(FSPlanificateur.TableauPlanificateur.Cells[7,FSPlanificateur.TableauPlanificateur.Row],'2','C','');
FSPlanificateur.EditTypeUsage.Text:=RBien.TypeUsage;
FSPlanificateur.EditMontantHT.Text:=Vergule(FSPlanificateur.TableauPlanificateur.Cells[9,FSPlanificateur.TableauPlanificateur.Row],'2','C','');
FSPlanificateur.EditTVA.Text:=Vergule(floattostr(RBien.TaxePourcentage),'2','C','');
FSPlanificateur.EditMontantTTC.Text:=Vergule(floattostr(strtoreal(FSPlanificateur.TableauPlanificateur.Cells[9,FSPlanificateur.TableauPlanificateur.Row])*(1+(RBien.TaxePourcentage/100))),'2','C','');
FSPlanificateur.EditMontantTTCLettre.Text:=ChiffreEnLettre(FSPlanificateur.EditMontantTTC.Text);
FSPlanificateur.EditAdresseProjet.Text:=RProjet.AdresseProjetFinance;
end;

procedure TFSPlanificateur.BitBtn20Click(Sender: TObject);
var Resultat,Reste:Integer;  RProjet,RBien,RBloc:RProjetFinances;
    IntitulleIdentificateur:string;
begin

//FSPlanificateur.AfficheDocumentAssocierPlanificateur.Visible:=false;
FSPlanificateur.AfficheModifierDecision.Visible:=false;
FSPlanificateur.AfficheModifierAttestationPaiement.Visible:=false;
FSPlanificateur.AfficheVerssement.Visible:=false;
FSPlanificateur.AfficheDecision.Left:=344;
FSPlanificateur.AfficheDecision.Top:=96;
FSPlanificateur.AfficheDecision.Visible:=true;
FSPlanificateur.AfficheNatureEtat.Caption:='Procès verbal de remise des clés';
FSPlanificateur.RBDecisionModifier.Checked:=false;
FSPlanificateur.RBDecisionModifier.Caption:='Système';

RProjet:=ChercherProjetFinance(FSPlanificateur.EditCodeProjet.Text,PositionProjetFinancesRecherche);
RBloc:=ChercherProjetFinance(Firstlaters(FSPlanificateur.TableauPlanificateur.Cells[10,FSPlanificateur.TableauPlanificateur.Row],longueur(FSPlanificateur.TableauPlanificateur.Cells[10,FSPlanificateur.TableauPlanificateur.Row])-5),PositionProjetFinancesRecherche);
RBien:=ChercherProjetFinance(FSPlanificateur.TableauPlanificateur.Cells[10,FSPlanificateur.TableauPlanificateur.Row],PositionProjetFinancesRecherche);
RClient:=ChercherClients(FSPlanificateur.TableauPlanificateur.Cells[5,FSPlanificateur.TableauPlanificateur.Row],FSPlanificateur.EditChargementTypeProces.Text,FSPlanificateur.EditChargementFichierConcerne.Text);


if(FSPlanificateur.EditTypeDataEntreprise.Text='')then
begin
     ListeOrganismeTutelleComboBox(FSPlanificateur.EditTypeDataEntreprise,false);
     FSPlanificateur.EditTypeDataEntreprise.ItemIndex:=0;
end;
FSPlanificateur.EditTitreDate.Date:=date;
FSPlanificateur.EditTitreReference.Text:='D'+CompleteZeroGauche(FSPlanificateur.TableauPlanificateur.Cells[3,FSPlanificateur.TableauPlanificateur.Row],'2')+'/P'+lastlaters(RProjet.NumProjetFinance,2)+'/'+lastlaters(datetostr(date),4);
FSPlanificateur.NPermisConstruire.Caption:='N° Permis de Const. P'+lastlaters(RProjet.NumProjetFinance,2)+':';
FSPlanificateur.RBImporteEditPK.Caption:='N° Permis de Const. P'+lastlaters(RProjet.NumProjetFinance,2);
FSPlanificateur.NConventionPretBanque.Caption:='N° Convention Prêt P'+lastlaters(RProjet.NumProjetFinance,2)+':';
FSPlanificateur.RBImporteEditConventionPret.Caption:='N° Convention Prêt P'+lastlaters(RProjet.NumProjetFinance,2);

if(FSPlanificateur.RBImporteEditNumRegistreCommerce.Caption<>'')then IntitulleIdentificateur:=FSPlanificateur.RBImporteEditNumRegistreCommerce.Caption
else if(FSPlanificateur.RBImporteEditNumAgrement.Caption<>'')then IntitulleIdentificateur:=FSPlanificateur.RBImporteEditNumAgrement.Caption
else if(FSPlanificateur.RBImporteEditNITNPI.Caption<>'')then IntitulleIdentificateur:=FSPlanificateur.RBImporteEditNITNPI.Caption
else if(FSPlanificateur.RBImporteEditPK.Caption<>'')then IntitulleIdentificateur:=FSPlanificateur.RBImporteEditPK.Caption
else if(FSPlanificateur.RBImporteEditConventionPret.Caption<>'')then IntitulleIdentificateur:=FSPlanificateur.RBImporteEditConventionPret.Caption
else IntitulleIdentificateur:='';
FSPlanificateur.EditTypeDataEntreprise.Text:=ChercherOrganismePourIdentifiant(IntitulleIdentificateur);

if(FSPlanificateur.RBImporteEditNumRegistreCommerce.Checked=true)
then FSPlanificateur.EditNumRegistreCommerce.Text:=ImporteDataIdentificateurEntreprise(FSPlanificateur.RBImporteEditNumRegistreCommerce.Caption)
else FSPlanificateur.EditNumRegistreCommerce.Text:='';

if(FSPlanificateur.RBImporteEditNumAgrement.Checked=true)
then FSPlanificateur.EditNumAgrement.Text:=ImporteDataIdentificateurEntreprise(FSPlanificateur.RBImporteEditNumAgrement.Caption)
else FSPlanificateur.EditNumAgrement.Text:='';

if(FSPlanificateur.RBImporteEditNITNPI.Checked=true)
then FSPlanificateur.EditNITNPI.Text:=ImporteDataIdentificateurEntreprise(FSPlanificateur.RBImporteEditNITNPI.Caption)
else FSPlanificateur.EditNITNPI.Text:='';

if(FSPlanificateur.RBImporteEditPK.Checked=true)
then FSPlanificateur.EditPK.Text:=ImporteDataIdentificateurEntreprise(FSPlanificateur.RBImporteEditPK.Caption)
else FSPlanificateur.EditPK.Text:='';

if(FSPlanificateur.RBImporteEditConventionPret.Checked=true)then
begin
     FSPlanificateur.EditConventionPret.Text:=ImporteDataIdentificateurEntreprise(FSPlanificateur.RBImporteEditConventionPret.Caption);
     FSPlanificateur.AfficheDocumentBanque.Visible:=true;
     FSPlanificateur.EditDocumentBanque.Text:='';
     FSPlanificateur.EditDocumentBanque.SetFocus;
end
else
begin
     FSPlanificateur.EditConventionPret.Text:='';
     FSPlanificateur.AfficheDocumentBanque.Visible:=false;
     FSPlanificateur.EditDocumentBanque.Text:='';
end;

FSPlanificateur.EditDemandeur.Text:='Mr '+RClient.NomTiers+' '+RClient.PrenomTiers;
FSPlanificateur.EditNatureBien.Text:=RBien.DesignationProjetFinance;
FSPlanificateur.EditTypeBien.Text:=RBien.NatureProjetFinance;
FSPlanificateur.EditReferenceBien.Text:=RBien.Codification;

if(RBien.LocalisationPreciseProjetFinance='')then
begin
     FSPlanificateur.EditLocalisationPrecise.Text:='';

     if(strtointeger(Midellaters(RBien.Codification,2,2))=0)then
     begin
          FSPlanificateur.EditLocalisationPrecise.Text:='RDC';
     end
     else
     if(strtointeger(Midellaters(RBien.Codification,2,2))=1)then
     begin
          FSPlanificateur.EditLocalisationPrecise.Text:=Midellaters(RBien.Codification,2,2)+' er étage';
     end
     else
     if(strtointeger(Midellaters(RBien.Codification,2,2))>1)then
     begin
          FSPlanificateur.EditLocalisationPrecise.Text:=Midellaters(RBien.Codification,2,2)+' ème étage';
     end;

     FSPlanificateur.EditLocalisationPrecise.Text:=FSPlanificateur.EditLocalisationPrecise.Text+' du '+RBloc.DesignationProjetFinance;

     Division(strtointeger(Midellaters(RBien.Codification,3,3)),2,Resultat,Reste);
     if(Reste=0)then FSPlanificateur.EditLocalisationPrecise.Text:=FSPlanificateur.EditLocalisationPrecise.Text+' du coté GAUCHE' else FSPlanificateur.EditLocalisationPrecise.Text:=FSPlanificateur.EditLocalisationPrecise.Text+' du coté DROIT';
end
else
begin
     FSPlanificateur.EditLocalisationPrecise.Text:=RBien.LocalisationPreciseProjetFinance;
end;

if(RBien.NumLotProjetFinance<>'')then
begin
     FSPlanificateur.RBAfficherNumLot.Checked:=true;
     FSPlanificateur.EditNumLot.Text:=RBien.NumLotProjetFinance;
end
else
begin
     FSPlanificateur.RBAfficherNumLot.Checked:=false;
     FSPlanificateur.EditNumLot.Text:='';
end;

FSPlanificateur.EditSurfaceHabitable.Text:=Vergule(floattostr(RBien.MesurePartielleProjetFinance),'2','C','');
FSPlanificateur.EditSurfaceUtile.Text:=Vergule(FSPlanificateur.TableauPlanificateur.Cells[7,FSPlanificateur.TableauPlanificateur.Row],'2','C','');
FSPlanificateur.EditTypeUsage.Text:=RBien.TypeUsage;
FSPlanificateur.EditMontantHT.Text:=Vergule(FSPlanificateur.TableauPlanificateur.Cells[9,FSPlanificateur.TableauPlanificateur.Row],'2','C','');
FSPlanificateur.EditTVA.Text:=Vergule(floattostr(RBien.TaxePourcentage),'2','C','');
FSPlanificateur.EditMontantTTC.Text:=Vergule(floattostr(strtoreal(FSPlanificateur.TableauPlanificateur.Cells[9,FSPlanificateur.TableauPlanificateur.Row])*(1+(RBien.TaxePourcentage/100))),'2','C','');
FSPlanificateur.EditMontantTTCLettre.Text:=ChiffreEnLettre(FSPlanificateur.EditMontantTTC.Text);
FSPlanificateur.EditAdresseProjet.Text:=RProjet.AdresseProjetFinance;
end;

procedure TFSPlanificateur.BitBtn21Click(Sender: TObject);
var Resultat,Reste:Integer;  RProjet,RBien,RBloc:RProjetFinances;
    IntitulleIdentificateur:string;
begin

//FSPlanificateur.AfficheDocumentAssocierPlanificateur.Visible:=false;
FSPlanificateur.AfficheModifierDecision.Visible:=false;
FSPlanificateur.AfficheModifierAttestationPaiement.Visible:=false;
FSPlanificateur.AfficheVerssement.Visible:=true;
FSPlanificateur.AfficheDecision.Left:=344;
FSPlanificateur.AfficheDecision.Top:=96;
FSPlanificateur.AfficheDecision.Visible:=true;
FSPlanificateur.AfficheNatureEtat.Caption:='Déclaration sur l''honneur';
FSPlanificateur.RBDecisionModifier.Checked:=false;
FSPlanificateur.RBDecisionModifier.Caption:='Système';

RProjet:=ChercherProjetFinance(FSPlanificateur.EditCodeProjet.Text,PositionProjetFinancesRecherche);
RBloc:=ChercherProjetFinance(Firstlaters(FSPlanificateur.TableauPlanificateur.Cells[10,FSPlanificateur.TableauPlanificateur.Row],longueur(FSPlanificateur.TableauPlanificateur.Cells[10,FSPlanificateur.TableauPlanificateur.Row])-5),PositionProjetFinancesRecherche);
RBien:=ChercherProjetFinance(FSPlanificateur.TableauPlanificateur.Cells[10,FSPlanificateur.TableauPlanificateur.Row],PositionProjetFinancesRecherche);
RClient:=ChercherClients(FSPlanificateur.TableauPlanificateur.Cells[5,FSPlanificateur.TableauPlanificateur.Row],FSPlanificateur.EditChargementTypeProces.Text,FSPlanificateur.EditChargementFichierConcerne.Text);


if(FSPlanificateur.EditTypeDataEntreprise.Text='')then
begin
     ListeOrganismeTutelleComboBox(FSPlanificateur.EditTypeDataEntreprise,false);
     FSPlanificateur.EditTypeDataEntreprise.ItemIndex:=0;
end;
FSPlanificateur.EditTitreDate.Date:=date;
FSPlanificateur.EditTitreReference.Text:='D'+CompleteZeroGauche(FSPlanificateur.TableauPlanificateur.Cells[3,FSPlanificateur.TableauPlanificateur.Row],'2')+'/P'+lastlaters(RProjet.NumProjetFinance,2)+'/'+lastlaters(datetostr(date),4);
FSPlanificateur.NPermisConstruire.Caption:='N° Permis de Const. P'+lastlaters(RProjet.NumProjetFinance,2)+':';
FSPlanificateur.RBImporteEditPK.Caption:='N° Permis de Const. P'+lastlaters(RProjet.NumProjetFinance,2);
FSPlanificateur.NConventionPretBanque.Caption:='N° Convention Prêt P'+lastlaters(RProjet.NumProjetFinance,2)+':';
FSPlanificateur.RBImporteEditConventionPret.Caption:='N° Convention Prêt P'+lastlaters(RProjet.NumProjetFinance,2);

if(FSPlanificateur.RBImporteEditNumRegistreCommerce.Caption<>'')then IntitulleIdentificateur:=FSPlanificateur.RBImporteEditNumRegistreCommerce.Caption
else if(FSPlanificateur.RBImporteEditNumAgrement.Caption<>'')then IntitulleIdentificateur:=FSPlanificateur.RBImporteEditNumAgrement.Caption
else if(FSPlanificateur.RBImporteEditNITNPI.Caption<>'')then IntitulleIdentificateur:=FSPlanificateur.RBImporteEditNITNPI.Caption
else if(FSPlanificateur.RBImporteEditPK.Caption<>'')then IntitulleIdentificateur:=FSPlanificateur.RBImporteEditPK.Caption
else if(FSPlanificateur.RBImporteEditConventionPret.Caption<>'')then IntitulleIdentificateur:=FSPlanificateur.RBImporteEditConventionPret.Caption
else IntitulleIdentificateur:='';
FSPlanificateur.EditTypeDataEntreprise.Text:=ChercherOrganismePourIdentifiant(IntitulleIdentificateur);

if(FSPlanificateur.RBImporteEditNumRegistreCommerce.Checked=true)
then FSPlanificateur.EditNumRegistreCommerce.Text:=ImporteDataIdentificateurEntreprise(FSPlanificateur.RBImporteEditNumRegistreCommerce.Caption)
else FSPlanificateur.EditNumRegistreCommerce.Text:='';

if(FSPlanificateur.RBImporteEditNumAgrement.Checked=true)
then FSPlanificateur.EditNumAgrement.Text:=ImporteDataIdentificateurEntreprise(FSPlanificateur.RBImporteEditNumAgrement.Caption)
else FSPlanificateur.EditNumAgrement.Text:='';

if(FSPlanificateur.RBImporteEditNITNPI.Checked=true)
then FSPlanificateur.EditNITNPI.Text:=ImporteDataIdentificateurEntreprise(FSPlanificateur.RBImporteEditNITNPI.Caption)
else FSPlanificateur.EditNITNPI.Text:='';

if(FSPlanificateur.RBImporteEditPK.Checked=true)
then FSPlanificateur.EditPK.Text:=ImporteDataIdentificateurEntreprise(FSPlanificateur.RBImporteEditPK.Caption)
else FSPlanificateur.EditPK.Text:='';

if(FSPlanificateur.RBImporteEditConventionPret.Checked=true)
then FSPlanificateur.EditConventionPret.Text:=ImporteDataIdentificateurEntreprise(FSPlanificateur.RBImporteEditConventionPret.Caption)
else FSPlanificateur.EditConventionPret.Text:='';

FSPlanificateur.AfficheDocumentBanque.Visible:=false;

FSPlanificateur.EditDemandeur.Text:='Mr '+RClient.NomTiers+' '+RClient.PrenomTiers;
FSPlanificateur.EditNatureBien.Text:=RBien.DesignationProjetFinance;
FSPlanificateur.EditTypeBien.Text:=RBien.NatureProjetFinance;
FSPlanificateur.EditReferenceBien.Text:=RBien.Codification;

if(RBien.LocalisationPreciseProjetFinance='')then
begin
     FSPlanificateur.EditLocalisationPrecise.Text:='';

     if(strtointeger(Midellaters(RBien.Codification,2,2))=0)then
     begin
          FSPlanificateur.EditLocalisationPrecise.Text:='RDC';
     end
     else
     if(strtointeger(Midellaters(RBien.Codification,2,2))=1)then
     begin
          FSPlanificateur.EditLocalisationPrecise.Text:=Midellaters(RBien.Codification,2,2)+' er étage';
     end
     else
     if(strtointeger(Midellaters(RBien.Codification,2,2))>1)then
     begin
          FSPlanificateur.EditLocalisationPrecise.Text:=Midellaters(RBien.Codification,2,2)+' ème étage';
     end;

     FSPlanificateur.EditLocalisationPrecise.Text:=FSPlanificateur.EditLocalisationPrecise.Text+' du '+RBloc.DesignationProjetFinance;

     Division(strtointeger(Midellaters(RBien.Codification,3,3)),2,Resultat,Reste);
     if(Reste=0)then FSPlanificateur.EditLocalisationPrecise.Text:=FSPlanificateur.EditLocalisationPrecise.Text+' du coté GAUCHE' else FSPlanificateur.EditLocalisationPrecise.Text:=FSPlanificateur.EditLocalisationPrecise.Text+' du coté DROIT';
end
else
begin
     FSPlanificateur.EditLocalisationPrecise.Text:=RBien.LocalisationPreciseProjetFinance;
end;

if(RBien.NumLotProjetFinance<>'')then
begin
     FSPlanificateur.RBAfficherNumLot.Checked:=true;
     FSPlanificateur.EditNumLot.Text:=RBien.NumLotProjetFinance;
end
else
begin
     FSPlanificateur.RBAfficherNumLot.Checked:=false;
     FSPlanificateur.EditNumLot.Text:='';
end;

FSPlanificateur.EditSurfaceHabitable.Text:=Vergule(floattostr(RBien.MesurePartielleProjetFinance),'2','C','');
FSPlanificateur.EditSurfaceUtile.Text:=Vergule(FSPlanificateur.TableauPlanificateur.Cells[7,FSPlanificateur.TableauPlanificateur.Row],'2','C','');
FSPlanificateur.EditTypeUsage.Text:=RBien.TypeUsage;
FSPlanificateur.EditMontantHT.Text:=Vergule(FSPlanificateur.TableauPlanificateur.Cells[9,FSPlanificateur.TableauPlanificateur.Row],'2','C','');
FSPlanificateur.EditTVA.Text:=Vergule(floattostr(RBien.TaxePourcentage),'2','C','');
FSPlanificateur.EditMontantTTC.Text:=Vergule(floattostr(strtoreal(FSPlanificateur.TableauPlanificateur.Cells[9,FSPlanificateur.TableauPlanificateur.Row])*(1+(RBien.TaxePourcentage/100))),'2','C','');
FSPlanificateur.EditMontantTTCLettre.Text:=ChiffreEnLettre(FSPlanificateur.EditMontantTTC.Text);
FSPlanificateur.EditAdresseProjet.Text:=RProjet.AdresseProjetFinance;

ListeTypeFichierTiersBox(FSPlanificateur.EditSelectTypeProces.Text,'','',FSPlanificateur.EditFichierConcerne,FSPlanificateur.EditTitreFichierConcerne);
FSPlanificateur.EditSignataire.Text:=ImporteDataProcesTiersSpeciale(FSPlanificateur.EditSelectTypeProces.Text,FSPlanificateur.EditFichierConcerne.Text,'',FSPlanificateur.EditFonctionSignataire.Text);

FSPlanificateur.EditMontantVersement.Text:='';
FSPlanificateur.EditMontantVersementLettre.Lines.Text:='';

FSPlanificateur.EditMontantVersement.SetFocus;
end;

procedure TFSPlanificateur.AfficheOptionsTexteClick(Sender: TObject);
begin
     if(FSPlanificateur.AfficheOptionsTexte.Height=41)
     then FSPlanificateur.AfficheOptionsTexte.Height:=140
     else FSPlanificateur.AfficheOptionsTexte.Height:=41;
end;

procedure TFSPlanificateur.AfficheOptionsTexteExit(Sender: TObject);
begin
     FSPlanificateur.AfficheOptionsTexte.Height:=41;
end;

procedure TFSPlanificateur.EditMontantVersementKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     FSPlanificateur.EditMontantVersementLettre.Text:=ChiffreEnLettre(FSPlanificateur.EditMontantVersement.Text);
end;

procedure TFSPlanificateur.EditMontantVersementKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSPlanificateur.BitPrint.SetFocus
     end;
end;

procedure TFSPlanificateur.UpDown5Click(Sender: TObject;
  Button: TUDBtnType);
begin
      FSPlanificateur.EditFrequenceFontSize.Text:=inttostr(2+(ValeAbsolue(strtointeger(FSPlanificateur.EditFontSize.Text)/2)*3));
end;

procedure TFSPlanificateur.EditFontSizeKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     FSPlanificateur.EditFrequenceFontSize.Text:=inttostr(2+(ValeAbsolue(strtointeger(FSPlanificateur.EditFontSize.Text)/2)*3));
end;

procedure TFSPlanificateur.TableauPlanificateurDrawCell(Sender: TObject;
  ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSPlanificateur.TableauTiersDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSPlanificateur.RBAfficherNumLotClick(Sender: TObject);
begin
     FSPlanificateur.AfficheNumLot.Visible:=FSPlanificateur.RBAfficherNumLot.Checked;
     FSPlanificateur.IncrimenteNumLot.Position:=0;
end;


procedure TFSPlanificateur.RBValoircequedeDroitClick(Sender: TObject);
begin
     FSPlanificateur.DataArticle5.Lines.Text:='En fois de quoi, nous lui délivrons la présente décision, pour servir et valoir ce que de droit.'
end;

procedure TFSPlanificateur.RBDossierCreditBancaireClick(Sender: TObject);
begin
     FSPlanificateur.DataArticle5.Lines.Text:='Cette décision est établie pour dossier de crédit bancaire.';
end;

procedure TFSPlanificateur.EditTitreDateChange(Sender: TObject);
var  RProjet:RProjetFinances;
begin
     RProjet:=ChercherProjetFinance(FSPlanificateur.EditCodeProjet.Text,PositionProjetFinancesRecherche);
     FSPlanificateur.EditTitreReference.Text:='D'+CompleteZeroGauche(FSPlanificateur.TableauPlanificateur.Cells[3,FSPlanificateur.TableauPlanificateur.Row],'2')+'/P'+lastlaters(RProjet.NumProjetFinance,2)+'/'+lastlaters(datetostr(FSPlanificateur.EditTitreDate.Date),4);
end;

procedure TFSPlanificateur.BitBtn9Click(Sender: TObject);
begin
     FSPlanificateur.AfficheTypeAvis.Visible:=false;
end;

Procedure ImprimeAutorisationVersementPlanificateur;
var   ChiffreTexte:string;
begin
     OpenFParc(RParc);
     PrintAutorisationVerssement.TitreEntreprise1.Caption:=RParc.Text1;
     PrintAutorisationVerssement.TitreEntreprise2.Caption:=RParc.Text2;
     PrintAutorisationVerssement.TitreEntreprise3.Caption:=RParc.Text3;
     PrintAutorisationVerssement.TitreEntreprise4.Caption:=RParc.Text4;

     RClient:=ChercherClients(FSPlanificateur.TableauPlanificateur.Cells[5,FSPlanificateur.TableauPlanificateur.Row],FSPlanificateur.EditChargementTypeProces.Text,FSPlanificateur.EditChargementFichierConcerne.Text);

     PrintAutorisationVerssement.TitreEtat.Caption:='Autorisation de Versement N°: '+FSPlanificateur.EditTitreReference.Text;
     PrintAutorisationVerssement.DataDateFormulaire.Caption:='Edition: '+'Fait à AKBOU le '+datetostr(FSPlanificateur.EditTitreDate.Date);
     PrintAutorisationVerssement.DataNometPrenom.Caption:=RClient.NomTiers+' '+RClient.PrenomTiers;
     PrintAutorisationVerssement.DataDateNaissance.Caption:=RClient.DateNaisTiers;

     if(RClient.NaturePieceIdentiteTiers<>'')
     then PrintAutorisationVerssement.TitrePieceIdentite.Caption:=RClient.NaturePieceIdentiteTiers
     else PrintAutorisationVerssement.TitrePieceIdentite.Caption:='Nature Pièce d''Identité';
     if(RClient.NumPieceIdentiteTiers<>'')
     then PrintAutorisationVerssement.DataPieceIdentite.Caption:=RClient.NumPieceIdentiteTiers
     else PrintAutorisationVerssement.DataPieceIdentite.Caption:='.............................................................................................';

     PrintAutorisationVerssement.DataFonction.Caption:=RClient.FonctionTiers;
     PrintAutorisationVerssement.DataSignataire.Caption:='l''entreprise';

     if(FSPlanificateur.AutorisationVersementModifier.Checked=false)then
     begin
          PrintAutorisationVerssement.DataAutorisation.Lines.Text:='';

          if(FSPlanificateur.RBAfficherNumLot.Checked=true)
          then FSPlanificateur.EditTexteAutorisation.Lines.Text:='          Afin de concrétisé la réservation d''un '+FSPlanificateur.EditNatureBien.Text+' de type '+FSPlanificateur.EditTypeBien.Text+', dont le numéro du lot est le '+FSPlanificateur.EditNumLot.Text+' et le numéro identifiant est le '+FSPlanificateur.EditReferenceBien.Text
          else FSPlanificateur.EditTexteAutorisation.Lines.Text:='          Afin de concrétisé la réservation d''un '+FSPlanificateur.EditNatureBien.Text+' de type '+FSPlanificateur.EditTypeBien.Text+', dont le numéro identifiant est le '+FSPlanificateur.EditReferenceBien.Text;

          PrintAutorisationVerssement.DataAutorisation.Lines.Add('          Veuillez autoriser, au concerné cité ci-dessus, le versement d''un montant de '+FSPlanificateur.EditMontantVersement.Text+' DA,'+
                                                                 ' Soit en lettres : '+ChiffreenLettre(FSPlanificateur.EditMontantVersement.Text)+
                                                                 ', Au compte bancaire N° : '+FSPlanificateur.TableauDomiciliation.Cells[3,FSPlanificateur.TableauDomiciliation.Row]+' agence : '+FSPlanificateur.TableauDomiciliation.Cells[2,FSPlanificateur.TableauDomiciliation.Row]+
                                                                 ' Ouvert au nom de : '+RParc.Text1);
          PrintAutorisationVerssement.DataAutorisation.Lines.Add('      ');
          PrintAutorisationVerssement.DataAutorisation.Lines.Add('          Veuillez agréer, notre meilleure et parfaite considération');
     end
     else
     begin
          PrintAutorisationVerssement.DataAutorisation.Lines.Text:='';
          PrintAutorisationVerssement.DataAutorisation.Lines.Add(FSPlanificateur.EditTexteAutorisation.Lines.Text);
     end;

     PrintAutorisationVerssement.Preview;
     FSPlanificateur.AfficheDomiciliation.Visible:=false;

     FSPlanificateur.AutorisationVersementModifier.Checked:=false;
end;

procedure TFSPlanificateur.BitBtn22Click(Sender: TObject);
begin
     FSPlanificateur.AfficheDomiciliation.Visible:=false;
end;

procedure TFSPlanificateur.TableauDomiciliationDblClick(Sender: TObject);
begin
     ImprimeAutorisationVersementPlanificateur;
end;

procedure TFSPlanificateur.TableauDomiciliationKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if(key in[VK_RETURN])then
     begin
          ImprimeAutorisationVersementPlanificateur;
     end;
end;

Procedure ChargerArticles;
var  LeBien,Interesse:string;
begin

if(FSPlanificateur.AfficheNatureEtat.Caption='DECISION FINANCIERE')then
begin
     RProjetFinance:=ChercherProjetFinance(FSPlanificateur.EditCodeProjet.Text,PositionProjetFinancesRecherche);
     RClient:=ChercherClients(FSPlanificateur.TableauPlanificateur.Cells[5,FSPlanificateur.TableauPlanificateur.Row],FSPlanificateur.EditChargementTypeProces.Text,FSPlanificateur.EditChargementFichierConcerne.Text);

     if(FSPlanificateur.RBDecisionModifier.Checked=false)then
     begin
          FSPlanificateur.DataVu.Lines.Text:='';
          FSPlanificateur.DataVu.Lines.Add('L''Entreprise de Promotion Immobilière '+RParc.Text1+':');
          FSPlanificateur.DataVu.Lines.Add('');
          FSPlanificateur.DataVu.Lines.Add('-Vu le registre de commerce n° '+FSPlanificateur.EditNumRegistreCommerce.Text);
          FSPlanificateur.DataVu.Lines.Add('-Vu le décret législatif n°: 93/03 du 01/03/1993 modifié et complété relatif à l''activité Immobilière.');
          FSPlanificateur.DataVu.Lines.Add('-Vu la décision du Ministère de l''Habitat et de l''Urbanisme portant Agrément n° '+FSPlanificateur.EditNumAgrement.Text+' pour l''exercice de la profession de promoteur immobilier');
          FSPlanificateur.DataVu.Lines.Add('-Vu l''attestation d''inscription au tableau national des promoteurs immobiliers sous le Numéro: '+FSPlanificateur.EditNITNPI.Text);
          FSPlanificateur.DataVu.Lines.Add('-Vu l''Arrêté portant permis de construire N° '+FSPlanificateur.EditPK.Text);
          FSPlanificateur.DataVu.Lines.Add('-Vu la convention de prêt immobilier n° '+FSPlanificateur.EditConventionPret.Text);
          FSPlanificateur.DataVu.Lines.Add('-Vu la demande de '+FSPlanificateur.EditDemandeur.Text+' portant l''acquisition d''un '+FSPlanificateur.EditNatureBien.Text+' '+FSPlanificateur.EditTypeUsage.Text+' de type '+FSPlanificateur.EditTypeBien.Text);
     end;

     FSPlanificateur.DataArticle1.Lines.Text:='';
     FSPlanificateur.DataArticle1.Lines.Add('le '+FSPlanificateur.EditNatureBien.Text+' portant référence '+FSPlanificateur.EditReferenceBien.Text+' est vendu à:');

     if ExisteCharinString(' et ',FSPlanificateur.EditDemandeur.Text)
     then FSPlanificateur.DataArticle1.Lines.Add(FSPlanificateur.EditDemandeur.Text+', demeurent à '+RClient.AdresseTiers+', '+RClient.NaturePieceIdentiteTiers+' respective '+RClient.NumPieceIdentiteTiers)
     else FSPlanificateur.DataArticle1.Lines.Add(FSPlanificateur.EditDemandeur.Text+' Né le: '+RClient.DateNaisTiers+' à '+RClient.LieuNaisTiers+', demeurent à '+RClient.AdresseTiers+', '+RClient.NaturePieceIdentiteTiers+' '+RClient.NumPieceIdentiteTiers);

     FSPlanificateur.DataArticle2.Lines.Text:='';

     if(FSPlanificateur.RBAfficherNumLot.Checked=true)
     then FSPlanificateur.DataArticle2.Lines.Add('Typologie du '+FSPlanificateur.EditNatureBien.Text+': '+FSPlanificateur.EditTypeBien.Text+', situé au '+FSPlanificateur.EditLocalisationPrecise.Text+', dont le numéro du lot est le '+FSPlanificateur.EditNumLot.Text+' et le numéro identifiant est le '+FSPlanificateur.EditReferenceBien.Text+', d''une surface habitable de '+FSPlanificateur.EditSurfaceHabitable.Text+' m² et d''une surface utile de '+FSPlanificateur.EditSurfaceUtile.Text+' m², au projet de '+RProjetFinance.DesignationProjetFinance+' sise au '+FSPlanificateur.EditAdresseProjet.Text)
     else FSPlanificateur.DataArticle2.Lines.Add('Typologie du '+FSPlanificateur.EditNatureBien.Text+': '+FSPlanificateur.EditTypeBien.Text+', situé au '+FSPlanificateur.EditLocalisationPrecise.Text+', dont le numéro identifiant est le '+FSPlanificateur.EditReferenceBien.Text+', d''une surface habitable de '+FSPlanificateur.EditSurfaceHabitable.Text+' m² et d''une surface utile de '+FSPlanificateur.EditSurfaceUtile.Text+' m², au projet de '+RProjetFinance.DesignationProjetFinance+' sise au '+FSPlanificateur.EditAdresseProjet.Text);

     FSPlanificateur.DataArticle3.Lines.Text:='';
     FSPlanificateur.DataArticle3.Lines.Add('Le prix de cession en TTC du bien immobilier est de: '+FSPlanificateur.EditMontantTTC.Text+' DA, soit en toute lettre '+FSPlanificateur.EditMontantTTCLettre.Text+' (Hors frais du notaire)');

     FSPlanificateur.DataArticle4.Lines.Text:='';
     FSPlanificateur.DataArticle4.Lines.Add('Le bien en question reste la propriété de l''entreprise de promotion immobilière '+RParc.Text1+' jusqu''au payement total de ce dérnier, et l''établissement de l''acte de vente se fera devant le notaire');

     FSPlanificateur.DataArticle5.Lines.Text:='';

     if(FSPlanificateur.RBDossierCreditBancaire.Checked=true)
     then FSPlanificateur.DataArticle5.Lines.Add('Cette décision est établie pour dossier de crédit bancaire.');

     if(FSPlanificateur.RBValoircequedeDroit.Checked=true)
     then FSPlanificateur.DataArticle5.Lines.Add('En fois de quoi, nous lui délivrons la présente décision, pour servir et valoir ce que de droit.');
end;

if(FSPlanificateur.AfficheNatureEtat.Caption='DECISION PHYSIQUE')then
begin
     RProjetFinance:=ChercherProjetFinance(FSPlanificateur.EditCodeProjet.Text,PositionProjetFinancesRecherche);
     RClient:=ChercherClients(FSPlanificateur.TableauPlanificateur.Cells[5,FSPlanificateur.TableauPlanificateur.Row],FSPlanificateur.EditChargementTypeProces.Text,FSPlanificateur.EditChargementFichierConcerne.Text);

     if(FSPlanificateur.RBDecisionModifier.Checked=false)then
     begin
          FSPlanificateur.DataVu.Lines.Text:='';
          FSPlanificateur.DataVu.Lines.Add('L''Entreprise de Promotion Immobilière '+RParc.Text1+':');
          FSPlanificateur.DataVu.Lines.Add('');
          FSPlanificateur.DataVu.Lines.Add('-Vu le registre de commerce n° '+FSPlanificateur.EditNumRegistreCommerce.Text);
          FSPlanificateur.DataVu.Lines.Add('-Vu le décret législatif n°: 93/03 du 01/03/1993 modifié et complété relatif à l''activité Immobilière.');
          FSPlanificateur.DataVu.Lines.Add('-Vu la décision du Ministère de l''Habitat et de l''Urbanisme portant Agrément n° '+FSPlanificateur.EditNumAgrement.Text+' pour l''exercice de la profession de promoteur immobilier');
          FSPlanificateur.DataVu.Lines.Add('-Vu l''attestation d''inscription au tableau national des promoteurs immobiliers sous le Numéro: '+FSPlanificateur.EditNITNPI.Text);
          FSPlanificateur.DataVu.Lines.Add('-Vu l''Arrêté portant permis de construire N° '+FSPlanificateur.EditPK.Text);
          FSPlanificateur.DataVu.Lines.Add('-Vu la convention de prêt immobilier n° '+FSPlanificateur.EditConventionPret.Text);
          FSPlanificateur.DataVu.Lines.Add('-Vu la demande de '+FSPlanificateur.EditDemandeur.Text+' portant l''acquisition d''un '+FSPlanificateur.EditNatureBien.Text+' '+FSPlanificateur.EditTypeUsage.Text+' de type '+FSPlanificateur.EditTypeBien.Text);
     end;

     FSPlanificateur.DataArticle1.Lines.Text:='';
     FSPlanificateur.DataArticle1.Lines.Add('le '+FSPlanificateur.EditNatureBien.Text+' portant référence '+FSPlanificateur.EditReferenceBien.Text+' est vendu à:');

     if ExisteCharinString(' et ',FSPlanificateur.EditDemandeur.Text)
     then FSPlanificateur.DataArticle1.Lines.Add(FSPlanificateur.EditDemandeur.Text+', demeurent à '+RClient.AdresseTiers+', '+RClient.NaturePieceIdentiteTiers+' respective '+RClient.NumPieceIdentiteTiers)
     else FSPlanificateur.DataArticle1.Lines.Add(FSPlanificateur.EditDemandeur.Text+' Né le: '+RClient.DateNaisTiers+' à '+RClient.LieuNaisTiers+', demeurent à '+RClient.AdresseTiers+', '+RClient.NaturePieceIdentiteTiers+' '+RClient.NumPieceIdentiteTiers);

     FSPlanificateur.DataArticle2.Lines.Text:='';
     FSPlanificateur.DataArticle2.Lines.Add('Typologie du '+FSPlanificateur.EditNatureBien.Text+': '+FSPlanificateur.EditTypeBien.Text+', situé au '+FSPlanificateur.EditLocalisationPrecise.Text+', dont le numéro identifiant est le '+FSPlanificateur.EditReferenceBien.Text+', d''une surface habitable de '+FSPlanificateur.EditSurfaceHabitable.Text+' m² et d''une surface utile de '+FSPlanificateur.EditSurfaceUtile.Text+' m², au projet de '+RProjetFinance.DesignationProjetFinance+' sise au '+FSPlanificateur.EditAdresseProjet.Text);

     FSPlanificateur.DataArticle3.Lines.Text:='';
     FSPlanificateur.DataArticle3.Lines.Add('Le prix de cession en TTC du bien immobilier est de: '+FSPlanificateur.EditMontantTTC.Text+' DA, soit en toute lettre '+FSPlanificateur.EditMontantTTCLettre.Text+' (Hors frais du notaire)');

     FSPlanificateur.DataArticle4.Lines.Text:='';

     FSPlanificateur.DataArticle5.Lines.Text:='';
end;

if(FSPlanificateur.AfficheNatureEtat.Caption='Procès verbal de remise des clés')then
begin
     RProjetFinance:=ChercherProjetFinance(FSPlanificateur.EditCodeProjet.Text,PositionProjetFinancesRecherche);
     RClient:=ChercherClients(FSPlanificateur.TableauPlanificateur.Cells[5,FSPlanificateur.TableauPlanificateur.Row],FSPlanificateur.EditChargementTypeProces.Text,FSPlanificateur.EditChargementFichierConcerne.Text);

     if(FSPlanificateur.RBDecisionModifier.Checked=false)then
     begin
          FSPlanificateur.DataVu.Lines.Text:='';
          FSPlanificateur.DataVu.Lines.Add('L''Entreprise de Promotion Immobilière '+RParc.Text1+':');
          FSPlanificateur.DataVu.Lines.Add('');
          FSPlanificateur.DataVu.Lines.Add('-Vu le registre de commerce n° '+FSPlanificateur.EditNumRegistreCommerce.Text);
          FSPlanificateur.DataVu.Lines.Add('-Vu le décret législatif n°: 93/03 du 01/03/1993 modifié et complété relatif à l''activité Immobilière.');
          FSPlanificateur.DataVu.Lines.Add('-Vu la décision du Ministère de l''Habitat et de l''Urbanisme portant Agrément n° '+FSPlanificateur.EditNumAgrement.Text+' pour l''exercice de la profession de promoteur immobilier');
          FSPlanificateur.DataVu.Lines.Add('-Vu l''attestation d''inscription au tableau national des promoteurs immobiliers sous le Numéro: '+FSPlanificateur.EditNITNPI.Text);
          FSPlanificateur.DataVu.Lines.Add('-Vu l''Arrêté portant permis de construire N° '+FSPlanificateur.EditPK.Text);
          FSPlanificateur.DataVu.Lines.Add('-Vu la convention de prêt immobilier n° '+FSPlanificateur.EditConventionPret.Text);
          FSPlanificateur.DataVu.Lines.Add('-Vu la demande de '+FSPlanificateur.EditDemandeur.Text+' portant l''acquisition d''un '+FSPlanificateur.EditNatureBien.Text+' '+FSPlanificateur.EditTypeUsage.Text+' de type '+FSPlanificateur.EditTypeBien.Text);
     end;
     
     FSPlanificateur.DataArticle1.Lines.Text:='';
     FSPlanificateur.DataArticle1.Lines.Add('le '+FSPlanificateur.EditNatureBien.Text+' portant référence '+FSPlanificateur.EditReferenceBien.Text+' est vendu à:');

     if ExisteCharinString(' et ',FSPlanificateur.EditDemandeur.Text)
     then FSPlanificateur.DataArticle1.Lines.Add(FSPlanificateur.EditDemandeur.Text+', demeurent à '+RClient.AdresseTiers+', '+RClient.NaturePieceIdentiteTiers+' respective '+RClient.NumPieceIdentiteTiers)
     else FSPlanificateur.DataArticle1.Lines.Add(FSPlanificateur.EditDemandeur.Text+' Né le: '+RClient.DateNaisTiers+' à '+RClient.LieuNaisTiers+', demeurent à '+RClient.AdresseTiers+', '+RClient.NaturePieceIdentiteTiers+' '+RClient.NumPieceIdentiteTiers);

     FSPlanificateur.DataArticle2.Lines.Text:='';
     FSPlanificateur.DataArticle2.Lines.Add('Typologie du '+FSPlanificateur.EditNatureBien.Text+': '+FSPlanificateur.EditTypeBien.Text+', situé au '+FSPlanificateur.EditLocalisationPrecise.Text+', dont le numéro identifiant est le '+FSPlanificateur.EditReferenceBien.Text+', d''une surface habitable de '+FSPlanificateur.EditSurfaceHabitable.Text+' m² et d''une surface utile de '+FSPlanificateur.EditSurfaceUtile.Text+' m², au projet de '+RProjetFinance.DesignationProjetFinance+' sise au '+FSPlanificateur.EditAdresseProjet.Text);

     FSPlanificateur.DataArticle3.Lines.Text:='';
     FSPlanificateur.DataArticle3.Lines.Add('Le prix de cession en TTC du bien immobilier est de: '+FSPlanificateur.EditMontantTTC.Text+' DA, soit en toute lettre '+FSPlanificateur.EditMontantTTCLettre.Text+' (Hors frais du notaire)');

     FSPlanificateur.DataArticle4.Lines.Text:='';
     FSPlanificateur.DataArticle4.Lines.Add('Le promoteur, soussigné certifie par le présent procès verbal avoir délivré au bénéficiaire le '+FSPlanificateur.EditNatureBien.Text
     +' en parfait état et exempt de tous vices apparents (à part ceux mentionnés dans l''Etat des lieux en annexe* de ce procès verbal).');
     FSPlanificateur.DataArticle4.Lines.Add('Le bénéficiaire déclare :');
     FSPlanificateur.DataArticle4.Lines.Add('1. Que le '+FSPlanificateur.EditNatureBien.Text+' est en parfaite conformité avec le descriptif de la promesse de vente.');
     FSPlanificateur.DataArticle4.Lines.Add('2. Qu''il a pris bonne et valable possession des clés du dit '+FSPlanificateur.EditNatureBien.Text+' ainsi que la clé de la porte de la résidence.');

     FSPlanificateur.DataArticle5.Lines.Text:='';
end;

if(FSPlanificateur.AfficheNatureEtat.Caption='Attestation de versement')then
begin
     OpenFParc(RParc);
     RProjetFinance:=ChercherProjetFinance(FSPlanificateur.EditCodeProjet.Text,PositionProjetFinancesRecherche);
     RClient:=ChercherClients(FSPlanificateur.TableauPlanificateur.Cells[5,FSPlanificateur.TableauPlanificateur.Row],FSPlanificateur.EditChargementTypeProces.Text,FSPlanificateur.EditChargementFichierConcerne.Text);

     if(FSPlanificateur.AttestationVersementModifier.Checked=false)then
     begin
          FSPlanificateur.DataVersement.Lines.Text:='';
          if ExisteCharinString(' et ',FSPlanificateur.EditDemandeur.Text)
          then FSPlanificateur.DataVersement.Lines.Add('     Nous soussigé, '+RParc.Text1+' représenté par son '+FSPlanificateur.EditFonctionSignataire.Text+' '+FSPlanificateur.EditSignataire.Text+', attestons par la présente que '+FSPlanificateur.EditDemandeur.Text+', ont procédé au versement au prés de notre société d''un montant: '+FSPlanificateur.EditMontantVersement.Text+' DA soit en toute lettre: '+FSPlanificateur.EditMontantVersementLettre.Text+', représentant leur apport personnel.')
          else FSPlanificateur.DataVersement.Lines.Add('     Nous soussigé, '+RParc.Text1+' représenté par son '+FSPlanificateur.EditFonctionSignataire.Text+' '+FSPlanificateur.EditSignataire.Text+', attestons par la présente que '+FSPlanificateur.EditDemandeur.Text+' né le '+RClient.DateNaisTiers+', a procédé au versement au prés de notre société d''un montant: '+FSPlanificateur.EditMontantVersement.Text+' DA soit en toute lettre: '+FSPlanificateur.EditMontantVersementLettre.Text+', représentant son apport personnel.');
          FSPlanificateur.DataVersement.Lines.Add('');
          FSPlanificateur.DataVersement.Lines.Add('     Relatif à l''acquisition d''un '+FSPlanificateur.EditNatureBien.Text+' '+FSPlanificateur.EditTypeUsage.Text+' de type '+FSPlanificateur.EditTypeBien.Text+', sis au '+FSPlanificateur.EditLocalisationPrecise.Text+' dont le numéro de lot est le '+FSPlanificateur.EditReferenceBien.Text+' d''une surface habitable de '+FSPlanificateur.EditSurfaceHabitable.Text+' m² et d''une surface utile de '+FSPlanificateur.EditSurfaceUtile.Text+' m² sis au '+RProjetFinance.DesignationProjetFinance+' à '+FSPlanificateur.EditAdresseProjet.Text);
          FSPlanificateur.DataVersement.Lines.Add('');
          FSPlanificateur.DataVersement.Lines.Add('     et dont le prix de cession s''élève à: '+FSPlanificateur.EditMontantTTC.Text+' DA soit en toute lettre: '+FSPlanificateur.EditMontantTTCLettre.Text);
          FSPlanificateur.DataVersement.Lines.Add('');
          FSPlanificateur.DataVersement.Lines.Add('     Enfoi de quoi, la présent attestation de peiement lui est délivrée pour servir et valoir ce que de droit.');
     end;
end;

if(FSPlanificateur.AfficheNatureEtat.Caption='Déclaration sur l''honneur')then
begin
     OpenFParc(RParc);
     RProjetFinance:=ChercherProjetFinance(FSPlanificateur.EditCodeProjet.Text,PositionProjetFinancesRecherche);
     RClient:=ChercherClients(FSPlanificateur.TableauPlanificateur.Cells[5,FSPlanificateur.TableauPlanificateur.Row],FSPlanificateur.EditChargementTypeProces.Text,FSPlanificateur.EditChargementFichierConcerne.Text);

     if(FSPlanificateur.RBAfficherNumLot.Checked=true)
     then LeBien:=FSPlanificateur.EditNatureBien.Text+', dont le numéro du lot est le '+FSPlanificateur.EditNumLot.Text+' et le numéro identifiant est le '+FSPlanificateur.EditReferenceBien.Text
     else LeBien:=FSPlanificateur.EditNatureBien.Text+', dont le numéro identifiant est le '+FSPlanificateur.EditReferenceBien.Text;

     if(FSPlanificateur.RBDecisionModifier.Checked=false)then
     begin
          Interesse:='';
          if ExisteCharinString(' et ',FSPlanificateur.EditDemandeur.Text)then
          begin
               Interesse:=FSPlanificateur.EditDemandeur.Text+', demeurent à '+RClient.AdresseTiers+', '+RClient.NaturePieceIdentiteTiers+' respective '+RClient.NumPieceIdentiteTiers;

               FSPlanificateur.DataVu.Lines.Text:='';
               FSPlanificateur.DataVu.Lines.Add('          Nous soussignés, '+Interesse+', attestons sur l''honneur que nous somme redevables, pour le compte de l''entreprise '+RParc.Text1
               +', d''un montant de, en chiffre '+FSPlanificateur.EditMontantVersement.Text+' DA et en lettres '+FSPlanificateur.EditMontantVersementLettre.Text+', qui correspond au solde de notre apport personnel sur l''achat du bien dit '+LeBien
               +', et que nous réglerons en une seule fois avant l''établissement de l''acte définitif. ');

               FSPlanificateur.DataVu.Lines.Add('');

               FSPlanificateur.DataVu.Lines.Add('          Par ailleurs, nous, nous engageons à vous signaler tout changement qui interviendrait dans notre situation à compter de l''établissement de la présente attestation.');

               FSPlanificateur.DataVu.Lines.Add('');

               FSPlanificateur.DataVu.Lines.Add('          Nous avons parfaitement conscience que ce document pourrait être produit en justice à notre encontre et qu''en cas de fausse déclaration, des sanctions pénales pourraient nous être appliquées.');
          end
          else
          begin
               Interesse:=FSPlanificateur.EditDemandeur.Text+' Né le: '+RClient.DateNaisTiers+' à '+RClient.LieuNaisTiers+', demeurent à '+RClient.AdresseTiers+', '+RClient.NaturePieceIdentiteTiers+' '+RClient.NumPieceIdentiteTiers;

               FSPlanificateur.DataVu.Lines.Text:='';
               FSPlanificateur.DataVu.Lines.Add('          je soussigné, '+Interesse+', atteste sur l''honneur que je suis redevable, au compte de l''entreprise '+RParc.Text1
               +', d''un montant de, en chiffre '+FSPlanificateur.EditMontantVersement.Text+' et en lettres '+FSPlanificateur.EditMontantVersementLettre.Text+', qui correspond au solde de mon apport personnel sur l''achat du bien dit '+LeBien
               +', et que je réglerais en une seule fois avant l''établissement de l''acte définitif. ');

               FSPlanificateur.DataVu.Lines.Add('');

               FSPlanificateur.DataVu.Lines.Add('          Par ailleurs, je m''engage à vous signaler tout changement qui interviendrait dans ma situation à compter de l''établissement de la présente attestation.');

               FSPlanificateur.DataVu.Lines.Add('');

               FSPlanificateur.DataVu.Lines.Add('          J''ai parfaitement conscience que ce document pourrait être produit en justice à mon encontre et qu''en cas de fausse déclaration, des sanctions pénales pourraient m''être appliquées.');
          end;

          FSPlanificateur.DataVu.Lines.Add('');

          FSPlanificateur.DataVu.Lines.Add('          Fait pour servir et valoir ce que de droit.');
     end;
end;

if(FSPlanificateur.AfficheNatureEtat.Caption='FACTURE')then
begin
     RProjetFinance:=ChercherProjetFinance(FSPlanificateur.EditCodeProjet.Text,PositionProjetFinancesRecherche);
     RClient:=ChercherClients(FSPlanificateur.TableauPlanificateur.Cells[5,FSPlanificateur.TableauPlanificateur.Row],FSPlanificateur.EditChargementTypeProces.Text,FSPlanificateur.EditChargementFichierConcerne.Text);

     if(FSPlanificateur.RBDecisionModifier.Checked=false)then
     begin
          FSPlanificateur.DataVu.Lines.Text:='';
          if(FSPlanificateur.RBAfficherNumLot.Checked=true)
          then FSPlanificateur.DataVu.Lines.Add('Acquisition d''un '+FSPlanificateur.EditNatureBien.Text+': '+FSPlanificateur.EditTypeBien.Text+', situé au '+FSPlanificateur.EditLocalisationPrecise.Text+', dont le numéro du lot est le '+FSPlanificateur.EditNumLot.Text+' et le numéro identifiant est le '+FSPlanificateur.EditReferenceBien.Text
          +', d''une surface habitable de '+FSPlanificateur.EditSurfaceHabitable.Text+' m² et d''une surface utile de '+FSPlanificateur.EditSurfaceUtile.Text+' m², au projet de '+RProjetFinance.DesignationProjetFinance+' sise au '+FSPlanificateur.EditAdresseProjet.Text)
          else FSPlanificateur.DataVu.Lines.Add('Acquisition d''un '+FSPlanificateur.EditNatureBien.Text+': '+FSPlanificateur.EditTypeBien.Text+', situé au '+FSPlanificateur.EditLocalisationPrecise.Text+', dont le numéro identifiant est le '+FSPlanificateur.EditReferenceBien.Text
          +', d''une surface habitable de '+FSPlanificateur.EditSurfaceHabitable.Text+' m² et d''une surface utile de '+FSPlanificateur.EditSurfaceUtile.Text+' m², au projet de '+RProjetFinance.DesignationProjetFinance+' sise au '+FSPlanificateur.EditAdresseProjet.Text);
     end;

     FSPlanificateur.DataArticle1.Lines.Text:='';
     FSPlanificateur.DataArticle1.Lines.Add('le '+FSPlanificateur.EditNatureBien.Text+' portant référence '+FSPlanificateur.EditReferenceBien.Text+' est vendu à:');

     if ExisteCharinString(' et ',FSPlanificateur.EditDemandeur.Text)
     then FSPlanificateur.DataArticle1.Lines.Add(FSPlanificateur.EditDemandeur.Text+', demeurent à '+RClient.AdresseTiers+', '+RClient.NaturePieceIdentiteTiers+' respective '+RClient.NumPieceIdentiteTiers)
     else FSPlanificateur.DataArticle1.Lines.Add(FSPlanificateur.EditDemandeur.Text+' Né le: '+RClient.DateNaisTiers+' à '+RClient.LieuNaisTiers+', demeurent à '+RClient.AdresseTiers+', '+RClient.NaturePieceIdentiteTiers+' '+RClient.NumPieceIdentiteTiers);

     FSPlanificateur.DataArticle2.Lines.Text:='';

     if(FSPlanificateur.RBAfficherNumLot.Checked=true)
     then FSPlanificateur.DataArticle2.Lines.Add('Typologie du '+FSPlanificateur.EditNatureBien.Text+': '+FSPlanificateur.EditTypeBien.Text+', situé au '+FSPlanificateur.EditLocalisationPrecise.Text+', dont le numéro du lot est le '+FSPlanificateur.EditNumLot.Text+' et le numéro identifiant est le '+FSPlanificateur.EditReferenceBien.Text+', d''une surface habitable de '+FSPlanificateur.EditSurfaceHabitable.Text+' m² et d''une surface utile de '+FSPlanificateur.EditSurfaceUtile.Text+' m², au projet de '+RProjetFinance.DesignationProjetFinance+' sise au '+FSPlanificateur.EditAdresseProjet.Text)
     else FSPlanificateur.DataArticle2.Lines.Add('Typologie du '+FSPlanificateur.EditNatureBien.Text+': '+FSPlanificateur.EditTypeBien.Text+', situé au '+FSPlanificateur.EditLocalisationPrecise.Text+', dont le numéro identifiant est le '+FSPlanificateur.EditReferenceBien.Text+', d''une surface habitable de '+FSPlanificateur.EditSurfaceHabitable.Text+' m² et d''une surface utile de '+FSPlanificateur.EditSurfaceUtile.Text+' m², au projet de '+RProjetFinance.DesignationProjetFinance+' sise au '+FSPlanificateur.EditAdresseProjet.Text);

     FSPlanificateur.DataArticle3.Lines.Text:='';
     FSPlanificateur.DataArticle3.Lines.Add('Le prix de cession en TTC du bien immobilier est de: '+FSPlanificateur.EditMontantTTC.Text+' DA, soit en toute lettre '+FSPlanificateur.EditMontantTTCLettre.Text+' (Hors frais du notaire)');

     FSPlanificateur.DataArticle4.Lines.Text:='';
     FSPlanificateur.DataArticle4.Lines.Add('Le bien en question reste la propriété de l''entreprise de promotion immobilière '+RParc.Text1+' jusqu''au payement total de ce dérnier, et l''établissement de l''acte de vente se fera devant le notaire');

     FSPlanificateur.DataArticle5.Lines.Text:='';

     if(FSPlanificateur.RBDossierCreditBancaire.Checked=true)
     then FSPlanificateur.DataArticle5.Lines.Add('Cette décision est établie pour dossier de crédit bancaire.');

     if(FSPlanificateur.RBValoircequedeDroit.Checked=true)
     then FSPlanificateur.DataArticle5.Lines.Add('En fois de quoi, nous lui délivrons la présente décision, pour servir et valoir ce que de droit.');
end;
end;

procedure TFSPlanificateur.RBDossierCreditBancaireBisClick(
  Sender: TObject);
begin
     FSPlanificateur.RBDossierCreditBancaire.Checked:=FSPlanificateur.RBDossierCreditBancaireBis.Checked;
end;

procedure TFSPlanificateur.RBValoircequedeDroitBisClick(Sender: TObject);
begin
     FSPlanificateur.RBValoircequedeDroit.Checked:=FSPlanificateur.RBValoircequedeDroitBis.Checked;
end;

procedure TFSPlanificateur.BitBtn24Click(Sender: TObject);
begin
     FSPlanificateur.AfficheDomiciliation.Left:=FSPlanificateur.AfficheVerssement.Left;
     FSPlanificateur.AfficheDomiciliation.Top:=FSPlanificateur.AfficheVerssement.Top;
     FSPlanificateur.AfficheDomiciliation.Visible:=true;
     FSPlanificateur.PageAgence.Show;
     ListeDomiciliation(FSPlanificateur.TableauDomiciliation);

     if(FSPlanificateur.AutorisationVersementModifier.Checked=false)then
     begin
          if(FSPlanificateur.RBAfficherNumLot.Checked=true)
          then FSPlanificateur.EditTexteAutorisation.Lines.Text:='          Afin de concrétisé la réservation d''un '+FSPlanificateur.EditNatureBien.Text+' de type '+FSPlanificateur.EditTypeBien.Text+', dont le numéro du lot est le '+FSPlanificateur.EditNumLot.Text+' et le numéro identifiant est le '+FSPlanificateur.EditReferenceBien.Text
          else FSPlanificateur.EditTexteAutorisation.Lines.Text:='          Afin de concrétisé la réservation d''un '+FSPlanificateur.EditNatureBien.Text+' de type '+FSPlanificateur.EditTypeBien.Text+', dont le numéro identifiant est le '+FSPlanificateur.EditReferenceBien.Text;
     end;
end;

procedure TFSPlanificateur.BitBtn23Click(Sender: TObject);
begin
     FSPlanificateur.AfficheModifierAttestationPaiement.Left:=FSPlanificateur.CadreDate.Left;
     FSPlanificateur.AfficheModifierAttestationPaiement.Top:=FSPlanificateur.CadreDate.Top;

     if(FSPlanificateur.AttestationVersementModifier.Checked=false)then
     begin
          FSPlanificateur.DataVersement.Lines.Text:='';

          if ExisteCharinString(' et ',FSPlanificateur.EditDemandeur.Text)
          then FSPlanificateur.DataVersement.Lines.Add('     Nous soussigé, '+RParc.Text1+' représenté par son '+FSPlanificateur.EditFonctionSignataire.Text+' '+FSPlanificateur.EditSignataire.Text+', attestons par la présente que '+FSPlanificateur.EditDemandeur.Text+', ont procédé au versement au prés de notre société d''un montant: '+FSPlanificateur.EditMontantVersement.Text+' DA soit en toute lettre: '+FSPlanificateur.EditMontantVersementLettre.Text+', représentant leur apport personnel.')
          else FSPlanificateur.DataVersement.Lines.Add('     Nous soussigé, '+RParc.Text1+' représenté par son '+FSPlanificateur.EditFonctionSignataire.Text+' '+FSPlanificateur.EditSignataire.Text+', attestons par la présente que '+FSPlanificateur.EditDemandeur.Text+' né le '+RClient.DateNaisTiers+', a procédé au versement au prés de notre société d''un montant: '+FSPlanificateur.EditMontantVersement.Text+' DA soit en toute lettre: '+FSPlanificateur.EditMontantVersementLettre.Text+', représentant son apport personnel.');
          FSPlanificateur.DataVersement.Lines.Add('');
          FSPlanificateur.DataVersement.Lines.Add('     Relatif à l''acquisition d''un '+FSPlanificateur.EditNatureBien.Text+' '+FSPlanificateur.EditTypeUsage.Text+' de type '+FSPlanificateur.EditTypeBien.Text+', sis au '+FSPlanificateur.EditLocalisationPrecise.Text+' dont le numéro de lot est le '+FSPlanificateur.EditReferenceBien.Text+' d''une surface habitable de '+FSPlanificateur.EditSurfaceHabitable.Text+' m² et d''une surface utile de '+FSPlanificateur.EditSurfaceUtile.Text+' m² sis au '+RProjetFinance.DesignationProjetFinance+' à '+FSPlanificateur.EditAdresseProjet.Text);
          FSPlanificateur.DataVersement.Lines.Add('');
          FSPlanificateur.DataVersement.Lines.Add('     et dont le prix de cession s''élève à: '+FSPlanificateur.EditMontantTTC.Text+' DA soit en toute lettre: '+FSPlanificateur.EditMontantTTCLettre.Text);
          FSPlanificateur.DataVersement.Lines.Add('');
          FSPlanificateur.DataVersement.Lines.Add('     Enfoi de quoi, la présent attestation de peiement lui est délivrée pour servir et valoir ce que de droit.');
     end;

     FSPlanificateur.AfficheModifierAttestationPaiement.Visible:=true;
end;

procedure TFSPlanificateur.TableauDomiciliationClick(Sender: TObject);
begin
     if(FSPlanificateur.AutorisationVersementModifier.Checked=false)then
     begin
          if(FSPlanificateur.RBAfficherNumLot.Checked=true)
          then FSPlanificateur.EditTexteAutorisation.Lines.Text:='          Afin de concrétisé la réservation d''un '+FSPlanificateur.EditNatureBien.Text+' de type '+FSPlanificateur.EditTypeBien.Text+', dont le numéro du lot est le '+FSPlanificateur.EditNumLot.Text+' et le numéro identifiant est le '+FSPlanificateur.EditReferenceBien.Text
          else FSPlanificateur.EditTexteAutorisation.Lines.Text:='          Afin de concrétisé la réservation d''un '+FSPlanificateur.EditNatureBien.Text+' de type '+FSPlanificateur.EditTypeBien.Text+', dont le numéro identifiant est le '+FSPlanificateur.EditReferenceBien.Text;

          FSPlanificateur.EditTexteAutorisation.Lines.Add(' ');

          FSPlanificateur.EditTexteAutorisation.Lines.Add('          Veuillez autoriser, au concerné cité ci-dessus, le versement d''un montant de '+FSPlanificateur.EditMontantVersement.Text+' DA,'+
                                                            ' Soit en lettres : '+ChiffreenLettre(FSPlanificateur.EditMontantVersement.Text)+
                                                            ', Au compte bancaire N° : '+FSPlanificateur.TableauDomiciliation.Cells[3,FSPlanificateur.TableauDomiciliation.Row]+' agence : '+FSPlanificateur.TableauDomiciliation.Cells[2,FSPlanificateur.TableauDomiciliation.Row]+
                                                            ' Ouvert au nom de : '+RParc.Text1);
          FSPlanificateur.EditTexteAutorisation.Lines.Add('      ');
          FSPlanificateur.EditTexteAutorisation.Lines.Add('          Veuillez agréer, notre meilleure et parfaite considération');
     end;
end;

procedure TFSPlanificateur.EditTexteAutorisationKeyPress(Sender: TObject;
  var Key: Char);
begin
     FSPlanificateur.AutorisationVersementModifier.Checked:=true;
end;

end.
