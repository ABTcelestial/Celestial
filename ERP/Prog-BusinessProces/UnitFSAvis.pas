unit UnitFSAvis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, StdCtrls, ExtCtrls, Buttons, Mask;

type
    TFSAvis = class(TForm)
    PagePrincipale: TPageControl;
    PageSaisieAvis: TTabSheet;
    CadreBitAnnuler: TBevel;
    CadreBitValiderAvis: TBevel;
    CadreBitImprimeAvis: TBevel;
    CadreBitNouveau: TBevel;
    CadreBitSupprimerAvis: TBevel;
    PanelDataAvis: TPanel;
    AfficheMontant: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    EditMontantChiffre: TEdit;
    EditMontantLettres: TMemo;
    AfficheBeneficiaireDepense: TPanel;
    TitreIdentiteFichierConcerne: TLabel;
    TitreNatureAvisFinance: TLabel;
    EditBenificiaire: TEdit;
    EditNatureDepences: TMemo;
    RBAfficherListeNatures: TCheckBox;
    AfficheProjet: TPanel;
    Label48: TLabel;
    EditNumProjet: TEdit;
    EditNomProjet: TEdit;
    BitAnnuler: TBitBtn;
    BitImprimeAvis: TBitBtn;
    BitValiderAvis: TBitBtn;
    Panel1: TPanel;
    Label9: TLabel;
    EditNumAvis: TComboBox;
    AfficheValiditeAvis: TPanel;
    TitreAfficheValiditeAvis: TRadioGroup;
    RBPieceMaitenue: TRadioButton;
    RBPieceAnnulee: TRadioButton;
    BitNouveau: TBitBtn;
    BitSupprimerAvis: TBitBtn;
    AfficheOperationAvis: TPanel;
    Bevel15: TBevel;
    BitOperationAvis: TBitBtn;
    BitBtn9: TBitBtn;
    TableauNatureDepenses: TStringGrid;
    TableauTiers: TStringGrid;
    AfficheSeriePieceAvis: TPanel;
    Bevel23: TBevel;
    Bevel27: TBevel;
    TableauSeriePieceAvis: TStringGrid;
    BitValiderSeriePieceAvis: TBitBtn;
    BitBtn17: TBitBtn;
    AfficheDate: TPanel;
    EditDate: TDateTimePicker;
    CadreEditLongueureSeriePiece: TBevel;
    EditDateExecutionAvis: TMaskEdit;
    Label11: TLabel;
    CadreEditDateExecutionAvis: TBevel;
    BitAfficheFicheTechnique: TBitBtn;
    Label6: TLabel;
    EditNumFiche: TEdit;
    EditDesignationFiche: TEdit;
    Label12: TLabel;
    EditNumRubrique: TEdit;
    EditDesignationRubrique: TEdit;
    Label39: TLabel;
    EditNumPlanificateur: TEdit;
    EditDesignationPlanificateur: TEdit;
    TableauSelections: TStringGrid;
    RBFicheProjetPrecis: TCheckBox;
    EditTableauSelection: TEdit;
    Bevel10: TBevel;
    BitBtn4: TBitBtn;
    AffichePrelevementUniteFonds: TPanel;
    Bevel11: TBevel;
    Bevel12: TBevel;
    Label5: TLabel;
    Label13: TLabel;
    TableauUniteFonds: TStringGrid;
    BitVersementEspece: TBitBtn;
    BitBtn7: TBitBtn;
    EditMontantUniteFonds: TMemo;
    EditMontantAVersser: TMemo;
    AfficheOptionImpression: TPanel;
    Bevel3: TBevel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    Label17: TLabel;
    TableauAgenceBanque: TStringGrid;
    BitPrintAvis: TBitBtn;
    BitPrintType: TBitBtn;
    BitBtn6: TBitBtn;
    RBImageChequeVisible: TCheckBox;
    EditOperationEffectuerPar: TEdit;
    EditNombreCopie: TEdit;
    UpDown2: TUpDown;
    RBImpressionDouble: TCheckBox;
    EditSignataire: TComboBox;
    Label7: TLabel;
    Panel2: TPanel;
    EditDesignationDocumentBase: TEdit;
    Label18: TLabel;
    EditNumeroDocumentBase: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    EditIntituleOperationBase: TEdit;
    Label21: TLabel;
    ChargerEditDateDocumentBase: TDateTimePicker;
    Label22: TLabel;
    EditDateDocumentBase: TMaskEdit;
    Bevel13: TBevel;
    AfficheTitreEtat: TPanel;
    AfficheModePaiement: TPanel;
    AfficheDomiciliation: TPanel;
    Label8: TLabel;
    EditNumPiece: TEdit;
    EditTypeAvis: TComboBox;
    Bevel16: TBevel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label23: TLabel;
    EditChargementTypeProces: TEdit;
    Label16: TLabel;
    EditOrigine: TEdit;
    Label14: TLabel;
    EditCompteImputation: TEdit;
    TitreEditChargementFichierConcerne: TLabel;
    AfficheChargementDomiciliation: TPanel;
    Label15: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    EditNumCompteDomiciliation: TEdit;
    EditCompteDomiciliation: TEdit;
    Bevel17: TBevel;
    EditDebitCreditDomiciliation: TEdit;
    AfficheModePaiementCP: TPanel;
    Label30: TLabel;
    EditModePaiementCP: TComboBox;
    Label31: TLabel;
    EditDomiciliationAvisCP: TComboBox;
    Label32: TLabel;
    EditNumPieceCP: TEdit;
    Label33: TLabel;
    Bevel18: TBevel;
    EditNumAvisCP: TEdit;
    Label34: TLabel;
    AfficheChargementDomiciliationCP: TPanel;
    EditDebitCreditCP: TEdit;
    Label35: TLabel;
    EditNumCompteDomiciliationCP: TEdit;
    Label36: TLabel;
    EditCompteDomiciliationCP: TEdit;
    Label37: TLabel;
    AfficheSignataire: TPanel;
    Label24: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    EditChargementCodeFichierConcerne: TEdit;
    EditDebitCreditTiers: TEdit;
    EditCompteTiers: TEdit;
    Bevel19: TBevel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    BitPieceComptable: TBitBtn;
    EditValeurSeizeHeight: TEdit;
    UpDown1: TUpDown;
    UpDown3: TUpDown;
    EditValeurSeizeWidth: TEdit;
    Label38: TLabel;
    Label40: TLabel;
    CadreBitComptabiliser: TBevel;
    BitComptabiliser: TBitBtn;
    BitBtn3: TBitBtn;
    AfficheChargementNature: TPanel;
    BitBtn5: TBitBtn;
    BitBtn10: TBitBtn;
    Bevel6: TBevel;
    TableauListeMouvement: TStringGrid;
    EditNatureOperationMouvement: TMemo;
    Label43: TLabel;
    RBOperationNatureAvie: TCheckBox;
    Bevel7: TBevel;
    EditAvisEtabli: TComboBox;
    Label44: TLabel;
    EditPositionTypeMouvement: TEdit;
    TableauDetaiMouvementAppartenanceMouvemant: TStringGrid;
    TableauPositionMouvement: TStringGrid;
    EditOrdreListeMouvementAppartenant: TEdit;
    Bevel14: TBevel;
    Bevel20: TBevel;
    EditMontantGlobalAuto: TEdit;
    Label51: TLabel;
    EditCodeTiersTeste: TEdit;
    Label52: TLabel;
    Label53: TLabel;
    EditTiersTeste: TEdit;
    RadioGroup1: TRadioGroup;
    RBNatureDetailler: TRadioButton;
    RBNatureCummuler: TRadioButton;
    TableauDesignationMouvement: TStringGrid;
    TableauDestination: TStringGrid;
    BitBtn11: TBitBtn;
    AfficheTaxesAvisBanque: TPanel;
    Label54: TLabel;
    EditMontantAvis: TMemo;
    Bevel21: TBevel;
    Label55: TLabel;
    EditCommissionAvis: TMemo;
    Label56: TLabel;
    EditTaxesAvis: TMemo;
    Label57: TLabel;
    EditTotalAvis: TMemo;
    Bevel22: TBevel;
    BitValider: TBitBtn;
    BitBtn13: TBitBtn;
    EditPourcentageCommission: TEdit;
    Bevel28: TBevel;
    EditPourcentageTaxes: TEdit;
    Label58: TLabel;
    Label59: TLabel;
    EtatPrintType: TLabel;
    RBActivePourcentage: TCheckBox;
    Bevel29: TBevel;
    EditDateValeur: TDateTimePicker;
    RBAfficherLogoBanque: TCheckBox;
    Label60: TLabel;
    Bevel30: TBevel;
    RBAfficherLogoBanqueLong: TCheckBox;
    PageOptionsAvis: TTabSheet;
    RBAfficheControleSerie: TCheckBox;
    Bevel31: TBevel;
    Label10: TLabel;
    EditLongueureSeriePiece: TEdit;
    IncrimentEditLongueureSeriePiece: TUpDown;
    RBActiveSoldeDomiciliation: TCheckBox;
    Bevel32: TBevel;
    Bevel33: TBevel;
    RBRubriqueTrieTableauUniteFond: TCheckBox;
    EditRubriqueTrie: TEdit;
    TypeTrie: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    EditNumDomiciliationAvisCP: TEdit;
    TimerAlerteValiditeAvis: TTimer;
    Label61: TLabel;
    EditNumDomiciliationPiece: TEdit;
    EditDomiciliationPiece: TComboBox;
    Panel6: TPanel;
    Label2: TLabel;
    EditNumDomiciliationAvis: TEdit;
    EditDomiciliationAvis: TComboBox;
    Panel7: TPanel;
    Label1: TLabel;
    EditModePaiement: TComboBox;
    AfficheAutresAgenceBanque: TPanel;
    Bevel4: TBevel;
    Label41: TLabel;
    Label42: TLabel;
    Bevel5: TBevel;
    TableauAutresAgenceBanque: TStringGrid;
    EditRechercheCodeAgence: TEdit;
    EditEditRechercheLibelleAgence: TEdit;
    BitBtn2: TBitBtn;
    EditSourceDomiciliation: TEdit;
    AfficheAgence: TPanel;
    Bevel34: TBevel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Bevel35: TBevel;
    Label65: TLabel;
    Label66: TLabel;
    Bevel36: TBevel;
    EditPositionAgence: TEdit;
    EditCodeAgence: TEdit;
    EditLibelleAgence: TEdit;
    BitBtn1: TBitBtn;
    BitOperationAgence: TBitBtn;
    EditAdresseAgence: TEdit;
    EditTelephoneAgence: TEdit;
    BitBtn12: TBitBtn;
    AfficheNouveauTiers: TPanel;
    Bevel24: TBevel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Bevel25: TBevel;
    Bevel26: TBevel;
    Label49: TLabel;
    Label50: TLabel;
    EditNomTiers: TEdit;
    EditPrenomTiers: TEdit;
    EditAdresseTiers: TEdit;
    BitBtn8: TBitBtn;
    BitValiderNouveauTiers: TBitBtn;
    EditCompteTiersRecherche: TEdit;
    EditCodeTiers: TEdit;
    TableauCompteTiers: TStringGrid;
    TableauListeMouvementAssocierAvis: TStringGrid;
    TableauMouvement: TStringGrid;
    TableauListeNumAvis: TStringGrid;
    TableauListeNumAvisMouvement: TStringGrid;
    BitBtn14: TBitBtn;
    EditBaseAvis: TComboBox;
    TitreEditBaseAvis: TLabel;
    Bevel37: TBevel;
    EditChargementFichierConcerne: TComboBox;
    RBPlusieurLigne: TCheckBox;
    TimerAfficheTiers: TTimer;
    TimerLancerAfficheTiers: TTimer;
    RBChargerPointeur: TCheckBox;
    Bevel38: TBevel;
    EditChargementCodeFichierConcerneMemoire: TEdit;
    BitBtn15: TBitBtn;
    AfficheDatePlus: TPanel;
    RBBoxListeAutres: TCheckBox;
    EditPositionProjet: TEdit;
    EditPositionFiche: TEdit;
    EditPositionRubrique: TEdit;
    EditPositionPlanificateur: TEdit;
    EditPositionModePaiement: TEdit;
    EditChargementPositionFichierConcerne: TEdit;
    EditPositionTypeAvis: TEdit;
    Label25: TLabel;
    Label67: TLabel;
    EditPositionAvis: TEdit;
    AfficherAdresseAvis: TEdit;
    AfficheDataTiers: TPanel;
    TitreEditTiersFichierConserne: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    BitBtn34: TBitBtn;
    EditTiersFichierConserneAfficher: TEdit;
    EditTiersFichierConserne: TComboBox;
    EditTiersTypeProces: TComboBox;
    EditTiersCodeTiers: TEdit;
    EditTiersNomTiers: TEdit;
    RBFichierConcerneChoisiTiers: TCheckBox;
    Label70: TLabel;
    EditTiersDateDebut: TDateTimePicker;
    Label71: TLabel;
    EditTiersDateFin: TDateTimePicker;
    TableauTiersListeTiers: TStringGrid;
    TabSheet1: TTabSheet;
    DataSommeEnLettres: TMemo;
    ImageCodebarre: TImage;
    EditChercheCodebarre: TEdit;
    Label72: TLabel;
    AfficherAdresseAvisR: TEdit;
    BitBtn16: TBitBtn;
    EditFaitA: TComboBox;
    Label73: TLabel;
    TableauRecapitulatifDetailMouvements: TStringGrid;
    procedure EditTypeAvisSelect(Sender: TObject);
    procedure EditNumAvisSelect(Sender: TObject);
    procedure EditDateEnter(Sender: TObject);
    procedure BitNouveauClick(Sender: TObject);
    procedure BitValiderAvisClick(Sender: TObject);
    procedure BitImprimeAvisClick(Sender: TObject);
    procedure BitSupprimerAvisClick(Sender: TObject);
    procedure BitAnnulerClick(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitValiderSeriePieceAvisClick(Sender: TObject);
    procedure TableauSeriePieceAvisDblClick(Sender: TObject);
    procedure TableauSeriePieceAvisKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauSeriePieceAvisKeyPress(Sender: TObject;
      var Key: Char);
    procedure TableauNatureDepensesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauTiersKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditModePaiementEnter(Sender: TObject);
    procedure EditDomiciliationAvisEnter(Sender: TObject);
    procedure EditNumPieceEnter(Sender: TObject);
    procedure EditMontantChiffreEnter(Sender: TObject);
    procedure EditMontantLettresEnter(Sender: TObject);
    procedure EditBenificiaireEnter(Sender: TObject);
    procedure EditNatureDepencesEnter(Sender: TObject);
    procedure EditCompteImputationEnter(Sender: TObject);
    procedure EditDebitCreditDomiciliationEnter(Sender: TObject);
    procedure EditOrigineEnter(Sender: TObject);
    procedure EditChargementTypeProcesEnter(Sender: TObject);
    procedure EditChargementCodeFichierConcerneEnter(Sender: TObject);
    procedure EditSignataireEnter(Sender: TObject);
    procedure EditModePaiementKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditModePaiementSelect(Sender: TObject);
    procedure EditDomiciliationAvisKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNumPieceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditMontantChiffreExit(Sender: TObject);
    procedure RBAfficherListeNaturesClick(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure EditNatureDepencesKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditBenificiaireKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitOperationAvisClick(Sender: TObject);
    procedure EditMontantChiffreKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditBenificiaireKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditDomiciliationAvisChange(Sender: TObject);
    procedure IncrimentEditLongueureSeriePieceClick(Sender: TObject; Button: TUDBtnType);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitPrintAvisClick(Sender: TObject);
    procedure BitPrintTypeClick(Sender: TObject);
    procedure AfficheOptionImpressionExit(Sender: TObject);
    procedure BitAfficheFicheTechniqueClick(Sender: TObject);
    procedure EditNumFicheEnter(Sender: TObject);
    procedure EditNumFicheKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNumRubriqueEnter(Sender: TObject);
    procedure EditNumRubriqueKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNumPlanificateurEnter(Sender: TObject);
    procedure TableauSelectionsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNumProjetEnter(Sender: TObject);
    procedure EditNumProjetKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNomProjetEnter(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure EditTypeAvisEnter(Sender: TObject);
    procedure EditNumAvisEnter(Sender: TObject);
    procedure BitVersementEspeceClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure TableauUniteFondsKeyPress(Sender: TObject; var Key: Char);
    procedure TableauUniteFondsKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNumPlanificateurKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditDateDocumentBaseDblClick(Sender: TObject);
    procedure ChargerEditDateDocumentBaseChange(Sender: TObject);
    procedure EditDesignationDocumentBaseEnter(Sender: TObject);
    procedure EditNumeroDocumentBaseEnter(Sender: TObject);
    procedure ChargerEditDateDocumentBaseEnter(Sender: TObject);
    procedure EditIntituleOperationBaseEnter(Sender: TObject);
    procedure EditDesignationDocumentBaseKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditNumeroDocumentBaseKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditDateDocumentBaseKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditIntituleOperationBaseKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure EditModePaiementCPSelect(Sender: TObject);
    procedure EditModePaiementCPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditDomiciliationAvisCPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNumPieceCPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditDomiciliationAvisCPChange(Sender: TObject);
    procedure EditTypeAvisKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormResize(Sender: TObject);
    procedure EditModePaiementExit(Sender: TObject);
    procedure EditDomiciliationAvisExit(Sender: TObject);
    procedure EditModePaiementCPExit(Sender: TObject);
    procedure EditDomiciliationAvisCPExit(Sender: TObject);
    procedure EditNumPieceExit(Sender: TObject);
    procedure EditTypeAvisExit(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure UpDown3Click(Sender: TObject; Button: TUDBtnType);
    procedure EditDateExit(Sender: TObject);
    procedure EditDateChange(Sender: TObject);
    procedure EditOrigineKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitComptabiliserClick(Sender: TObject);
    procedure EditDateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditBenificiaireKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitValiderNouveauTiersClick(Sender: TObject);
    procedure EditNomTiersKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditPrenomTiersKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditAdresseTiersKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauCompteTiersKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditCodeTiersKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure EditRechercheCodeAgenceKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditEditRechercheLibelleAgenceKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure TableauAutresAgenceBanqueKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditRechercheCodeAgenceKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditEditRechercheLibelleAgenceKeyUp(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RBOperationNatureAvieClick(Sender: TObject);
    procedure EditAvisEtabliKeyPress(Sender: TObject; var Key: Char);
    procedure EditAvisEtabliChange(Sender: TObject);
    procedure TableauListeMouvementDblClick(Sender: TObject);
    procedure RBNatureDetaillerClick(Sender: TObject);
    procedure RBNatureCummulerClick(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure EditMontantAvisKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditMontantAvisKeyPress(Sender: TObject; var Key: Char);
    procedure EditCommissionAvisKeyPress(Sender: TObject; var Key: Char);
    procedure EditTaxesAvisKeyPress(Sender: TObject; var Key: Char);
    procedure EditTotalAvisKeyPress(Sender: TObject; var Key: Char);
    procedure EditCommissionAvisKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditTaxesAvisKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditTotalAvisKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitValiderClick(Sender: TObject);
    procedure IncrimentEditPourcentageCommissionClick(Sender: TObject;
      Button: TUDBtnType);
    procedure IncrimentEditPourcentageTaxesClick(Sender: TObject;
      Button: TUDBtnType);
    procedure EditPourcentageCommissionExit(Sender: TObject);
    procedure EditPourcentageTaxesExit(Sender: TObject);
    procedure EditMontantAvisEnter(Sender: TObject);
    procedure EditMontantAvisExit(Sender: TObject);
    procedure EditCommissionAvisEnter(Sender: TObject);
    procedure EditCommissionAvisExit(Sender: TObject);
    procedure EditTaxesAvisEnter(Sender: TObject);
    procedure EditTaxesAvisExit(Sender: TObject);
    procedure EditTotalAvisEnter(Sender: TObject);
    procedure EditTotalAvisExit(Sender: TObject);
    procedure AfficheTaxesAvisBanqueExit(Sender: TObject);
    procedure RBActivePourcentageClick(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure TableauUniteFondsClick(Sender: TObject);
    procedure TimerAlerteValiditeAvisTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditDomiciliationPieceChange(Sender: TObject);
    procedure EditDomiciliationPieceEnter(Sender: TObject);
    procedure EditDomiciliationPieceExit(Sender: TObject);
    procedure EditDomiciliationPieceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitOperationAgenceClick(Sender: TObject);
    procedure EditCodeAgenceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditLibelleAgenceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditAdresseAgenceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditTelephoneAgenceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditDomiciliationAvisKeyPress(Sender: TObject;
      var Key: Char);
    procedure EditDomiciliationPieceKeyPress(Sender: TObject;
      var Key: Char);
    procedure TableauSeriePieceAvisContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure PageOptionsAvisShow(Sender: TObject);
    procedure TableauListeNumAvisClick(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure EditBaseAvisSelect(Sender: TObject);
    procedure EditChargementFichierConcerneEnter(Sender: TObject);
    procedure EditNatureDepencesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TimerLancerAfficheTiersTimer(Sender: TObject);
    procedure TimerAfficheTiersTimer(Sender: TObject);
    procedure EditBenificiaireExit(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure TableauTiersExit(Sender: TObject);
    procedure EditModePaiementKeyPress(Sender: TObject; var Key: Char);
    procedure EditMontantChiffreKeyPress(Sender: TObject; var Key: Char);
    procedure TableauMouvementClick(Sender: TObject);
    procedure EditTiersNomTiersEnter(Sender: TObject);
    procedure EditTiersNomTiersKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditTiersNomTiersKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauTiersListeTiersDblClick(Sender: TObject);
    procedure TableauTiersListeTiersKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauUniteFondsDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauListeMouvementDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauDetaiMouvementAppartenanceMouvemantDrawCell(
      Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure TableauDesignationMouvementDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauDestinationDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauTiersDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure TableauSelectionsDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauCompteTiersDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauSeriePieceAvisDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauNatureDepensesDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauMouvementDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauListeMouvementAssocierAvisDrawCell(Sender: TObject;
      ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauListeNumAvisMouvementDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauTiersListeTiersDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure EditChercheCodebarreEnter(Sender: TObject);
    procedure EditChercheCodebarreKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditChercheCodebarreExit(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure EditOrigineDblClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSAvis: TFSAvis;

Function AfficheAvis(NumAvis,FichierConserneBaseAvis:string):boolean;
Function ControleNouveauAvis:boolean;
Function StructureRacine(NumProjetFinance:string):string;
Procedure NouvelAvis;
Procedure ListeNatureDepenses(Tableau:TStringGrid; NatureDepense:string);
Procedure ViderOrdreVirement(ActivationInformation:boolean);
Procedure ViderOrdreVersementEspece;
Procedure ViderRemiseCheque;
Procedure VersementUniteFonds(TableauUniteFonds:TStringGrid);
Procedure AfficerDataContrePartieAvis(DesignationTypeAvis,FichierConserneAvis:string);
Procedure SeizeFSAvis;
Function ControleSoldeDomiciliation(DesignationTypeAvis,NumDomiciliation,Domiciliation,DateFin,MontantAOperer:string):boolean;
Function FunctPourcentagePartieCommune(NumProjetFinanceAffiche:string):real;
Function TypeOperationTypeAvis(DesignationTypeAvis:string):string;
Procedure AutoNatureOperationDetailler;
Procedure AutoNatureOperationCummuler;
Procedure MiseAjorAvisTypeAvis;
Procedure CalculeTotauxAvis;
procedure AffichageControleSerie(NumDomiciliation:string);
Procedure ChargementNumPiece(NumDomiciliation:string);
Procedure ListeMouvementAssocierAvis(TableauListeMouvementAssocierAvis:TStringGrid; NumAvis,PositionTypeMouvement,PositionMouvement,TiersDateDebut,TiersDateFin,CodeTiers:string);
Procedure ListeNumAvisAssocierMouvement(TableauListeNumAvis:TStringGrid; PositionTypeMouvement,PositionMouvement,NumListeMouvement,TiersDateDebut,TiersDateFin,CodeTiers:string);
Procedure IndiqueInTableauNumInTexte(TableauListeNum:TStringGrid; RowIn,ColDataNum:integer; ListeNum:string; var RowOut:integer);
Procedure AfficherFSAvis(FichierBaseAvis:string);
Procedure MiseAJourPositionAvisParPeriode(DesignationBaseAvis:string);
Procedure ListeBaseAvisInclu(ListeBaseAvis,BaseAvisSelect:string; EditListeBaseAvis:TComboBox; TitreBaseAvis:TLabel);

implementation

Uses UnitInitialisation, UnitPintAvis, UnitFSGenerateurBase, UnitFSTiers, UnitFSGenerateurMouvement,
     UnitPrintChequeModel01, UnitFSFicheTechniqueProjet, UnitFSPlanificateur,
     UnitPrintOrdreVirement, UnitFSAgenceBanque, UnitFSMenuPrincipal,
     UnitPrintOrdreVersementEspece, UnitPrintRemiseCheque, UnitFSNowPrelevement,
     UnitFSComptabiliteTransitoire, UnitFSFicheSaisie, UnitFSTraitementDonnees,
     UnitPrintAvisBanque1, UnitFSSairiePiecesDomiciliation, UnitSuppression, UnitFSParametresAvances,
  UnitFSEtiquettesCodeBarre, UnitFSOrigineListeMouvementAvis;

var

RParc:RInstalle;
FParc:FInstalle;
ParcInstalle:string250;

TTypeAvis:TTypeAviss;
RTypeAvis:RTypeAviss;
FTypeAvis:FTypeAviss;
ChTypeAvis:string250;

TAvis:TAviss;
RAvis:RAviss;
FAvis:FAviss;
ChAvis:string250;

TTypeProjet:TTypeProjets;
RTypeProjet:RTypeProjets;
FTypeProjet:FTypeProjets;
ChTypeProjet:string250;

TProjetFinance:TProjetFinances;
RProjetFinance:RProjetFinances;
FProjetFinance:FProjetFinances;
ChProjetFinance:string250;

TDomiciliation:TDomiciliations;
RDomiciliation:RDomiciliations;
FDomiciliation:FDomiciliations;
ChDomiciliation:string250;

TTiers:TTierss;
RTiers:RTierss;
FTiers:FTierss;
ChTiers:string250;

TClient:TTierss;
RClient:RTierss;
FClient:FTierss;
ChClient:string250;

TFournisseur:TTierss;
RFournisseur:RTierss;
FFournisseur:FTierss;
ChFournisseur:string250;

/////////////////////////////////////////////////////////////////////////////
TPersonnel:TPersonnels;
RPersonnel:RPersonnels;
FPersonnel:FPersonnels;
ChPersonnel:string250;
/////////////////////////////////////////////////////////////////////////////

{$R *.dfm}

Procedure ListeNatureDepenses(Tableau:TStringGrid; NatureDepense:string);
var  i,R:integer; OKNatureDepense:boolean;  TypeProces,FichierConcerne,Adresse:string;
begin
     Tableau.Visible:=true;
     Tableau.RowCount:=2;
     Tableau.Rows[1].Text:='';
     Tableau.Cols[0].Text:='N°';
     Tableau.Cols[1].Text:='Nature de dépenses';

     TypeProces:='Business';   FichierConcerne:=FSAvis.EditBaseAvis.Text;
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
     end;

     ChAvis:=Adresse;
     assignfile(FAvis,ChAvis);
     if FileExists(ChAvis)then
     Reset(FAvis)
     else Rewrite(FAvis);
     Seek(FAvis,0);
     i:=0;
     while not eof(FAvis)do
     begin
          read(FAvis,RAvis);
          OKNatureDepense:=true;
          R:=1;
          while(R<=i)and(OKNatureDepense=true)do
          begin
               if(RAvis.NatureDepense=Tableau.Cells[1,R])then
               begin
                    OKNatureDepense:=false;
               end;
          R:=R+1;
          end;

          if(OKNatureDepense=true)then
          begin
               if(NatureDepense<>'')then
               begin
                    if(Firstlaters(RAvis.NatureDepense,longueur(NatureDepense))=NatureDepense)
                    then OKNatureDepense:=true
                    else OKNatureDepense:=false;
               end
               else OKNatureDepense:=true;
          end;

          if(OKNatureDepense=true)then
          begin
               i:=i+1;
               Tableau.Rows[i].Text:=inttostr(i);
               Tableau.Cells[1,i]:=RAvis.NatureDepense;
          end;
     end;
     CloseFile(FAvis);

     if(i>0)then Tableau.RowCount:=i+1
            else
            begin
                 Tableau.RowCount:=2;
                 Tableau.Visible:=false;
            end;
end;

Procedure NouvelAvis;
var i:integer;  OKAvis:boolean; NumTypeAvis:integer; DesignationTypeAvis,CompteImputation,DebitCredit,TypeProces,FichierConserne,Adresse:string;
begin
FSAvis.AfficheOperationAvis.Visible:=false;

if(FSAvis.EditNumAvis.Text<>'')
and(FSAvis.EditNumAvis.Text<>'Aucun')
then
begin
     TypeProces:='Business';   FichierConserne:=FSAvis.EditBaseAvis.Text;
     if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
     end;

     ChAvis:=Adresse;
     assignfile(FAvis,ChAvis);
     if FileExists(ChAvis)then
     Reset(FAvis)
     else Rewrite(FAvis);
     Seek(FAvis,0);
     OKAvis:=false;
     while not eof(FAvis)and(OKAvis=false)do
     begin
          read(FAvis,RAvis);
          if(RAvis.NumAvis=strtointeger(FSAvis.EditNumAvis.Text))then
          begin
               OKAvis:=true;
          end;
     end;
     Closefile(FAvis);

     if(OKAvis=false)then
     begin
          showmessage('L''avis sélectionné n''est pas enregistré, Veuillez enregistrer l''avis avant, SVP !');
          FSAvis.BitValiderAvis.SetFocus;
          Exit;
     end;
end;
FSAvis.RBPieceMaitenue.Checked:=true;
FSAvis.AfficheTitreEtat.Enabled:=true;
FSAvis.AfficheValiditeAvis.Enabled:=true;
FSAvis.AfficheDomiciliation.Enabled:=true;
FSAvis.AfficheDate.Enabled:=true;
FSAvis.EditDate.Enabled:=true;
FSAvis.AfficheModePaiement.Enabled:=FSAvis.RBPieceMaitenue.Checked;
FSAvis.AfficheBeneficiaireDepense.Enabled:=FSAvis.RBPieceMaitenue.Checked;
FSAvis.AfficheMontant.Enabled:=FSAvis.RBPieceMaitenue.Checked;
FSAvis.AfficheSignataire.Enabled:=FSAvis.RBPieceMaitenue.Checked;
FSAvis.AfficheProjet.Enabled:=FSAvis.RBPieceMaitenue.Checked;

TypeProces:='Business';   FichierConserne:=FSAvis.EditBaseAvis.Text;
if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
end;

ChAvis:=Adresse;
assignfile(FAvis,ChAvis);
if FileExists(ChAvis)then
Reset(FAvis)
else Rewrite(FAvis);
Seek(FAvis,0);
i:=1;
while not eof(FAvis)do
begin
     read(FAvis,RAvis);
     if(i<=RAvis.NumAvis)then i:=RAvis.NumAvis+1;
end;
Closefile(FAvis);

FSAvis.EditPositionAvis.Text:='';
FSAvis.EditNumAvis.Text:=Completezerogauche(inttostr(i),'5');
FSAvis.EditTypeAvis.ItemIndex:=-1;
FSAvis.EditTypeAvis.Text:='';
FSAvis.AfficheDomiciliation.Visible:=true;
FSAvis.EditDate.Date:=date;
FSAvis.EditDateExecutionAvis.Text:='';
FSAvis.EditModePaiement.ItemIndex:=-1;
FSAvis.EditModePaiement.Text:='';
FSAvis.EditNumPiece.Text:='';
FSAvis.EditNumCompteDomiciliation.Text:='';
FSAvis.EditNumDomiciliationAvis.Text:='';
FSAvis.EditDomiciliationAvis.Text:='';
FSAvis.EditNumDomiciliationPiece.Text:='';
FSAvis.EditDomiciliationPiece.Text:='';
FSAvis.EditMontantChiffre.Text:='';
FSAvis.EditMontantLettres.Text:='';
FSAvis.EditChargementCodeFichierConcerne.Text:='';
FSAvis.EditChargementFichierConcerne.Text:='';
FSAvis.EditChargementTypeProces.Text:='';
FSAvis.EditBenificiaire.Text:='';
FSAvis.EditNatureDepences.Text:='';
FSAvis.EditCompteImputation.Text:='';
FSAvis.EditDebitCreditTiers.Text:='';
FSAvis.EditCompteTiers.Text:='';
FSAvis.EditDebitCreditDomiciliation.Text:='';
FSAvis.EditOrigine.Text:='';
FSAvis.EditNumProjet.Text:='';
FSAvis.EditNomProjet.Text:='';
FSAvis.EditNumFiche.Text:='';
FSAvis.EditDesignationFiche.Text:='';
FSAvis.EditNumRubrique.Text:='';
FSAvis.EditDesignationRubrique.Text:='';
FSAvis.EditNumPlanificateur.Text:='';
FSAvis.EditDesignationPlanificateur.Text:='';
FSAvis.EditCompteDomiciliation.Text:='';
FSAvis.RBPieceMaitenue.Checked:=true;
FSAvis.EditCompteDomiciliation.Text:='';
FSAvis.EditChargementPositionFichierConcerne.Text:='';
FSAvis.EditPositionProjet.Text:='';
FSAvis.EditPositionFiche.Text:='';
FSAvis.EditPositionRubrique.Text:='';
FSAvis.EditPositionPlanificateur.Text:='';
FSAvis.EditPositionTypeAvis.Text:='';
FSAvis.EditPositionModePaiement.Text:='';

FSAvis.EditDate.SetFocus;

end;

Function StructureRacine(NumProjetFinance:string):string;
var   L:integer;  NomStructureRacine:string;
begin
OpenFParc(RParc);
ChProjetFinance:=RParc.Parcours+'\'+Exercice+'FProjetFinance';
assignfile(FProjetFinance,ChProjetFinance);
if FileExists(ChProjetFinance)then
Reset(FProjetFinance)
else Rewrite(FProjetFinance);

NomStructureRacine:='';
L:=longueur(NumProjetFinance);
while(L>0)do
begin
     Seek(FProjetFinance,0);
     while not eof(FProjetFinance)do
     begin
          read(FProjetFinance,RProjetFinance);
          if(RProjetFinance.NumProjetFinance=Firstlaters(NumProjetFinance,L))then
          begin
               if(NomStructureRacine<>'')
               then NomStructureRacine:=NomStructureRacine+' - '+RProjetFinance.DesignationProjetFinance
               else NomStructureRacine:=RProjetFinance.DesignationProjetFinance;
          end;
     end;
     L:=L-5;
end;
CloseFile(FProjetFinance);

StructureRacine:=NomStructureRacine;

end;

Function ControleNouveauAvis:boolean;
begin
     FSAvis.TableauTiers.Visible:=false;
     FSAvis.TableauNatureDepenses.Visible:=false;
     FSAvis.AfficheOperationAvis.Visible:=false;
     FSAvis.AfficheNouveauTiers.Visible:=false;
     FSAvis.AffichePrelevementUniteFonds.Visible:=false;
     FSAvis.AfficheOptionImpression.Visible:=false;
     FSAvis.AfficheSeriePieceAvis.Height:=0;
     FSAvis.TableauSelections.Visible:=false;

     if(FSAvis.EditNumAvis.Text='')
     or(FSAvis.EditNumAvis.Text='Aucun')
     then
     begin
          ControleNouveauAvis:=false;
          showmessage('Aucun avis n''est sélectionné !');
          FSAvis.BitNouveau.Enabled:=true;
          FSAvis.BitNouveau.SetFocus;
     end
     else ControleNouveauAvis:=true;
end;

Function AfficheAvis(NumAvis,FichierConserneBaseAvis:string):boolean;
var i,PositionTypeAvis,NumAvisAuto,ChercheSigneDebitCredit,NumTypeAvis:integer; OKAvis,OKTiers:boolean;  Lettres,CompteImputation,DebitCredit,AvisConcerneTiers,Adresse:string;
    RAvisTrouver:RAviss;
    DesignationTypeAvis,TypeProces,JourneauxAuxiliaireUtilise,Codebarre,Titre,SousTitre:string;
    TTypeAvisChargement:TTypeAviss;
begin

{if(NumAvis='')
or(NumAvis='Aucun')
then 
begin}
     FSAvis.RBPieceMaitenue.Checked:=false;
     FSAvis.AfficheValiditeAvis.Enabled:=FSAvis.RBPieceMaitenue.Checked;
     FSAvis.AfficheDomiciliation.Enabled:=FSAvis.RBPieceMaitenue.Checked;
     //FSAvis.AfficheModePaiement.Enabled:=FSAvis.RBPieceMaitenue.Checked;
     FSAvis.AfficheBeneficiaireDepense.Enabled:=FSAvis.RBPieceMaitenue.Checked;
     FSAvis.AfficheMontant.Enabled:=FSAvis.RBPieceMaitenue.Checked;
     //FSAvis.AfficheSignataire.Enabled:=FSAvis.RBPieceMaitenue.Checked;
     FSAvis.AfficheProjet.Enabled:=FSAvis.RBPieceMaitenue.Checked;
     //FSAvis.AfficheTitreEtat.Enabled:=FSAvis.RBPieceMaitenue.Checked;
     FSAvis.AfficheChargementDomiciliation.Enabled:=FSAvis.RBPieceMaitenue.Checked;
     FSAvis.AfficheDate.Enabled:=FSAvis.RBPieceMaitenue.Checked;

     FSAvis.EditPositionAvis.Text:='';
     //FSAvis.EditNumAvis.Text:='';
     FSAvis.EditNumAvisCP.Text:='';
     FSAvis.EditPositionTypeAvis.Text:='';
     FSAvis.EditTypeAvis.ItemIndex:=-1;
     FSAvis.EditTypeAvis.Text:='';
     FSAvis.EditPositionModePaiement.Text:='';
     FSAvis.EditModePaiement.ItemIndex:=-1;
     FSAvis.EditModePaiementCP.Text:='';
     FSAvis.AfficheDomiciliation.Visible:=true;
     FSAvis.EditDate.Date:=date;
     FSAvis.EditDateExecutionAvis.Text:='';
     //FSAvis.EditModePaiement.SetFocus;
     FSAvis.EditNumPiece.Text:='';
     FSAvis.EditNumPieceCP.Text:='';
     //FSAvis.EditPositionDomiciliationAvis.Text:=
     FSAvis.EditNumDomiciliationAvis.Text:='';
     FSAvis.EditDomiciliationAvis.Text:='';
     //FSAvis.EditPositionDomiciliationPiece.Text:=
     FSAvis.EditNumDomiciliationPiece.Text:='';
     FSAvis.EditDomiciliationPiece.Text:='';
     FSAvis.EditNumDomiciliationAvisCP.Text:='';
     FSAvis.EditDomiciliationAvisCP.Text:='';
     FSAvis.EditMontantChiffre.Text:='';
     FSAvis.EditMontantLettres.Text:='';
     FSAvis.EditChargementTypeProces.Text:='';
     FSAvis.EditChargementFichierConcerne.Text:='';
     FSAvis.EditChargementPositionFichierConcerne.Text:='';
     FSAvis.EditChargementCodeFichierConcerne.Text:='';
     FSAvis.EditBenificiaire.Text:='';
     FSAvis.EditNatureDepences.Text:='';
     FSAvis.EditCompteImputation.Text:='';
     FSAvis.EditDebitCreditDomiciliation.Text:='';
     FSAvis.EditDebitCreditCP.Text:='';
     FSAvis.EditDebitCreditTiers.Text:='';
     FSAvis.EditCompteTiers.Text:='';
     FSAvis.EditOrigine.Text:='';
     FSAvis.EditNumProjet.Text:='';
     FSAvis.EditNomProjet.Text:='';
     FSAvis.EditNumFiche.Text:='';
     FSAvis.EditDesignationFiche.Text:='';
     FSAvis.EditNumRubrique.Text:='';
     FSAvis.EditDesignationRubrique.Text:='';
     FSAvis.EditNumPlanificateur.Text:='';
     FSAvis.EditDesignationPlanificateur.Text:='';
     FSAvis.EditDesignationDocumentBase.Text:='';
     FSAvis.EditNumeroDocumentBase.Text:='';
     FSAvis.EditDateDocumentBase.Text:='';
     FSAvis.EditIntituleOperationBase.Text:='';
     FSAvis.EditNumCompteDomiciliation.Text:='';
     FSAvis.EditCompteDomiciliation.Text:='';
     FSAvis.EditNumCompteDomiciliationCP.Text:='';
     FSAvis.EditCompteDomiciliationCP.Text:='';
     FSAvis.EditPositionProjet.Text:='';
     FSAvis.EditPositionFiche.Text:='';
     FSAvis.EditPositionRubrique.Text:='';
     FSAvis.EditPositionPlanificateur.Text:='';
{end
else }
begin
FSAvis.RBPieceMaitenue.Checked:=true;
FSAvis.AfficheValiditeAvis.Enabled:=FSAvis.RBPieceMaitenue.Checked;
FSAvis.AfficheDomiciliation.Enabled:=FSAvis.RBPieceMaitenue.Checked;
     //FSAvis.AfficheModePaiement.Enabled:=FSAvis.RBPieceMaitenue.Checked;
FSAvis.AfficheBeneficiaireDepense.Enabled:=FSAvis.RBPieceMaitenue.Checked;
FSAvis.AfficheMontant.Enabled:=FSAvis.RBPieceMaitenue.Checked;
     //FSAvis.AfficheSignataire.Enabled:=FSAvis.RBPieceMaitenue.Checked;
FSAvis.AfficheProjet.Enabled:=FSAvis.RBPieceMaitenue.Checked;
     //FSAvis.AfficheTitreEtat.Enabled:=FSAvis.RBPieceMaitenue.Checked;
FSAvis.AfficheChargementDomiciliation.Enabled:=FSAvis.RBPieceMaitenue.Checked;
FSAvis.AfficheDate.Enabled:=FSAvis.RBPieceMaitenue.Checked;

TTypeAvisChargement:=RemplireTableauTypeAvis;

TypeProces:='Business';
if not(FunctionAdresseProces(TypeProces,FichierConserneBaseAvis,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserneBaseAvis+' recherché !');
end;

ChAvis:=Adresse;  FSAvis.AfficherAdresseAvisR.Text:=ChAvis;
assignfile(FAvis,ChAvis);
if FileExists(ChAvis)then
Reset(FAvis)
else Rewrite(FAvis);
Seek(FAvis,0);
i:=0;
OKAvis:=false;
while not eof(FAvis)and(OKAvis=false)do
begin
     read(FAvis,RAvis);
     if(RAvis.NumAvis=strtointeger(NumAvis))then
     begin
          OKAvis:=true;
          if not(RegistreInvisibleReseaux(RAvis.TypeProces,RAvis.AvisConcerneTiers,RAvis.CodeTiers,'','',RAutorisationPartageRegistreCopie))then
          begin
          FSAvis.EditPositionAvis.Text:=inttostr(i);
          FSAvis.EditNumAvis.Text:=Completezerogauche(inttostr(RAvis.NumAvis),'5');
          FSAvis.EditDate.Date:=strtodate(RAvis.DateAvis);
          FSAvis.EditDateExecutionAvis.Text:=RAvis.DateExecute;
          FSAvis.EditPositionTypeAvis.Text:=inttostr(RAvis.PositionTypeAvis);
          FSAvis.EditTypeAvis.ItemIndex:=RAvis.PositionTypeAvis;
          if(RAvis.PositionTypeAvis<>-1)and(FSAvis.EditTypeAvis.Text<>RAvis.DesignationTypeAvis)then
          begin
               affichermessage('Attention ! La position Type Avis ne correspond pas au type Avis sélectionné !');
          end;

          FSAvis.EditPositionModePaiement.Text:=RAvis.PositionModePaiement;
          FSAvis.EditModePaiement.Text:=RAvis.ModePaiement;
          FSAvis.EditNumPiece.Text:=RAvis.NumPiece;

          //FSAvis.EditPositionDomiciliationAvis.Text:=RAvis.PositionDomiciliationAvis;
          FSAvis.EditNumDomiciliationAvis.Text:=RAvis.NumDomiciliationAvis;
          FSAvis.EditDomiciliationAvis.Text:=RAvis.DomiciliationAvis;
          if(RAvis.NumDomiciliationAvis<>'')
          then RDomiciliationCopie:=ChercherDomiciliation(RAvis.NumDomiciliationAvis,'',PositionDomiciliationRecherche)
          else RDomiciliationCopie:=ChercherDomiciliation('',RAvis.DomiciliationAvis,PositionDomiciliationRecherche);

          //FSAvis.EditPositionDomiciliationPiece.Text:=RAvis.PositionDomiciliationPiece;
          FSAvis.EditNumDomiciliationPiece.Text:=RAvis.NumDomiciliationPiece;
          FSAvis.EditDomiciliationPiece.Text:=RAvis.DomiciliationPiece;
          if(RAvis.NumDomiciliationPiece<>'')
          then RDomiciliationCopie:=ChercherDomiciliation(RAvis.NumDomiciliationPiece,'',PositionDomiciliationRecherche)
          else RDomiciliationCopie:=ChercherDomiciliation('',RAvis.DomiciliationPiece,PositionDomiciliationRecherche);

          FSAvis.EditNumCompteDomiciliation.Text:=RDomiciliationCopie.CompteImputation;
          if ChercherCompteComptable(Firstlaters(RDomiciliationCopie.CompteImputation,6),'','PlanComptable',RRegistreCompte)then
          begin
               FSAvis.EditCompteDomiciliation.Text:=RRegistreCompte.Designation;
          end
          else
          begin
               FSAvis.EditNumCompteDomiciliation.Text:=RAvis.NumDomiciliationAvis;
               FSAvis.EditCompteDomiciliation.Text:=RAvis.DomiciliationAvis;
          end;

          FSAvis.EditChargementTypeProces.Text:=RAvis.TypeProces;
          FSAvis.EditChargementFichierConcerne.Text:=RAvis.AvisConcerneTiers;
          FSAvis.EditChargementPositionFichierConcerne.Text:=inttostr(RAvis.PositionTiers);
          FSAvis.EditChargementCodeFichierConcerne.Text:=RAvis.CodeTiers;
          FSAvis.EditBenificiaire.Text:=ImporteDataProcesTiers(FSAvis.EditChargementTypeProces.Text,FSAvis.EditChargementFichierConcerne.Text,RAvis.CodeTiers,PositionTiersRecherche);
          FSAvis.EditNatureDepences.Text:=RAvis.NatureDepense;
          FSAvis.EditCompteImputation.Text:=RAvis.CompteImputation;
          FSAvis.EditDebitCreditDomiciliation.Text:=RAvis.DebitCredit;
          if(FSAvis.EditDebitCreditDomiciliation.Text='Débit')then FSAvis.EditDebitCreditTiers.Text:='Crédit';
          if(FSAvis.EditDebitCreditDomiciliation.Text='Crédit')then FSAvis.EditDebitCreditTiers.Text:='Débit';

          if(RAvis.Montant<>0)
          then
          begin
               FSAvis.EditMontantChiffre.Text:=vergule(floattostr(RAvis.Montant),'2','C','');
               FSAvis.EditMontantLettres.Lines.Text:=Chiffreenlettre(FSAvis.EditMontantChiffre.Text);;
          end
          else
          begin
               FSAvis.EditMontantChiffre.Text:='';
               FSAvis.EditMontantLettres.Lines.Text:='';
          end;

          FSAvis.EditPositionProjet.Text:=RAvis.PositionProjetFinance;
          FSAvis.EditNumProjet.Text:=RAvis.NumProjetFinance;
          FSAvis.EditNomProjet.Text:=StructureRacine(RAvis.NumProjetFinance);
          FSAvis.EditPositionFiche.Text:=RAvis.PositionFicheTechnique;
          RubriqueArborescence('',RAvis.NumRubrique,RRubriqueFicheTechniqueCopie,RFicheTechnique,RTypeAvis);
          if(RFicheTechnique.NumFicheTechnique>0)
          then FSAvis.EditNumFiche.Text:=inttostr(RFicheTechnique.NumFicheTechnique)
          else FSAvis.EditNumFiche.Text:='';
          FSAvis.EditDesignationFiche.Text:=RFicheTechnique.DesignationFicheTechnique;
          FSAvis.EditPositionRubrique.Text:=RAvis.PositionRubrique;
          FSAvis.EditNumRubrique.Text:=RAvis.NumRubrique;
          FSAvis.EditDesignationRubrique.Text:=RRubriqueFicheTechniqueCopie.DesignationRubrique;
          FSAvis.EditPositionPlanificateur.Text:=RAvis.PositionPlanificateur;
          FSAvis.EditNumPlanificateur.Text:=RAvis.NumPlanificateur;
          FSAvis.EditDesignationPlanificateur.Text:=ChercherPlanificateur(RAvis.NumPlanificateur).DesignationPlanificateur;
          FSAvis.EditDesignationDocumentBase.Text:=RAvis.DesignationDocumentBase;
          FSAvis.EditNumeroDocumentBase.Text:=RAvis.NumeroDocumentBase;
          FSAvis.EditDateDocumentBase.Text:=RAvis.DateDocumentBase;
          FSAvis.EditIntituleOperationBase.Text:=RAvis.IntituleOperationBase;
          FSAvis.EditSignataire.Text:=RAvis.Signataire;
          if(RAvis.ValiditeAvis=true)then
          begin
               FSAvis.RBPieceMaitenue.Checked:=true;
               FSAvis.TimerAlerteValiditeAvis.Enabled:=false;
               FSAvis.AfficheValiditeAvis.Color:=$0080FFFF;

          end
          else
          begin
               FSAvis.RBPieceAnnulee.Checked:=true;
               FSAvis.TimerAlerteValiditeAvis.Enabled:=true;
          end;

          FSAvis.EditOrigine.Text:=RAvis.Origine;

          if ChercherCompteComptable(Firstlaters(RAvis.CodeTiers,6),'','PlanComptable',RRegistreCompte)
          then FSAvis.EditCompteTiers.Text:=RRegistreCompte.Designation
          else FSAvis.EditCompteTiers.Text:=RAvis.AvisConcerneTiers;

          FSAvis.AfficheModePaiement.Enabled:=RAvis.ValiditeAvis;
          FSAvis.AfficheBeneficiaireDepense.Enabled:=RAvis.ValiditeAvis;
          FSAvis.AfficheMontant.Enabled:=RAvis.ValiditeAvis;
          FSAvis.AfficheSignataire.Enabled:=RAvis.ValiditeAvis;
          FSAvis.AfficheProjet.Enabled:=RAvis.ValiditeAvis;
          FSAvis.AfficheTitreEtat.Enabled:=RAvis.ValiditeAvis;
          FSAvis.AfficheChargementDomiciliation.Enabled:=RAvis.ValiditeAvis;
          FSAvis.AfficheDate.Enabled:=RAvis.ValiditeAvis;

          if(RAvis.PositionTypeAvis>0)then
          begin
               NumTypeAvis:=TTypeAvisChargement[RAvis.PositionTypeAvis].NumTypeAvis;
               ChercheSigneDebitCredit:=TTypeAvisChargement[RAvis.PositionTypeAvis].SigneDebitCredit;
               CompteImputation:=TTypeAvisChargement[RAvis.PositionTypeAvis].CompteImputation;
               DebitCredit:=TTypeAvisChargement[RAvis.PositionTypeAvis].DebitCredit;
               TypeProces:=TTypeAvisChargement[RAvis.PositionTypeAvis].TypeProces;
               FichierConserneBaseAvis:=TTypeAvisChargement[RAvis.PositionTypeAvis].FichierConserne;
               JourneauxAuxiliaireUtilise:=TTypeAvisChargement[RAvis.PositionTypeAvis].JourneauxAuxiliaireUtilise;
          end
          else
          begin
               NumTypeAvis:=-1;
               ChercheSigneDebitCredit:=1;
               CompteImputation:='';
               DebitCredit:=RAvis.DebitCredit;
               TypeProces:=RAvis.TypeProces;
               FichierConserneBaseAvis:=RAvis.AvisConcerneTiers;
               JourneauxAuxiliaireUtilise:='';
          end;

          if(DebitCredit='Crédit')then FSAvis.TitreNatureAvisFinance.Caption:='Nature de la dépense:'
          else
          if(DebitCredit='Débit')then FSAvis.TitreNatureAvisFinance.Caption:='Nature de la rente:'
          else
          FSAvis.TitreNatureAvisFinance.Caption:='Nature Opération:';

          FSAvis.TitreIdentiteFichierConcerne.Caption:=Lastlaters(FichierConserneBaseAvis,Longueur(FichierConserneBaseAvis)-1);
          if(FSAvis.EditTypeAvis.Text<>'')then
          begin
               if(Firstlaters(RAvis.Origine,4)='Auto')
               then
               begin
                    FSAvis.AfficheModePaiementCP.Visible:=true;

                    if(Lastlaters(RAvis.Origine,Longueur(RAvis.Origine)-5)<>'')then
                    begin
                         if ChercherAvisUnique(Lastlaters(RAvis.Origine,Longueur(RAvis.Origine)-5),'',RAvisTrouver,PositionAvisRecherche)=true then
                         begin
                              FSAvis.EditNumAvisCP.Text:=Completezerogauche(inttostr(RAvisTrouver.NumAvis),'5');
                              FSAvis.EditModePaiementCP.Text:=RAvisTrouver.ModePaiement;
                              FSAvis.EditNumPieceCP.Text:=RAvisTrouver.NumPiece;

                              {FSAvis.EditNumCompteDomiciliationCP.Text:=RAvisTrouver.NumDomiciliation;
                              if ChercherCompteComptable(Firstlaters(RAvisTrouver.NumDomiciliation,6),'','PlanComptable',RRegistreCompte)
                              then FSAvis.EditCompteDomiciliationCP.Text:=RRegistreCompte.Designation
                              else FSAvis.EditCompteDomiciliationCP.Text:=RAvisTrouver.Domiciliation;
                              FSAvis.EditDomiciliationCP.Text:=RAvisTrouver.Domiciliation;}

                              FSAvis.EditNumDomiciliationAvisCP.Text:=RAvisTrouver.NumDomiciliationAvis;
                              FSAvis.EditDomiciliationAvisCP.Text:=RAvisTrouver.DomiciliationAvis;
                              if(RAvisTrouver.NumDomiciliationAvis<>'')
                              then RDomiciliationCopie:=ChercherDomiciliation(RAvisTrouver.NumDomiciliationAvis,'',PositionDomiciliationRecherche)
                              else RDomiciliationCopie:=ChercherDomiciliation('',RAvisTrouver.DomiciliationAvis,PositionDomiciliationRecherche);
                              FSAvis.EditNumCompteDomiciliationCP.Text:=RDomiciliationCopie.CompteImputation;
                              if ChercherCompteComptable(Firstlaters(RDomiciliationCopie.CompteImputation,6),'','PlanComptable',RRegistreCompte)then
                              begin
                                   FSAvis.EditCompteDomiciliationCP.Text:=RRegistreCompte.Designation;
                              end
                               else
                              begin
                                   FSAvis.EditNumCompteDomiciliationCP.Text:=RAvisTrouver.NumDomiciliationAvis;
                                   FSAvis.EditCompteDomiciliationCP.Text:=RAvisTrouver.DomiciliationAvis;
                              end;

                              FSAvis.EditDebitCreditCP.Text:=RAvisTrouver.DebitCredit;
                         end
                         else
                         begin
                              FSAvis.EditNumAvisCP.Text:='';
                              FSAvis.EditModePaiementCP.Text:='';
                              FSAvis.EditNumPieceCP.Text:='';
                              FSAvis.EditNumCompteDomiciliationCP.Text:='';
                              FSAvis.EditCompteDomiciliationCP.Text:='';
                              FSAvis.EditDomiciliationAvisCP.Text:='';
                              FSAvis.EditDebitCreditCP.Text:='';
                              showmessage('Aucun Avis contre partie n''est enregistré !');
                              FSAvis.EditOrigine.SetFocus;
                         end;
                    end
                    else
                    begin
                         FSAvis.EditNumAvisCP.Text:='';
                         FSAvis.EditModePaiementCP.Text:='';
                         FSAvis.EditNumPieceCP.Text:='';
                         FSAvis.EditNumCompteDomiciliationCP.Text:='';
                         FSAvis.EditCompteDomiciliationCP.Text:='';
                         FSAvis.EditDomiciliationAvisCP.Text:='';
                         FSAvis.EditDebitCreditCP.Text:='';
                         showmessage('Aucun Avis contre partie n''est enregistré !');
                         FSAvis.EditOrigine.SetFocus;
                    end;
                end
               else
               begin
                    FSAvis.AfficheModePaiementCP.Visible:=false;
                    FSAvis.EditNumAvisCP.Text:='';
                    FSAvis.EditModePaiementCP.Text:='';
                    FSAvis.EditNumPieceCP.Text:='';
                    FSAvis.EditNumCompteDomiciliationCP.Text:='';
                    FSAvis.EditCompteDomiciliationCP.Text:='';
                    FSAvis.EditDomiciliationAvisCP.Text:='';
                    FSAvis.EditDebitCreditCP.Text:='';
               end;
          end
          else
          begin
               FSAvis.AfficheModePaiementCP.Visible:=false;
               FSAvis.EditNumAvisCP.Text:='';
               FSAvis.EditModePaiementCP.Text:='';
               FSAvis.EditNumPieceCP.Text:='';
               FSAvis.EditNumCompteDomiciliationCP.Text:='';
               FSAvis.EditCompteDomiciliationCP.Text:='';
               FSAvis.EditDomiciliationAvisCP.Text:='';
               FSAvis.EditDebitCreditCP.Text:='';
          end;
          end;

     end;
     i:=i+1;
end;
Closefile(FAvis);
end;                 

Codebarre:=Firstlaters(FSAvis.EditNumCompteDomiciliation.Text,2)+Completezerogauche(inttostr(99999-strtointeger(FSAvis.EditNumAvis.Text)),'5');
//Codebarre:=Completezerogauche(FSAvis.EditPositionTypeAvis.Text,'2')+Completezerogauche(FSAvis.EditNumAvis.Text,'5');
FSAvis.EditChercheCodebarre.Text:=FSEtiquettesCodeBarre.EditCodebarre.Text;
//Titre:='Avis N°: '+Completezerogauche(FSAvis.EditNumAvis.Text,'5');
Titre:='';
SousTitre:='';
ChargerCodeBarre(Titre,firstlaters(Codebarre,7),SousTitre);
FSAvis.ImageCodebarre.Picture:=FSEtiquettesCodeBarre.ImageCodebarre.Picture;

end;

procedure TFSAvis.EditTypeAvisSelect(Sender: TObject);
var i,NumTypeAvis:integer; OKAvis:boolean; DesignationTypeAvis,CompteImputation,DebitCredit,TypeProces,FichierConserne:string;
begin
     FSAvis.EditCompteImputation.Text:='';
     FSAvis.EditDebitCreditDomiciliation.Text:='';
     FSAvis.EditBenificiaire.Text:='';
     FSAvis.EditChargementTypeProces.Text:='';
     FSAvis.EditChargementCodeFichierConcerne.Text:='';
     FSAvis.EditChargementFichierConcerne.Text:='';

     FSAvis.AfficheOperationAvis.Visible:=false;

     if(FSAvis.EditNumRubrique.Text='')and(FSAvis.EditNumFiche.Text='')then
     begin
          DesignationTypeAvis:=FSAvis.EditTypeAvis.Text;
     end
     else
     begin
          RubriqueArborescence(FSAvis.EditNumFiche.Text,FSAvis.EditNumRubrique.Text,RRubriqueFicheTechniqueCopie,RFicheTechnique,RTypeAvis);
          DesignationTypeAvis:=RTypeAvis.DesignationTypeAvis;
     end;

     AfficerDataContrePartieAvis(DesignationTypeAvis,FSAvis.EditBaseAvis.Text);


          i:=0;
          OKAvis:=false;
          while(i<=FSAvis.EditTypeAvis.ItemHeight)and(OKAvis=false)do
          begin
               if(FSAvis.EditTypeAvis.Items.Strings[i]=DesignationTypeAvis)then
               begin
                    OKAvis:=true;
                    FSAvis.EditTypeAvis.ItemIndex:=i;
               end;
          i:=i+1;
          end;

     if(FSAvis.RBActiveSoldeDomiciliation.Checked=true)then ControleSoldeDomiciliation(FSAvis.EditTypeAvis.Text,'',FSAvis.EditDomiciliationAvis.Text,datetostr(FSAvis.EditDate.Date),FSAvis.EditMontantChiffre.Text);
end;

procedure TFSAvis.EditNumAvisSelect(Sender: TObject);
var NumTypeAvis:integer; OKAvis:boolean; DesignationTypeAvis,CompteImputation,DebitCredit,TypeProces,FichierConserne:string;
begin
FSAvis.AfficheOperationAvis.Visible:=false;

if(FSAvis.EditNumRubrique.Text='')and(FSAvis.EditNumFiche.Text='')then
begin
     DesignationTypeAvis:=FSAvis.EditTypeAvis.Text;
end
else
begin
     RubriqueArborescence(FSAvis.EditNumFiche.Text,FSAvis.EditNumRubrique.Text,RRubriqueFicheTechniqueCopie,RFicheTechnique,RTypeAvis);
     DesignationTypeAvis:=RTypeAvis.DesignationTypeAvis;
end;

AfficerDataContrePartieAvis(DesignationTypeAvis,FSAvis.EditBaseAvis.Text);

AfficheAvis(FSAvis.EditNumAvis.Text,FSAvis.EditBaseAvis.Text);

end;
           
procedure TFSAvis.EditDateEnter(Sender: TObject);
begin
FSAvis.TableauSelections.Visible:=false;
if not ControleNouveauAvis then exit;
end;

procedure TFSAvis.BitNouveauClick(Sender: TObject);
begin
if not AccesPrivilegies(FSAvis.EditBaseAvis.Text,FSMenuPrincipal.EditCodeUtilisateur.Text,'MA',true)then exit;
if not AccesPrivilegiesReseaux(FSAvis.EditBaseAvis.Text,FSMenuPrincipal.EditCodeUtilisateur.Text,'MA',true)then exit;

FSAvis.EditDate.Enabled:=true;
NouvelAvis;
end;

procedure TFSAvis.BitValiderAvisClick(Sender: TObject);
var   OKAvis:boolean; i,PositionTypeAvis,NumTypeAvis,SigneDebitCredit:integer; TypeProces,FichierConcerne,Adresse,CompteImputation,DebitCreditAvis,TypeProcesRecherche,FichierconcerneRecherche,JourneauxAuxiliaireUtilise:string;
begin
     if not AccesPrivilegies(FSAvis.EditBaseAvis.Text,FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true)then exit;
     if not AccesPrivilegiesReseaux(FSAvis.EditBaseAvis.Text,FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true)then exit;

     if(FSAvis.EditDebitCreditDomiciliation.Text='')then
     begin
          IndiqueTypeAvis(RAvis.DesignationTypeAvis,PositionTypeAvis,NumTypeAvis,SigneDebitCredit,CompteImputation,DebitCreditAvis,TypeProcesRecherche,FichierconcerneRecherche,JourneauxAuxiliaireUtilise);
          FSAvis.EditDebitCreditDomiciliation.Text:=DebitCreditAvis;
     end;

     if(FunctionAutoriserDebitCreditSansSolde=false)then
     begin
          if(ControleSoldeDomiciliation(FSAvis.EditTypeAvis.Text,'',FSAvis.EditDomiciliationAvis.Text,datetostr(FSAvis.EditDate.Date),FSAvis.EditMontantChiffre.Text)=false)
          then Exit;
     end;

     if(FSAvis.EditNumAvis.Text='')
     or(FSAvis.EditNumAvis.Text='Aucun')
     or((FSAvis.EditTypeAvis.Text='')and(Firstlaters(AnsiUpperCase(FSAvis.EditNatureDepences.Text),10)<>AnsiUpperCase('INVENTAIRE')))
     then
     begin
          showmessage('Veuillez sélectionner un avis, SVP !');

          if(FSAvis.EditTypeAvis.Text='')
          then FSAvis.EditTypeAvis.SetFocus
          else
          if(FSAvis.EditNumAvis.Text='')
          or(FSAvis.EditNumAvis.Text='Aucun')
          then FSAvis.BitNouveau.SetFocus;
     end
     else
     if(FSAvis.EditDebitCreditDomiciliation.Text='')then
     begin
          showmessage('Veuillez sélectionner le type avis, SVP !');
          FSAvis.EditTypeAvis.SetFocus;
     end
     else
     begin
          TypeProces:='Business';   FichierConcerne:=FSAvis.EditBaseAvis.Text;
          if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
               AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
          end;

          ChAvis:=Adresse;
          assignfile(FAvis,ChAvis);
          if FileExists(ChAvis)then
          Reset(FAvis)
          else Rewrite(FAvis);
          Seek(FAvis,0);
          i:=0;
          OKAvis:=false;
          while not eof(FAvis)and(OKAvis=false)do
          begin
               read(FAvis,RAvis);
               if(RAvis.NumAvis=strtointeger(FSAvis.EditNumAvis.Text))then
               begin
                    OKAvis:=true;
               end
               else i:=i+1;
          end;

          if(OKAvis=false)then
          begin
               FSAvis.AfficheOperationAvis.Visible:=true;
               FSAvis.AfficheOperationAvis.Caption:='Valider l''Avis';
               FSAvis.BitOperationAvis.Kind:=bkAll;
               FSAvis.BitOperationAvis.Caption:='Valider';
          end
          else
          begin
               FSAvis.AfficheOperationAvis.Visible:=true;
               FSAvis.AfficheOperationAvis.Caption:='Modifier l''Avis';
               FSAvis.BitOperationAvis.Kind:=bkAll;
               FSAvis.BitOperationAvis.Caption:='Modifier';
          end;

          FSAvis.BitOperationAvis.SetFocus;
     end;


end;

procedure TFSAvis.BitImprimeAvisClick(Sender: TObject);
var   OKAvis:boolean;   TypeProces,FichierConcerne,Adresse:string;
begin
     if not AccesPrivilegies(FSAvis.EditBaseAvis.Text,FSMenuPrincipal.EditCodeUtilisateur.Text,'MI',true)then exit;
     if not AccesPrivilegiesReseaux(FSAvis.EditBaseAvis.Text,FSMenuPrincipal.EditCodeUtilisateur.Text,'MI',true)then exit;

if(FSAvis.EditNumAvis.Text<>'')
and(FSAvis.EditNumAvis.Text<>'Aucun')
then
begin
     TypeProces:='Business';   FichierConcerne:=FSAvis.EditBaseAvis.Text;
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
     end;

     ChAvis:=Adresse;
     assignfile(FAvis,ChAvis);
     if FileExists(ChAvis)then
     Reset(FAvis)
     else Rewrite(FAvis);
     Seek(FAvis,0);
     OKAvis:=false;
     while not eof(FAvis)and(OKAvis=false)do
     begin
          read(FAvis,RAvis);
          if(RAvis.NumAvis=strtointeger(FSAvis.EditNumAvis.Text))then
          begin
               OKAvis:=true;
          end;
     end;
     Closefile(FAvis);

     if(OKAvis=false)then
     begin
          showmessage('Veuillez valider l''avis avant l''Impression, SVP !');
          FSAvis.BitValiderAvis.SetFocus;
          Exit;
     end;
end;

FSAvis.AfficheOptionImpression.Visible:=true;
FSAvis.BitPrintType.Caption:=FSAvis.EditModePaiement.Text;
FSAvis.RBImageChequeVisible.Checked:=false;
FSAvis.BitPrintAvis.SetFocus;

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
OKAvis:=false;
while(not eof(FUtilisateur)and(OKAvis=false))do
begin
     Read(FUtilisateur,RUtilisateur);
     if(RUtilisateur.CodeUtilisateur=FSMenuPrincipal.EditCodeUtilisateur.Text)then
     begin
          OKAvis:=true;
          FSAvis.EditOperationEffectuerPar.Text:=RUtilisateur.Nom+' '+RUtilisateur.Prenom;
     end;
end;
CloseFile(FUtilisateur);

end;

procedure TFSAvis.BitSupprimerAvisClick(Sender: TObject);
begin
     if not AccesPrivilegies(FSAvis.EditBaseAvis.Text,FSMenuPrincipal.EditCodeUtilisateur.Text,'MS',true)then exit;
     if not AccesPrivilegiesReseaux(FSAvis.EditBaseAvis.Text,FSMenuPrincipal.EditCodeUtilisateur.Text,'MS',true)then exit;

if(FSAvis.EditNumAvis.Text<>'')
and(FSAvis.EditNumAvis.Text<>'Aucun')
then
begin
     FSAvis.AfficheOperationAvis.Visible:=true;
     FSAvis.AfficheOperationAvis.Caption:='Supprimer l''Avis';
     FSAvis.BitOperationAvis.Kind:=bkCancel;
     FSAvis.BitOperationAvis.Caption:='Supprimer';
end;

end;

procedure TFSAvis.BitAnnulerClick(Sender: TObject);
begin
FSAvis.Close;
end;

procedure TFSAvis.BitBtn17Click(Sender: TObject);
begin
FSAvis.AfficheSeriePieceAvis.Height:=0;
FSAvis.EditNumPiece.SetFocus;
end;

procedure TFSAvis.BitValiderSeriePieceAvisClick(Sender: TObject);
var  Domiciliation:string;
begin
     if(FSAvis.TableauSeriePieceAvis.Cells[4,FSAvis.TableauSeriePieceAvis.Row]='New')then
     begin
          if(FSAvis.TableauSeriePieceAvis.Cells[2,FSAvis.TableauSeriePieceAvis.Row]<>'')then
          begin
               if(FSAvis.TableauSeriePieceAvis.Cells[0,0]='CP')
               then FSAvis.EditNumPieceCP.Text:=FSAvis.TableauSeriePieceAvis.Cells[2,FSAvis.TableauSeriePieceAvis.Row];
               if(FSAvis.TableauSeriePieceAvis.Cells[0,0]='')
               then FSAvis.EditNumPiece.Text:=FSAvis.TableauSeriePieceAvis.Cells[2,FSAvis.TableauSeriePieceAvis.Row];
          end
          else
          begin
               if(FSAvis.TableauSeriePieceAvis.Cells[0,0]='CP')
               then FSAvis.EditNumPieceCP.Text:='';
               if(FSAvis.TableauSeriePieceAvis.Cells[0,0]='')
               then FSAvis.EditNumPiece.Text:='';
          end;

          if(FSAvis.TableauSeriePieceAvis.Cells[0,0]='CP')
          then FSAvis.EditNumPiececp.SetFocus;
          if(FSAvis.TableauSeriePieceAvis.Cells[0,0]='')
          then FSAvis.EditNumPiece.SetFocus;
     end
     else
     begin
          if(FSAvis.TableauSeriePieceAvis.Cells[0,0]='CP')
          then Domiciliation:=FSAvis.EditDomiciliationAvisCP.Text;
          if(FSAvis.TableauSeriePieceAvis.Cells[0,0]='')
          then Domiciliation:=FSAvis.EditDomiciliationAvis.Text;

          ChargementNumPiece(Domiciliation);
     end;
end;

procedure TFSAvis.TableauSeriePieceAvisDblClick(Sender: TObject);
var  R:integer;
begin

for R:=1 to FSAvis.TableauSeriePieceAvis.RowCount-1 do
begin
     if(R<>FSAvis.TableauSeriePieceAvis.Row)
     then FSAvis.TableauSeriePieceAvis.Cells[1,R]:=''
     else FSAvis.TableauSeriePieceAvis.Cells[1,R]:='OK';
end;

end;

procedure TFSAvis.TableauSeriePieceAvisKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSAvis.BitValiderSeriePieceAvis.SetFocus;
end;

end;

procedure TFSAvis.TableauSeriePieceAvisKeyPress(Sender: TObject;
  var Key: Char);
begin

if key in['s','S']then
begin
     if(FSAvis.TableauSeriePieceAvis.Cells[1,FSAvis.TableauSeriePieceAvis.Row]='')
     then FSAvis.TableauSeriePieceAvis.Cells[1,FSAvis.TableauSeriePieceAvis.Row]:='OK'
     else FSAvis.TableauSeriePieceAvis.Cells[1,FSAvis.TableauSeriePieceAvis.Row]:='';
end;

end;

procedure TFSAvis.TableauNatureDepensesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if(key in[VK_RETURN])then
begin
     FSAvis.EditNatureDepences.Text:=FSAvis.TableauNatureDepenses.Cells[1,FSAvis.TableauNatureDepenses.Row];
     FSAvis.TableauNatureDepenses.Visible:=false;
     FSAvis.RBAfficherListeNatures.Checked:=false;
     FSAvis.BitValiderAvis.SetFocus;
end;

end;

procedure TFSAvis.TableauTiersKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if(key in[VK_RETURN])then
begin
     FSAvis.EditChargementPositionFichierConcerne.Text:=FSAvis.TableauTiers.Cells[41,FSAvis.TableauTiers.Row];
     FSAvis.EditChargementCodeFichierConcerne.Text:=FSAvis.TableauTiers.Cells[1,FSAvis.TableauTiers.Row];
     FSAvis.EditBenificiaire.Text:=FSAvis.TableauTiers.Cells[2,FSAvis.TableauTiers.Row];
     FSAvis.EditNatureDepences.SetFocus;
end;

end;

procedure TFSAvis.EditModePaiementEnter(Sender: TObject);
begin
if not ControleNouveauAvis then exit;
end;

procedure TFSAvis.EditDomiciliationAvisEnter(Sender: TObject);
begin
if not ControleNouveauAvis then exit;
end;

procedure TFSAvis.EditNumPieceEnter(Sender: TObject);
begin
if not ControleNouveauAvis then exit;
end;

procedure TFSAvis.EditMontantChiffreEnter(Sender: TObject);
begin
if not ControleNouveauAvis then exit;

FSAvis.EditMontantChiffre.Text:=WithoutPoint(FSAvis.EditMontantChiffre.Text);
end;

procedure TFSAvis.EditMontantLettresEnter(Sender: TObject);
begin
if not ControleNouveauAvis then exit;
end;

procedure TFSAvis.EditBenificiaireEnter(Sender: TObject);
begin
if not ControleNouveauAvis then exit;

FSAvis.TableauTiers.Left:=144;//FSAvis.PagePrincipale.Left+FSAvis.PanelDataAvis.Left+FSAvis.AfficheBeneficiaireDepense.Left+FSAvis.EditBenificiaire.Left;
FSAvis.TableauTiers.Top:=402;//FSAvis.PagePrincipale.Top+FSAvis.PanelDataAvis.Top+FSAvis.AfficheBeneficiaireDepense.Top+FSAvis.TableauTiers.Height+FSAvis.EditBenificiaire.Top+3;
//ListeTiers(FSAvis.TableauTiers,FSAvis.EditChargementTypeProces.Text,FSAvis.EditChargementFichierConcerne.Text,'','',FSAvis.EditBenificiaire.Text,false);

FSAvis.TableauTiers.Visible:=true;
FSAvis.RBChargerPointeur.Checked:=true;
FSAvis.TimerLancerAfficheTiers.Enabled:=true;

FSAvis.EditChargementCodeFichierConcerneMemoire.Text:=FSAvis.EditChargementCodeFichierConcerne.Text;
FSAvis.EditChargementCodeFichierConcerne.Text:='';
end;

procedure TFSAvis.EditNatureDepencesEnter(Sender: TObject);
begin
if not ControleNouveauAvis then exit;

if(FSAvis.EditNatureDepences.Text='')and(FSAvis.AfficheModePaiementCP.Visible=true)then
begin
     if(FSAvis.EditDomiciliationAvisCP.Text<>'')then
     begin
          FSAvis.EditNatureDepences.Text:='Alimentation: '+FSAvis.EditDomiciliationAvisCP.Text;
          if(FSAvis.EditDomiciliationAvis.Text<>'')then
          begin
               FSAvis.EditNatureDepences.Text:=FSAvis.EditNatureDepences.Text+' par: '+FSAvis.EditDomiciliationAvis.Text;
          end;
     end;
 end;

if(FSAvis.RBAfficherListeNatures.Checked=true)then
begin
     ListeNatureDepenses(FSAvis.TableauNatureDepenses,FSAvis.EditNatureDepences.Text);
end;

end;

procedure TFSAvis.EditCompteImputationEnter(Sender: TObject);
begin
if not ControleNouveauAvis then exit;
end;

procedure TFSAvis.EditDebitCreditDomiciliationEnter(Sender: TObject);
begin
if not ControleNouveauAvis then exit;
end;

procedure TFSAvis.EditOrigineEnter(Sender: TObject);
begin
if not ControleNouveauAvis then exit;
end;

procedure TFSAvis.EditChargementTypeProcesEnter(Sender: TObject);
begin
if not ControleNouveauAvis then exit;
end;

procedure TFSAvis.EditChargementCodeFichierConcerneEnter(Sender: TObject);
begin
if not ControleNouveauAvis then exit;
end;

procedure TFSAvis.EditSignataireEnter(Sender: TObject);
begin
if not ControleNouveauAvis then exit;
end;

procedure TFSAvis.EditModePaiementKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSAvis.EditDomiciliationAvis.SetFocus;
end;

end;

procedure TFSAvis.EditModePaiementSelect(Sender: TObject);
var  OKDomiciliation:boolean; EtatSoldeDebitCredit:string;
     PositionTypeAvis,NumTypeAvis,ChercheSigneDebitCredit:integer;
     CompteImputation,DebitCredit,TypeProces,FichierConserne,JourneauxAuxiliaireUtilis,JourneauxAuxiliaireUtilise:string;
begin

if(FSAvis.EditNumAvis.Text='')or(FSAvis.EditNumAvis.Text='Aucun')then exit;

FSAvis.EditModePaiementCP.Text:='';
FSAvis.EditDomiciliationAvisCP.Text:='';
FSAvis.EditNumPieceCP.Text:='';
EtatSoldeDebitCredit:='';

if(FSAvis.EditModePaiement.Text='Espèce')then
begin
     FSAvis.EditNumPiece.Text:=FSAvis.EditNumAvis.Text;

     OpenFParc(RParc);
     ChDomiciliation:=RParc.Parcours+'\'+Exercice+'FDomiciliation';
     assignfile(FDomiciliation,ChDomiciliation);
     if FileExists(ChDomiciliation)then
     Reset(FDomiciliation)
     else Rewrite(FDomiciliation);
     Seek(FDomiciliation,0);
     OKDomiciliation:=false;
     while not eof(FDomiciliation)and(OKDomiciliation=false)do
     begin
          read(FDomiciliation,RDomiciliation);
          if AnsiUpperCase(firstlaters(RDomiciliation.DesignationDomiciliation,6))=AnsiUpperCase('CAISSE')then
          begin
               OKDomiciliation:=true;
               FSAvis.EditNumDomiciliationAvis.Text:=RDomiciliation.NumDomiciliation;
               FSAvis.EditDomiciliationAvis.Text:=RDomiciliation.DesignationDomiciliation;

               FSAvis.EditNumDomiciliationPiece.Text:=RDomiciliation.NumDomiciliation;
               FSAvis.EditDomiciliationPiece.Text:=RDomiciliation.DesignationDomiciliation;

               EtatSoldeDebitCredit:=RDomiciliation.EtatSoldeDebitCredit;
          end;
     end;
     Closefile(FDomiciliation);
end
else
begin
     OpenFParc(RParc);
     ChDomiciliation:=RParc.Parcours+'\'+Exercice+'FDomiciliation';
     assignfile(FDomiciliation,ChDomiciliation);
     if FileExists(ChDomiciliation)then
     Reset(FDomiciliation)
     else Rewrite(FDomiciliation);
     Seek(FDomiciliation,0);
     OKDomiciliation:=false;
     while not eof(FDomiciliation)and(OKDomiciliation=false)do
     begin
          read(FDomiciliation,RDomiciliation);
          if AnsiUpperCase(firstlaters(RDomiciliation.DesignationDomiciliation,6))<>AnsiUpperCase('CAISSE')then
          begin
               OKDomiciliation:=true;
               FSAvis.EditNumDomiciliationAvis.Text:=RDomiciliation.NumDomiciliation;
               FSAvis.EditDomiciliationAvis.Text:=RDomiciliation.DesignationDomiciliation;

               FSAvis.EditNumDomiciliationPiece.Text:=RDomiciliation.NumDomiciliation;
               FSAvis.EditDomiciliationPiece.Text:=RDomiciliation.DesignationDomiciliation;

               EtatSoldeDebitCredit:=RDomiciliation.EtatSoldeDebitCredit;
          end;
     end;
     Closefile(FDomiciliation);
end;

FSAvis.EditNumCompteDomiciliation.Text:=ChercherDomiciliation('',FSAvis.EditDomiciliationAvis.Text,PositionDomiciliationRecherche).NumDomiciliation;
if ChercherCompteComptable(Firstlaters(FSAvis.EditNumCompteDomiciliation.Text,6),'','PlanComptable',RRegistreCompte)
then FSAvis.EditCompteDomiciliation.Text:=RRegistreCompte.Designation
else FSAvis.EditCompteDomiciliation.Text:=FSAvis.EditDomiciliationAvis.Text;

if(FSAvis.RBActiveSoldeDomiciliation.Checked=true)then ControleSoldeDomiciliation(FSAvis.EditTypeAvis.Text,'',FSAvis.EditDomiciliationAvis.Text,datetostr(FSAvis.EditDate.Date),FSAvis.EditMontantChiffre.Text);

////////////////////////////////////////////////////////////////////////////////
if(FSAvis.EditNumAvis.Text<>'')and(FSAvis.EditModePaiement.Text<>'Espèce')then
begin
     if(FSAvis.EditDomiciliationPiece.Text<>'')then
     begin
          ListeSeriePieceDomiciliation(FSAvis.TableauSeriePieceAvis,FSAvis.EditNumDomiciliationPiece.Text,FSAvis.EditModePaiement.Text,FSAvis.EditLongueureSeriePiece.Text);
          ListeSeriePieceDomiciliationNew(FSAvis.TableauSeriePieceAvis,FSAvis.TableauSeriePieceAvis.RowCount-1,FSAvis.EditNumDomiciliationPiece.Text,FSAvis.EditModePaiement.Text,FSAvis.EditLongueureSeriePiece.Text);
          if(FSAvis.TableauSeriePieceAvis.RowCount-1>0)then
          begin
               FSAvis.AfficheSeriePieceAvis.Height:=401;
               FSAvis.TableauSeriePieceAvis.SetFocus;
               FSAvis.TableauSeriePieceAvis.Cells[0,0]:='';
          end
          else
          begin
               FSAvis.AfficheSeriePieceAvis.Height:=0;
          end;
     end
     else
     begin
          showmessage('Veuillez indiquer la Domiciliation SVP !');
          FSAvis.EditDomiciliationAvis.SetFocus;
     end;
end;

AffichageControleSerie(FSAvis.EditNumDomiciliationPiece.Text);

if(IndiqueTypeAvis(FSAvis.EditTypeAvis.Text,PositionTypeAvis,NumTypeAvis,ChercheSigneDebitCredit,CompteImputation,DebitCredit,TypeProces,FichierConserne,JourneauxAuxiliaireUtilise)=true)then
begin
     if(EtatSoldeDebitCredit<>DebitCredit)then
     begin
          FSAvis.EditNumDomiciliationPiece.Text:=FSAvis.EditNumDomiciliationAvis.Text;
          FSAvis.EditDomiciliationPiece.Text:=FSAvis.EditDomiciliationAvis.Text;
     end
     else
     begin
          FSAvis.EditNumDomiciliationPiece.Text:='';
          FSAvis.EditDomiciliationPiece.Text:='';
     end;
end;

end;

procedure TFSAvis.EditDomiciliationAvisKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSAvis.EditNumPiece.SetFocus;
end;

end;

procedure TFSAvis.EditNumPieceKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     if(FSAvis.AfficheModePaiementCP.Visible=true)
     then FSAvis.EditModePaiementCP.SetFocus
     else FSAvis.EditMontantChiffre.SetFocus;
end;

end;

procedure TFSAvis.EditMontantChiffreExit(Sender: TObject);
var  Lettres:string;
begin
FSAvis.EditMontantChiffre.Text:=Vergule(FSAvis.EditMontantChiffre.Text,'2','C','');
FSAvis.EditMontantLettres.Lines.Text:=chiffreenlettre(FSAvis.EditMontantChiffre.Text);

if(FSAvis.RBActiveSoldeDomiciliation.Checked=true)then ControleSoldeDomiciliation(FSAvis.EditTypeAvis.Text,'',FSAvis.EditDomiciliationAvis.Text,datetostr(FSAvis.EditDate.Date),FSAvis.EditMontantChiffre.Text);
end;

procedure TFSAvis.RBAfficherListeNaturesClick(Sender: TObject);
begin

if(FSAvis.RBAfficherListeNatures.Checked=true)then
begin
     FSAvis.TableauNatureDepenses.Left:=144;
     FSAvis.TableauNatureDepenses.Top:=106;
     ListeNatureDepenses(FSAvis.TableauNatureDepenses,FSAvis.EditNatureDepences.Text);
end
else FSAvis.TableauNatureDepenses.Visible:=false;

end;

procedure TFSAvis.BitBtn9Click(Sender: TObject);
begin
FSAvis.AfficheOperationAvis.Visible:=false;
end;

procedure TFSAvis.EditNatureDepencesKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if(FSAvis.RBAfficherListeNatures.Checked=true)then
ListeNatureDepenses(FSAvis.TableauNatureDepenses,FSAvis.EditNatureDepences.Text);
end;

procedure TFSAvis.EditBenificiaireKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//ListeTiers(FSAvis.TableauTiers,FSAvis.EditChargementTypeProces.Text,FSAvis.EditChargementFichierConcerne.Text,'','',FSAvis.EditBenificiaire.Text,false);

FSAvis.TimerAfficheTiers.Enabled:=false;
FSAvis.TimerLancerAfficheTiers.Enabled:=false;
FSAvis.TimerLancerAfficheTiers.Enabled:=true;
end;

procedure TFSAvis.BitOperationAvisClick(Sender: TObject);
var  OKAvis,Confirme:boolean; i,l,IncRepeter,NbrRepeter,IndexNumAvis:integer;
     NumAvis,NumAvisAutre,ModePaiement,DomiciliationAvis,DomiciliationPiece,NumPiece,DebitCredit,Origine,TypeProces,FichierConcerne,Adresse,PositionAvis,PositionAvisCP:string;
begin
PositionAvisCP:='';
PositionAvis:='';
NumAvis:='';
NumAvisAutre:='';
ModePaiement:='';
DomiciliationAvis:='';
DomiciliationPiece:='';
NumPiece:='';
DebitCredit:='';
IndexNumAvis:=FSAvis.EditNumAvis.ItemIndex;

if(FSAvis.BitOperationAvis.Caption='Valider')or(FSAvis.BitOperationAvis.Caption='Modifier')
then
begin
     if(FSAvis.EditNumAvis.Text='')or(FSAvis.EditNumAvis.Text='Aucun')then
     begin
          showmessage('Veuillez sélectionner un avis, SVP !');
          FSAvis.BitNouveau.SetFocus;
     end
     else
     begin
          if(FSAvis.AfficheModePaiementCP.Visible=true)then NbrRepeter:=2 else NbrRepeter:=1;
          IncRepeter:=1;
          Repeat
                if(IncRepeter=1)then
                begin
                     NumAvis:=FSAvis.EditNumAvis.Text;
                     NumAvisAutre:=FSAvis.EditNumAvisCP.Text;
                     ModePaiement:=FSAvis.EditModePaiement.Text;
                     DomiciliationAvis:=FSAvis.EditDomiciliationAvis.Text;
                     DomiciliationPiece:=FSAvis.EditDomiciliationPiece.Text;
                     NumPiece:=FSAvis.EditNumPiece.Text;
                     DebitCredit:=FSAvis.EditDebitCreditDomiciliation.Text;
                     Origine:=FSAvis.EditOrigine.Text;
                end;
                if(IncRepeter=2)then
                begin
                     NumAvis:=FSAvis.EditNumAvisCP.Text;
                     NumAvisAutre:=FSAvis.EditNumAvis.Text;
                     ModePaiement:=FSAvis.EditModePaiementCP.Text;
                     DomiciliationAvis:=FSAvis.EditDomiciliationAvisCP.Text;
                     DomiciliationPiece:=FSAvis.EditDomiciliationAvisCP.Text;
                     NumPiece:=FSAvis.EditNumPieceCP.Text;
                     DebitCredit:=FSAvis.EditDebitCreditCP.Text;
                     Origine:='Auto '+EditPositionAvis.Text;
                end;


                TypeProces:='Business';   FichierConcerne:=FSAvis.EditBaseAvis.Text;
                if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
                begin
                     AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
                end;

                ChAvis:=Adresse;
                assignfile(FAvis,ChAvis);
                if FileExists(ChAvis)then
                Reset(FAvis)
                else Rewrite(FAvis);
                Seek(FAvis,0);
                OKAvis:=false;
                i:=0;
                PositionAvisCP:='';
                PositionAvis:='';
                while not eof(FAvis)do
                begin
                     read(FAvis,RAvis);

                     if(NumPiece<>'')then
                     begin
                          if(RAvis.DomiciliationAvis=DomiciliationAvis)
                          and((RAvis.ModePaiement='Chèque')or(RAvis.ModePaiement='Virement'))
                          and(RAvis.NumPiece=NumPiece)then
                          begin
                               OKAvis:=true;
                          end;
                     end;

                     if(RAvis.NumAvis=strtointeger(NumAvis))then
                     begin
                          PositionAvis:=inttostr(i);
                     end;

                     if(RAvis.NumAvis=strtointeger(NumAvisAutre))then
                     begin
                          PositionAvisCP:=inttostr(i);
                     end;
                i:=i+1;
                end;
                CloseFile(FAvis);

                l:=i;

                if(FSAvis.BitOperationAvis.Caption='Valider')and(NumPiece<>'')and(OKAvis=true)then
                begin
                     showmessage('Le numéro de la pièce est déjas enregistré, vérifier vos données SVP !');
                     FSAvis.AfficheOperationAvis.Visible:=false;
                     Exit;
                end;

                TypeProces:='Business';   FichierConcerne:=FSAvis.EditBaseAvis.Text;
                if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
                begin
                     AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
                end;

                ChAvis:=Adresse;
                assignfile(FAvis,ChAvis);
                if FileExists(ChAvis)then
                Reset(FAvis)
                else Rewrite(FAvis);
                Seek(FAvis,0);
                i:=0;
                OKAvis:=false;
                while not eof(FAvis)and(OKAvis=false)do
                begin
                     read(FAvis,RAvis);
                     if(RAvis.NumAvis=strtointeger(NumAvis))then
                     begin
                          OKAvis:=true;
                     end
                     else i:=i+1;
                end;

                if(PositionAvis='')then PositionAvis:=inttostr(i);
                if(PositionAvisCP='')then PositionAvisCP:=inttostr(l);

                {if(IncRepeter=1)then
                begin
                     if(FSAvis.EditOrigine.Text='')or(Firstlaters(FSAvis.EditOrigine.Text,4)='Auto')then
                     begin
                          if(FSAvis.EditNumAvisCP.Text<>'')
                          then Origine:='Auto '+PositionAvisCP//FSAvis.EditNumAvisCP.Text
                          else Origine:='';
                     end
                     else
                     begin
                          Origine:=FSAvis.EditOrigine.Text;
                     end;
                end;

                if(IncRepeter=2)then
                begin
                     if(FSAvis.EditOrigine.Text='')or(Firstlaters(FSAvis.EditOrigine.Text,4)='Auto')then
                     begin
                          if(FSAvis.EditNumAvis.Text<>'')
                          then Origine:='Auto '+PositionAvis//FSAvis.EditNumAvis.Text
                          else Origine:='';
                     end
                     else
                     begin
                          Origine:=FSAvis.EditOrigine.Text;
                     end;
                end;}

                Seek(FAvis,i);
                RAvis.NumAvis:=strtointeger(NumAvis);
                RAvis.DateAvis:=datetostr(FSAvis.EditDate.Date);
                if(ModePaiement='Espèce')then
                begin
                     RAvis.DateExecute:=datetostr(FSAvis.EditDate.Date);
                end
                else
                begin
                     if(FSAvis.EditDateExecutionAvis.Text<>'')
                     and(FSAvis.EditDateExecutionAvis.Text<>'  /  /    ')
                     then RAvis.DateExecute:=FSAvis.EditDateExecutionAvis.Text
                     else RAvis.DateExecute:='';
                end;
                RAvis.PositionTypeAvis:=FSAvis.EditTypeAvis.ItemIndex;
                RAvis.DesignationTypeAvis:=FSAvis.EditTypeAvis.Text;
                RAvis.PositionModePaiement:=FSAvis.EditPositionModePaiement.Text;
                RAvis.ModePaiement:=ModePaiement;
                RAvis.NumPiece:=NumPiece;
                if(FSAvis.EditDomiciliationAvis.ItemIndex=0)
                then RAvis.PositionDomiciliationAvis:=''
                else RAvis.PositionDomiciliationAvis:=inttostr(FSAvis.EditDomiciliationAvis.ItemIndex-1);
                RAvis.NumDomiciliationAvis:=ChercherDomiciliation('',DomiciliationAvis,PositionDomiciliationRecherche).NumDomiciliation;
                RAvis.DomiciliationAvis:=DomiciliationAvis;
                if(FSAvis.EditDomiciliationPiece.ItemIndex=0)
                then RAvis.PositionDomiciliationPiece:=''
                else RAvis.PositionDomiciliationPiece:=inttostr(FSAvis.EditDomiciliationPiece.ItemIndex-1);
                RAvis.NumDomiciliationPiece:=ChercherDomiciliation('',DomiciliationPiece,PositionDomiciliationRecherche).NumDomiciliation;
                RAvis.DomiciliationPiece:=DomiciliationPiece;
                RAvis.TypeProces:=FSAvis.EditChargementTypeProces.Text;
                RAvis.AvisConcerneTiers:=FSAvis.EditChargementFichierConcerne.Text;
                RAvis.PositionTiers:=strtointeger(EditChargementPositionFichierConcerne.Text);

                if(FSAvis.EditChargementCodeFichierConcerne.Text='')then
                begin
                     if(FSAvis.EditChargementCodeFichierConcerneMemoire.Text<>'')then
                     begin
                          FSAvis.EditChargementCodeFichierConcerne.Text:=FSAvis.EditChargementCodeFichierConcerneMemoire.Text;
                     end
                     else
                     begin
                          showmessage('Code Tiers vide !');
                          Exit;
                     end;
                end;                 

                RAvis.CodeTiers:=FSAvis.EditChargementCodeFichierConcerne.Text;
                RAvis.IdentificateurTiers:=FSAvis.EditBenificiaire.Text;
                RAvis.NatureDepense:=FSAvis.EditNatureDepences.Text;
                RAvis.CompteImputation:=FSAvis.EditCompteImputation.Text;
                RAvis.DebitCredit:=DebitCredit;
                RAvis.Montant:=strtoreal(WithoutPoint(FSAvis.EditMontantChiffre.Text));
                RAvis.PositionProjetFinance:=FSAvis.EditPositionProjet.Text;
                RAvis.NumProjetFinance:=FSAvis.EditNumProjet.Text;
                RAvis.DesignationProjetFinance:=FSAvis.EditNomProjet.Text;
                RAvis.PositionFicheTechnique:=FSAvis.EditPositionFiche.Text;
                RAvis.NumFicheTechnique:=FSAvis.EditNumFiche.Text;
                RAvis.PositionRubrique:=FSAvis.EditPositionRubrique.Text;
                RAvis.NumRubrique:=FSAvis.EditNumRubrique.Text;
                RAvis.PositionPlanificateur:=FSAvis.EditPositionPlanificateur.Text;
                RAvis.NumPlanificateur:=FSAvis.EditNumPlanificateur.Text;
                RAvis.DesignationDocumentBase:=FSAvis.EditDesignationDocumentBase.Text;
                RAvis.NumeroDocumentBase:=FSAvis.EditNumeroDocumentBase.Text;
                RAvis.DateDocumentBase:=FSAvis.EditDateDocumentBase.Text;
                RAvis.IntituleOperationBase:=FSAvis.EditIntituleOperationBase.Text;
                RAvis.Signataire:=FSAvis.EditSignataire.Text;
                RAvis.ValiditeAvis:=FSAvis.RBPieceMaitenue.Checked;
                RAvis.Origine:=Origine;
                
                //if(FSAvis.AfficheModePaiementCP.Visible=true)
                //and(FSAvis.EditOrigine.Text='')then RAvis.Origine:='Auto '+Completezerogauche(NumAvisAutre,'5');

                write(FAvis,RAvis);
                Closefile(FAvis);
          IncRepeter:=IncRepeter+1;
          Until IncRepeter>NbrRepeter;

          FSAvis.AfficheModePaiement.Enabled:=FSAvis.RBPieceMaitenue.Checked;
          FSAvis.AfficheBeneficiaireDepense.Enabled:=FSAvis.RBPieceMaitenue.Checked;
          FSAvis.AfficheMontant.Enabled:=FSAvis.RBPieceMaitenue.Checked;
          FSAvis.AfficheSignataire.Enabled:=FSAvis.RBPieceMaitenue.Checked;
          FSAvis.AfficheProjet.Enabled:=FSAvis.RBPieceMaitenue.Checked;
          FSAvis.AfficheTitreEtat.Enabled:=FSAvis.RBPieceMaitenue.Checked;
          FSAvis.AfficheChargementDomiciliation.Enabled:=FSAvis.RBPieceMaitenue.Checked;
          FSAvis.AfficheDate.Enabled:=FSAvis.RBPieceMaitenue.Checked;

          if(OKAvis=false)then FSAvis.EditNumAvis.Items.Add(Completezerogauche(NumAvis,'5'));

          if(firstlaters(FSAvis.EditOrigine.Text,3)='FSC')then RemplireAvisPrMouvement(Lastlaters(FSAvis.EditOrigine.Text,Longueur(FSAvis.EditOrigine.Text)-3),inttostr(strtointeger(FSAvis.EditNumAvis.Text)),FSAvis.EditBaseAvis.Text);
     end;
end;

if(FSAvis.BitOperationAvis.Caption='Supprimer')then
begin
     TypeProces:='Business';   FichierConcerne:=FSAvis.EditBaseAvis.Text;
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
           AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
     end;

     Confirme:=false;
     OKAvis:=false;
     ChAvis:=Adresse;
     assignfile(FAvis,ChAvis);
     if FileExists(ChAvis)then
     begin
          Reset(FAvis);
          Seek(FAvis,filesize(FAvis)-1);
          if(not eof(FAvis))then
          begin
               read(FAvis,RAvis);
               if(RAvis.NumAvis=strtointeger(FSAvis.EditNumAvis.Text))then
               begin
                    OKAvis:=true;
               end;
          end;
          CloseFile(FAvis);
     end;

     if(OKAvis=true)then
     begin
          if(firstlaters(FSAvis.EditOrigine.Text,3)='FSC')then RemplireAvisPrMouvement(Lastlaters(FSAvis.EditOrigine.Text,Longueur(FSAvis.EditOrigine.Text)-3),'',FSAvis.EditBaseAvis.Text);

          NumAvis:=FSAvis.EditNumAvis.Text;
          NumAvisAutre:=FSAvis.EditNumAvisCP.Text;
          if(NumAvis<>'')then DeleteFAvis(FSAvis.EditBaseAvis.Text,strtointeger(NumAvis),Confirme);
          if(NumAvisAutre<>'')then DeleteFAvis(FSAvis.EditBaseAvis.Text,strtointeger(NumAvisAutre),Confirme);
     end
     else
     begin
          showmessage('L''Avis n''est pas le dérnier ! désavtiver uniquement la validité.');
     end;
end;


if(FSAvis.BitOperationAvis.Caption='Supprimer')then
begin
     FSAvis.EditModePaiement.ItemIndex:=0;
     FSAvis.AfficheDomiciliation.Visible:=true;
     FSAvis.EditDate.Date:=date;
     FSAvis.EditDateExecutionAvis.Text:='';
     FSAvis.EditModePaiement.SetFocus;
     FSAvis.EditNumPiece.Text:='';
     FSAvis.EditNumDomiciliationAvis.Text:='';
     FSAvis.EditDomiciliationAvis.Text:='';
     FSAvis.EditNumDomiciliationPiece.Text:='';
     FSAvis.EditDomiciliationPiece.Text:='';
     FSAvis.EditMontantChiffre.Text:='';
     FSAvis.EditMontantLettres.Text:='';
     FSAvis.EditChargementCodeFichierConcerne.Text:='';
     FSAvis.EditBenificiaire.Text:='';
     FSAvis.EditNatureDepences.Text:='';
     //FSAvis.EditSignataire.Text:='';
     FSAvis.EditCompteImputation.Text:='';
     FSAvis.EditDebitCreditDomiciliation.Text:='';
     FSAvis.EditOrigine.Text:='';
     FSAvis.EditNumFiche.Text:='';
     FSAvis.EditDesignationFiche.Text:='';
     FSAvis.EditNumRubrique.Text:='';
     FSAvis.EditDesignationRubrique.Text:='';
     FSAvis.EditNumPlanificateur.Text:='';
     FSAvis.EditDesignationPlanificateur.Text:='';
     FSAvis.EditDesignationDocumentBase.Text:='';
     FSAvis.EditNumeroDocumentBase.Text:='';
     FSAvis.EditDateDocumentBase.Text:='';
     FSAvis.EditIntituleOperationBase.Text:='';

     FSAvis.RBPieceMaitenue.Checked:=true;
end;

     TypeProces:='Business';   FichierConcerne:=FSAvis.EditBaseAvis.Text;
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
     end;

     ChAvis:=Adresse;
     assignfile(FAvis,ChAvis);
     if FileExists(ChAvis)then
     Reset(FAvis)
     else Rewrite(FAvis);
     Seek(FAvis,0);
     i:=0;
     FSAvis.EditNumAvis.Items.Text:='';
     FSAvis.EditNumAvis.Items.Add('Aucun');
     while not eof(FAvis)do
     begin
          read(FAvis,RAvis);
          FSAvis.EditNumAvis.Items.Add(Completezerogauche(inttostr(RAvis.NumAvis),'5'));
          i:=i+1;
     end;
     Closefile(FAvis);

     if(i>0)then
     begin
          if(FSAvis.BitOperationAvis.Caption='Valider')then
          begin
               FSAvis.EditNumAvis.ItemIndex:=i;
          end;

          if(FSAvis.BitOperationAvis.Caption='Modifier')then
          begin
               FSAvis.EditNumAvis.ItemIndex:=IndexNumAvis;
          end;

          if(FSAvis.BitOperationAvis.Caption='Supprimer')and(Confirme=true)then
          begin
               if(IndexNumAvis<=i)
               then FSAvis.EditNumAvis.ItemIndex:=IndexNumAvis
               else FSAvis.EditNumAvis.ItemIndex:=i;
          end;

     end
     else FSAvis.EditNumAvis.ItemIndex:=0;

AfficheAvis(FSAvis.EditNumAvis.Text,FSAvis.EditBaseAvis.Text);
FSAvis.AfficheOperationAvis.Visible:=false;
FSAvis.EditNumAvis.SetFocus;

MiseAJourPositionAvisParPeriode(FSAvis.EditBaseAvis.Text);


if(FSAvis.BitOperationAvis.Caption='Valider')and(FSFicheSaisie.Showing=true)and(ExisteNumAvisinTexte(FichierConcerne,FSAvis.EditNumAvis.Text,FSFicheSaisie.EditNumAvis.Text))then
begin
     FSAvis.Close;
     FSFicheSaisie.Show;
     FSFicheSaisie.BitValidationListeMouvementClick(FSFicheSaisie.BitValidationListeMouvement);
     FSFicheSaisie.BitOperationListeMouvementClick(FSFicheSaisie.BitOperationListeMouvement);
     FSFicheSaisie.RBActiveTableauListeMouvementClick.Checked:=true;
     FSFicheSaisie.TableauListeMouvementClick(FSFicheSaisie.TableauListeMouvement);
end;

end;

procedure TFSAvis.EditMontantChiffreKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSAvis.EditBenificiaire.SetFocus;
end;

end;

procedure TFSAvis.EditBenificiaireKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     if(FSAvis.TableauTiers.Visible=true)
     then FSAvis.TableauTiers.SetFocus
     else FSAvis.EditNatureDepences.SetFocus;
end;

end;

procedure TFSAvis.EditDomiciliationAvisChange(Sender: TObject);
var    i,RowSerie,RSerie,PositionTypeAvis,NumTypeAvis,ChercheSigneDebitCredit:integer; NumPiece:integer;  OKSerieCharger:boolean;
       CompteImputation,DebitCredit,TypeProces,FichierConserne,JourneauxAuxiliaireUtilis,JourneauxAuxiliaireUtilise:string;
begin

if(FSAvis.EditDomiciliationAvis.Text<>'')then
begin
      FSAvis.EditModePaiementCP.Text:='';
      FSAvis.EditDomiciliationAvisCP.Text:='';
      FSAvis.EditNumPieceCP.Text:='';

      RDomiciliationCopie:=ChercherDomiciliation('',FSAvis.EditDomiciliationAvis.Text,PositionDomiciliationRecherche);
      FSAvis.EditNumDomiciliationAvis.Text:=RDomiciliationCopie.NumDomiciliation;
      FSAvis.EditNumCompteDomiciliation.Text:=RDomiciliationCopie.CompteImputation;
      if ChercherCompteComptable(Firstlaters(FSAvis.EditNumCompteDomiciliation.Text,6),'','PlanComptable',RRegistreCompte)then
      begin
           FSAvis.EditCompteDomiciliation.Text:=RRegistreCompte.Designation;
      end
      else
      begin
           FSAvis.EditNumCompteDomiciliation.Text:=RDomiciliationCopie.NumDomiciliation;
           FSAvis.EditCompteDomiciliation.Text:=RDomiciliationCopie.DesignationDomiciliation;
      end;

      if(FSAvis.EditNumAvis.Text<>'')then
      begin
           if(FSAvis.EditDomiciliationAvis.Text<>'')then
           begin
                ListeSeriePieceDomiciliation(FSAvis.TableauSeriePieceAvis,FSAvis.EditNumDomiciliationAvis.Text,FSAvis.EditModePaiement.Text,FSAvis.EditLongueureSeriePiece.Text);

                RowSerie:=FSAvis.TableauSeriePieceAvis.RowCount-1;

                ListeSeriePieceDomiciliationNew(FSAvis.TableauSeriePieceAvis,RowSerie,FSAvis.EditNumDomiciliationAvis.Text,FSAvis.EditModePaiement.Text,FSAvis.EditLongueureSeriePiece.Text);

                RowSerie:=FSAvis.TableauSeriePieceAvis.RowCount-1;
                if(RowSerie>0)then
                begin
                     FSAvis.AfficheSeriePieceAvis.Height:=401;
                     FSAvis.TableauSeriePieceAvis.SetFocus;
                     FSAvis.TableauSeriePieceAvis.Cells[0,0]:='';
                end
                else
                begin
                     FSAvis.AfficheSeriePieceAvis.Height:=0;
                end;
           end
           else
           begin
                showmessage('Veuillez indiquer la Domiciliation SVP !');
                FSAvis.EditDomiciliationAvis.SetFocus;
           end;
      end;

      if(FSAvis.RBActiveSoldeDomiciliation.Checked=true)then ControleSoldeDomiciliation(FSAvis.EditTypeAvis.Text,'',FSAvis.EditDomiciliationAvis.Text,datetostr(FSAvis.EditDate.Date),FSAvis.EditMontantChiffre.Text);

      if(IndiqueTypeAvis(FSAvis.EditTypeAvis.Text,PositionTypeAvis,NumTypeAvis,ChercheSigneDebitCredit,CompteImputation,DebitCredit,TypeProces,FichierConserne,JourneauxAuxiliaireUtilise)=true)then
      begin
           if(RDomiciliationCopie.EtatSoldeDebitCredit<>DebitCredit)then
           begin
                FSAvis.EditNumDomiciliationPiece.Text:=FSAvis.EditNumDomiciliationAvis.Text;
                FSAvis.EditDomiciliationPiece.Text:=FSAvis.EditDomiciliationAvis.Text;
           end;
      end;

      AffichageControleSerie(FSAvis.EditNumDomiciliationAvis.Text);
end; 
end;

procedure TFSAvis.IncrimentEditLongueureSeriePieceClick(Sender: TObject; Button: TUDBtnType);
begin
FSAvis.AfficheSeriePieceAvis.Height:=0;
end;

procedure TFSAvis.BitBtn6Click(Sender: TObject);
begin
FSAvis.AfficheOptionImpression.Visible:=false;
end;

procedure TFSAvis.BitPrintAvisClick(Sender: TObject);
var   VisibleData:boolean;
begin

if(FSAvis.EditModePaiement.Text<>'')then
begin
     PrintAvis.CacheAvisX.Enabled:=not(FSAvis.RBImpressionDouble.Checked);

     {*******************Entreprise***************}
     OpenFParc(RParc);
     PrintAvis.DataEntreprise.Lines.Text:='';
     PrintAvis.DataEntrepriseX.Lines.Text:='';
     PrintAvis.DataEntreprise.Lines.Add(RParc.Text1);  PrintAvis.DataEntrepriseX.Lines.Add(RParc.Text1);
     PrintAvis.DataEntreprise.Lines.Add(RParc.Text2);  PrintAvis.DataEntrepriseX.Lines.Add(RParc.Text2);
     PrintAvis.DataEntreprise.Lines.Add(RParc.Text3);  PrintAvis.DataEntrepriseX.Lines.Add(RParc.Text3);
     PrintAvis.DataEntreprise.Lines.Add(RParc.Text4);  PrintAvis.DataEntrepriseX.Lines.Add(RParc.Text4);
     {***************Fin Entreprise***************}

     if(FSAvis.EditModePaiement.Text='Chèque')
     or(FSAvis.EditModePaiement.Text='Bon')
     or(FSAvis.EditModePaiement.Text='Virement')
     then
     begin
          VisibleData:=true;

          PrintAvis.TitreDataChequeNum.Enabled:=VisibleData;     PrintAvis.TitreDataChequeNumX.Enabled:=VisibleData;
          PrintAvis.CDataChequeNum.Enabled:=VisibleData;         PrintAvis.CDataChequeNumX.Enabled:=VisibleData;
          PrintAvis.DataChequeNum.Enabled:=VisibleData;          PrintAvis.DataChequeNumX.Enabled:=VisibleData;

          PrintAvis.TitreDataDomiciliation.Enabled:=VisibleData; PrintAvis.TitreDataDomiciliationX.Enabled:=VisibleData;
          PrintAvis.CDataDomiciliation.Enabled:=VisibleData;     PrintAvis.CDataDomiciliationX.Enabled:=VisibleData;
          PrintAvis.DataDomiciliation.Enabled:=VisibleData;      PrintAvis.DataDomiciliationX.Enabled:=VisibleData;

          PrintAvis.TitreDataMontant.Enabled:=VisibleData;       PrintAvis.TitreDataMontantX.Enabled:=VisibleData;
          PrintAvis.CDataMontant.Enabled:=VisibleData;           PrintAvis.CDataMontantX.Enabled:=VisibleData;
          PrintAvis.DataMontant.Enabled:=VisibleData;            PrintAvis.DataMontantX.Enabled:=VisibleData;

          PrintAvis.TitreDataChequeNum.Caption:=FSAvis.EditModePaiement.Text+' N°:';   PrintAvis.TitreDataChequeNumX.Caption:=FSAvis.EditModePaiement.Text+' N°:';
          PrintAvis.DataChequeNum.Caption:=FSAvis.EditNumPiece.Text;                   PrintAvis.DataChequeNumX.Caption:=FSAvis.EditNumPiece.Text;
          PrintAvis.DataDomiciliation.Caption:=FSAvis.EditDomiciliationAvis.Text;          PrintAvis.DataDomiciliationX.Caption:=FSAvis.EditDomiciliationAvis.Text;
          if(FSAvis.EditMontantChiffre.Text<>'')
          then begin PrintAvis.DataMontant.Caption:=FSAvis.EditMontantChiffre.Text+' DA'; PrintAvis.DataMontantX.Caption:=FSAvis.EditMontantChiffre.Text+' DA'; end
          else begin PrintAvis.DataMontant.Caption:=''; PrintAvis.DataMontantX.Caption:=''; end;
     end
     else
     if(FSAvis.EditModePaiement.Text='Espèce')
     or(FSAvis.EditModePaiement.Text='Non Acquitté')
     then
     begin
          VisibleData:=true;

          PrintAvis.TitreDataChequeNum.Enabled:=VisibleData;       PrintAvis.TitreDataChequeNumX.Enabled:=VisibleData;
          PrintAvis.CDataChequeNum.Enabled:=VisibleData;           PrintAvis.CDataChequeNumX.Enabled:=VisibleData;
          PrintAvis.DataChequeNum.Enabled:=VisibleData;            PrintAvis.DataChequeNumX.Enabled:=VisibleData;

          VisibleData:=false;

          PrintAvis.TitreDataDomiciliation.Enabled:=VisibleData;   PrintAvis.TitreDataDomiciliationX.Enabled:=VisibleData;
          PrintAvis.CDataDomiciliation.Enabled:=VisibleData;       PrintAvis.CDataDomiciliationX.Enabled:=VisibleData;
          PrintAvis.DataDomiciliation.Enabled:=VisibleData;        PrintAvis.DataDomiciliationX.Enabled:=VisibleData;

          PrintAvis.TitreDataMontant.Enabled:=VisibleData;         PrintAvis.TitreDataMontantX.Enabled:=VisibleData;
          PrintAvis.CDataMontant.Enabled:=VisibleData;             PrintAvis.CDataMontantX.Enabled:=VisibleData;
          PrintAvis.DataMontant.Enabled:=VisibleData;              PrintAvis.DataMontantX.Enabled:=VisibleData;

          PrintAvis.TitreDataChequeNum.Caption:='Montant:';        PrintAvis.TitreDataChequeNumX.Caption:='Montant:';
          if(FSAvis.EditMontantChiffre.Text<>'')
          then begin PrintAvis.DataChequeNum.Caption:=FSAvis.EditMontantChiffre.Text+' DA'; PrintAvis.DataChequeNumX.Caption:=FSAvis.EditMontantChiffre.Text+' DA'; end
          else begin PrintAvis.DataChequeNum.Caption:=''; PrintAvis.DataChequeNumX.Caption:=''; end;
     end
     else
     begin
          VisibleData:=true;

          PrintAvis.TitreDataChequeNum.Enabled:=VisibleData;     PrintAvis.TitreDataChequeNumX.Enabled:=VisibleData;
          PrintAvis.CDataChequeNum.Enabled:=VisibleData;         PrintAvis.CDataChequeNumX.Enabled:=VisibleData;
          PrintAvis.DataChequeNum.Enabled:=VisibleData;          PrintAvis.DataChequeNumX.Enabled:=VisibleData;

          PrintAvis.TitreDataDomiciliation.Enabled:=VisibleData; PrintAvis.TitreDataDomiciliationX.Enabled:=VisibleData;
          PrintAvis.CDataDomiciliation.Enabled:=VisibleData;     PrintAvis.CDataDomiciliationX.Enabled:=VisibleData;
          PrintAvis.DataDomiciliation.Enabled:=VisibleData;      PrintAvis.DataDomiciliationX.Enabled:=VisibleData;

          PrintAvis.TitreDataMontant.Enabled:=VisibleData;       PrintAvis.TitreDataMontantX.Enabled:=VisibleData;
          PrintAvis.CDataMontant.Enabled:=VisibleData;           PrintAvis.CDataMontantX.Enabled:=VisibleData;
          PrintAvis.DataMontant.Enabled:=VisibleData;            PrintAvis.DataMontantX.Enabled:=VisibleData;

          PrintAvis.TitreDataChequeNum.Caption:=FSAvis.EditModePaiement.Text+' N°:';   PrintAvis.TitreDataChequeNumX.Caption:=FSAvis.EditModePaiement.Text+' N°:';
          PrintAvis.DataChequeNum.Caption:=FSAvis.EditNumPiece.Text;                   PrintAvis.DataChequeNumX.Caption:=FSAvis.EditNumPiece.Text;
          PrintAvis.DataDomiciliation.Caption:=FSAvis.EditDomiciliationAvis.Text;          PrintAvis.DataDomiciliationX.Caption:=FSAvis.EditDomiciliationAvis.Text;
          if(FSAvis.EditMontantChiffre.Text<>'')
          then begin PrintAvis.DataMontant.Caption:=FSAvis.EditMontantChiffre.Text+' DA'; PrintAvis.DataMontantX.Caption:=FSAvis.EditMontantChiffre.Text+' DA'; end
          else begin PrintAvis.DataMontant.Caption:=''; PrintAvis.DataMontantX.Caption:=''; end;
     end;

     PrintAvis.TitreEtat.Caption:=FSAvis.EditTypeAvis.Text+' '+FSAvis.EditModePaiement.Text;                                                                      PrintAvis.TitreEtatX.Caption:=FSAvis.EditTypeAvis.Text+' '+FSAvis.EditModePaiement.Text;
     PrintAvis.DataEnLettre.Lines.Text:=FSAvis.EditMontantLettres.Text;                                                                                           PrintAvis.DataEnLettreX.Lines.Text:=FSAvis.EditMontantLettres.Text;
     PrintAvis.TitreDataTiers.Lines.Text:=FSAvis.TitreIdentiteFichierConcerne.Caption;                                                                            PrintAvis.TitreDataTiersX.Lines.Text:=FSAvis.TitreIdentiteFichierConcerne.Caption;
     PrintAvis.TitreDataNatureDepence.Caption:=FSAvis.TitreNatureAvisFinance.Caption;                                                                             PrintAvis.TitreDataNatureDepenceX.Caption:=FSAvis.TitreNatureAvisFinance.Caption;
     PrintAvis.TitreVisaTiers.Caption:='Visa '+Lastlaters(FSAvis.EditChargementFichierConcerne.Text,Longueur(FSAvis.EditChargementFichierConcerne.Text)-1);       PrintAvis.TitreVisaTiersX.Caption:='Visa '+Lastlaters(FSAvis.EditChargementFichierConcerne.Text,Longueur(FSAvis.EditChargementFichierConcerne.Text)-1);
     PrintAvis.DataTiers.Caption:=FSAvis.EditBenificiaire.Text;                                                                                                   PrintAvis.DataTiersX.Caption:=FSAvis.EditBenificiaire.Text;
     PrintAvis.DataNatureDepence.Lines.Text:=FSAvis.EditNatureDepences.Text;                                                                                      PrintAvis.DataNatureDepenceX.Lines.Text:=FSAvis.EditNatureDepences.Text;
     PrintAvis.TitreVisaEntreprise.Caption:=FSAvis.EditSignataire.Text;                                                                                           PrintAvis.TitreVisaEntrepriseX.Caption:=FSAvis.EditSignataire.Text;

     if(Firstlaters(FSAvis.EditBaseAvis.Text,1)='F')
     then PrintAvis.TitreDataNAvis.Caption:=Lastlaters(FSAvis.EditBaseAvis.Text,longueur(FSAvis.EditBaseAvis.Text)-1)+' N°: '
     else PrintAvis.TitreDataNAvis.Caption:=FSAvis.EditBaseAvis.Text+' N°: ';
     PrintAvis.TitreDataNAvisX.Caption:=PrintAvis.TitreDataNAvis.Caption;

     if(FSAvis.EditNumAvis.Text<>'Aucun')then
     begin
          PrintAvis.DataNAvis.Caption:=FSAvis.EditNumAvis.Text;                       PrintAvis.DataNAvisX.Caption:=FSAvis.EditNumAvis.Text;
          PrintAvis.TitreDate.Caption:=FSAvis.EditFaitA.Text+' le, '+datetostr(FSAvis.EditDate.Date);  PrintAvis.TitreDateX.Caption:=FSAvis.EditFaitA.Text+' le, '+datetostr(FSAvis.EditDate.Date);
     end
     else
     begin
          PrintAvis.DataNAvis.Caption:='';                                         PrintAvis.DataNAvisX.Caption:='';
          PrintAvis.TitreDate.Caption:=FSAvis.EditFaitA.Text+' le,       /       /            ';    PrintAvis.TitreDateX.Caption:=FSAvis.EditFaitA.Text+' le,       /       /            ';
     end;

     if(FunctAfficherCodeBarresDansAvis=true)then
     begin
          PrintAvis.ImageCodebarre.Picture:=FSAvis.ImageCodebarre.Picture;
          PrintAvis.ImageCodebarreX.Picture:=FSAvis.ImageCodebarre.Picture;
     end
     else
     begin
          PrintAvis.ImageCodebarre.Picture:=FSMenuPrincipal.PhotoVide.Picture;
          PrintAvis.ImageCodebarreX.Picture:=FSMenuPrincipal.PhotoVide.Picture;
     end;

     PrintAvis.Preview;
end;
FSAvis.AfficheOptionImpression.Visible:=false;
end;

procedure TFSAvis.BitPrintTypeClick(Sender: TObject);
var  R,l,PositionTypeAvis,NumTypeAvis,ChercheSigneDebitCredit,TailleMax:integer;
     RIB,Texte,CompteImputation,DebitCredit,TypeProces,FichierConserne,JourneauxAuxiliaireUtilise,Chiffre,Adresse,AdresseLogoBanque:string;
     OKDomiciliation:boolean;
begin
     OpenFParc(RParc);
     ChDomiciliation:=RParc.Parcours+'\'+Exercice+'FDomiciliation';
     assignfile(FDomiciliation,ChDomiciliation);
     if FileExists(ChDomiciliation)then
     Reset(FDomiciliation)
     else Rewrite(FDomiciliation);
     Seek(FDomiciliation,0);
     RIB:='';
     OKDomiciliation:=false;
     while not eof(FDomiciliation)do
     begin
          read(FDomiciliation,RDomiciliation);
          if(RDomiciliation.DesignationDomiciliation=FSAvis.EditDomiciliationAvis.Text)then
          begin
               OKDomiciliation:=true;
               RIB:=RDomiciliation.Identificateur;
          end;
     end;
     CloseFile(FDomiciliation);

     IndiqueTypeAvis(FSAvis.EditTypeAvis.Text,PositionTypeAvis,NumTypeAvis,ChercheSigneDebitCredit,CompteImputation,DebitCredit,TypeProces,FichierConserne,JourneauxAuxiliaireUtilise);

if((FSAvis.EditDebitCreditDomiciliation.Text='Crédit')and(ChercheSigneDebitCredit=1))or((FSAvis.EditDebitCreditDomiciliation.Text='Débit')and(ChercheSigneDebitCredit=-1))then
begin
     if(FSAvis.BitPrintType.Caption='Chèque')then
     begin
          if(FSAvis.EditNumAvis.Text<>'Aucun')then
          begin
               PrintChequeModel01.DataMontantChffres.Caption:=' '+FSAvis.EditMontantChiffre.Text;
               PrintChequeModel01.DataMontantLettres.Lines.Text:='                                       '+
                                                                 FSAvis.EditMontantLettres.Text;
               PrintChequeModel01.DataTiers.Caption:=FSAvis.EditBenificiaire.Text;
               PrintChequeModel01.DataFaitA.Caption:=FSAvis.EditFaitA.Text;
               PrintChequeModel01.DataFaitLe.Caption:=datetostr(FSAvis.EditDate.Date);

               PrintChequeModel01.DataMontantLettresLigne1.Caption:=PrintChequeModel01.DataMontantLettres.Lines.Strings[0];
               PrintChequeModel01.DataMontantLettresLigne2.Caption:=PrintChequeModel01.DataMontantLettres.Lines.Strings[1];
               PrintChequeModel01.DataMontantLettresLigne3.Caption:=PrintChequeModel01.DataMontantLettres.Lines.Strings[2];
          end
          else
          begin
               PrintChequeModel01.DataMontantChffres.Caption:='';
               PrintChequeModel01.DataMontantLettres.Lines.Text:='';
               PrintChequeModel01.DataMontantLettresLigne1.Caption:='';
               PrintChequeModel01.DataMontantLettresLigne2.Caption:='';
               PrintChequeModel01.DataTiers.Caption:='';
               PrintChequeModel01.DataFaitA.Caption:='';
               PrintChequeModel01.DataFaitLe.Caption:='';
          end;
          PrintChequeModel01.DataImageCheque.Enabled:=FSAvis.RBImageChequeVisible.Checked;
          PrintChequeModel01.Preview;
     end;

     if(FSAvis.BitPrintType.Caption='Virement')then
     begin
          ViderOrdreVirement(false);
          R:=strtointeger(FSAvis.EditNombreCopie.Text);
          if(R>0)then
          begin
               if ChercherBanqueGlobal(MidelLaters(RIB,1,3),RBanqueGlobalCopie)then
               begin
                    PrintOrdreVirement.TitreLibelleBanque.Caption:=RBanqueGlobalCopie.LibelleBanque;
                    ProcAffichePhoto(MidelLaters(RIB,1,3),'','LogoBanque',AdresseLogoBanque);
               end;
               PrintOrdreVirement.DataAgenceDonneurOrdre.Caption:='('+MidelLaters(RIB,1,3)+') '+MidelLaters(RIB,4,8);
               PrintOrdreVirement.DataIdentificateurDonneurOrdre.Caption:=RParc.Text1;

               if firstlaters(RParc.Text2,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text2,longueur(RParc.Text2)-9);
               if firstlaters(RParc.Text3,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text3,longueur(RParc.Text3)-9);
               if firstlaters(RParc.Text4,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text4,longueur(RParc.Text4)-9);
               if firstlaters(RParc.Text5,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text5,longueur(RParc.Text5)-9);
               if firstlaters(RParc.Text6,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text6,longueur(RParc.Text6)-9);
               if firstlaters(RParc.Text7,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text7,longueur(RParc.Text7)-9);
               if firstlaters(RParc.Text8,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text8,longueur(RParc.Text8)-9);
               if firstlaters(RParc.Text9,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text9,longueur(RParc.Text9)-9);
               if firstlaters(RParc.Text10,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text10,longueur(RParc.Text10)-9);

               PrintOrdreVirement.DataAdresseDonneurOrdre1.Caption:=firstlaters(Adresse,40);
               PrintOrdreVirement.DataAdresseDonneurOrdre2.Caption:=Lastlaters(Adresse,longueur(Adresse)-40);
               PrintOrdreVirement.DataRIBDonneurOrdreAgence.Caption:=MidelLaters(RIB,4,8);
               PrintOrdreVirement.DataRIBDonneurOrdreGL.Caption:=MidelLaters(RIB,9,11);
               PrintOrdreVirement.DataRIBDonneurOrdreIndicatifCle.Caption:=MidelLaters(RIB,12,18);
               PrintOrdreVirement.DataRIBDonneurOrdreOrdre.Caption:=MidelLaters(RIB,19,20);
               PrintOrdreVirement.DataMontantGlobalPrincipal.Caption:=Firstlaters(FSAvis.EditMontantChiffre.Text,longueur(FSAvis.EditMontantChiffre.Text)-3);
               PrintOrdreVirement.DataMontantGlobalDecimal.Caption:=Lastlaters(FSAvis.EditMontantChiffre.Text,2);

               PrintOrdreVirement.DataMontantGlobalLettre.Lines.Text:=ChiffreEnLettre(FSAvis.EditMontantChiffre.Text);;
               PrintOrdreVirement.DataDateRemise.Caption:='le '+datetostr(EditDate.Date);

               if(IndiqueTypeAvis(FSAvis.EditTypeAvis.Text,PositionTypeAvis,NumTypeAvis,ChercheSigneDebitCredit,CompteImputation,DebitCredit,TypeProces,FichierConserne,JourneauxAuxiliaireUtilise))then
               RTier:=ChercherTiers(TypeProces,FichierConserne,FSAvis.EditChargementCodeFichierConcerne.Text,'');
               PrintOrdreVirement.DataLibelleRemise.Enabled:=true;
               PrintOrdreVirement.DataLibelleRemise.Lines.Add(FSAvis.EditBenificiaire.Text);
               PrintOrdreVirement.DataLibelleRemise.Lines.Add(FSAvis.EditNatureDepences.Text);
               PrintOrdreVirement.DataRIBBeneficiere1.Caption:=RTier.RIBBanqueTiers;
               RechercheAgenceBanque(FSAvis.TableauAgenceBanque,RTier.CodeAgenceBanqueTiers,'',RAgenceCopie);
               PrintOrdreVirement.DataAgenceBeneficiere1.Caption:=Firstlaters(RAgenceCopie.LibelleAgence,15);

               PrintOrdreVirement.DataMontantOperationPrincipal1.Caption:=Vergule(Firstlaters(FSAvis.EditMontantChiffre.Text,longueur(FSAvis.EditMontantChiffre.Text)-2),'0','C','');
               PrintOrdreVirement.DataMontantOperationDecimal1.Caption:=Lastlaters(FSAvis.EditMontantChiffre.Text,2);
          end;
          if(R>1)then
          begin
               if ChercherBanqueGlobal(MidelLaters(RIB,1,3),RBanqueGlobalCopie)then
               begin
                    PrintOrdreVirement.TitreLibelleBanqueX.Caption:=RBanqueGlobalCopie.LibelleBanque;
                    ProcAffichePhoto(MidelLaters(RIB,1,3),'','LogoBanque',AdresseLogoBanque);
               end;
               PrintOrdreVirement.DataAgenceDonneurOrdreX.Caption:='('+MidelLaters(RIB,1,3)+') '+MidelLaters(RIB,4,8);
               PrintOrdreVirement.DataIdentificateurDonneurOrdreX.Caption:=RParc.Text1;

               if firstlaters(RParc.Text2,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text2,longueur(RParc.Text2)-9);
               if firstlaters(RParc.Text3,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text3,longueur(RParc.Text3)-9);
               if firstlaters(RParc.Text4,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text4,longueur(RParc.Text4)-9);
               if firstlaters(RParc.Text5,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text5,longueur(RParc.Text5)-9);
               if firstlaters(RParc.Text6,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text6,longueur(RParc.Text6)-9);
               if firstlaters(RParc.Text7,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text7,longueur(RParc.Text7)-9);
               if firstlaters(RParc.Text8,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text8,longueur(RParc.Text8)-9);
               if firstlaters(RParc.Text9,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text9,longueur(RParc.Text9)-9);
               if firstlaters(RParc.Text10,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text10,longueur(RParc.Text10)-9);

               PrintOrdreVirement.DataAdresseDonneurOrdre1X.Caption:=firstlaters(Adresse,40);
               PrintOrdreVirement.DataAdresseDonneurOrdre2X.Caption:=Lastlaters(Adresse,longueur(Adresse)-40);
               PrintOrdreVirement.DataRIBDonneurOrdreAgenceX.Caption:=MidelLaters(RIB,4,8);
               PrintOrdreVirement.DataRIBDonneurOrdreGLX.Caption:=MidelLaters(RIB,9,11);
               PrintOrdreVirement.DataRIBDonneurOrdreIndicatifCleX.Caption:=MidelLaters(RIB,12,18);
               PrintOrdreVirement.DataRIBDonneurOrdreOrdreX.Caption:=MidelLaters(RIB,19,20);
               PrintOrdreVirement.DataMontantGlobalPrincipalX.Caption:=Firstlaters(FSAvis.EditMontantChiffre.Text,longueur(FSAvis.EditMontantChiffre.Text)-3);
               PrintOrdreVirement.DataMontantGlobalDecimalX.Caption:=Lastlaters(FSAvis.EditMontantChiffre.Text,2);

               PrintOrdreVirement.DataMontantGlobalLettreX.Lines.Text:=ChiffreEnLettre(FSAvis.EditMontantChiffre.Text);;
               PrintOrdreVirement.DataDateRemiseX.Caption:='le '+datetostr(EditDate.Date);

               if(IndiqueTypeAvis(FSAvis.EditTypeAvis.Text,PositionTypeAvis,NumTypeAvis,ChercheSigneDebitCredit,CompteImputation,DebitCredit,TypeProces,FichierConserne,JourneauxAuxiliaireUtilise))then
               RTier:=ChercherTiers(TypeProces,FichierConserne,FSAvis.EditChargementCodeFichierConcerne.Text,'');
               PrintOrdreVirement.DataLibelleRemiseX.Enabled:=true;
               PrintOrdreVirement.DataLibelleRemiseX.Lines.Add(FSAvis.EditBenificiaire.Text);
               PrintOrdreVirement.DataLibelleRemiseX.Lines.Add(FSAvis.EditNatureDepences.Text);
               PrintOrdreVirement.DataRIBBeneficiere1X.Caption:=RTier.RIBBanqueTiers;
               RechercheAgenceBanque(FSAvis.TableauAgenceBanque,RTier.CodeAgenceBanqueTiers,'',RAgenceCopie);
               PrintOrdreVirement.DataAgenceBeneficiere1X.Caption:=Firstlaters(RAgenceCopie.LibelleAgence,15);

               PrintOrdreVirement.DataMontantOperationPrincipal1X.Caption:=Vergule(Firstlaters(FSAvis.EditMontantChiffre.Text,longueur(FSAvis.EditMontantChiffre.Text)-2),'0','C','');
               PrintOrdreVirement.DataMontantOperationDecimal1X.Caption:=Lastlaters(FSAvis.EditMontantChiffre.Text,2);
          end;

          while(R>0)do
          begin
               if(R>1)then PrintOrdreVirement.CacheOrdreX.Enabled:=false
                      else PrintOrdreVirement.CacheOrdreX.Enabled:=true;
               PrintOrdreVirement.Preview;
               R:=R-2;
          end;

     end;

     if(FSAvis.BitPrintType.Caption='Espèce')then
     begin
          AfficherMessage('Veuillez établire un Avis SVP !');
     end;

     if(FSAvis.BitPrintType.Caption='Bon')then
     begin
          AfficherMessage('Veuillez établire un Avis SVP !');
     end;

end;

if((FSAvis.EditDebitCreditDomiciliation.Text='Débit')and(ChercheSigneDebitCredit=1))or((FSAvis.EditDebitCreditDomiciliation.Text='Crédit')and(ChercheSigneDebitCredit=-1))then
begin
     if(FSAvis.BitPrintType.Caption='Chèque')then
     begin
          ViderRemiseCheque;
          R:=strtointeger(FSAvis.EditNombreCopie.Text);
          if(R>0)then
          begin
                if ChercherBanqueGlobal(MidelLaters(RIB,1,3),RBanqueGlobalCopie)then
                begin
                     PrintRemiseCheque.TitreLibelleBanque.Caption:=RBanqueGlobalCopie.LibelleBanque;
                     ProcAffichePhoto(MidelLaters(RIB,1,3),'','LogoBanque',AdresseLogoBanque);
                end;
                PrintRemiseCheque.DataAgenceDonneurOrdre.Caption:='('+MidelLaters(RIB,1,3)+') '+MidelLaters(RIB,4,8);
                PrintRemiseCheque.DataIdentificateurDonneurOrdre.Caption:=RParc.Text1;

                if firstlaters(RParc.Text2,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text2,longueur(RParc.Text2)-9);
                if firstlaters(RParc.Text3,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text3,longueur(RParc.Text3)-9);
                if firstlaters(RParc.Text4,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text4,longueur(RParc.Text4)-9);
                if firstlaters(RParc.Text5,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text5,longueur(RParc.Text5)-9);
                if firstlaters(RParc.Text6,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text6,longueur(RParc.Text6)-9);
                if firstlaters(RParc.Text7,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text7,longueur(RParc.Text7)-9);
                if firstlaters(RParc.Text8,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text8,longueur(RParc.Text8)-9);
                if firstlaters(RParc.Text9,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text9,longueur(RParc.Text9)-9);
                if firstlaters(RParc.Text10,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text10,longueur(RParc.Text10)-9);

                PrintRemiseCheque.DataRIBDonneurOrdreAgence.Caption:=MidelLaters(RIB,4,8);
                PrintRemiseCheque.DataRIBDonneurOrdreGL.Caption:=MidelLaters(RIB,9,11);
                PrintRemiseCheque.DataRIBDonneurOrdreIndicatifCle.Caption:=MidelLaters(RIB,12,18);
                PrintRemiseCheque.DataRIBDonneurOrdreOrdre.Caption:=MidelLaters(RIB,19,20);
                PrintRemiseCheque.DataAdresseDonneurOrdre.Lines.Text:='                     '+Adresse;

                PrintRemiseCheque.DataVersementEffectuePar.Lines.Text:='';
                PrintRemiseCheque.DataVersementEffectuePar.Lines.Add('                                            '+MidelLaters(FSAvis.EditOperationEffectuerPar.Text,1,20));
                PrintRemiseCheque.DataVersementEffectuePar.Lines.Add('                                            '+MidelLaters(FSAvis.EditOperationEffectuerPar.Text,21,40));
                PrintRemiseCheque.DataVersementEffectuePar.Lines.Add(MidelLaters(FSAvis.EditOperationEffectuerPar.Text,41,longueur(FSAvis.EditOperationEffectuerPar.Text)));

                PrintRemiseCheque.DataSommeEnLettres.Lines.Text:='';                                                       ;
                PrintRemiseCheque.DataSommeEnLettres.Lines.Add('                                         '+MidelLaters(FSAvis.EditMontantLettres.Text,1,20));
                PrintRemiseCheque.DataSommeEnLettres.Lines.Add('                                         '+MidelLaters(FSAvis.EditMontantLettres.Text,21,40));
                PrintRemiseCheque.DataSommeEnLettres.Lines.Add(MidelLaters(FSAvis.EditMontantLettres.Text,41,longueur(FSAvis.EditMontantLettres.Text)));
                
                {PrintRemiseCheque.DataSommeEnLettres.Lines.Text:='';                                                       ;
                PrintRemiseCheque.DataSommeEnLettres.Lines.Add('                                         '+MidelLaters(FSAvis.EditMontantLettres.Text,1,20));
                PrintRemiseCheque.DataSommeEnLettres.Lines.Add('                                         '+MidelLaters(FSAvis.EditMontantLettres.Text,21,40));
                PrintRemiseCheque.DataSommeEnLettres.Lines.Add(MidelLaters(FSAvis.EditMontantLettres.Text,41,longueur(FSAvis.EditMontantLettres.Text)));
                }
                PrintRemiseCheque.DataDateRemise.Caption:=FSAvis.EditFaitA.Text+' le '+datetostr(EditDate.Date);

                if(IndiqueTypeAvis(FSAvis.EditTypeAvis.Text,PositionTypeAvis,NumTypeAvis,ChercheSigneDebitCredit,CompteImputation,DebitCredit,TypeProces,FichierConserne,JourneauxAuxiliaireUtilise))then
                RTier:=ChercherTiers(TypeProces,FichierConserne,FSAvis.EditChargementCodeFichierConcerne.Text,'');
                RechercheAgenceBanque(FSAvis.TableauAgenceBanque,RTier.CodeAgenceBanqueTiers,'',RAgenceCopie);
                PrintRemiseCheque.DataBanqueTiree.Lines.Text:=RAgenceCopie.LibelleAgence;
                PrintRemiseCheque.DataNumCheque.Lines.Text:=FSAvis.EditNumPiece.Text;
                PrintRemiseCheque.DataTireur.Lines.Text:=RTier.NomTiers+' '+RTier.PrenomTiers;
                PrintRemiseCheque.DataSomme.Lines.Text:=FSAvis.EditMontantChiffre.Text;

                PrintRemiseCheque.DataSommeTOTAL.Caption:=FSAvis.EditMontantChiffre.Text;
          end;

          if(R>1)then
          begin
                if ChercherBanqueGlobal(MidelLaters(RIB,1,3),RBanqueGlobalCopie)then
                begin
                     PrintRemiseCheque.TitreLibelleBanqueX.Caption:=RBanqueGlobalCopie.LibelleBanque;
                     ProcAffichePhoto(MidelLaters(RIB,1,3),'','LogoBanque',AdresseLogoBanque);
                end;
                PrintRemiseCheque.DataAgenceDonneurOrdreX.Caption:='('+MidelLaters(RIB,1,3)+') '+MidelLaters(RIB,4,8);
                PrintRemiseCheque.DataIdentificateurDonneurOrdreX.Caption:=RParc.Text1;

                if firstlaters(RParc.Text2,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text2,longueur(RParc.Text2)-9);
                if firstlaters(RParc.Text3,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text3,longueur(RParc.Text3)-9);
                if firstlaters(RParc.Text4,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text4,longueur(RParc.Text4)-9);
                if firstlaters(RParc.Text5,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text5,longueur(RParc.Text5)-9);
                if firstlaters(RParc.Text6,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text6,longueur(RParc.Text6)-9);
                if firstlaters(RParc.Text7,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text7,longueur(RParc.Text7)-9);
                if firstlaters(RParc.Text8,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text8,longueur(RParc.Text8)-9);
                if firstlaters(RParc.Text9,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text9,longueur(RParc.Text9)-9);
                if firstlaters(RParc.Text10,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text10,longueur(RParc.Text10)-9);

                PrintRemiseCheque.DataRIBDonneurOrdreAgenceX.Caption:=MidelLaters(RIB,4,8);
                PrintRemiseCheque.DataRIBDonneurOrdreGLX.Caption:=MidelLaters(RIB,9,11);
                PrintRemiseCheque.DataRIBDonneurOrdreIndicatifCleX.Caption:=MidelLaters(RIB,12,18);
                PrintRemiseCheque.DataRIBDonneurOrdreOrdreX.Caption:=MidelLaters(RIB,19,20);
                PrintRemiseCheque.DataAdresseDonneurOrdreX.Lines.Text:='                     '+Adresse;

                PrintRemiseCheque.DataVersementEffectueParX.Lines.Text:='';
                PrintRemiseCheque.DataVersementEffectueParX.Lines.Add('                                            '+MidelLaters(FSAvis.EditOperationEffectuerPar.Text,1,20));
                PrintRemiseCheque.DataVersementEffectueParX.Lines.Add('                                            '+MidelLaters(FSAvis.EditOperationEffectuerPar.Text,21,40));
                PrintRemiseCheque.DataVersementEffectueParX.Lines.Add(MidelLaters(FSAvis.EditOperationEffectuerPar.Text,41,longueur(FSAvis.EditOperationEffectuerPar.Text)));

                PrintRemiseCheque.DataSommeEnLettresX.Lines.Text:='';                                                       ;
                PrintRemiseCheque.DataSommeEnLettresX.Lines.Add('                                       '+MidelLaters(FSAvis.EditMontantLettres.Text,1,20));
                PrintRemiseCheque.DataSommeEnLettresX.Lines.Add('                                       '+MidelLaters(FSAvis.EditMontantLettres.Text,21,40));
                PrintRemiseCheque.DataSommeEnLettresX.Lines.Add(MidelLaters(FSAvis.EditMontantLettres.Text,41,longueur(FSAvis.EditMontantLettres.Text)));

                PrintRemiseCheque.DataDateRemiseX.Caption:=FSAvis.EditFaitA.Text+' le '+datetostr(EditDate.Date);

                if(IndiqueTypeAvis(FSAvis.EditTypeAvis.Text,PositionTypeAvis,NumTypeAvis,ChercheSigneDebitCredit,CompteImputation,DebitCredit,TypeProces,FichierConserne,JourneauxAuxiliaireUtilise))then
                RTier:=ChercherTiers(TypeProces,FichierConserne,FSAvis.EditChargementCodeFichierConcerne.Text,'');
                RechercheAgenceBanque(FSAvis.TableauAgenceBanque,RTier.CodeAgenceBanqueTiers,'',RAgenceCopie);
                PrintRemiseCheque.DataBanqueTireeX.Lines.Text:=RAgenceCopie.LibelleAgence;
                PrintRemiseCheque.DataNumChequeX.Lines.Text:=FSAvis.EditNumPiece.Text;
                PrintRemiseCheque.DataTireurX.Lines.Text:=RTier.NomTiers+' '+RTier.PrenomTiers;
                PrintRemiseCheque.DataSommeX.Lines.Text:=FSAvis.EditMontantChiffre.Text;

                PrintRemiseCheque.DataSommeTOTALX.Caption:=FSAvis.EditMontantChiffre.Text;
          end;

          while(R>0)do
          begin
               if(R>1)then PrintRemiseCheque.CacheOrdreX.Enabled:=false
                      else PrintRemiseCheque.CacheOrdreX.Enabled:=true;
               PrintRemiseCheque.Preview;
               R:=R-2;
          end;
     end;

     if(FSAvis.BitPrintType.Caption='Virement')then
     begin
          AfficherMessage('Veuillez établire un Avis SVP !');
     end;

     if(FSAvis.BitPrintType.Caption='Espèce')then
     begin
          FSAvis.AffichePrelevementUniteFonds.Visible:=true;
          VersementUniteFonds(FSAvis.TableauUniteFonds);
          FSAvis.EditMontantAVersser.Text:=Vergule(FSAvis.EditMontantChiffre.Text,'2','C','');
          FSAvis.TableauUniteFonds.SetFocus;
     end;

     if(FSAvis.BitPrintType.Caption='Bon')then
     begin
          AfficherMessage('Veuillez établire un Avis SVP !');
     end;
end;

FSAvis.AfficheOptionImpression.Visible:=false;
end;

procedure TFSAvis.AfficheOptionImpressionExit(Sender: TObject);
begin
FSAvis.AfficheOptionImpression.Visible:=false;
end;

procedure TFSAvis.BitAfficheFicheTechniqueClick(Sender: TObject);
begin
     if(FSAvis.BitAfficheFicheTechnique.Kind=bkRetry)then
     begin
          if not ControleNouveauAvis then exit;
          
          FSAvis.BitAfficheFicheTechnique.Kind:=bkNo;
          FSAvis.BitAfficheFicheTechnique.Caption:='.';
          FSAvis.BitAfficheFicheTechnique.Cancel:=false;
          FSAvis.AfficheProjet.Height:=89;

          if(FSAvis.EditNumProjet.Text='')then FSAvis.EditNumProjet.SetFocus
          else
          if(FSAvis.EditNumFiche.Text='')then FSAvis.EditNumFiche.SetFocus
          else
          if(FSAvis.EditNumRubrique.Text='')then FSAvis.EditNumRubrique.SetFocus
          else
          if(FSAvis.EditNumPlanificateur.Text='')then FSAvis.EditNumPlanificateur.SetFocus;
     end
     else
     begin
          FSAvis.BitAfficheFicheTechnique.Kind:=bkRetry;
          FSAvis.BitAfficheFicheTechnique.Caption:='.';
          FSAvis.BitAfficheFicheTechnique.Cancel:=false;
          FSAvis.AfficheProjet.Height:=26;
          FSAvis.TableauSelections.Visible:=false;
          FSAvis.EditModePaiement.SetFocus;
     end;

     FSAvis.BitAfficheFicheTechnique.Cancel:=false;

end;

procedure TFSAvis.EditNumFicheEnter(Sender: TObject);
begin
if not ControleNouveauAvis then exit;

FSAvis.TableauSelections.Visible:=true;
FSAvis.TableauSelections.Left:=104;
FSAvis.TableauSelections.Top:=111;
ListeFicheTechnique(FSAvis.TableauSelections,FSAvis.EditNumProjet.Text,1,FSAvis.RBFicheProjetPrecis.Checked);
FSAvis.TableauSelections.SetFocus;
FSAvis.EditTableauSelection.Text:='Fiche';
end;

procedure TFSAvis.EditNumFicheKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     if(FSAvis.TableauSelections.Visible=true)
     then FSAvis.TableauSelections.SetFocus
     else FSAvis.EditNumRubrique.SetFocus;
end;

if key in[VK_UP]then
begin
     FSAvis.TableauSelections.Visible:=false;
     FSAvis.EditNumFiche.Text:='';
     FSAvis.EditDesignationFiche.Text:='';
     FSAvis.EditNumProjet.SetFocus;
end;

if key in[VK_DOWN]then
begin
     FSAvis.TableauSelections.Visible:=false;
     FSAvis.EditNumFiche.Text:='';
     FSAvis.EditDesignationFiche.Text:='';
     FSAvis.EditNumRubrique.SetFocus;
end;

end;

procedure TFSAvis.EditNumRubriqueEnter(Sender: TObject);
begin
if not ControleNouveauAvis then exit;

FSAvis.TableauSelections.Visible:=true;
FSAvis.TableauSelections.Left:=104;
FSAvis.TableauSelections.Top:=131;
ListeRubriqueFicheTechnique(FSAvis.TableauSelections,FSAvis.EditNumProjet.Text,FSAvis.EditNumFiche.Text);
FSAvis.TableauSelections.SetFocus;
FSAvis.EditTableauSelection.Text:='Rubrique';
end;

procedure TFSAvis.EditNumRubriqueKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     if(FSAvis.TableauSelections.Visible=true)
     then FSAvis.TableauSelections.SetFocus
     else FSAvis.EditModePaiement.SetFocus;
end;

if key in[VK_UP]then
begin
     FSAvis.TableauSelections.Visible:=false;
     FSAvis.EditNumRubrique.Text:='';
     FSAvis.EditDesignationRubrique.Text:='';
     FSAvis.EditNumFiche.SetFocus;
end;

if key in[VK_DOWN]then
begin
     FSAvis.TableauSelections.Visible:=false;
     FSAvis.EditNumRubrique.Text:='';
     FSAvis.EditDesignationRubrique.Text:='';
     FSAvis.EditNumPlanificateur.SetFocus;
end;

end;

procedure TFSAvis.EditNumPlanificateurEnter(Sender: TObject);
var     Quantite,Montant:real;
begin
if not ControleNouveauAvis then exit;

FSAvis.TableauSelections.Visible:=true;
FSAvis.TableauSelections.Left:=104;
FSAvis.TableauSelections.Top:=151;
AffichePlanificateur(FSAvis.TableauSelections,FSAvis.EditNumRubrique.Text,'',FSAvis.EditChargementTypeProces.Text,FSAvis.EditChargementFichierConcerne.Text,'',Quantite,Montant);
FSAvis.TableauSelections.SetFocus;
FSAvis.EditTableauSelection.Text:='Planificateur';
end;

procedure TFSAvis.TableauSelectionsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var  i,PositionTypeAvis,NumTypeAvis,ChercheSigneDebitCredit:integer; Quantite,Montant:real;
     CompteImputation,DebitCredit,TypeProces,FichierConserne,JourneauxAuxiliaireUtilise,CodeTiers,NatureOperation,DesignationTypeAvis:string;
     OKPlanificationRubrique,OKPlanificationTiers,OKAvis:boolean;    
begin

if key in[VK_BACK,VK_SPACE,VK_DELETE]then
begin
     FSAvis.TableauSelections.Visible:=false;

     if(FSAvis.EditTableauSelection.Text='Planificateur')then
     begin
          FSAvis.EditNumPlanificateur.Text:='';
          FSAvis.EditDesignationPlanificateur.Text:='';
          FSAvis.BitAfficheFicheTechnique.SetFocus;
     end;

     if(FSAvis.EditTableauSelection.Text='Rubrique')then
     begin
          FSAvis.EditNumRubrique.Text:='';
          FSAvis.EditDesignationRubrique.Text:='';

          FSAvis.EditNumPlanificateur.Text:='';
          FSAvis.EditDesignationPlanificateur.Text:='';

          FSAvis.EditNumPlanificateur.SetFocus;
     end;

     if(FSAvis.EditTableauSelection.Text='Fiche')then
     begin
          FSAvis.EditNumFiche.Text:='';
          FSAvis.EditDesignationFiche.Text:='';
          //FSAvis.EditTypeAvis.Text:='';
          //FSAvis.EditChargementTypeProces.Text:='';
          //FSAvis.EditChargementFichierConcerne.Text:='';

          //FSAvis.EditNumRubrique.Text:='';
          //FSAvis.EditDesignationRubrique.Text:='';

          //FSAvis.EditNumPlanificateur.Text:='';
          //FSAvis.EditDesignationPlanificateur.Text:='';

          FSAvis.EditNumRubrique.SetFocus;
     end;

     if(FSAvis.EditTableauSelection.Text='Projet')then
     begin
          FSAvis.EditNumProjet.Text:='';
          FSAvis.EditNomProjet.Text:='';

          FSAvis.EditNumFiche.Text:='';
          FSAvis.EditDesignationFiche.Text:='';
          //FSAvis.EditChargementTypeProces.Text:='';
          //FSAvis.EditChargementFichierConcerne.Text:='';

          FSAvis.EditNumRubrique.Text:='';
          FSAvis.EditDesignationRubrique.Text:='';

          FSAvis.EditNumPlanificateur.Text:='';
          FSAvis.EditDesignationPlanificateur.Text:='';

          FSAvis.EditNumFiche.SetFocus;
     end;
end;

if key in[VK_RETURN]then
begin
     NatureOperation:='';

     if(FSAvis.EditTableauSelection.Text='Planificateur')then
     begin
          FSAvis.EditNumPlanificateur.Text:=FSAvis.TableauSelections.Cells[3,FSAvis.TableauSelections.Row];
          FSAvis.EditDesignationPlanificateur.Text:=FSAvis.TableauSelections.Cells[4,FSAvis.TableauSelections.Row];

          RubriqueArborescence('',FSAvis.TableauSelections.Cells[2,FSAvis.TableauSelections.Row],RRubriqueFicheTechnique,RFicheTechnique,RTypeAvis);
          if(FSAvis.EditNumRubrique.Text='')then
          begin
               FSAvis.EditNumRubrique.Text:=inttostr(RRubriqueFicheTechnique.NumRubrique);
               FSAvis.EditDesignationRubrique.Text:=RRubriqueFicheTechnique.DesignationRubrique;
          end;
          if(FSAvis.EditNumFiche.Text='')then
          begin
               FSAvis.EditNumFiche.Text:=inttostr(RFicheTechnique.NumFicheTechnique);
               FSAvis.EditDesignationFiche.Text:=RFicheTechnique.DesignationFicheTechnique;
          end;
          if(FSAvis.EditNumProjet.Text='')then
          begin
               FSAvis.EditPositionProjet.Text:='';
               FSAvis.EditNumProjet.Text:=RFicheTechnique.CodeProjet;
               FSAvis.EditNomProjet.Text:=ChercherProjetFinance(RFicheTechnique.CodeProjet,PositionProjetFinancesRecherche).DesignationProjetFinance;
          end;

          FSAvis.EditChargementCodeFichierConcerne.Text:=FSAvis.TableauSelections.Cells[5,FSAvis.TableauSelections.Row];
          FSAvis.EditBenificiaire.Text:=FSAvis.TableauSelections.Cells[6,FSAvis.TableauSelections.Row];

          FSAvis.TableauSelections.Visible:=false;
          FSAvis.BitAfficheFicheTechnique.Kind:=bkRetry;
          FSAvis.BitAfficheFicheTechnique.Caption:='.';
          FSAvis.AfficheProjet.Height:=26;
          FSAvis.EditModePaiement.SetFocus;
          NatureOperation:=FSAvis.EditDesignationPlanificateur.Text;
     end;

     if(FSAvis.EditTableauSelection.Text='Rubrique')then
     begin
          FSAvis.EditNumRubrique.Text:=FSAvis.TableauSelections.Cells[1,FSAvis.TableauSelections.Row];
          FSAvis.EditDesignationRubrique.Text:=FSAvis.TableauSelections.Cells[2,FSAvis.TableauSelections.Row];
          FSAvis.EditNumPlanificateur.Text:='';
          FSAvis.EditDesignationPlanificateur.Text:='';

          ExistePlanificationRubrique(FSAvis.EditNumRubrique.Text,'',OKPlanificationRubrique,OKPlanificationTiers,CodeTiers);
          if(OKPlanificationRubrique=true)then
          begin
               AffichePlanificateur(FSAvis.TableauSelections,FSAvis.EditNumRubrique.Text,'','','','',Quantite,Montant);
               FSAvis.TableauSelections.SetFocus;
               FSAvis.EditTableauSelection.Text:='Planificateur';
          end
          else
          begin
               FSAvis.EditNumPlanificateur.Text:='';
               FSAvis.EditDesignationPlanificateur.Text:='';
               FSAvis.TableauSelections.Visible:=false;
               FSAvis.TableauSelections.Visible:=false;
               FSAvis.BitAfficheFicheTechnique.Kind:=bkRetry;
               FSAvis.BitAfficheFicheTechnique.Caption:='.';
               FSAvis.AfficheProjet.Height:=26;
               FSAvis.EditModePaiement.SetFocus;
          end;

          NatureOperation:=FSAvis.EditDesignationRubrique.Text;
     end;

     if(FSAvis.EditTableauSelection.Text='Fiche')then
     begin
          FSAvis.EditNumFiche.Text:=FSAvis.TableauSelections.Cells[2,FSAvis.TableauSelections.Row];
          FSAvis.EditDesignationFiche.Text:=FSAvis.TableauSelections.Cells[3,FSAvis.TableauSelections.Row];
          if(FSAvis.TableauSelections.Cells[5,FSAvis.TableauSelections.Row]<>'')
          then FSAvis.EditTypeAvis.Text:=FSAvis.TableauSelections.Cells[5,FSAvis.TableauSelections.Row];

          if(IndiqueTypeAvis(FSAvis.TableauSelections.Cells[5,FSAvis.TableauSelections.Row],PositionTypeAvis,NumTypeAvis,ChercheSigneDebitCredit,CompteImputation,DebitCredit,TypeProces,FichierConserne,JourneauxAuxiliaireUtilise))then
          begin
               FSAvis.EditChargementTypeProces.Text:=TypeProces;
               FSAvis.EditChargementFichierConcerne.Text:=FichierConserne;
          end
          else
          begin
               showmessage('Le type d''Avis sélectionné, na pas de données pour chargement!');
          end;
          
          FSAvis.EditNumRubrique.Text:='';
          FSAvis.EditDesignationRubrique.Text:='';
          FSAvis.EditNumPlanificateur.Text:='';
          FSAvis.EditDesignationPlanificateur.Text:='';
          FSAvis.TableauSelections.Visible:=false;
          FSAvis.EditNumRubrique.SetFocus;
          NatureOperation:=FSAvis.EditDesignationFiche.Text;
     end;

     if(FSAvis.EditTableauSelection.Text='Projet')then
     begin
          FSAvis.EditPositionProjet.Text:=FSAvis.TableauSelections.Cells[0,FSAvis.TableauSelections.Row];
          FSAvis.EditNumProjet.Text:=FSAvis.TableauSelections.Cells[1,FSAvis.TableauSelections.Row];
          FSAvis.EditNomProjet.Text:=FSAvis.TableauSelections.Cells[2,FSAvis.TableauSelections.Row];
          
          FSAvis.EditNumFiche.Text:='';
          FSAvis.EditDesignationFiche.Text:='';
          FSAvis.EditChargementTypeProces.Text:='';
          FSAvis.EditChargementFichierConcerne.Text:='';
          FSAvis.EditNumRubrique.Text:='';
          FSAvis.EditDesignationRubrique.Text:='';
          FSAvis.EditNumPlanificateur.Text:='';
          FSAvis.EditDesignationPlanificateur.Text:='';
          FSAvis.TableauSelections.Visible:=false;
          FSAvis.EditNumFiche.SetFocus;
          FSAvis.BitAfficheFicheTechnique.Kind:=bkNo;
          FSAvis.BitAfficheFicheTechnique.Caption:='.';
          FSAvis.AfficheProjet.Height:=89;

          NatureOperation:=FSAvis.EditNomProjet.Text;
     end;
     RubriqueArborescence(FSAvis.EditNumFiche.Text,FSAvis.EditNumRubrique.Text,RRubriqueFicheTechniqueCopie,RFicheTechnique,RTypeAvis);

     if(RTypeAvis.DebitCredit='Débit')then FSAvis.EditNatureDepences.Text:='Encaissement Concernant: '+NatureOperation;
     if(RTypeAvis.DebitCredit='Débit')then FSAvis.EditNatureDepences.Text:='Frait Concernant: '+NatureOperation;
     if(RTypeAvis.DebitCredit='DébitCrédit')then
     begin
          if(FSAvis.EditDomiciliationAvisCP.Text<>'')then
          begin
               FSAvis.EditNatureDepences.Text:='Alimentation: '+FSAvis.EditDomiciliationAvisCP.Text;
               if(FSAvis.EditDomiciliationAvis.Text<>'')then
               begin
                    FSAvis.EditNatureDepences.Text:=FSAvis.EditNatureDepences.Text+' par: '+FSAvis.EditDomiciliationAvis.Text;
               end;
          end;
     end;

     /////////////////////// CONTRÔLE TYPE AVIS ////////////////////////////////
     if(FSAvis.EditCompteImputation.Text='')
     or(FSAvis.EditDebitCreditDomiciliation.Text='')
     or(FSAvis.EditChargementTypeProces.Text='')
     or(FSAvis.EditChargementFichierConcerne.Text='')
     or(FSAvis.EditChargementCodeFichierConcerne.Text='')
     then
     begin
          if(FSAvis.EditNumRubrique.Text='')and(FSAvis.EditNumFiche.Text='')then
          begin
               if(FSAvis.EditTypeAvis.Text<>'')then DesignationTypeAvis:=FSAvis.EditTypeAvis.Text;
          end
          else
          begin
               RubriqueArborescence(FSAvis.EditNumFiche.Text,FSAvis.EditNumRubrique.Text,RRubriqueFicheTechniqueCopie,RFicheTechnique,RTypeAvis);
               DesignationTypeAvis:=RTypeAvis.DesignationTypeAvis;
          end;

          AfficerDataContrePartieAvis(DesignationTypeAvis,FSAvis.EditBaseAvis.Text);
     end;
     /////////////////  FIN CONTRÔLE TYPE AVIS /////////////////////////////////
end;
end;

procedure TFSAvis.EditNumProjetEnter(Sender: TObject);
begin
if not ControleNouveauAvis then exit;

FSAvis.TableauSelections.Visible:=true;
FSAvis.TableauSelections.Left:=104;
FSAvis.TableauSelections.Top:=88;
ListeProjetFinance(FSAvis.TableauSelections,'','','10',false,'1','',false,true,'','');
FSAvis.TableauSelections.SetFocus;
FSAvis.EditTableauSelection.Text:='Projet';

FSAvis.BitAfficheFicheTechnique.Kind:=bkNo;
FSAvis.BitAfficheFicheTechnique.Caption:='.';
FSAvis.BitAfficheFicheTechnique.Cancel:=false;
FSAvis.AfficheProjet.Height:=89;
end;

procedure TFSAvis.EditNumProjetKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     if(FSAvis.TableauSelections.Visible=true)
     then FSAvis.TableauSelections.SetFocus
     else FSAvis.EditNumFiche.SetFocus;
end;

if key in[VK_UP]then
begin
     FSAvis.TableauSelections.Visible:=false;
     FSAvis.EditNumProjet.Text:='';
     FSAvis.EditNomProjet.Text:='';
     FSAvis.BitAfficheFicheTechnique.SetFocus;
end;

if key in[VK_DOWN]then
begin
     FSAvis.TableauSelections.Visible:=false;
     FSAvis.EditNumProjet.Text:='';
     FSAvis.EditNomProjet.Text:='';
     FSAvis.EditNumFiche.SetFocus;
end;

end;

procedure TFSAvis.EditNomProjetEnter(Sender: TObject);
begin
FSAvis.EditNumProjet.SetFocus;
end;

procedure TFSAvis.BitBtn4Click(Sender: TObject);
var i,PositionTypeAvis,NumTypeAvis,ChercheSigneDebitCredit:integer; OKAvis:boolean; DesignationTypeAvis,CompteImputation,DebitCredit,TypeProces,FichierConserne,JourneauxAuxiliaireUtilise:string;
begin
     FSAvis.EditNumProjet.Text:='';
     FSAvis.EditNomProjet.Text:='';
     FSAvis.EditNumFiche.Text:='';
     FSAvis.EditDesignationFiche.Text:='';
     FSAvis.EditNumRubrique.Text:='';
     FSAvis.EditDesignationRubrique.Text:='';
     FSAvis.EditNumPlanificateur.Text:='';
     FSAvis.EditDesignationPlanificateur.Text:='';
     FSAvis.TableauSelections.Visible:=false;
     FSAvis.BitAfficheFicheTechnique.Kind:=bkRetry;
     FSAvis.BitAfficheFicheTechnique.Caption:='.';
     FSAvis.BitAfficheFicheTechnique.Cancel:=false;
     FSAvis.AfficheProjet.Height:=26;

     FSAvis.EditCompteImputation.Text:='';
     FSAvis.EditDebitCreditDomiciliation.Text:='';
     FSAvis.EditBenificiaire.Text:='';
     FSAvis.EditChargementTypeProces.Text:='';
     FSAvis.EditChargementCodeFichierConcerne.Text:='';
     FSAvis.EditChargementFichierConcerne.Text:='';

     DesignationTypeAvis:=FSAvis.EditTypeAvis.Text;

     if(IndiqueTypeAvis(DesignationTypeAvis,PositionTypeAvis,NumTypeAvis,ChercheSigneDebitCredit,CompteImputation,DebitCredit,TypeProces,FichierConserne,JourneauxAuxiliaireUtilise))then
     begin
          FSAvis.EditTypeAvis.Text:=DesignationTypeAvis;
          FSAvis.EditCompteImputation.Text:=CompteImputation;
          FSAvis.EditDebitCreditDomiciliation.Text:=DebitCredit;
          FSAvis.EditChargementTypeProces.Text:=TypeProces;
          FSAvis.EditChargementFichierConcerne.Text:=FichierConserne;
          FSAvis.EditModePaiement.SetFocus;

          if(DebitCredit='Crédit')
          then FSAvis.TitreNatureAvisFinance.Caption:='Nature de la dépense:'
          else FSAvis.TitreNatureAvisFinance.Caption:='Nature de la rente:';

          FSAvis.TitreIdentiteFichierConcerne.Caption:=Lastlaters(FichierConserne,Longueur(FichierConserne)-1);
     end
     else
     begin
          showmessage('Le type d''Avis sélectionné, na pas de données pour chargement!');
     end;
end;

procedure TFSAvis.EditTypeAvisEnter(Sender: TObject);
begin
     if not ControleNouveauAvis then exit;
end;

procedure TFSAvis.EditNumAvisEnter(Sender: TObject);
begin
     FSAvis.TableauTiers.Visible:=false;
     FSAvis.TableauNatureDepenses.Visible:=false;
     FSAvis.AfficheOperationAvis.Visible:=false;
     FSAvis.AfficheNouveauTiers.Visible:=false;
     FSAvis.AffichePrelevementUniteFonds.Visible:=false;
     FSAvis.AfficheOptionImpression.Visible:=false;
     FSAvis.AfficheSeriePieceAvis.Height:=0;
     FSAvis.TableauSelections.Visible:=false;
end;

Procedure ViderOrdreVersementEspece;
begin
     PrintOrdreVersementEspece.DataNomAgence.Caption:='';
     PrintOrdreVersementEspece.DataOperationsEffectuePar.Caption:='';
     PrintOrdreVersementEspece.DataRIBCodeAgence.Caption:='';
     PrintOrdreVersementEspece.DataRIBReferenceClient.Caption:='';
     PrintOrdreVersementEspece.DataRIBIndicatifClient.Caption:='';
     PrintOrdreVersementEspece.DataRIBCle.Caption:='';
     PrintOrdreVersementEspece.DataIdentificateurTitulaireCompte.Caption:='';
     PrintOrdreVersementEspece.DataDateVersement.Caption:='';

     PrintOrdreVersementEspece.DataDemandeTotalVergule.Enabled:=false;
     PrintOrdreVersementEspece.DataDemandeTotal1.Caption:='';
     PrintOrdreVersementEspece.DataDemandeTotal2.Caption:='';
     PrintOrdreVersementEspece.DataDemandeTotal3.Caption:='';
     PrintOrdreVersementEspece.DataDemandeTotal4.Caption:='';
     PrintOrdreVersementEspece.DataDemandeTotal5.Caption:='';
     PrintOrdreVersementEspece.DataDemandeTotal6.Caption:='';
     PrintOrdreVersementEspece.DataDemandeTotal7.Caption:='';

     PrintOrdreVersementEspece.DataVersementTotalVergule.Enabled:=false;
     PrintOrdreVersementEspece.DataVersementTotal1.Caption:='';
     PrintOrdreVersementEspece.DataVersementTotal2.Caption:='';
     PrintOrdreVersementEspece.DataVersementTotal3.Caption:='';
     PrintOrdreVersementEspece.DataVersementTotal4.Caption:='';
     PrintOrdreVersementEspece.DataVersementTotal5.Caption:='';
     PrintOrdreVersementEspece.DataVersementTotal6.Caption:='';
     PrintOrdreVersementEspece.DataVersementTotal7.Caption:='';

     PrintOrdreVersementEspece.TitreVerseeBillet1.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet11.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet12.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet13.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet14.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet15.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet16.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet17.Caption:='';

     PrintOrdreVersementEspece.TitreVerseeBillet2.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet21.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet22.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet23.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet24.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet25.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet26.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet27.Caption:='';

     PrintOrdreVersementEspece.TitreVerseeBillet3.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet31.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet32.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet33.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet34.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet35.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet36.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet37.Caption:='';

     PrintOrdreVersementEspece.TitreVerseeBillet4.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet41.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet42.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet43.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet44.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet45.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet46.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet47.Caption:='';

     PrintOrdreVersementEspece.TitreVerseeBillet5.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet51.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet52.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet53.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet54.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet55.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet56.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet57.Caption:='';

     PrintOrdreVersementEspece.TitreVerseeBillet6.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet61.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet62.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet63.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet64.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet65.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet66.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet67.Caption:='';

     PrintOrdreVersementEspece.TitreVerseeBillet7.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet71.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet72.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet73.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet74.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet75.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet76.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet77.Caption:='';

     PrintOrdreVersementEspece.TitreVerseeBillet8.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet81.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet82.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet83.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet84.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet85.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet86.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet87.Caption:='';

     PrintOrdreVersementEspece.TitreVerseeBillet9.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet91.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet92.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet93.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet94.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet95.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet96.Caption:='';
     PrintOrdreVersementEspece.DataVerseeBillet97.Caption:='';

     PrintOrdreVersementEspece.TitreVerseePiece1.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece11.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece12.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece13.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece14.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece15.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece16.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece17.Caption:='';

     PrintOrdreVersementEspece.TitreVerseePiece2.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece21.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece22.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece23.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece24.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece25.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece26.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece27.Caption:='';

     PrintOrdreVersementEspece.TitreVerseePiece3.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece31.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece32.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece33.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece34.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece35.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece36.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece37.Caption:='';

     PrintOrdreVersementEspece.TitreVerseePiece4.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece41.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece42.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece43.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece44.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece45.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece46.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece47.Caption:='';

     PrintOrdreVersementEspece.TitreVerseePiece5.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece51.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece52.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece53.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece54.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece55.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece56.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece57.Caption:='';

     PrintOrdreVersementEspece.TitreVerseePiece6.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece61.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece62.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece63.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece64.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece65.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece66.Caption:='';
     PrintOrdreVersementEspece.DataVerseePiece67.Caption:='';
end;

Procedure ViderOrdreVirement(ActivationInformation:boolean);
begin
PrintOrdreVirement.CacheOrdreX.Enabled:=true;

PrintOrdreVirement.TitreLibelleBanque.Caption:='';
PrintOrdreVirement.TitreLogoBanque.Picture:=FSMenuPrincipal.PhotoVide.Picture;

PrintOrdreVirement.DataIdentificateurDonneurOrdre.Caption:='';
PrintOrdreVirement.DataAdresseDonneurOrdre1.Caption:='';
PrintOrdreVirement.DataAdresseDonneurOrdre2.Caption:='';

PrintOrdreVirement.DataRIBDonneurOrdreAgence.Caption:='';
PrintOrdreVirement.DataRIBDonneurOrdreGL.Caption:='';
PrintOrdreVirement.DataRIBDonneurOrdreIndicatifCle.Caption:='';
PrintOrdreVirement.DataRIBDonneurOrdreOrdre.Caption:='';

PrintOrdreVirement.DataMontantGlobalPrincipal.Caption:='';
PrintOrdreVirement.DataMontantGlobalDecimal.Caption:='';
PrintOrdreVirement.DataMontantGlobalLettre.Lines.Text:='';
PrintOrdreVirement.DataDateRemise.Caption:='';

PrintOrdreVirement.DataIdentificateurBeneficiere1.Caption:='';
PrintOrdreVirement.DataRIBBeneficiere1.Caption:='';
PrintOrdreVirement.DataAgenceBeneficiere1.Caption:='';
PrintOrdreVirement.DataRIBBeneficiere1.Caption:='';
PrintOrdreVirement.DataAgenceBeneficiere1.Caption:='';
PrintOrdreVirement.DataMontantOperationPrincipal1.Caption:='';
PrintOrdreVirement.DataMontantOperationDecimal1.Caption:='';

PrintOrdreVirement.DataIdentificateurBeneficiere2.Caption:='';
PrintOrdreVirement.DataRIBBeneficiere2.Caption:='';
PrintOrdreVirement.DataAgenceBeneficiere2.Caption:='';
PrintOrdreVirement.DataRIBBeneficiere2.Caption:='';
PrintOrdreVirement.DataAgenceBeneficiere2.Caption:='';
PrintOrdreVirement.DataMontantOperationPrincipal2.Caption:='';
PrintOrdreVirement.DataMontantOperationDecimal2.Caption:='';

PrintOrdreVirement.DataIdentificateurBeneficiere3.Caption:='';
PrintOrdreVirement.DataRIBBeneficiere3.Caption:='';
PrintOrdreVirement.DataAgenceBeneficiere3.Caption:='';
PrintOrdreVirement.DataRIBBeneficiere3.Caption:='';
PrintOrdreVirement.DataAgenceBeneficiere3.Caption:='';
PrintOrdreVirement.DataMontantOperationPrincipal3.Caption:='';
PrintOrdreVirement.DataMontantOperationDecimal3.Caption:='';

PrintOrdreVirement.DataIdentificateurBeneficiere4.Caption:='';
PrintOrdreVirement.DataRIBBeneficiere4.Caption:='';
PrintOrdreVirement.DataAgenceBeneficiere4.Caption:='';
PrintOrdreVirement.DataRIBBeneficiere4.Caption:='';
PrintOrdreVirement.DataAgenceBeneficiere4.Caption:='';
PrintOrdreVirement.DataMontantOperationPrincipal4.Caption:='';
PrintOrdreVirement.DataMontantOperationDecimal4.Caption:='';

PrintOrdreVirement.DataIdentificateurBeneficiere5.Caption:='';
PrintOrdreVirement.DataRIBBeneficiere5.Caption:='';
PrintOrdreVirement.DataAgenceBeneficiere5.Caption:='';
PrintOrdreVirement.DataRIBBeneficiere5.Caption:='';
PrintOrdreVirement.DataAgenceBeneficiere5.Caption:='';
PrintOrdreVirement.DataMontantOperationPrincipal5.Caption:='';
PrintOrdreVirement.DataMontantOperationDecimal5.Caption:='';

PrintOrdreVirement.DataIdentificateurBeneficiere6.Caption:='';
PrintOrdreVirement.DataRIBBeneficiere6.Caption:='';
PrintOrdreVirement.DataAgenceBeneficiere6.Caption:='';
PrintOrdreVirement.DataRIBBeneficiere6.Caption:='';
PrintOrdreVirement.DataAgenceBeneficiere6.Caption:='';
PrintOrdreVirement.DataMontantOperationPrincipal6.Caption:='';
PrintOrdreVirement.DataMontantOperationDecimal6.Caption:='';

PrintOrdreVirement.DataLibelleRemise.Lines.Text:='';
PrintOrdreVirement.DataLibelleRemise.Enabled:=false;

//////////////////////////////////////////////////////////////
PrintOrdreVirement.TitreLibelleBanqueX.Caption:='';
PrintOrdreVirement.TitreLogoBanqueX.Picture:=FSMenuPrincipal.PhotoVide.Picture;

PrintOrdreVirement.DataIdentificateurDonneurOrdreX.Caption:='';
PrintOrdreVirement.DataAdresseDonneurOrdre1X.Caption:='';
PrintOrdreVirement.DataAdresseDonneurOrdre2X.Caption:='';

PrintOrdreVirement.DataRIBDonneurOrdreAgenceX.Caption:='';
PrintOrdreVirement.DataRIBDonneurOrdreGLX.Caption:='';
PrintOrdreVirement.DataRIBDonneurOrdreIndicatifCleX.Caption:='';
PrintOrdreVirement.DataRIBDonneurOrdreOrdreX.Caption:='';

PrintOrdreVirement.DataMontantGlobalPrincipalX.Caption:='';
PrintOrdreVirement.DataMontantGlobalDecimalX.Caption:='';
PrintOrdreVirement.DataMontantGlobalLettreX.Lines.Text:='';
PrintOrdreVirement.DataDateRemiseX.Caption:='';

PrintOrdreVirement.DataIdentificateurBeneficiere1X.Caption:='';
PrintOrdreVirement.DataRIBBeneficiere1X.Caption:='';
PrintOrdreVirement.DataAgenceBeneficiere1X.Caption:='';
PrintOrdreVirement.DataRIBBeneficiere1X.Caption:='';
PrintOrdreVirement.DataAgenceBeneficiere1X.Caption:='';
PrintOrdreVirement.DataMontantOperationPrincipal1X.Caption:='';
PrintOrdreVirement.DataMontantOperationDecimal1X.Caption:='';

PrintOrdreVirement.DataIdentificateurBeneficiere2X.Caption:='';
PrintOrdreVirement.DataRIBBeneficiere2X.Caption:='';
PrintOrdreVirement.DataAgenceBeneficiere2X.Caption:='';
PrintOrdreVirement.DataRIBBeneficiere2X.Caption:='';
PrintOrdreVirement.DataAgenceBeneficiere2X.Caption:='';
PrintOrdreVirement.DataMontantOperationPrincipal2X.Caption:='';
PrintOrdreVirement.DataMontantOperationDecimal2X.Caption:='';

PrintOrdreVirement.DataIdentificateurBeneficiere3X.Caption:='';
PrintOrdreVirement.DataRIBBeneficiere3X.Caption:='';
PrintOrdreVirement.DataAgenceBeneficiere3X.Caption:='';
PrintOrdreVirement.DataRIBBeneficiere3X.Caption:='';
PrintOrdreVirement.DataAgenceBeneficiere3X.Caption:='';
PrintOrdreVirement.DataMontantOperationPrincipal3X.Caption:='';
PrintOrdreVirement.DataMontantOperationDecimal3X.Caption:='';

PrintOrdreVirement.DataIdentificateurBeneficiere4X.Caption:='';
PrintOrdreVirement.DataRIBBeneficiere4X.Caption:='';
PrintOrdreVirement.DataAgenceBeneficiere4X.Caption:='';
PrintOrdreVirement.DataRIBBeneficiere4X.Caption:='';
PrintOrdreVirement.DataAgenceBeneficiere4X.Caption:='';
PrintOrdreVirement.DataMontantOperationPrincipal4X.Caption:='';
PrintOrdreVirement.DataMontantOperationDecimal4X.Caption:='';

PrintOrdreVirement.DataIdentificateurBeneficiere5X.Caption:='';
PrintOrdreVirement.DataRIBBeneficiere5X.Caption:='';
PrintOrdreVirement.DataAgenceBeneficiere5X.Caption:='';
PrintOrdreVirement.DataRIBBeneficiere5X.Caption:='';
PrintOrdreVirement.DataAgenceBeneficiere5X.Caption:='';
PrintOrdreVirement.DataMontantOperationPrincipal5X.Caption:='';
PrintOrdreVirement.DataMontantOperationDecimal5X.Caption:='';

PrintOrdreVirement.DataIdentificateurBeneficiere6X.Caption:='';
PrintOrdreVirement.DataRIBBeneficiere6X.Caption:='';
PrintOrdreVirement.DataAgenceBeneficiere6X.Caption:='';
PrintOrdreVirement.DataRIBBeneficiere6X.Caption:='';
PrintOrdreVirement.DataAgenceBeneficiere6X.Caption:='';
PrintOrdreVirement.DataMontantOperationPrincipal6X.Caption:='';
PrintOrdreVirement.DataMontantOperationDecimal6X.Caption:='';

PrintOrdreVirement.DataLibelleRemiseX.Lines.Text:='';
PrintOrdreVirement.DataLibelleRemiseX.Enabled:=false;
end;

Procedure ViderRemiseCheque;
begin
PrintRemiseCheque.CacheOrdreX.Enabled:=true;

PrintRemiseCheque.TitreLibelleBanque.Caption:='';
PrintRemiseCheque.TitreLogoBanque.Picture:=FSMenuPrincipal.PhotoVide.Picture;

PrintRemiseCheque.DataIdentificateurDonneurOrdre.Caption:='';
PrintRemiseCheque.DataAdresseDonneurOrdre.Lines.Text:='';

PrintRemiseCheque.DataRIBDonneurOrdreAgence.Caption:='';
PrintRemiseCheque.DataRIBDonneurOrdreGL.Caption:='';
PrintRemiseCheque.DataRIBDonneurOrdreIndicatifCle.Caption:='';
PrintRemiseCheque.DataRIBDonneurOrdreOrdre.Caption:='';

PrintRemiseCheque.DataSommeTOTAL.Caption:='';
PrintRemiseCheque.DataSommeEnLettres.Lines.Text:='';
PrintRemiseCheque.DataDateRemise.Caption:='';

PrintRemiseCheque.DataBanqueTiree.Lines.Text:='';
PrintRemiseCheque.DataNumCheque.Lines.Text:='';
PrintRemiseCheque.DataTireur.Lines.Text:='';
PrintRemiseCheque.DataSomme.Lines.Text:='';

//////////////////////////////////////////////////////////////

PrintRemiseCheque.TitreLibelleBanqueX.Caption:='';
PrintRemiseCheque.TitreLogoBanqueX.Picture:=FSMenuPrincipal.PhotoVide.Picture;

PrintRemiseCheque.DataIdentificateurDonneurOrdreX.Caption:='';
PrintRemiseCheque.DataAdresseDonneurOrdreX.Lines.Text:='';

PrintRemiseCheque.DataRIBDonneurOrdreAgenceX.Caption:='';
PrintRemiseCheque.DataRIBDonneurOrdreGLX.Caption:='';
PrintRemiseCheque.DataRIBDonneurOrdreIndicatifCleX.Caption:='';
PrintRemiseCheque.DataRIBDonneurOrdreOrdreX.Caption:='';

PrintRemiseCheque.DataSommeTOTALX.Caption:='';
PrintRemiseCheque.DataSommeEnLettresX.Lines.Text:='';
PrintRemiseCheque.DataDateRemiseX.Caption:='';

PrintRemiseCheque.DataBanqueTireeX.Lines.Text:='';
PrintRemiseCheque.DataNumChequeX.Lines.Text:='';
PrintRemiseCheque.DataTireurX.Lines.Text:='';
PrintRemiseCheque.DataSommeX.Lines.Text:='';
end;

procedure TFSAvis.BitVersementEspeceClick(Sender: TObject);
var  R,l,TailleMax:integer;RIB,Chiffre,AdresseLogoBanque,NomAgence:string;  OKDomiciliation:boolean;
begin
     if strtoreal(FSAvis.EditMontantChiffre.Text)<>strtoreal(FSAvis.EditMontantUniteFonds.Text)then
     begin
          AfficherMessage('Le Détail monétaire ne correspond pas au montant à verser !');
          Exit;
     end
     else
     begin

     OpenFParc(RParc);
     ChDomiciliation:=RParc.Parcours+'\'+Exercice+'FDomiciliation';
     assignfile(FDomiciliation,ChDomiciliation);
     if FileExists(ChDomiciliation)then
     Reset(FDomiciliation)
     else Rewrite(FDomiciliation);
     Seek(FDomiciliation,0);
     RIB:='';
     OKDomiciliation:=false;
     while not eof(FDomiciliation)do
     begin
          read(FDomiciliation,RDomiciliation);
          if(RDomiciliation.DesignationDomiciliation=FSAvis.EditDomiciliationAvis.Text)then
          begin
               OKDomiciliation:=true;
               RIB:=RDomiciliation.Identificateur;
          end;
     end;
     CloseFile(FDomiciliation);

          ViderOrdreVersementEspece;
          PrintOrdreVersementEspece.DataDemandeTotalVergule.Enabled:=false;

          if ChercherBanqueGlobal(MidelLaters(RIB,1,3),RBanqueGlobalCopie)then
          begin
               PrintOrdreVersementEspece.TitreLibelleBanque.Caption:=RBanqueGlobalCopie.LibelleBanque;
               ProcAffichePhoto(MidelLaters(RIB,1,3),'','LogoBanque',AdresseLogoBanque);
          end;

          NomAgence:='';
          if ChercherAgence(MidelLaters(RIB,1,8),RAgenceCopie)then
          begin
               NomAgence:=RAgenceCopie.LibelleAgence;
          end;

          PrintOrdreVersementEspece.DataNomAgence.Caption:=MidelLaters(RIB,1,8)+' '+NomAgence;
          PrintOrdreVersementEspece.DataIdentificateurTitulaireCompte.Caption:=RParc.Text1;
          PrintOrdreVersementEspece.DataRIBCodeAgence.Caption:=MidelLaters(RIB,4,8);
          PrintOrdreVersementEspece.DataRIBReferenceClient.Caption:=MidelLaters(RIB,9,11);
          PrintOrdreVersementEspece.DataRIBIndicatifClient.Caption:=MidelLaters(RIB,12,18);
          PrintOrdreVersementEspece.DataRIBCle.Caption:=MidelLaters(RIB,19,20);
          PrintOrdreVersementEspece.DataOperationsEffectuePar.Caption:=FSAvis.EditOperationEffectuerPar.Text;
          PrintOrdreVersementEspece.DataDateVersement.Caption:='le '+datetostr(EditDate.Date);

          Chiffre:=FSAvis.EditMontantChiffre.Text;
          Chiffre:=WithoutChar(Chiffre,',');
          Chiffre:=WithoutChar(Chiffre,'.');
          TailleMax:=longueur(WithoutChar(Chiffre,','));
          if(Midellaters(Chiffre,TailleMax-1,TailleMax)='00')then
          begin
               TailleMax:=TailleMax-2;
               l:=1;
               PrintOrdreVersementEspece.DataVersementTotalVergule.Enabled:=false;
          end
          else
          begin
               l:=1;
               PrintOrdreVersementEspece.DataVersementTotalVergule.Enabled:=true;
          end;

          for R:=TailleMax downto l do
          begin
               if(7-TailleMax+R=l)then PrintOrdreVersementEspece.DataVersementTotal1.Caption:=Midellaters(Chiffre,R,R);
               if(7-TailleMax+R=l+1)then PrintOrdreVersementEspece.DataVersementTotal2.Caption:=Midellaters(Chiffre,R,R);
               if(7-TailleMax+R=l+2)then PrintOrdreVersementEspece.DataVersementTotal3.Caption:=Midellaters(Chiffre,R,R);
               if(7-TailleMax+R=l+3)then PrintOrdreVersementEspece.DataVersementTotal4.Caption:=Midellaters(Chiffre,R,R);
               if(7-TailleMax+R=l+4)then PrintOrdreVersementEspece.DataVersementTotal5.Caption:=Midellaters(Chiffre,R,R);
               if(7-TailleMax+R=l+5)then PrintOrdreVersementEspece.DataVersementTotal6.Caption:=Midellaters(Chiffre,R,R);
               if(7-TailleMax+R=l+6)then PrintOrdreVersementEspece.DataVersementTotal7.Caption:=Midellaters(Chiffre,R,R);
          end;

          for R:=1 to FSAvis.TableauUniteFonds.RowCount-1 do
          begin
               if(R=1)then
               begin
                    PrintOrdreVersementEspece.TitreVerseeBillet1.Caption:=FSAvis.TableauUniteFonds.Cells[1,R];
                    if(FSAvis.TableauUniteFonds.Cells[4,R]<>'')then
                    begin
                         Chiffre:=FSAvis.TableauUniteFonds.Cells[4,R];
                         TailleMax:=longueur(Chiffre);
                         for l:=1 to longueur(Chiffre)do
                         begin
                              if(7-TailleMax+l=1)then PrintOrdreVersementEspece.DataVerseeBillet11.Caption:=Midellaters(Chiffre,l,l);
                              if(7-TailleMax+l=2)then PrintOrdreVersementEspece.DataVerseeBillet12.Caption:=Midellaters(Chiffre,l,l);
                              if(7-TailleMax+l=3)then PrintOrdreVersementEspece.DataVerseeBillet13.Caption:=Midellaters(Chiffre,l,l);
                              if(7-TailleMax+l=4)then PrintOrdreVersementEspece.DataVerseeBillet14.Caption:=Midellaters(Chiffre,l,l);
                              if(7-TailleMax+l=5)then PrintOrdreVersementEspece.DataVerseeBillet15.Caption:=Midellaters(Chiffre,l,l);
                              if(7-TailleMax+l=6)then PrintOrdreVersementEspece.DataVerseeBillet16.Caption:=Midellaters(Chiffre,l,l);
                              if(7-TailleMax+l=7)then PrintOrdreVersementEspece.DataVerseeBillet17.Caption:=Midellaters(Chiffre,l,l);
                         end;
                    end;
               end;
               if(R=2)then
               begin
                    PrintOrdreVersementEspece.TitreVerseeBillet2.Caption:=FSAvis.TableauUniteFonds.Cells[1,R];
                    if(FSAvis.TableauUniteFonds.Cells[4,R]<>'')then
                    begin
                         Chiffre:=FSAvis.TableauUniteFonds.Cells[4,R];
                         TailleMax:=longueur(Chiffre);
                         for l:=1 to longueur(Chiffre)do
                         begin
                              if(7-TailleMax+l=1)then PrintOrdreVersementEspece.DataVerseeBillet21.Caption:=Midellaters(Chiffre,l,l);
                              if(7-TailleMax+l=2)then PrintOrdreVersementEspece.DataVerseeBillet22.Caption:=Midellaters(Chiffre,l,l);
                              if(7-TailleMax+l=3)then PrintOrdreVersementEspece.DataVerseeBillet23.Caption:=Midellaters(Chiffre,l,l);
                              if(7-TailleMax+l=4)then PrintOrdreVersementEspece.DataVerseeBillet24.Caption:=Midellaters(Chiffre,l,l);
                              if(7-TailleMax+l=5)then PrintOrdreVersementEspece.DataVerseeBillet25.Caption:=Midellaters(Chiffre,l,l);
                              if(7-TailleMax+l=6)then PrintOrdreVersementEspece.DataVerseeBillet26.Caption:=Midellaters(Chiffre,l,l);
                              if(7-TailleMax+l=7)then PrintOrdreVersementEspece.DataVerseeBillet27.Caption:=Midellaters(Chiffre,l,l);
                         end;
                    end;
               end;
               if(R=3)then
               begin
                    PrintOrdreVersementEspece.TitreVerseeBillet3.Caption:=FSAvis.TableauUniteFonds.Cells[1,R];
                    if(FSAvis.TableauUniteFonds.Cells[4,R]<>'')then
                    begin
                         Chiffre:=FSAvis.TableauUniteFonds.Cells[4,R];
                         TailleMax:=longueur(Chiffre);
                         for l:=1 to longueur(Chiffre)do
                         begin
                              if(7-TailleMax+l=1)then PrintOrdreVersementEspece.DataVerseeBillet31.Caption:=Midellaters(Chiffre,l,l);
                              if(7-TailleMax+l=2)then PrintOrdreVersementEspece.DataVerseeBillet32.Caption:=Midellaters(Chiffre,l,l);
                              if(7-TailleMax+l=3)then PrintOrdreVersementEspece.DataVerseeBillet33.Caption:=Midellaters(Chiffre,l,l);
                              if(7-TailleMax+l=4)then PrintOrdreVersementEspece.DataVerseeBillet34.Caption:=Midellaters(Chiffre,l,l);
                              if(7-TailleMax+l=5)then PrintOrdreVersementEspece.DataVerseeBillet35.Caption:=Midellaters(Chiffre,l,l);
                              if(7-TailleMax+l=6)then PrintOrdreVersementEspece.DataVerseeBillet36.Caption:=Midellaters(Chiffre,l,l);
                              if(7-TailleMax+l=7)then PrintOrdreVersementEspece.DataVerseeBillet37.Caption:=Midellaters(Chiffre,l,l);
                         end;
                    end;
               end;
               if(R=4)then
               begin
                    PrintOrdreVersementEspece.TitreVerseeBillet4.Caption:=FSAvis.TableauUniteFonds.Cells[1,R];
                    if(FSAvis.TableauUniteFonds.Cells[4,R]<>'')then
                    begin
                         Chiffre:=FSAvis.TableauUniteFonds.Cells[4,R];
                         TailleMax:=longueur(Chiffre);
                         for l:=1 to longueur(Chiffre)do
                         begin
                              if(7-TailleMax+l=1)then PrintOrdreVersementEspece.DataVerseeBillet41.Caption:=Midellaters(Chiffre,l,l);
                              if(7-TailleMax+l=2)then PrintOrdreVersementEspece.DataVerseeBillet42.Caption:=Midellaters(Chiffre,l,l);
                              if(7-TailleMax+l=3)then PrintOrdreVersementEspece.DataVerseeBillet43.Caption:=Midellaters(Chiffre,l,l);
                              if(7-TailleMax+l=4)then PrintOrdreVersementEspece.DataVerseeBillet44.Caption:=Midellaters(Chiffre,l,l);
                              if(7-TailleMax+l=5)then PrintOrdreVersementEspece.DataVerseeBillet45.Caption:=Midellaters(Chiffre,l,l);
                              if(7-TailleMax+l=6)then PrintOrdreVersementEspece.DataVerseeBillet46.Caption:=Midellaters(Chiffre,l,l);
                              if(7-TailleMax+l=7)then PrintOrdreVersementEspece.DataVerseeBillet47.Caption:=Midellaters(Chiffre,l,l);
                         end;
                    end;
               end;
               if(R=5)then
               begin
                    PrintOrdreVersementEspece.TitreVerseeBillet5.Caption:=FSAvis.TableauUniteFonds.Cells[1,R];
                    if(FSAvis.TableauUniteFonds.Cells[4,R]<>'')then
                    begin
                         Chiffre:=FSAvis.TableauUniteFonds.Cells[4,R];
                         TailleMax:=longueur(Chiffre);
                         for l:=1 to longueur(Chiffre)do
                         begin
                              if(7-TailleMax+l=1)then PrintOrdreVersementEspece.DataVerseeBillet51.Caption:=Midellaters(Chiffre,l,l);
                              if(7-TailleMax+l=2)then PrintOrdreVersementEspece.DataVerseeBillet52.Caption:=Midellaters(Chiffre,l,l);
                              if(7-TailleMax+l=3)then PrintOrdreVersementEspece.DataVerseeBillet53.Caption:=Midellaters(Chiffre,l,l);
                              if(7-TailleMax+l=4)then PrintOrdreVersementEspece.DataVerseeBillet54.Caption:=Midellaters(Chiffre,l,l);
                              if(7-TailleMax+l=5)then PrintOrdreVersementEspece.DataVerseeBillet55.Caption:=Midellaters(Chiffre,l,l);
                              if(7-TailleMax+l=6)then PrintOrdreVersementEspece.DataVerseeBillet56.Caption:=Midellaters(Chiffre,l,l);
                              if(7-TailleMax+l=7)then PrintOrdreVersementEspece.DataVerseeBillet57.Caption:=Midellaters(Chiffre,l,l);
                         end;
                    end;
               end;
               if(R=6)then
               begin
                    PrintOrdreVersementEspece.TitreVerseeBillet6.Caption:=FSAvis.TableauUniteFonds.Cells[1,R];
                    if(FSAvis.TableauUniteFonds.Cells[4,R]<>'')then
                    begin
                         Chiffre:=FSAvis.TableauUniteFonds.Cells[4,R];
                         TailleMax:=longueur(Chiffre);
                         for l:=1 to longueur(Chiffre)do
                         begin
                              if(7-TailleMax+l=1)then PrintOrdreVersementEspece.DataVerseeBillet61.Caption:=Midellaters(Chiffre,l,l);
                              if(7-TailleMax+l=2)then PrintOrdreVersementEspece.DataVerseeBillet62.Caption:=Midellaters(Chiffre,l,l);
                              if(7-TailleMax+l=3)then PrintOrdreVersementEspece.DataVerseeBillet63.Caption:=Midellaters(Chiffre,l,l);
                              if(7-TailleMax+l=4)then PrintOrdreVersementEspece.DataVerseeBillet64.Caption:=Midellaters(Chiffre,l,l);
                              if(7-TailleMax+l=5)then PrintOrdreVersementEspece.DataVerseeBillet65.Caption:=Midellaters(Chiffre,l,l);
                              if(7-TailleMax+l=6)then PrintOrdreVersementEspece.DataVerseeBillet66.Caption:=Midellaters(Chiffre,l,l);
                              if(7-TailleMax+l=7)then PrintOrdreVersementEspece.DataVerseeBillet67.Caption:=Midellaters(Chiffre,l,l);
                         end;
                    end;
               end;
               if(R=7)then
               begin
                    PrintOrdreVersementEspece.TitreVerseeBillet7.Caption:=FSAvis.TableauUniteFonds.Cells[1,R];
                    if(FSAvis.TableauUniteFonds.Cells[4,R]<>'')then
                    begin
                    Chiffre:=FSAvis.TableauUniteFonds.Cells[4,R];
                    TailleMax:=longueur(Chiffre);
                    for l:=1 to longueur(Chiffre)do
                    begin
                         if(7-TailleMax+l=1)then PrintOrdreVersementEspece.DataVerseeBillet71.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=2)then PrintOrdreVersementEspece.DataVerseeBillet72.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=3)then PrintOrdreVersementEspece.DataVerseeBillet73.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=4)then PrintOrdreVersementEspece.DataVerseeBillet74.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=5)then PrintOrdreVersementEspece.DataVerseeBillet75.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=6)then PrintOrdreVersementEspece.DataVerseeBillet76.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=7)then PrintOrdreVersementEspece.DataVerseeBillet77.Caption:=Midellaters(Chiffre,l,l);
                    end;
                    end;
               end;
               if(R=8)then
               begin
                    PrintOrdreVersementEspece.TitreVerseeBillet8.Caption:=FSAvis.TableauUniteFonds.Cells[1,R];
                    if(FSAvis.TableauUniteFonds.Cells[4,R]<>'')then
                    begin
                    Chiffre:=FSAvis.TableauUniteFonds.Cells[4,R];
                    TailleMax:=longueur(Chiffre);
                    for l:=1 to longueur(Chiffre)do
                    begin
                         if(7-TailleMax+l=1)then PrintOrdreVersementEspece.DataVerseeBillet81.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=2)then PrintOrdreVersementEspece.DataVerseeBillet82.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=3)then PrintOrdreVersementEspece.DataVerseeBillet83.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=4)then PrintOrdreVersementEspece.DataVerseeBillet84.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=5)then PrintOrdreVersementEspece.DataVerseeBillet85.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=6)then PrintOrdreVersementEspece.DataVerseeBillet86.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=7)then PrintOrdreVersementEspece.DataVerseeBillet87.Caption:=Midellaters(Chiffre,l,l);
                    end;
                    end;
               end;
               if(R=9)then
               begin
                    PrintOrdreVersementEspece.TitreVerseeBillet9.Caption:=FSAvis.TableauUniteFonds.Cells[1,R];
                    if(FSAvis.TableauUniteFonds.Cells[4,R]<>'')then
                    begin
                    Chiffre:=FSAvis.TableauUniteFonds.Cells[4,R];
                    TailleMax:=longueur(Chiffre);
                    for l:=1 to longueur(Chiffre)do
                    begin
                         if(7-TailleMax+l=1)then PrintOrdreVersementEspece.DataVerseeBillet91.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=2)then PrintOrdreVersementEspece.DataVerseeBillet92.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=3)then PrintOrdreVersementEspece.DataVerseeBillet93.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=4)then PrintOrdreVersementEspece.DataVerseeBillet94.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=5)then PrintOrdreVersementEspece.DataVerseeBillet95.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=6)then PrintOrdreVersementEspece.DataVerseeBillet96.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=7)then PrintOrdreVersementEspece.DataVerseeBillet97.Caption:=Midellaters(Chiffre,l,l);
                    end;
                    end;
               end;
               
               if(R=10)then
               begin
                    PrintOrdreVersementEspece.TitreVerseePiece1.Caption:=FSAvis.TableauUniteFonds.Cells[1,R];
                    if(FSAvis.TableauUniteFonds.Cells[4,R]<>'')then
                    begin
                    Chiffre:=FSAvis.TableauUniteFonds.Cells[4,R];
                    TailleMax:=longueur(Chiffre);
                    for l:=1 to longueur(Chiffre)do
                    begin
                         if(7-TailleMax+l=1)then PrintOrdreVersementEspece.DataVerseePiece11.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=2)then PrintOrdreVersementEspece.DataVerseePiece12.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=3)then PrintOrdreVersementEspece.DataVerseePiece13.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=4)then PrintOrdreVersementEspece.DataVerseePiece14.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=5)then PrintOrdreVersementEspece.DataVerseePiece15.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=6)then PrintOrdreVersementEspece.DataVerseePiece16.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=7)then PrintOrdreVersementEspece.DataVerseePiece17.Caption:=Midellaters(Chiffre,l,l);
                    end;
                    end;
               end;
               if(R=11)then
               begin
                    PrintOrdreVersementEspece.TitreVerseePiece2.Caption:=FSAvis.TableauUniteFonds.Cells[1,R];
                    if(FSAvis.TableauUniteFonds.Cells[4,R]<>'')then
                    begin
                    Chiffre:=FSAvis.TableauUniteFonds.Cells[4,R];
                    TailleMax:=longueur(Chiffre);
                    for l:=1 to longueur(Chiffre)do
                    begin
                         if(7-TailleMax+l=1)then PrintOrdreVersementEspece.DataVerseePiece21.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=2)then PrintOrdreVersementEspece.DataVerseePiece22.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=3)then PrintOrdreVersementEspece.DataVerseePiece23.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=4)then PrintOrdreVersementEspece.DataVerseePiece24.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=5)then PrintOrdreVersementEspece.DataVerseePiece25.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=6)then PrintOrdreVersementEspece.DataVerseePiece26.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=7)then PrintOrdreVersementEspece.DataVerseePiece27.Caption:=Midellaters(Chiffre,l,l);
                    end;
                    end;
               end;
               if(R=12)then
               begin
                    PrintOrdreVersementEspece.TitreVerseePiece3.Caption:=FSAvis.TableauUniteFonds.Cells[1,R];
                    if(FSAvis.TableauUniteFonds.Cells[4,R]<>'')then
                    begin
                    Chiffre:=FSAvis.TableauUniteFonds.Cells[4,R];
                    TailleMax:=longueur(Chiffre);
                    for l:=1 to longueur(Chiffre)do
                    begin
                         if(7-TailleMax+l=1)then PrintOrdreVersementEspece.DataVerseePiece31.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=2)then PrintOrdreVersementEspece.DataVerseePiece32.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=3)then PrintOrdreVersementEspece.DataVerseePiece33.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=4)then PrintOrdreVersementEspece.DataVerseePiece34.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=5)then PrintOrdreVersementEspece.DataVerseePiece35.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=6)then PrintOrdreVersementEspece.DataVerseePiece36.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=7)then PrintOrdreVersementEspece.DataVerseePiece37.Caption:=Midellaters(Chiffre,l,l);
                    end;
                    end;
               end;
               if(R=13)then
               begin
                    PrintOrdreVersementEspece.TitreVerseePiece4.Caption:=FSAvis.TableauUniteFonds.Cells[1,R];
                    if(FSAvis.TableauUniteFonds.Cells[4,R]<>'')then
                    begin
                    Chiffre:=FSAvis.TableauUniteFonds.Cells[4,R];
                    TailleMax:=longueur(Chiffre);
                    for l:=1 to longueur(Chiffre)do
                    begin
                         if(7-TailleMax+l=1)then PrintOrdreVersementEspece.DataVerseePiece41.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=2)then PrintOrdreVersementEspece.DataVerseePiece42.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=3)then PrintOrdreVersementEspece.DataVerseePiece43.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=4)then PrintOrdreVersementEspece.DataVerseePiece44.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=5)then PrintOrdreVersementEspece.DataVerseePiece45.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=6)then PrintOrdreVersementEspece.DataVerseePiece46.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=7)then PrintOrdreVersementEspece.DataVerseePiece47.Caption:=Midellaters(Chiffre,l,l);
                    end;
                    end;
               end;
               if(R=14)then
               begin
                    PrintOrdreVersementEspece.TitreVerseePiece5.Caption:=FSAvis.TableauUniteFonds.Cells[1,R];
                    if(FSAvis.TableauUniteFonds.Cells[4,R]<>'')then
                    begin
                    Chiffre:=FSAvis.TableauUniteFonds.Cells[4,R];
                    TailleMax:=longueur(Chiffre);
                    for l:=1 to longueur(Chiffre)do
                    begin
                         if(7-TailleMax+l=1)then PrintOrdreVersementEspece.DataVerseePiece51.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=2)then PrintOrdreVersementEspece.DataVerseePiece52.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=3)then PrintOrdreVersementEspece.DataVerseePiece53.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=4)then PrintOrdreVersementEspece.DataVerseePiece54.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=5)then PrintOrdreVersementEspece.DataVerseePiece55.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=6)then PrintOrdreVersementEspece.DataVerseePiece56.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=7)then PrintOrdreVersementEspece.DataVerseePiece57.Caption:=Midellaters(Chiffre,l,l);
                    end;
                    end;
               end;
               if(R=15)then
               begin
                    PrintOrdreVersementEspece.TitreVerseePiece6.Caption:=FSAvis.TableauUniteFonds.Cells[1,R];
                    if(FSAvis.TableauUniteFonds.Cells[4,R]<>'')then
                    begin
                    Chiffre:=FSAvis.TableauUniteFonds.Cells[4,R];
                    TailleMax:=longueur(Chiffre);
                    for l:=1 to longueur(Chiffre)do
                    begin
                         if(7-TailleMax+l=1)then PrintOrdreVersementEspece.DataVerseePiece61.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=2)then PrintOrdreVersementEspece.DataVerseePiece62.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=3)then PrintOrdreVersementEspece.DataVerseePiece63.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=4)then PrintOrdreVersementEspece.DataVerseePiece64.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=5)then PrintOrdreVersementEspece.DataVerseePiece65.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=6)then PrintOrdreVersementEspece.DataVerseePiece66.Caption:=Midellaters(Chiffre,l,l);
                         if(7-TailleMax+l=7)then PrintOrdreVersementEspece.DataVerseePiece67.Caption:=Midellaters(Chiffre,l,l);
                    end;
                    end;
               end;
          end;
          PrintOrdreVersementEspece.Preview;

          FSAvis.AffichePrelevementUniteFonds.Visible:=false;
     end;
end;

Procedure VersementUniteFonds(TableauUniteFonds:TStringGrid);
var  R:integer;   NotCol:string;
begin
     TableauUniteFonds.ColCount:=5;
     TableauUniteFonds.Cols[0].Text:='Code';
     TableauUniteFonds.Cols[1].Text:='Valeur Monitaire';
     TableauUniteFonds.Cols[2].Text:='Libellé';
     TableauUniteFonds.Cols[3].Text:='Devise';
     TableauUniteFonds.Cols[4].Text:='Nombre';
     TableauUniteFonds.RowCount:=2;
     TableauUniteFonds.Rows[1].Text:='';

     OpenFParc(RParc);
     ChUniteFonds:=RParc.Parcours+'\'+Exercice+'FUniteFonds';
     assignfile(FUniteFonds,ChUniteFonds);
     if FileExists(ChUniteFonds)then
     Reset(FUniteFonds)
     else Rewrite(FUniteFonds);
     Seek(FUniteFonds,0);
     R:=0;
     while not eof(FUniteFonds)do
     begin
          read(FUniteFonds,RUniteFonds);
          if(RUniteFonds.ValeurPrecise=true)then
          begin
               R:=R+1;
               TableauUniteFonds.Rows[R].Text:='';
               TableauUniteFonds.Cells[0,R]:=RUniteFonds.CodeUniteFonds;
               TableauUniteFonds.Cells[1,R]:=floattostr(RUniteFonds.ValeurMonetaireUnitaire);
               TableauUniteFonds.Cells[2,R]:=RUniteFonds.DesignationUniteFonds;
               TableauUniteFonds.Cells[3,R]:=RUniteFonds.SigleDevise;
               TableauUniteFonds.Cells[4,R]:='';
          end;
     end;

     if(R>0)then TableauUniteFonds.RowCount:=R+1
            else TableauUniteFonds.RowCount:=2;

NotCol:='1';
TableauUniteFonds.ColWidths[1]:=0;
AjusterColWidth(TableauUniteFonds,'',NotCol);
TrierTableauARowSpecial(TableauUniteFonds,1,TableauUniteFonds.RowCount-1,1,'1','Num','-');
TableauUniteFonds.FixedCols:=1;
end;

procedure TFSAvis.BitBtn7Click(Sender: TObject);
begin
FSAvis.AffichePrelevementUniteFonds.Visible:=false;
end;

procedure TFSAvis.TableauUniteFondsKeyPress(Sender: TObject;
  var Key: Char);
begin
if not(FSAvis.TableauUniteFonds.Col in[4])or not(key in['0'..'9'])then key:=#0;
end;

procedure TFSAvis.TableauUniteFondsKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var  R:integer;  TotalUniteFonds:real;
begin
TotalUniteFonds:=0;
for R:=1 to FSAvis.TableauUniteFonds.RowCount-1 do
begin
     TotalUniteFonds:=TotalUniteFonds+strtoreal(FSAvis.TableauUniteFonds.Cells[1,R])*strtoreal(FSAvis.TableauUniteFonds.Cells[4,R])
end;

FSAvis.EditMontantUniteFonds.Text:=Vergule(floattostr(TotalUniteFonds),'2','C','');

if strtoreal(FSAvis.EditMontantUniteFonds.Text)=strtoreal(FSAvis.EditMontantAVersser.Text)
then FSAvis.EditMontantUniteFonds.Color:=clLime
else FSAvis.EditMontantUniteFonds.Color:=clRed;
end;

procedure TFSAvis.EditNumPlanificateurKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_UP]then
begin
     FSAvis.TableauSelections.Visible:=false;
     FSAvis.EditNumPlanificateur.Text:='';
     FSAvis.EditDesignationPlanificateur.Text:='';
     FSAvis.EditNumRubrique.SetFocus;
end;

if key in[VK_DOWN]then
begin
     FSAvis.BitAfficheFicheTechnique.Kind:=bkRetry;
     FSAvis.BitAfficheFicheTechnique.Caption:='.';
     FSAvis.BitAfficheFicheTechnique.Cancel:=false;
     FSAvis.AfficheProjet.Height:=26;
     FSAvis.TableauSelections.Visible:=false;
     FSAvis.EditNumPlanificateur.Text:='';
     FSAvis.EditDesignationPlanificateur.Text:='';
     FSAvis.BitAfficheFicheTechnique.SetFocus;
end;

end;

procedure TFSAvis.EditDateDocumentBaseDblClick(Sender: TObject);
begin
     FSAvis.ChargerEditDateDocumentBase.Visible:=true;
     if DateCorrecte(FSAvis.EditDateDocumentBase.Text)
     then FSAvis.ChargerEditDateDocumentBase.Date:=strtodate(FSAvis.EditDateDocumentBase.Text)
     else FSAvis.ChargerEditDateDocumentBase.Date:=Date;
end;

procedure TFSAvis.ChargerEditDateDocumentBaseChange(Sender: TObject);
begin
     FSAvis.EditDateDocumentBase.Text:=datetostr(FSAvis.ChargerEditDateDocumentBase.Date);
     FSAvis.ChargerEditDateDocumentBase.Visible:=false;
     FSAvis.EditIntituleOperationBase.SetFocus;
end;

procedure TFSAvis.EditDesignationDocumentBaseEnter(Sender: TObject);
begin
if not ControleNouveauAvis then exit;
end;

procedure TFSAvis.EditNumeroDocumentBaseEnter(Sender: TObject);
begin
if not ControleNouveauAvis then exit;
end;

procedure TFSAvis.ChargerEditDateDocumentBaseEnter(Sender: TObject);
begin
if not ControleNouveauAvis then exit;
end;

procedure TFSAvis.EditIntituleOperationBaseEnter(Sender: TObject);
begin
if not ControleNouveauAvis then exit;
end;

procedure TFSAvis.EditDesignationDocumentBaseKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSAvis.EditNumeroDocumentBase.SetFocus;
     end;
end;

procedure TFSAvis.EditNumeroDocumentBaseKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSAvis.EditDateDocumentBase.SetFocus;
     end;
end;

procedure TFSAvis.EditDateDocumentBaseKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSAvis.EditIntituleOperationBase.SetFocus;
     end;
end;

procedure TFSAvis.EditIntituleOperationBaseKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSAvis.BitValiderAvis.SetFocus;
     end;
end;

procedure TFSAvis.FormShow(Sender: TObject);
var NumTypeAvis:integer; DesignationTypeAvis,CompteImputation,DebitCredit,TypeProces,TypeProcesReseaux,FichierConserne,Adresse:string;
begin
ActiverNomForm(1,(Sender as TComponent).Name); 

FSAvis.EditFaitA.Text:=DataLocalisationGeographiqueEntreprise;

TypeProces:='Business';
FichierConserne:='FTypeAvis';
if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
end;
ChTypeAvis:=Adresse;
assignfile(FTypeAvis,ChTypeAvis);
FSAvis.EditTypeAvis.Items.Text:='';
if FileExists(ChTypeAvis)then
begin
     Reset(FTypeAvis);
     Seek(FTypeAvis,0);
     while not eof(FTypeAvis)do
     begin
          read(FTypeAvis,RTypeAvis);
          FSAvis.EditTypeAvis.Items.Add(RTypeAvis.DesignationTypeAvis);
     end;
     CloseFile(FTypeAvis);
end;

FSAvis.EditTypeAvis.ItemIndex:=-1;

FSAvis.AfficheOperationAvis.Visible:=false;
DesignationTypeAvis:=FSAvis.EditTypeAvis.Text;


TypeProces:='Business';
FichierConserne:='FDomiciliation';
if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
end;
ChDomiciliation:=Adresse;
assignfile(FDomiciliation,ChDomiciliation);
FSAvis.EditDomiciliationAvis.Items.Text:='';
FSAvis.EditDomiciliationPiece.Items.Text:='Autres';
if FileExists(ChDomiciliation)then
begin
     Reset(FDomiciliation);
     Seek(FDomiciliation,0);
     while not eof(FDomiciliation)do
     begin
          read(FDomiciliation,RDomiciliation);
          FSAvis.EditDomiciliationAvis.Items.Add(RDomiciliation.DesignationDomiciliation);
          FSAvis.EditDomiciliationPiece.Items.Add(RDomiciliation.DesignationDomiciliation);
     end;
     CloseFile(FDomiciliation);
end;

FSAvis.EditDomiciliationAvis.ItemIndex:=-1;
FSAvis.EditDomiciliationPiece.ItemIndex:=-1;

FSAvis.EditNumAvis.Text:='';

end;

procedure TFSAvis.EditModePaiementCPSelect(Sender: TObject);
var  OKDomiciliation:boolean;   Index:integer;
begin
if(FSAvis.EditNumAvis.Text='')or(FSAvis.EditNumAvis.Text='Aucun')then exit;

if(FSAvis.EditModePaiementCP.Text='Espèce')then
begin
     FSAvis.EditNumPieceCP.Text:=FSAvis.EditNumAvisCP.Text;

     OpenFParc(RParc);
     ChDomiciliation:=RParc.Parcours+'\'+Exercice+'FDomiciliation';
     assignfile(FDomiciliation,ChDomiciliation);
     if FileExists(ChDomiciliation)then
     Reset(FDomiciliation)
     else Rewrite(FDomiciliation);
     Seek(FDomiciliation,0);
     OKDomiciliation:=false;
     while not eof(FDomiciliation)and(OKDomiciliation=false)do
     begin
          read(FDomiciliation,RDomiciliation);
          if(RDomiciliation.DesignationDomiciliation<>FSAvis.EditDomiciliationAvis.Text)
          and(AnsiUpperCase(firstlaters(RDomiciliation.DesignationDomiciliation,6))=AnsiUpperCase('CAISSE'))
          then
          begin
               OKDomiciliation:=true;
               FSAvis.EditDomiciliationAvisCP.Text:=RDomiciliation.DesignationDomiciliation;
          end;
     end;
     Closefile(FDomiciliation);
end
else
begin
     OpenFParc(RParc);
     ChDomiciliation:=RParc.Parcours+'\'+Exercice+'FDomiciliation';
     assignfile(FDomiciliation,ChDomiciliation);
     if FileExists(ChDomiciliation)then
     Reset(FDomiciliation)
     else Rewrite(FDomiciliation);
     Seek(FDomiciliation,0);
     OKDomiciliation:=false;
     while not eof(FDomiciliation)and(OKDomiciliation=false)do
     begin
          read(FDomiciliation,RDomiciliation);
          if(RDomiciliation.DesignationDomiciliation<>FSAvis.EditDomiciliationAvis.Text)
          and(AnsiUpperCase(firstlaters(RDomiciliation.DesignationDomiciliation,6))<>AnsiUpperCase('CAISSE'))
          then
          begin
               OKDomiciliation:=true;
               FSAvis.EditDomiciliationAvisCP.Text:=RDomiciliation.DesignationDomiciliation;
          end;
     end;
     Closefile(FDomiciliation);
end;

FSAvis.EditNumCompteDomiciliationCP.Text:=ChercherDomiciliation('',FSAvis.EditDomiciliationAvisCP.Text,PositionDomiciliationRecherche).NumDomiciliation;
if ChercherCompteComptable(Firstlaters(FSAvis.EditNumCompteDomiciliationCP.Text,6),'','PlanComptable',RRegistreCompte)
then FSAvis.EditCompteDomiciliationCP.Text:=RRegistreCompte.Designation
else FSAvis.EditCompteDomiciliationCP.Text:=FSAvis.EditDomiciliationAvisCP.Text;
end;

procedure TFSAvis.EditModePaiementCPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSAvis.EditDomiciliationAvisCP.SetFocus;
end;

end;

procedure TFSAvis.EditDomiciliationAvisCPKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSAvis.EditNumPieceCP.SetFocus;
end;

end;

procedure TFSAvis.EditNumPieceCPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSAvis.EditMontantChiffre.SetFocus;
end;

end;

procedure TFSAvis.EditDomiciliationAvisCPChange(Sender: TObject);
var    i,RowSerie,RSerie:integer; NumPiece:integer;  OKSerieCharger:boolean;   TypeProces,FichierConcerne,Adresse:string;
begin
FSAvis.EditNumCompteDomiciliationCP.Text:=ChercherDomiciliation('',FSAvis.EditDomiciliationAvisCP.Text,PositionDomiciliationRecherche).NumDomiciliation;
if ChercherCompteComptable(Firstlaters(FSAvis.EditNumCompteDomiciliationCP.Text,6),'','PlanComptable',RRegistreCompte)
then FSAvis.EditCompteDomiciliationCP.Text:=RRegistreCompte.Designation
else FSAvis.EditCompteDomiciliationCP.Text:=FSAvis.EditDomiciliationAvisCP.Text;

if(FSAvis.EditNumAvisCP.Text<>'')then
begin
     if(FSAvis.EditDomiciliationAvisCP.Text<>'')then
     begin
          FSAvis.TableauSeriePieceAvis.RowCount:=2;
          FSAvis.TableauSeriePieceAvis.Cols[0].Text:='Séries Pièce';
          FSAvis.TableauSeriePieceAvis.Cols[1].Text:='Sélection';
          FSAvis.TableauSeriePieceAvis.Rows[1].Text:='';

          RowSerie:=0;

          TypeProces:='Business';   FichierConcerne:=FSAvis.EditBaseAvis.Text;
          if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
               AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
          end;

          ChAvis:=Adresse;
          assignfile(FAvis,ChAvis);
          if FileExists(ChAvis)then
          Reset(FAvis)
          else Rewrite(FAvis);
          Seek(FAvis,0);
          NumPiece:=0;
          while not eof(FAvis)do
          begin
               read(FAvis,RAvis);
               if(RAvis.DomiciliationAvis=FSAvis.EditDomiciliationAvisCP.Text)
               and(RAvis.ModePaiement=FSAvis.EditModePaiementCP.Text)
               and(RAvis.NumPiece<>'')
               then
               begin
                    OKSerieCharger:=false;
                    RSerie:=1;
                    while(RSerie<=FSAvis.TableauSeriePieceAvis.RowCount-1)and(OKSerieCharger=false)do
                    begin
                         if(FSAvis.TableauSeriePieceAvis.Cells[0,RSerie]=firstlaters(RAvis.NumPiece,strtointeger(FSAvis.EditLongueureSeriePiece.Text)))
                         then OKSerieCharger:=true;
                    RSerie:=RSerie+1;
                    end;

                    if(OKSerieCharger=false)then
                    begin
                         RowSerie:=RowSerie+1;
                         FSAvis.TableauSeriePieceAvis.RowCount:=RowSerie+1;
                         FSAvis.TableauSeriePieceAvis.Cells[0,RowSerie]:=firstlaters(RAvis.NumPiece,strtointeger(FSAvis.EditLongueureSeriePiece.Text));
                         FSAvis.TableauSeriePieceAvis.Cells[1,RowSerie]:='';
                    end;
               end;
          end;
          CloseFile(FAvis);

          if(RowSerie>0)then
          begin
               FSAvis.AfficheSeriePieceAvis.Height:=401;
               FSAvis.TableauSeriePieceAvis.SetFocus;
               FSAvis.TableauSeriePieceAvis.Cells[0,0]:='CP';
          end
          else
          begin
               FSAvis.AfficheSeriePieceAvis.Height:=0;
          end;
     end
     else
     begin
          showmessage('Veuillez indiquer la Domiciliation SVP !');
          FSAvis.EditDomiciliationAvisCP.SetFocus;
     end;
end;
end;


Procedure AfficerDataContrePartieAvis(DesignationTypeAvis,FichierConserneAvis:string);
var  i,l,PositionTypeAvis,NumTypeAvis,ChercheSigneDebitCredit:integer; OKAvis:boolean; CompteImputation,DebitCredit,TypeProcesAvis,AdresseAvis,TypeProces,FichierConserne,FichierConserneSelect,Adresse,JourneauxAuxiliaireUtilise,NumAvis,NumAvisCP,PositionAvis,PositionAvisCP:string;
     RAvisTrouver:RAviss;
begin
     if(IndiqueTypeAvis(DesignationTypeAvis,PositionTypeAvis,NumTypeAvis,ChercheSigneDebitCredit,CompteImputation,DebitCredit,TypeProces,FichierConserne,JourneauxAuxiliaireUtilise))then
     begin
          FSAvis.EditPositionTypeAvis.Text:=inttostr(PositionTypeAvis);
          FSAvis.EditTypeAvis.Text:=DesignationTypeAvis;
          FSAvis.EditCompteImputation.Text:=CompteImputation;
          FSAvis.EditDebitCreditDomiciliation.Text:=DebitCredit;
          FSAvis.EditChargementTypeProces.Text:=TypeProces;
          FichierConserneSelect:=FichierCencerneTiersSelect(FichierConserne,FichierConserneAvis);
          ListeTypeFichierTiersInclu(FichierConserne,FichierConserneSelect,FSAvis.EditChargementFichierConcerne,FSAvis.TitreEditChargementFichierConcerne);
          FSAvis.EditCompteImputation.Text:=CompteImputation;

          TypeProcesAvis:='Business';
          if not(FunctionAdresseProces(TypeProcesAvis,FichierConserneAvis,'',AdresseAvis,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
               AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserneAvis+' recherché !');
          end;

          ChAvis:=AdresseAvis;
          assignfile(FAvis,ChAvis);
          if FileExists(ChAvis)then
          Reset(FAvis)
          else Rewrite(FAvis);
          Seek(FAvis,0);
          OKAvis:=false;
          NumAvisCP:='';
          i:=0;
          while not eof(FAvis)and(OKAvis=false)do
          begin
               read(FAvis,RAvis);
               if(RAvis.NumAvis=strtointeger(FSAvis.EditNumAvis.Text))then
               begin
                    OKAvis:=true;
                    FSAvis.EditChargementCodeFichierConcerne.Text:=RAvis.CodeTiers;
                    PositionAvis:=inttostr(i);
                    FSAvis.EditPositionAvis.Text:=PositionAvis;

                    if(RAvis.Origine<>'')and(Firstlaters(RAvis.Origine,4)='Auto')then
                    begin
                         PositionAvisCP:=Lastlaters(RAvis.Origine,Longueur(RAvis.Origine)-5);

                         if(ChercherAvisUnique('',PositionAvisCP,RAvisTrouver,PositionAvisRecherche)=true)then
                         begin
                              //NumAvisCP:=Completezerogauche(Lastlaters(RAvis.Origine,Longueur(RAvis.Origine)-5),'5');
                              NumAvisCP:=Completezerogauche(inttostr(RAvisTrouver.NumAvis),'5');
                         end
                         else
                         begin
                              NumAvisCP:='';
                         end;
                    end;
               end;
          i:=i+1;
          end;
          Closefile(FAvis);

          if(OKAvis=false)then
          begin
               PositionAvis:=inttostr(i);
               FSAvis.EditPositionAvis.Text:=PositionAvis;
          end;

          if ChercherCompteComptable(Firstlaters(FSAvis.EditChargementCodeFichierConcerne.Text,6),'','PlanComptable',RRegistreCompte)
          then FSAvis.EditCompteTiers.Text:=RRegistreCompte.Designation
          else FSAvis.EditCompteTiers.Text:=FSAvis.EditChargementFichierConcerne.Text;
          FSAvis.EditBenificiaire.Text:=ImporteDataProcesTiers(FSAvis.EditChargementTypeProces.Text,FSAvis.EditChargementFichierConcerne.Text,FSAvis.EditChargementCodeFichierConcerne.Text,PositionTiersRecherche);
          FSAvis.TitreIdentiteFichierConcerne.Caption:=Lastlaters(FichierConserne,Longueur(FichierConserne)-1);

          if(DebitCredit='Crédit')then FSAvis.TitreNatureAvisFinance.Caption:='Nature de la dépense:';
          if(DebitCredit='Débit')then FSAvis.TitreNatureAvisFinance.Caption:='Nature de la rente:';
          if(DebitCredit='DébitCrédit')then
          begin
               FSAvis.TitreNatureAvisFinance.Caption:='Nature de la rente:';
               FSAvis.EditDebitCreditDomiciliation.Text:='Crédit';
               FSAvis.AfficheModePaiementCP.Visible:=true;
               FSAvis.EditDebitCreditCP.Text:='Débit';

               if(NumAvisCP<>'')then
               begin
                    TypeProcesAvis:='Business';
                    if not(FunctionAdresseProces(TypeProcesAvis,FichierConserneAvis,'',AdresseAvis,TypeProcesReseaux,NomDossierPartageReseauxOut))then
                    begin
                         AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserneAvis+' recherché !');
                    end;

                    ChAvis:=AdresseAvis;
                    assignfile(FAvis,ChAvis);
                    if FileExists(ChAvis)then
                    Reset(FAvis)
                    else Rewrite(FAvis);
                    Seek(FAvis,0);
                    OKAvis:=false;
                    while not eof(FAvis)and(OKAvis=false)do
                    begin
                         read(FAvis,RAvis);
                         if(RAvis.NumAvis=strtointeger(NumAvisCP))then
                         begin
                              OKAvis:=true;
                              if(RAvis.Origine<>'')and(Firstlaters(RAvis.Origine,4)='Auto')then
                              begin
                                   PositionAvis:=Lastlaters(RAvis.Origine,Longueur(RAvis.Origine)-5);

                                   if(ChercherAvisUnique('',PositionAvis,RAvisTrouver,PositionAvisRecherche)=true)then
                                   begin
                                        //NumAvisCP:=Completezerogauche(Lastlaters(RAvis.Origine,Longueur(RAvis.Origine)-5),'5');
                                        NumAvis:=Completezerogauche(inttostr(RAvisTrouver.NumAvis),'5');
                                   end
                                   else
                                   begin
                                        NumAvisCP:='';
                                   end;
                              end;
                         end;
                    end;
                    Closefile(FAvis);

                    if(OKAvis=true)then
                    begin
                         if strtointeger(NumAvis)<>strtointeger(FSAvis.EditNumAvis.Text)then
                         begin
                              Showmessage('Attention ! Confusion entre l''avis N° : '+FSAvis.EditNumAvis.Text+' et son contre partie Avis N° : '+NumAvisCP);
                              Exit;
                         end
                         else
                         begin
                              FSAvis.EditNumAvisCP.Text:=NumAvisCP;
                              FSAvis.EditModePaiementCP.Text:=RAvis.ModePaiement;
                              FSAvis.EditNumPieceCP.Text:=RAvis.NumPiece;
                              FSAvis.EditNumCompteDomiciliationCP.Text:=RAvis.NumDomiciliationAvis;
                              if ChercherCompteComptable(Firstlaters(RAvis.NumDomiciliationAvis,6),'','PlanComptable',RRegistreCompte)
                              then FSAvis.EditCompteDomiciliationCP.Text:=RRegistreCompte.Designation
                              else FSAvis.EditCompteDomiciliationCP.Text:=RAvis.DomiciliationAvis;
                              FSAvis.EditDomiciliationAvisCP.Text:=RAvis.DomiciliationAvis;
                              FSAvis.EditDebitCreditCP.Text:=RAvis.DebitCredit;
                              FSAvis.EditOrigine.Text:=RAvis.Origine;
                         end;
                    end;
               end
               else OKAvis:=false;

               if(OKAvis=false)then
               begin
                    TypeProcesAvis:='Business';
                    if not(FunctionAdresseProces(TypeProcesAvis,FichierConserneAvis,'',AdresseAvis,TypeProcesReseaux,NomDossierPartageReseauxOut))then
                    begin
                         AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserneAvis+' recherché !');
                    end;

                    ChAvis:=AdresseAvis;
                    assignfile(FAvis,ChAvis);
                    if FileExists(ChAvis)then
                    Reset(FAvis)
                    else Rewrite(FAvis);
                    Seek(FAvis,0);
                    i:=strtointeger(FSAvis.EditNumAvis.Text)+1;
                    l:=0;
                    while not eof(FAvis)do
                    begin
                         read(FAvis,RAvis);
                         if(i<=RAvis.NumAvis)then i:=RAvis.NumAvis+1;
                    l:=l+1;
                    end;
                    Closefile(FAvis);

                    PositionAvis:=inttostr(l);
                    FSAvis.EditPositionAvis.Text:=PositionAvis;

                    NumAvisCP:=Completezerogauche(inttostr(i),'5');
                    FSAvis.EditNumAvisCP.Text:=NumAvisCP;
                    PositionAvisCP:=inttostr(l+1);
                    FSAvis.EditOrigine.Text:='Auto '+PositionAvisCP;
               end;
          end
          else
          begin
               FSAvis.AfficheModePaiementCP.Visible:=false;
               FSAvis.EditNumAvisCP.Text:='';
               FSAvis.EditModePaiementCP.Text:='';
               FSAvis.EditNumPieceCP.Text:='';
               FSAvis.EditNumCompteDomiciliationCP.Text:='';
               FSAvis.EditCompteDomiciliationCP.Text:='';
               FSAvis.EditDomiciliationAvisCP.Text:='';
               FSAvis.EditDebitCreditCP.Text:='';
               if(Firstlaters(FSAvis.EditOrigine.Text,3)<>'FSC')then FSAvis.EditOrigine.Text:='';
          end;
     end;
end;

procedure TFSAvis.EditTypeAvisKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     if(FSAvis.EditTypeAvis.Text<>'')then
     begin
          if(FSAvis.EditNumProjet.Text='')
          then FSAvis.EditNumProjet.SetFocus
          else FSAvis.EditModePaiement.SetFocus;
     end
     else
     begin
          FSAvis.EditTypeAvis.SetFocus;
          showmessage('Veuillez indiquer le type d''avis SVP !');
     end;
end;

end;

procedure TFSAvis.FormResize(Sender: TObject);
begin
SeizeFSAvis;
end;

Procedure SeizeFSAvis;
begin
FSAvis.PagePrincipale.Height:=FSAvis.Height-strtointeger(FSAvis.EditValeurSeizeHeight.Text);
FSAvis.PagePrincipale.Width:=FSAvis.Width-strtointeger(FSAvis.EditValeurSeizeWidth.Text);

FSAvis.AfficheValiditeAvis.Width:=FSAvis.PagePrincipale.Width-FSAvis.AfficheValiditeAvis.Left-10;
FSAvis.TitreAfficheValiditeAvis.Width:=FSAvis.AfficheValiditeAvis.Width-15;

//FSAvis.AfficheDate.Width:=FSAvis.PagePrincipale.Width-FSAvis.AfficheDate.Left-10;
//FSAvis.EditDate.Width:=FSAvis.AfficheDate.Width-15;
FSAvis.AfficheDatePlus.Width:=FSAvis.Width-FSAvis.AfficheDatePlus.Left-34;

FSAvis.CadreBitNouveau.Width:=FSAvis.PagePrincipale.Width-FSAvis.CadreBitNouveau.Left-10;
FSAvis.BitNouveau.Width:=FSAvis.CadreBitNouveau.Width-15;

FSAvis.CadreBitValiderAvis.Width:=FSAvis.PagePrincipale.Width-FSAvis.CadreBitValiderAvis.Left-10;
FSAvis.BitValiderAvis.Width:=FSAvis.CadreBitValiderAvis.Width-15;

FSAvis.CadreBitImprimeAvis.Width:=FSAvis.PagePrincipale.Width-FSAvis.CadreBitImprimeAvis.Left-10;
FSAvis.BitImprimeAvis.Width:=FSAvis.CadreBitImprimeAvis.Width-15;

FSAvis.CadreBitSupprimerAvis.Width:=FSAvis.PagePrincipale.Width-FSAvis.CadreBitSupprimerAvis.Left-10;
FSAvis.BitSupprimerAvis.Width:=FSAvis.CadreBitSupprimerAvis.Width-15;

FSAvis.CadreEditDateExecutionAvis.Width:=FSAvis.PagePrincipale.Width-FSAvis.CadreEditDateExecutionAvis.Left-10;
FSAvis.EditDateExecutionAvis.Width:=FSAvis.CadreEditDateExecutionAvis.Width-69;

FSAvis.CadreEditLongueureSeriePiece.Width:=FSAvis.PagePrincipale.Width-FSAvis.CadreEditLongueureSeriePiece.Left-10;

FSAvis.CadreBitComptabiliser.Width:=FSAvis.PagePrincipale.Width-FSAvis.CadreBitComptabiliser.Left-10;
FSAvis.BitComptabiliser.Width:=FSAvis.CadreBitComptabiliser.Width-15;

FSAvis.CadreBitAnnuler.Width:=FSAvis.PagePrincipale.Width-FSAvis.CadreBitAnnuler.Left-10;
FSAvis.BitAnnuler.Width:=FSAvis.CadreBitAnnuler.Width-15;

FSAvis.EditSignataire.Width:=FSAvis.PagePrincipale.Width-FSAvis.EditSignataire.Left-10;
end;

procedure TFSAvis.EditModePaiementExit(Sender: TObject);
begin
     if(FSAvis.EditModePaiement.Text='')and(Firstlaters(AnsiUpperCase(FSAvis.EditNatureDepences.Text),10)<>AnsiUpperCase('INVENTAIRE'))
     then FSAvis.EditModePaiement.SetFocus
     else
     begin
          if(FSAvis.EditDomiciliationAvis.Text='')then FSAvis.EditDomiciliationAvis.SetFocus;
     end;
end;

procedure TFSAvis.EditDomiciliationAvisExit(Sender: TObject);
begin
     if(FSAvis.EditDomiciliationAvis.Text='')
     then FSAvis.EditDomiciliationAvis.SetFocus
     else
     begin
          if(FSAvis.AfficheSeriePieceAvis.Height=0)then
          begin
               if(FSAvis.EditNumPiece.Text='')then FSAvis.EditNumPiece.SetFocus;
          end;

          OpenFParc(RParc);
          ChDomiciliation:=RParc.Parcours+'\'+Exercice+'FDomiciliation';
          assignfile(FDomiciliation,ChDomiciliation);
          if FileExists(ChDomiciliation)then
          Reset(FDomiciliation)
          else Rewrite(FDomiciliation);
          Seek(FDomiciliation,0);
          FSAvis.EditDomiciliationAvisCP.Items.Text:='';
          while not eof(FDomiciliation)do
          begin
               read(FDomiciliation,RDomiciliation);
               if(RDomiciliation.DesignationDomiciliation<>FSAvis.EditDomiciliationAvis.Text)then
               begin
                    FSAvis.EditDomiciliationAvisCP.Items.Add(RDomiciliation.DesignationDomiciliation);;
               end;
          end;
          CloseFile(FDomiciliation);

          FSAvis.EditDomiciliationAvisCP.ItemIndex:=0;
     end;
end;

procedure TFSAvis.EditModePaiementCPExit(Sender: TObject);
begin
     if(FSAvis.EditModePaiementCP.Text='')then FSAvis.EditModePaiementCP.SetFocus;
end;

procedure TFSAvis.EditDomiciliationAvisCPExit(Sender: TObject);
begin
     if(FSAvis.EditDomiciliationAvisCP.Text='')then FSAvis.EditDomiciliationAvisCP.SetFocus;
end;

procedure TFSAvis.EditNumPieceExit(Sender: TObject);
var   OKAvis:boolean;   TypeProcesAvis,FichierConcerneAvis,AdresseAvis,TypeProcesBaseAvis,FichierConserneBaseAvis,AdresseBaseAvis:string;
begin

     if(FSAvis.EditNumPiece.Text<>'')then
     begin
          TypeProcesBaseAvis:='Business';   FichierConserneBaseAvis:='FBaseAvis';
          if not(FunctionAdresseProces(TypeProcesBaseAvis,FichierConserneBaseAvis,'',AdresseBaseAvis,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
               AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserneBaseAvis+' recherché !');
          end;

          ChBaseAvis:=AdresseBaseAvis;
          assignfile(FBaseAvis,ChBaseAvis);
          if FileExists(ChBaseAvis)then
          Reset(FBaseAvis)
          else Rewrite(FBaseAvis);
          Seek(FBaseAvis,0);
          OKAvis:=false;
          while not eof(FBaseAvis)and(OKAvis=false)do
          begin
               read(FBaseAvis,RBaseAvis);

               TypeProcesAvis:='Business';   FichierConcerneAvis:=RBaseAvis.DesignationBaseAvis;
               if not(FunctionAdresseProces(TypeProcesAvis,FichierConcerneAvis,'',AdresseAvis,TypeProcesReseaux,NomDossierPartageReseauxOut))then
               begin
                    AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerneAvis+' recherché !');
               end;

               ChAvis:=AdresseAvis;
               assignfile(FAvis,ChAvis);
               if FileExists(ChAvis)then
               Reset(FAvis)
               else Rewrite(FAvis);
               Seek(FAvis,0);
               while not eof(FAvis)and(OKAvis=false)do
               begin
                    read(FAvis,RAvis);
                    if (RAvis.NumAvis<>strtointeger(FSAvis.EditNumAvis.Text))
                    and(RAvis.DomiciliationAvis=FSAvis.EditDomiciliationAvis.Text)
                    and((RAvis.ModePaiement='Chèque')or(RAvis.ModePaiement='Virement'))
                    and(RAvis.NumPiece=FSAvis.EditNumPiece.Text)then
                    begin
                         OKAvis:=true;
                    end;
               end;
               CloseFile(FAvis);
          end;
          CloseFile(FBaseAvis);

          if(OKAvis=true)then
          begin
               if nonoui('Le numéro de la pièce est déjas enregistré ('+Lastlaters(FichierConcerneAvis,longueur(FichierConcerneAvis)-1)+' N°: '+CompleteZeroGauche(inttostr(RAvis.NumAvis),'5')+'), Voulez vous vérifier vos données SVP !')=true then
               begin
                    FSAvis.EditBaseAvis.Text:=FichierConcerneAvis;
                    AfficheAvis(inttostr(RAvis.NumAvis),FSAvis.EditBaseAvis.Text);
               end;
               //showmessage('Le numéro de la pièce est déjas enregistré (Avis N°: '+CompleteZeroGauche(inttostr(RAvis.NumAvis),'5')+'), vérifier vos données SVP !');
               FSAvis.EditNumPiece.SetFocus;
               Exit;
          end;

          if(FSAvis.AfficheModePaiementCP.Visible=true)then
          begin
               if(FSAvis.EditModePaiementCP.Text='')then FSAvis.EditModePaiementCP.SetFocus
          end
          else
          begin
               if(FSAvis.EditMontantChiffre.Text='')then FSAvis.EditMontantChiffre.SetFocus;
          end;
     end;      
end;

procedure TFSAvis.EditTypeAvisExit(Sender: TObject);
var  OKAvis:boolean;   TypeProces,FichierConcerne,Adresse,TypeProcesReseaux:string;
begin
     TypeProces:='Business';   FichierConcerne:=FSAvis.EditBaseAvis.Text;
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
     end;

     ChAvis:=Adresse;
     assignfile(FAvis,ChAvis);
     if FileExists(ChAvis)then
     Reset(FAvis)
     else Rewrite(FAvis);
     Seek(FAvis,0);
     OKAvis:=false;
     while not eof(FAvis)and(OKAvis=false)do
     begin
          read(FAvis,RAvis);
          if(RAvis.NumAvis=strtointeger(FSAvis.EditNumAvis.Text))then
          begin
               OKAvis:=true;
          end;
     end;
     Closefile(FAvis);

     if(FSAvis.EditTypeAvis.Text='')then
     begin
          if(Firstlaters(AnsiUpperCase(FSAvis.EditNatureDepences.Text),10)=AnsiUpperCase('INVENTAIRE'))
          or(OKAvis=true)
          then
          begin
               if(FSAvis.EditNumProjet.Text='')
               then FSAvis.EditNumProjet.SetFocus
               else FSAvis.EditModePaiement.SetFocus;
          end
          else FSAvis.EditTypeAvis.SetFocus;
     end
     else
     begin
          if(FSAvis.EditNumProjet.Text='')
          then FSAvis.EditNumProjet.SetFocus
          else FSAvis.EditModePaiement.SetFocus;
     end;
end;

procedure TFSAvis.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
SeizeFSAvis;
end;

procedure TFSAvis.UpDown3Click(Sender: TObject; Button: TUDBtnType);
begin
SeizeFSAvis;
end;

procedure TFSAvis.EditDateExit(Sender: TObject);
var  DesignationTypeAvis:string;
begin

if(FSAvis.EditTypeAvis.Text<>'')then
begin
     DesignationTypeAvis:=FSAvis.EditTypeAvis.Text;
     AfficerDataContrePartieAvis(DesignationTypeAvis,FSAvis.EditBaseAvis.Text);
     FSAvis.EditNumProjet.SetFocus;
end
else
begin
     FSAvis.EditTypeAvis.ItemIndex:=-1;
     FSAvis.EditTypeAvis.SetFocus;
end;

end;

procedure TFSAvis.EditDateChange(Sender: TObject);
var  DesignationTypeAvis:string;
begin
if(FSAvis.EditTypeAvis.Text<>'')then
begin
     DesignationTypeAvis:=FSAvis.EditTypeAvis.Text;
     AfficerDataContrePartieAvis(DesignationTypeAvis,FSAvis.EditBaseAvis.Text);
     FSAvis.EditNumProjet.SetFocus;
end
else
begin
     FSAvis.EditTypeAvis.ItemIndex:=-1;
     FSAvis.EditTypeAvis.SetFocus;
end;

if(FSAvis.RBActiveSoldeDomiciliation.Checked=true)then ControleSoldeDomiciliation(FSAvis.EditTypeAvis.Text,'',FSAvis.EditDomiciliationAvis.Text,datetostr(FSAvis.EditDate.Date),FSAvis.EditMontantChiffre.Text);
end;

procedure TFSAvis.EditOrigineKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if(key in[VK_DELETE])then
     begin
         FSAvis.EditOrigine.Text:='';
         FSAvis.AfficheModePaiementCP.Visible:=false;
         FSAvis.EditNumAvisCP.Text:='';
         FSAvis.EditModePaiementCP.Text:='';
         FSAvis.EditNumPieceCP.Text:='';
         FSAvis.EditNumCompteDomiciliationCP.Text:='';
         FSAvis.EditCompteDomiciliationCP.Text:='';
         FSAvis.EditDomiciliationAvisCP.Text:='';
         FSAvis.EditDebitCreditCP.Text:='';
         FSAvis.BitValiderAvis.SetFocus;
     end;
end;

procedure TFSAvis.BitComptabiliserClick(Sender: TObject);
var R:integer;
begin
     EnteteTableauDataImputation(FSComptabiliteTransitoire.TableauDataImputation,2);

     FSComptabiliteTransitoire.Show;
     ChargementTableauDataImputation(FSComptabiliteTransitoire.TableauDataImputation,1,
                                     FSAvis.EditTypeAvis.Text,
                                     '',
                                     '',
                                     '',
                                     FSAvis.EditDebitCreditDomiciliation.Text,
                                     FSAvis.EditNumDomiciliationAvis.Text,
                                     FSAvis.EditNumCompteDomiciliation.Text,
                                     FSAvis.EditMontantChiffre.Text,
                                     FSAvis.EditModePaiement.Text,
                                     FSAvis.EditNumPiece.Text,
                                     datetostr(FSAvis.EditDate.Date),
                                     FSAvis.EditDesignationDocumentBase.Text,
                                     FSAvis.EditNumeroDocumentBase.Text,
                                     FSAvis.EditDateDocumentBase.Text,
                                     FSAvis.EditNatureDepences.Text);

     ChargementTableauDataImputation(FSComptabiliteTransitoire.TableauDataImputation,2,
                                     FSAvis.EditTypeAvis.Text,
                                     FSAvis.EditChargementTypeProces.Text,
                                     FSAvis.EditChargementFichierConcerne.Text,
                                     FSAvis.EditChargementCodeFichierConcerne.Text,
                                     FSAvis.EditDebitCreditTiers.Text,
                                     FSAvis.EditBenificiaire.Text,
                                     Firstlaters(FSAvis.EditChargementCodeFichierConcerne.Text,6),
                                     FSAvis.EditMontantChiffre.Text,
                                     FSAvis.EditModePaiement.Text,
                                     FSAvis.EditNumPiece.Text,
                                     datetostr(FSAvis.EditDate.Date),
                                     FSAvis.EditDesignationDocumentBase.Text,
                                     FSAvis.EditNumeroDocumentBase.Text,
                                     FSAvis.EditDateDocumentBase.Text,
                                     FSAvis.EditNatureDepences.Text);

     FSComptabiliteTransitoire.PageComptabilisationTransitoire.Show;

     if(FSComptabiliteTransitoire.EditNumEntite.Text='')then
     begin
          FSComptabiliteTransitoire.EditNumEntite.SetFocus;
     end
     else
     if(FSComptabiliteTransitoire.EditJournalAuxiliaireUtiliseAvis.Text='')then
     begin
          FSComptabiliteTransitoire.EditJournalAuxiliaireUtiliseAvis.SetFocus;
     end;

     FSComptabiliteTransitoire.TableauChargementPieceComptable.ColCount:=3;
     FSComptabiliteTransitoire.TableauChargementPieceComptable.Cols[0].Text:='N°';
     FSComptabiliteTransitoire.TableauChargementPieceComptable.Cols[1].Text:='Désignation';
     FSComptabiliteTransitoire.TableauChargementPieceComptable.Cols[2].Text:='Valeur';

     FSComptabiliteTransitoire.TableauChargementPieceComptable.RowCount:=2;
     for R:=1 to 11 do
     begin
          FSComptabiliteTransitoire.TableauChargementPieceComptable.Rows[R].Text:=inttostr(R);
     end;


     FSComptabiliteTransitoire.TableauChargementPieceComptable.Cells[1,1]:='Num Pièce';
     FSComptabiliteTransitoire.TableauChargementPieceComptable.Cells[1,2]:='Num Entité';
     FSComptabiliteTransitoire.TableauChargementPieceComptable.Cells[1,3]:='Date Imputation';
     FSComptabiliteTransitoire.TableauChargementPieceComptable.Cells[1,4]:='Num Cpt Pcle';
     FSComptabiliteTransitoire.TableauChargementPieceComptable.Cells[1,5]:='Num Cpt Tiers';
     FSComptabiliteTransitoire.TableauChargementPieceComptable.Cells[1,6]:='Design Doc';
     FSComptabiliteTransitoire.TableauChargementPieceComptable.Cells[1,7]:='Num Doc';
     FSComptabiliteTransitoire.TableauChargementPieceComptable.Cells[1,8]:='Date Doc';
     FSComptabiliteTransitoire.TableauChargementPieceComptable.Cells[1,9]:='Intitulé Op Bse';
     FSComptabiliteTransitoire.TableauChargementPieceComptable.Cells[1,10]:='Design Doc Base';
     FSComptabiliteTransitoire.TableauChargementPieceComptable.Cells[1,11]:='Date Doc Base';


     FSComptabiliteTransitoire.TableauChargementPieceComptable.Cells[2,1]:=FSAvis.EditNumPiece.Text;
     FSComptabiliteTransitoire.TableauChargementPieceComptable.Cells[2,2]:='';
     FSComptabiliteTransitoire.TableauChargementPieceComptable.Cells[2,3]:='';
     FSComptabiliteTransitoire.TableauChargementPieceComptable.Cells[2,4]:='';
     FSComptabiliteTransitoire.TableauChargementPieceComptable.Cells[2,5]:='';
     FSComptabiliteTransitoire.TableauChargementPieceComptable.Cells[2,6]:='';
     FSComptabiliteTransitoire.TableauChargementPieceComptable.Cells[2,7]:='';
     FSComptabiliteTransitoire.TableauChargementPieceComptable.Cells[2,8]:='';
     FSComptabiliteTransitoire.TableauChargementPieceComptable.Cells[2,9]:='';
     FSComptabiliteTransitoire.TableauChargementPieceComptable.Cells[2,10]:='';
     FSComptabiliteTransitoire.TableauChargementPieceComptable.Cells[2,11]:='';


     FSComptabiliteTransitoire.TableauChargementImputationComptable.RowCount:=2;
     FSComptabiliteTransitoire.TableauChargementImputationComptable.Rows[1].Text:='';

     FSComptabiliteTransitoire.EditNumPieceComptable.Text:='';
     FSComptabiliteTransitoire.EditDateImputation.Date:=FSAvis.EditDate.Date;
end;

procedure TFSAvis.EditDateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var  DesignationTypeAvis:string;
begin

if key in[VK_RETURN]then
begin
     if(FSAvis.EditTypeAvis.Text<>'')then
     begin
          DesignationTypeAvis:=FSAvis.EditTypeAvis.Text;
          AfficerDataContrePartieAvis(DesignationTypeAvis,FSAvis.EditBaseAvis.Text);
          FSAvis.EditNumProjet.SetFocus;
     end
     else
     begin
          FSAvis.EditTypeAvis.ItemIndex:=-1;
          FSAvis.EditTypeAvis.SetFocus;
     end;
end;

end;

procedure TFSAvis.EditBenificiaireKeyPress(Sender: TObject; var Key: Char);
var i,R,RowCout,OrdreClient:integer;  TypeProces,FichierConcerne,Adresse,CompteTiers:string;   OKTiers,Confirme,OKCompteTiers:boolean;
begin
if key='+'then
begin
     FSAvis.TableauTiers.Visible:=false;
     Key:=#0;
     FSAvis.AfficheNouveauTiers.Visible:=true;
     FSAvis.AfficheNouveauTiers.Left:=FSAvis.PanelDataAvis.Left+FSAvis.AfficheBeneficiaireDepense.Left+FSAvis.EditBenificiaire.Left;
     FSAvis.AfficheNouveauTiers.Top:=FSAvis.PanelDataAvis.Top+FSAvis.AfficheBeneficiaireDepense.Top+FSAvis.EditBenificiaire.Top+FSAvis.EditBenificiaire.Height+2;

     FSAvis.EditCodeTiers.Text:='';
     FSAvis.EditNomTiers.Text:='';
     FSAvis.EditPrenomTiers.Text:='';
     FSAvis.EditAdresseTiers.Text:='';
     FSAvis.EditCompteTiersRecherche.Text:='';
     FSAvis.EditNomTiers.SetFocus;

     TypeProces:=FSAvis.EditChargementTypeProces.Text;
     FichierConcerne:=FSAvis.EditChargementFichierConcerne.Text;
     Adresse:='';
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
          Exit;
     end;

     if(FSAvis.EditCompteTiersRecherche.Text='')then
     begin
          FSAvis.TableauCompteTiers.ColCount:=4;
          FSAvis.TableauCompteTiers.Cols[0].Text:='N°';
          FSAvis.TableauCompteTiers.Cols[1].Text:='Code';
          FSAvis.TableauCompteTiers.Cols[2].Text:='Nom';
          FSAvis.TableauCompteTiers.Cols[3].Text:='Prénom';

          FSAvis.TableauCompteTiers.RowCount:=2;
          FSAvis.TableauCompteTiers.Rows[1].Text:='';

          ChTiers:=Adresse;
          assignfile(FTiers,ChTiers);
          if FileExists(ChTiers)then
          Reset(FTiers)
          else Rewrite(FTiers);
          Seek(FTiers,0);
          OKTiers:=false;
          i:=0;
          RowCout:=0;
          FSAvis.EditCompteTiersRecherche.Text:='';
          while not eof(FTiers)and(OKTiers=false)do
          begin
               read(FTiers,RTiers);

               if(RTiers.CodeTiers<>'')then
               begin
                    if(longueur(RTiers.CodeTiers)=10)
                    then CompteTiers:=Firstlaters(RTiers.CodeTiers,6)
                    else CompteTiers:='';

                    if(FSAvis.EditCompteTiersRecherche.Text='')then FSAvis.EditCompteTiersRecherche.Text:=CompteTiers;

                    R:=1;
                    OKCompteTiers:=false;
                    While(R<=FSAvis.TableauCompteTiers.RowCount-1)and(OKCompteTiers=false)do
                    begin
                         if(FSAvis.TableauCompteTiers.Cells[1,R]=CompteTiers)then
                         begin
                              OKCompteTiers:=true;
                         end;
                    R:=R+1;
                    end;

                    if(OKCompteTiers=false)then
                    begin
                         RowCout:=RowCout+1;
                         FSAvis.TableauCompteTiers.Rows[RowCout].Text:=inttostr(RowCout);
                         FSAvis.TableauCompteTiers.Cells[1,RowCout]:=CompteTiers;
                         if(ChercherCompteComptable(CompteTiers,'','PlanComptable',RRegistreCompte))
                         then FSAvis.TableauCompteTiers.Cells[2,RowCout]:=RRegistreCompte.Designation
                         else FSAvis.TableauCompteTiers.Cells[2,RowCout]:=FSAvis.EditChargementFichierConcerne.Text;
                    end;
               end;
          end;

          if(RowCout>1)then
          begin
               FSAvis.TableauCompteTiers.Visible:=true;
               FSAvis.TableauCompteTiers.RowCount:=RowCout+1;
               AjusterColWidth(FSAvis.TableauCompteTiers,'','');
               FSAvis.TableauCompteTiers.SetFocus;
          end
          else
          begin
               FSAvis.TableauCompteTiers.Visible:=false;
               ChClient:=Adresse;
               assignfile(FClient,ChClient);
               if FileExists(ChClient)then
               Reset(FClient)
               else Rewrite(FClient);
               Seek(FClient,0);
               OrdreClient:=1;
               while not eof(FClient)do
               begin
                    read(FClient,RClient);
                    if(FSAvis.EditCompteTiersRecherche.Text<>'')then
                    begin
                         if(Firstlaters(RClient.CodeTiers,6)=FSAvis.EditCompteTiersRecherche.Text)then
                         begin
                              if(strtointeger(lastlaters(RClient.CodeTiers,4))>=OrdreClient)then OrdreClient:=strtointeger(lastlaters(RClient.CodeTiers,4))+1;
                         end;
                    end
                    else
                    begin
                         if(strtointeger(lastlaters(RClient.CodeTiers,4))>=OrdreClient)then OrdreClient:=strtointeger(lastlaters(RClient.CodeTiers,4))+1;
                    end;
               end;
               FSAvis.EditCodeTiers.Text:=FSAvis.EditCompteTiersRecherche.Text+Completezerogauche(inttostr(OrdreClient),'4');
               FSAvis.EditNomTiers.SetFocus;
          end;
     end;
end;
end;

procedure TFSAvis.BitBtn8Click(Sender: TObject);
begin
FSAvis.AfficheNouveauTiers.Visible:=false;
FSAvis.TableauCompteTiers.Visible:=false;
end;

procedure TFSAvis.BitValiderNouveauTiersClick(Sender: TObject);
var  i,R,RowCout:integer;  TypeProces,FichierConcerne,Adresse:string;   OKTiers,Confirme,OKCompteTiers:boolean;
begin   
     TypeProces:=FSAvis.EditChargementTypeProces.Text;
     FichierConcerne:=FSAvis.EditChargementFichierConcerne.Text;
     Adresse:='';
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
          Exit;
     end;

     ChTiers:=Adresse;
     assignfile(FTiers,ChTiers);
     if FileExists(ChTiers)then
     Reset(FTiers)
     else Rewrite(FTiers);
     Seek(FTiers,0);
     OKTiers:=false;
     i:=0;
     while not eof(FTiers)and(OKTiers=false)do
     begin
          read(FTiers,RTiers);
          if(RTiers.CodeTiers=FSAvis.EditCodeTiers.Text)then
          begin
               OKTiers:=true;
          end
          else i:=i+1;
     end;

     Seek(FTiers,i);
     RTiers.CodeTiers:=FSAvis.EditCodeTiers.Text;
     RTiers.NomTiers:=FSAvis.EditNomTiers.Text;
     RTiers.PrenomTiers:=FSAvis.EditPrenomTiers.Text;
     RTiers.DateNaisTiers:='';
     RTiers.LieuNaisTiers:='';
     RTiers.NaturePieceIdentiteTiers:='';
     RTiers.NumPieceIdentiteTiers:='';
     RTiers.FonctionTiers:='';
     RTiers.AdresseTiers:=FSAvis.EditAdresseTiers.Text;
     RTiers.NumTelephoneTiers:='';
     RTiers.CodeAgenceBanqueTiers:='';
     RTiers.RIBBanqueTiers:='';
     RTiers.Data1:='';
     RTiers.Data2:='';
     RTiers.Data3:='';
     RTiers.Data4:='';
     RTiers.Data5:='';
     RTiers.Data6:='';
     write(FTiers,RTiers);
     Closefile(FTiers);

     FSAvis.EditBenificiaire.SetFocus;
     FSAvis.AfficheNouveauTiers.Visible:=false;
end;

procedure TFSAvis.EditNomTiersKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSAvis.EditPrenomTiers.SetFocus;
end;

end;

procedure TFSAvis.EditPrenomTiersKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSAvis.EditAdresseTiers.SetFocus;
end;

end;

procedure TFSAvis.EditAdresseTiersKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSAvis.BitValiderNouveauTiers.SetFocus;
end;

end;

procedure TFSAvis.TableauCompteTiersKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var TypeProces,FichierConcerne,Adresse:string;    OrdreTiers:Integer;
begin
     if key in[VK_RETURN]then
     begin
          TypeProces:=FSAvis.EditChargementTypeProces.Text;
          FichierConcerne:=FSAvis.EditChargementFichierConcerne.Text;
          Adresse:='';
          if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
               AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
               Exit;
          end;

          FSAvis.EditCompteTiersRecherche.Text:=FSAvis.TableauCompteTiers.Cells[1,FSAvis.TableauCompteTiers.Row];
          ChTiers:=Adresse;
          assignfile(FTiers,ChTiers);
          if FileExists(ChTiers)then
          Reset(FTiers)
          else Rewrite(FTiers);
          Seek(FTiers,0);
          OrdreTiers:=1;
          while not eof(FTiers)do
          begin
               read(FTiers,RTiers);
               if(FSAvis.EditCompteTiersRecherche.Text<>'')then
               begin
                    if(Firstlaters(RTiers.CodeTiers,6)=FSAvis.EditCompteTiersRecherche.Text)then
                    begin
                         if(strtointeger(lastlaters(RTiers.CodeTiers,4))>=OrdreTiers)then OrdreTiers:=strtointeger(lastlaters(RTiers.CodeTiers,4))+1;
                    end;
               end
               else
               begin
                    if(strtointeger(lastlaters(RTiers.CodeTiers,4))>=OrdreTiers)then OrdreTiers:=strtointeger(lastlaters(RTiers.CodeTiers,4))+1;
               end;
          end;
          FSAvis.EditCodeTiers.Text:=FSAvis.EditCompteTiersRecherche.Text+Completezerogauche(inttostr(OrdreTiers),'4');
          FSAvis.EditNomTiers.SetFocus;
          FSAvis.TableauCompteTiers.Visible:=false;
     end;
end;

procedure TFSAvis.EditCodeTiersKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSAvis.EditNomTiers.SetFocus;
end;

end;
            
Function ControleSoldeDomiciliation(DesignationTypeAvis,NumDomiciliation,Domiciliation,DateFin,MontantAOperer:string):boolean;
var  SoldeDomociliation:real;   EtatSoldePlanifier,EtatSoldeTrouver:string;   OKSoldeDomiciliation:boolean;
     R,PositionTypeAvis,NumTypeAvis,ChercheSigneDebitCredit:integer; CompteImputation,DebitCredit,TypeProces,FichierConserne,JourneauxAuxiliaireUtilise:string;
begin
     OKSoldeDomiciliation:=true;

     if((NumDomiciliation<>'')or(Domiciliation<>''))and(DesignationTypeAvis<>'')then
     begin
          R:=0;
          IndiqueTypeAvis(DesignationTypeAvis,PositionTypeAvis,NumTypeAvis,ChercheSigneDebitCredit,CompteImputation,DebitCredit,TypeProces,FichierConserne,JourneauxAuxiliaireUtilise);
          SoldeDomociliation:=SoldeDomiciliationAvis(FSMenuPrincipal.TableauLiseAvisNotifier,R,NumDomiciliation,Domiciliation,DateFin,true,EtatSoldePlanifier,EtatSoldeTrouver,R);

          if(EtatSoldePlanifier<>'DébitCrédit')then
          begin
               if(DebitCredit<>EtatSoldePlanifier)then
               begin
                    if(EtatSoldeTrouver=EtatSoldePlanifier)then
                    begin
                         if(MontantAOperer='')then
                         begin
                              AfficherMessage('Information ! Compte '+EtatSoldeTrouver+' de '+Vergule(floattostr(SoldeDomociliation),'2','C',''))
                         end
                         else
                         begin
                              if(strtoreal(MontantAOperer)>SoldeDomociliation)then
                              begin
                                   OKSoldeDomiciliation:=false;
                                   AfficherMessage('Opération non autorisé ! Compte '+EtatSoldeTrouver+' de '+Vergule(floattostr(SoldeDomociliation),'2','C',''))
                              end;
                         end;
                    end;

                    if(EtatSoldeTrouver<>EtatSoldePlanifier)then
                    begin
                         OKSoldeDomiciliation:=false;
                         AfficherMessage('Opération non autorisé ! Compte '+EtatSoldeTrouver+' de '+Vergule(floattostr(SoldeDomociliation),'2','C',''))
                    end;
               end;
          end;
     end;

     ControleSoldeDomiciliation:=OKSoldeDomiciliation;
end;


procedure TFSAvis.BitBtn2Click(Sender: TObject);
begin
     FSAvis.AfficheAutresAgenceBanque.Visible:=false;
end;

procedure TFSAvis.EditRechercheCodeAgenceKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

     if key in[VK_RETURN]then
     begin
          FSAvis.TableauAutresAgenceBanque.SetFocus;
     end;

end;

procedure TFSAvis.EditEditRechercheLibelleAgenceKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

     if key in[VK_RETURN]then
     begin
          FSAvis.TableauAutresAgenceBanque.SetFocus;
     end;

end;

procedure TFSAvis.TableauAutresAgenceBanqueKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var    PositionTypeAvis,NumTypeAvis,ChercheSigneDebitCredit:integer;
       CompteImputation,DebitCredit,TypeProces,FichierConserne,JourneauxAuxiliaireUtilis,JourneauxAuxiliaireUtilise:string;
begin

if key in[VK_RETURN]then
begin
     IndiqueTypeAvis(FSAvis.EditTypeAvis.Text,PositionTypeAvis,NumTypeAvis,ChercheSigneDebitCredit,CompteImputation,DebitCredit,TypeProces,FichierConserne,JourneauxAuxiliaireUtilise);
     RDomiciliationCopie:=ChercherDomiciliation('',FSAvis.TableauAutresAgenceBanque.Cells[2,FSAvis.TableauAutresAgenceBanque.Row],PositionDomiciliationRecherche);

     if(FSAvis.EditSourceDomiciliation.Text='Piece')then
     begin
          FSAvis.EditDomiciliationPiece.Text:=FSAvis.TableauAutresAgenceBanque.Cells[2,FSAvis.TableauAutresAgenceBanque.Row];

          if(RDomiciliationCopie.EtatSoldeDebitCredit<>'')and(DebitCredit<>'')
          and(RDomiciliationCopie.EtatSoldeDebitCredit<>DebitCredit)then
          begin
               FSAvis.EditNumDomiciliationAvis.Text:=FSAvis.EditNumDomiciliationPiece.Text;
               FSAvis.EditDomiciliationAvis.Text:=FSAvis.EditDomiciliationPiece.Text;
          end;
     end
     else
     begin
          FSAvis.EditDomiciliationAvis.Text:=FSAvis.TableauAutresAgenceBanque.Cells[2,FSAvis.TableauAutresAgenceBanque.Row];

          if(RDomiciliationCopie.EtatSoldeDebitCredit<>'')and(DebitCredit<>'')
          and(RDomiciliationCopie.EtatSoldeDebitCredit<>DebitCredit)then
          begin
               FSAvis.EditNumDomiciliationPiece.Text:=FSAvis.EditNumDomiciliationAvis.Text;
               FSAvis.EditDomiciliationPiece.Text:=FSAvis.EditDomiciliationAvis.Text;
          end;
     end;

     FSAvis.EditNumPiece.SetFocus;
     FSAvis.AfficheAutresAgenceBanque.Visible:=false;
end;

end;

procedure TFSAvis.EditRechercheCodeAgenceKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if(longueur(FSAvis.EditRechercheCodeAgence.Text)<=8)
     and(RechercheAgenceBanque(FSAvis.TableauAutresAgenceBanque,FSAvis.EditRechercheCodeAgence.Text,'',RAgenceCopie))then
     begin
          FSAvis.EditDomiciliationAvis.Text:=RAgenceCopie.LibelleAgence;
          FSAvis.EditNumPiece.SetFocus;
          FSAvis.AfficheAutresAgenceBanque.Visible:=false;
     end;
end;

procedure TFSAvis.EditEditRechercheLibelleAgenceKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if(longueur(FSAvis.EditRechercheCodeAgence.Text)<=8)
     and(RechercheAgenceBanque(FSAvis.TableauAutresAgenceBanque,'',FSAvis.EditEditRechercheLibelleAgence.Text,RAgenceCopie))then
     begin
          FSAvis.EditDomiciliationAvis.Text:=RAgenceCopie.LibelleAgence;
          FSAvis.EditNumPiece.SetFocus;
          FSAvis.AfficheAutresAgenceBanque.Visible:=false;
     end;
end;

procedure TFSAvis.BitBtn10Click(Sender: TObject);
begin
     FSAvis.AfficheChargementNature.Visible:=false;
end;

procedure TFSAvis.BitBtn5Click(Sender: TObject);
begin
     if(FSAvis.EditMontantChiffre.Text='')then
     begin
          FSAvis.EditMontantChiffre.Text:=Vergule(FSAvis.EditMontantGlobalAuto.Text,'2','C','');
          FSAvis.EditMontantLettres.Lines.Text:=chiffreenlettre(FSAvis.EditMontantChiffre.Text);
     end;
     FSAvis.EditChargementCodeFichierConcerne.Text:=FSAvis.TableauListeMouvement.Cells[9,FSAvis.TableauListeMouvement.Row];
     FSAvis.EditBenificiaire.Text:=FSAvis.TableauListeMouvement.Cells[10,FSAvis.TableauListeMouvement.Row];
     FSAvis.EditNatureDepences.Lines.Text:=FSAvis.EditNatureOperationMouvement.Text;

     if(firstlaters(FSAvis.EditOrigine.Text,3)='FSC')then
     begin
          RemplireAvisPrMouvement(Lastlaters(FSAvis.EditOrigine.Text,Longueur(FSAvis.EditOrigine.Text)-3),'',FSAvis.EditBaseAvis.Text);
     end;
     
     FSAvis.EditOrigine.Text:='FSC'+FSAvis.EditOrdreListeMouvementAppartenant.Text;

     FSAvis.AfficheChargementNature.Visible:=false;
end;

procedure TFSAvis.BitBtn3Click(Sender: TObject);
var  i,R:integer;   ListePositionMouvement:string;  OKTypeMouvement:boolean;
begin
     FSAvis.AfficheChargementNature.Visible:=true;
     FSAvis.AfficheChargementNature.Top:=240;
     FSAvis.AfficheChargementNature.Left:=13;

     FSAvis.TableauDetaiMouvementAppartenanceMouvemant.RowCount:=2;
     FSAvis.TableauDetaiMouvementAppartenanceMouvemant.Rows[1].Text:='';
     FSAvis.EditMontantGlobalAuto.Text:='';
     FSAvis.EditOrdreListeMouvementAppartenant.Text:='';
     FSAvis.EditCodeTiersTeste.Text:='';
     FSAvis.EditTiersTeste.Text:='';

     OpenFParc(RParc);
     ChMouvement:=RParc.Parcours+'\'+Exercice+'FMouvement';
     assignfile(FMouvement,ChMouvement);
     if FileExists(ChMouvement)then
     Reset(FMouvement)
     else Rewrite(FMouvement);
     Seek(FMouvement,0);
     ListePositionMouvement:='';
     while not eof(FMouvement)do
     begin
          Read(FMouvement,RMouvement);
          if(RMouvement.FichierTiersConserne=FSAvis.EditChargementFichierConcerne.Text)then
          begin
               if(ListePositionMouvement='')
               then ListePositionMouvement:=inttostr(RMouvement.PositionMouvement)
               else ListePositionMouvement:=ListePositionMouvement+';'+inttostr(RMouvement.PositionMouvement);
          end;
     end;
     CloseFile(FMouvement);

     ProcAfficheListeMouvementAppartenance(FSAvis.TableauListeMouvement,ListePositionMouvement,'','',ExerciceAnnee,FSAvis.EditChargementCodeFichierConcerne.Text,FSAvis.EditAvisEtabli.Text,0,R);
     FSAvis.EditNatureOperationMouvement.Text:='';

     FSAvis.TableauPositionMouvement.ColCount:=1;
     FSAvis.TableauPositionMouvement.Cols[0].Text:='P°M';
     FSAvis.TableauPositionMouvement.RowCount:=2;
     FSAvis.TableauPositionMouvement.Rows[1].Text:='';
     R:=0;
     i:=0;
     while(i<=longueur(ListePositionMouvement))do
     begin
          if existenumintexte(inttostr(i),ListePositionMouvement)then
          begin
               R:=R+1;
               FSAvis.TableauPositionMouvement.Rows[R].Text:=inttostr(i);
          end;
     i:=i+1;
     end;

     if(R>0)then FSAvis.TableauPositionMouvement.RowCount:=R+1
            else FSAvis.TableauPositionMouvement.RowCount:=2;
end;

Function FunctPourcentagePartieCommune(NumProjetFinanceAffiche:string):real;
var OKProjet:boolean; Pourcentage:real;
begin
     Pourcentage:=100;
     OpenFParc(RParc);
     ChProjetFinance:=RParc.Parcours+'\'+Exercice+'FProjetFinance';
     assignfile(FProjetFinance,ChProjetFinance);
     if FileExists(ChProjetFinance)then
     begin
          Reset(FProjetFinance);
          Seek(FProjetFinance,0);
          OKProjet:=false;
          while not eof(FProjetFinance)and(OKProjet=false)do
          begin
               read(FProjetFinance,RProjetFinance);
               if(RProjetFinance.NumProjetFinance=NumProjetFinanceAffiche)then
               begin
                    OKProjet:=true;
                    Pourcentage:=RProjetFinance.PourcentagePartieCommune;
               end;
          end;
          CloseFile(FProjetFinance);
     end;

     FunctPourcentagePartieCommune:=Pourcentage/100;
end;

procedure TFSAvis.RBOperationNatureAvieClick(Sender: TObject);
var  Document,Destination,TypeAvis:string;
begin
     TypeAvis:=FSAvis.EditTypeAvis.Text;
     RTypeMouvement:=ChercherTypeMouvement(strtointeger(FSAvis.TableauListeMouvement.Cells[3,FSAvis.TableauListeMouvement.Row]),ExerciceAnnee,AdresseFichierConcerne);
     RMouvement:=ChercherMouvement(FSAvis.TableauListeMouvement.Cells[3,FSAvis.TableauListeMouvement.Row],strtointeger(FSAvis.TableauListeMouvement.Cells[4,FSAvis.TableauListeMouvement.Row]),AdresseFichierConcerne);
     Document:=TypeOperationTypeAvis(FSAvis.EditTypeAvis.Text)+' '+RMouvement.DesignationMouvement+' N° '+FSAvis.TableauListeMouvement.Cells[2,FSAvis.TableauListeMouvement.Row];
     if(FSAvis.TableauListeMouvement.Cells[22,FSAvis.TableauListeMouvement.Row]<>'')
     then Destination:='; '+'Déstination: '+FSAvis.TableauListeMouvement.Cells[22,FSAvis.TableauListeMouvement.Row]
     else Destination:='';
     FSAvis.EditNatureOperationMouvement.Text:='';

     if(FSAvis.RBOperationNatureAvie.Checked=false)
     then FSAvis.EditNatureOperationMouvement.Lines.Add(Document+'; '+NatureOperationMouvement(RTypeMouvement.DesignationTypeMouvement,FSAvis.TableauListeMouvement.Cells[1,FSAvis.TableauListeMouvement.Row],true)+Destination)
     else FSAvis.EditNatureOperationMouvement.Lines.Add(Document);
end;

Function TypeOperationTypeAvis(DesignationTypeAvis:string):string;
var  LT,iT:integer;  TypeOperation1,TypeOperation2:string;
begin
     TypeOperation1:='';
     TypeOperation2:='';
     iT:=1;
     LT:=longueur(DesignationTypeAvis);
     while(iT<=LT)do
     begin
          if(DesignationTypeAvis[iT]<>' ')and(DesignationTypeAvis[iT]<>'''')then
          begin
               TypeOperation1:=TypeOperation1+DesignationTypeAvis[iT];
          end
          else
          begin
               if(longueur(TypeOperation1)>longueur(TypeOperation2))
               then TypeOperation2:=TypeOperation1;
               TypeOperation1:='';
          end;
     iT:=iT+1;
     end;

     if(longueur(TypeOperation1)>longueur(TypeOperation2))
     then TypeOperation2:=TypeOperation1;
     TypeOperation1:='';

     TypeOperationTypeAvis:=TypeOperation2;
end;

procedure TFSAvis.EditAvisEtabliKeyPress(Sender: TObject; var Key: Char);
begin
     Key:=#0;
end;

procedure TFSAvis.EditAvisEtabliChange(Sender: TObject);
var  i,R:integer;   ListePositionMouvement:string;  OKTypeMouvement:boolean;
begin
     FSAvis.TableauDetaiMouvementAppartenanceMouvemant.RowCount:=2;
     FSAvis.TableauDetaiMouvementAppartenanceMouvemant.Rows[1].Text:='';
     FSAvis.EditMontantGlobalAuto.Text:='';
     FSAvis.EditOrdreListeMouvementAppartenant.Text:='';
     FSAvis.EditCodeTiersTeste.Text:='';
     FSAvis.EditTiersTeste.Text:='';

     FSAvis.AfficheChargementNature.Visible:=true;
     FSAvis.AfficheChargementNature.Top:=240;
     FSAvis.AfficheChargementNature.Left:=13;

     OpenFParc(RParc);
     ChMouvement:=RParc.Parcours+'\'+Exercice+'FMouvement';
     assignfile(FMouvement,ChMouvement);
     if FileExists(ChMouvement)then
     Reset(FMouvement)
     else Rewrite(FMouvement);
     Seek(FMouvement,0);
     ListePositionMouvement:='';
     while not eof(FMouvement)do
     begin
          Read(FMouvement,RMouvement);
          if(RMouvement.FichierTiersConserne=FSAvis.EditChargementFichierConcerne.Text)then
          begin
               if(ListePositionMouvement='')
               then ListePositionMouvement:=inttostr(RMouvement.PositionMouvement)
               else ListePositionMouvement:=ListePositionMouvement+';'+inttostr(RMouvement.PositionMouvement);
          end;
     end;
     CloseFile(FMouvement);

     ProcAfficheListeMouvementAppartenance(FSAvis.TableauListeMouvement,ListePositionMouvement,'','',ExerciceAnnee,FSAvis.EditChargementCodeFichierConcerne.Text,FSAvis.EditAvisEtabli.Text,0,R);
     FSAvis.EditNatureOperationMouvement.Text:='';

     FSAvis.TableauPositionMouvement.ColCount:=1;
     FSAvis.TableauPositionMouvement.Cols[0].Text:='P°M';
     FSAvis.TableauPositionMouvement.RowCount:=2;
     FSAvis.TableauPositionMouvement.Rows[1].Text:='';
     R:=0;
     i:=0;
     while(i<=longueur(ListePositionMouvement))do
     begin
          if existenumintexte(inttostr(i),ListePositionMouvement)then
          begin
               R:=R+1;
               FSAvis.TableauPositionMouvement.Rows[R].Text:=inttostr(i);
          end;
     i:=i+1;
     end;

     if(R>0)then FSAvis.TableauPositionMouvement.RowCount:=R+1
            else FSAvis.TableauPositionMouvement.RowCount:=2;
end;

procedure TFSAvis.TableauListeMouvementDblClick(Sender: TObject);
var  R:integer;   OKTiers:boolean; ListeOrdreListeMouvement,DebitCreditPositif:string;
begin
     if(FSAvis.EditCodeTiersTeste.Text<>'')then
     begin
          if(FSAvis.TableauListeMouvement.Cells[9,FSAvis.TableauListeMouvement.Row]=FSAvis.EditCodeTiersTeste.Text)then
          begin
               OKTiers:=true;
          end
          else
          begin
               OKTiers:=false;
               AfficherMessage('Tiers différents, veuillez revoir votre sélection SVP');
          end;
     end
     else
     begin
          OKTiers:=true;
          FSAvis.EditCodeTiersTeste.Text:=FSAvis.TableauListeMouvement.Cells[9,FSAvis.TableauListeMouvement.Row];
          FSAvis.EditTiersTeste.Text:=FSAvis.TableauListeMouvement.Cells[10,FSAvis.TableauListeMouvement.Row];
     end;

     if(OKTiers=true)then
     begin
          if(FSAvis.TableauListeMouvement.Cells[12,FSAvis.TableauListeMouvement.Row]='')
          then FSAvis.TableauListeMouvement.Cells[12,FSAvis.TableauListeMouvement.Row]:='OK'
          else FSAvis.TableauListeMouvement.Cells[12,FSAvis.TableauListeMouvement.Row]:='';

          R:=1;
          ListeOrdreListeMouvement:='';
          while(R<=FSAvis.TableauListeMouvement.RowCount-1)do
          begin
               if(FSAvis.TableauListeMouvement.Cells[12,R]='OK')
               and(FSAvis.TableauListeMouvement.Cells[34,R]<>'UF')
               then
               begin
                    if(ListeOrdreListeMouvement='')
                    then ListeOrdreListeMouvement:=FSAvis.TableauListeMouvement.Cells[1,R]
                    else ListeOrdreListeMouvement:=ListeOrdreListeMouvement+';'+FSAvis.TableauListeMouvement.Cells[1,R];
               end;
          R:=R+1;
          end;
          DebitCreditPositif:='Débit';
          CalculeAutoAppartenanceMouvement(FSAvis.TableauListeMouvement,FSAvis.TableauDetaiMouvementAppartenanceMouvemant,FSAvis.TableauRecapitulatifDetailMouvements,FSAvis.TableauPositionMouvement,ExerciceAnnee,ListeOrdreListeMouvement,DebitCreditPositif,'2','2','2',datetostr(FSAvis.EditDate.Date),datetostr(FSAvis.EditDate.Date),FSAvis.EditOrdreListeMouvementAppartenant,13,5,0,R);
          FSAvis.EditMontantGlobalAuto.Text:='';
          R:=1;
          while(R<=FSAvis.TableauListeMouvement.RowCount-1)do
          begin
               if(FSAvis.TableauListeMouvement.Cells[12,R]='OK')then
               begin
                    if(FSAvis.EditOrdreListeMouvementAppartenant.Text='')
                    then FSAvis.EditOrdreListeMouvementAppartenant.Text:=FSAvis.TableauListeMouvement.Cells[1,R]
                    else FSAvis.EditOrdreListeMouvementAppartenant.Text:=FSAvis.EditOrdreListeMouvementAppartenant.Text+';'+FSAvis.TableauListeMouvement.Cells[1,R];

                    FSAvis.EditMontantGlobalAuto.Text:=Vergule(floattostr(strtoreal(FSAvis.EditMontantGlobalAuto.Text)+strtoreal(FSAvis.TableauListeMouvement.Cells[11,R])),'2','C','');
               end;
          R:=R+1;
          end;
     end;


     if(FSAvis.RBNatureDetailler.Checked=true)then
     begin
          AutoNatureOperationDetailler;
     end;

     if(FSAvis.RBNatureCummuler.Checked=true)then
     begin
          AutoNatureOperationCummuler;
     end;

end;

Procedure AutoNatureOperationDetailler;
var  R:integer;  Document,Destination:string;
begin
     FSAvis.EditNatureOperationMouvement.Text:='';
     R:=1;
     while(R<=FSAvis.TableauListeMouvement.RowCount-1)do
     begin
          if(FSAvis.TableauListeMouvement.Cells[12,R]='OK')then
          begin
               RTypeMouvement:=ChercherTypeMouvement(strtointeger(FSAvis.TableauListeMouvement.Cells[3,R]),ExerciceAnnee,AdresseFichierConcerne);
               RMouvement:=ChercherMouvement(FSAvis.TableauListeMouvement.Cells[3,R],strtointeger(FSAvis.TableauListeMouvement.Cells[4,R]),AdresseFichierConcerne);
               Document:=TypeOperationTypeAvis(FSAvis.EditTypeAvis.Text)+' '+RMouvement.DesignationMouvement+' N° '+FSAvis.TableauListeMouvement.Cells[2,R];
               if(FSAvis.TableauListeMouvement.Cells[23,R]<>'')
               then Destination:='; '+'Déstination: '+FSAvis.TableauListeMouvement.Cells[23,R]
               else Destination:='';

               if(FSAvis.RBOperationNatureAvie.Checked=false)
               then FSAvis.EditNatureOperationMouvement.Lines.Add(Document+'; '+NatureOperationMouvement(RTypeMouvement.DesignationTypeMouvement,FSAvis.TableauListeMouvement.Cells[1,R],true)+Destination+'.')
               else FSAvis.EditNatureOperationMouvement.Lines.Add(Document+'.');
          end;
     R:=R+1;
     end;
end;

Procedure AutoNatureOperationCummuler;
var  R,L,m,S,p:integer;    Document,DocumentPrincipale,NatureMouvement,Designation,Destination:string;   OKDesignationMouvement,OKDestination:boolean;
begin
     FSAvis.TableauDestination.ColCount:=1;
     FSAvis.TableauDestination.Cols[0].Text:='';
     FSAvis.TableauDestination.RowCount:=2;
     FSAvis.TableauDestination.Rows[1].Text:='';
     Destination:='Déstination: ';

     FSAvis.TableauDesignationMouvement.ColCount:=1;
     FSAvis.TableauDesignationMouvement.Cols[0].Text:='';
     FSAvis.TableauDesignationMouvement.RowCount:=2;
     FSAvis.TableauDesignationMouvement.Rows[1].Text:='';


     FSAvis.EditNatureOperationMouvement.Text:='';
     Document:=TypeOperationTypeAvis(FSAvis.EditTypeAvis.Text)+': ';
     DocumentPrincipale:=Document;
     R:=1;
     l:=0;
     S:=0;
     while(R<=FSAvis.TableauListeMouvement.RowCount-1)do
     begin
          if(FSAvis.TableauListeMouvement.Cells[12,R]='OK')then
          begin
               RMouvement:=ChercherMouvement(FSAvis.TableauListeMouvement.Cells[3,R],strtointeger(FSAvis.TableauListeMouvement.Cells[4,R]),AdresseFichierConcerne);
               m:=1;
               OKDesignationMouvement:=false;
               while(m<=l)and(OKDesignationMouvement=false)do
               begin
                    if(RMouvement.DesignationMouvement=FSAvis.TableauDesignationMouvement.Cells[0,m])then
                    begin
                         OKDesignationMouvement:=true;
                    end;
               m:=m+1;
               end;

               if(OKDesignationMouvement=false)then
               begin
                    l:=l+1;
                    FSAvis.TableauDesignationMouvement.Cells[0,l]:=RMouvement.DesignationMouvement;
                    Designation:=RMouvement.DesignationMouvement+' N° ';
               end
               else
               begin
                    Designation:='';
               end;

               if(Document=DocumentPrincipale)
               then Document:=Document+Designation+FSAvis.TableauListeMouvement.Cells[2,R]
               else Document:=Document+'; '+Designation+FSAvis.TableauListeMouvement.Cells[2,R];

               /////////////////////////////////////////////////////////////////
               p:=1;
               OKDestination:=false;
               while(p<=S)and(OKDestination=false)do
               begin
                    if(FSAvis.TableauListeMouvement.Cells[23,R]=FSAvis.TableauDestination.Cells[0,p])then
                    begin
                         OKDestination:=true;
                    end;
               p:=p+1;
               end;

               if(OKDestination=false)then
               begin
                    S:=S+1;
                    FSAvis.TableauDestination.Cells[0,S]:=FSAvis.TableauListeMouvement.Cells[23,R];
                    if(Destination='Déstination: ')
                    then Destination:=Destination+FSAvis.TableauListeMouvement.Cells[23,R]
                    else Destination:=Destination+'; '+FSAvis.TableauListeMouvement.Cells[23,R];
               end;
               /////////////////////////////////////////////////////////////////
          end;
     R:=R+1;
     end;

     if l>0 then FSAvis.TableauDesignationMouvement.RowCount:=l+1
            else FSAvis.TableauDesignationMouvement.RowCount:=2;

     if S>0 then FSAvis.TableauDestination.RowCount:=S+1
            else FSAvis.TableauDestination.RowCount:=2;

     FSAvis.EditNatureOperationMouvement.Lines.Add(Document+'; ('+Destination+').');

     NatureMouvement:='Détail: ';
     R:=1;
     while(R<=FSAvis.TableauDetaiMouvementAppartenanceMouvemant.RowCount-1)do
     begin
          if(NatureMouvement='Détail: ')then
          begin
               NatureMouvement:=NatureMouvement+FSAvis.TableauDetaiMouvementAppartenanceMouvemant.Cells[6,R]+' '+FSAvis.TableauDetaiMouvementAppartenanceMouvemant.Cells[4,R]+' '
                                +FSAvis.TableauDetaiMouvementAppartenanceMouvemant.Cells[2,R]+' '+FSAvis.TableauDetaiMouvementAppartenanceMouvemant.Cells[3,R];
          end
          else
          begin
               NatureMouvement:=NatureMouvement+'; '+FSAvis.TableauDetaiMouvementAppartenanceMouvemant.Cells[6,R]+' '+FSAvis.TableauDetaiMouvementAppartenanceMouvemant.Cells[4,R]+' '
                                +FSAvis.TableauDetaiMouvementAppartenanceMouvemant.Cells[2,R]+' '+FSAvis.TableauDetaiMouvementAppartenanceMouvemant.Cells[3,R];
          end;
     R:=R+1;
     end;

     FSAvis.EditNatureOperationMouvement.Lines.Add(NatureMouvement+'.');
end;

procedure TFSAvis.RBNatureDetaillerClick(Sender: TObject);
begin
     AutoNatureOperationDetailler;
end;

procedure TFSAvis.RBNatureCummulerClick(Sender: TObject);
begin
     AutoNatureOperationCummuler;
end;

Procedure MiseAjorAvisTypeAvis;
var  i,PositionTypeAvis,NumTypeAvis,SigneDebitCredit:integer; CompteImputation,DebitCredit,TypeProces,FichierConserne,Adresse,JourneauxAuxiliaireUtilise:string;
     OKModifAvis:boolean;
begin
     FSGenerateurBase.EditRapportMAJAvis.Lines.Text:='';
     TypeProces:='Business';   FichierConserne:=FSAvis.EditBaseAvis.Text;
     if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
     end;

     ChAvis:=Adresse;
          assignfile(FAvis,ChAvis);
          if FileExists(ChAvis)then
          Reset(FAvis)
          else Rewrite(FAvis);
          Seek(FAvis,0);
          i:=0;
          while not eof(FAvis)do
          begin
               read(FAvis,RAvis);
               IndiqueTypeAvis(RAvis.DesignationTypeAvis,PositionTypeAvis,NumTypeAvis,SigneDebitCredit,CompteImputation,DebitCredit,TypeProces,FichierConserne,JourneauxAuxiliaireUtilise);
               OKModifAvis:=false;

               if(DebitCredit<>'DébitCrédit')then
               begin
                    if(RAvis.DebitCredit<>DebitCredit)then
                    begin
                         RAvis.DebitCredit:=DebitCredit;
                         OKModifAvis:=true;
                         FSGenerateurBase.EditRapportMAJAvis.Lines.Add('Mise à jour Avis N°: '+inttostr(RAvis.NumAvis)+', Rubrique: DébitCrédit.');
                    end;  
               end;

               if(RAvis.TypeProces<>TypeProces)then
               begin
                    RAvis.TypeProces:=TypeProces;
                    OKModifAvis:=true;
                    FSGenerateurBase.EditRapportMAJAvis.Lines.Add('Mise à jour Avis N°: '+inttostr(RAvis.NumAvis)+', Rubrique: TypeProces.');
               end;

               if(RAvis.AvisConcerneTiers<>FichierConserne)then
               begin
                    RAvis.AvisConcerneTiers:=FichierConserne;
                    OKModifAvis:=true;
                    FSGenerateurBase.EditRapportMAJAvis.Lines.Add('Mise à jour Avis N°: '+inttostr(RAvis.NumAvis)+', Rubrique: FichierConserne.');
               end;


               if(OKModifAvis=true)then
               begin
                    Seek(FAvis,i);
                    write(FAvis,RAvis);
               end;
          i:=i+1;
          end;
          CloseFile(FAvis);
end;

procedure TFSAvis.BitBtn11Click(Sender: TObject);
var  R,l,NumTypeAvis,ChercheSigneDebitCredit,TailleMax,IndiceDateValeur:integer;
     RIB,Texte,CompteImputation,DebitCredit,TypeProces,FichierConserne,JourneauxAuxiliaireUtilise,Chiffre,
     Adresse,AdresseLogoBanque,LibelleOperation,DebitCreditDomiciliation:string;
     OKDomiciliation:boolean;
     Pourcentage:real;
begin
     FSAvis.AfficheTaxesAvisBanque.Visible:=true;
     FSAvis.EtatPrintType.Caption:='Avis Banque';
     FSAvis.RBActivePourcentage.Checked:=false;
     FSAvis.EditMontantAvis.SetFocus;

      FSAvis.BitPrintType.Caption:=FSAvis.BitPrintType.Caption+' Banque';
     if(FSAvis.EditDebitCreditDomiciliation.Text='Débit')
     then DebitCreditDomiciliation:='Crédit'
     else DebitCreditDomiciliation:='Débit';

     if(DebitCreditDomiciliation='Débit')
     then IndiceDateValeur:=-1
     else IndiceDateValeur:=1;

     if(DateCorrecte(FSAvis.EditDateExecutionAvis.Text)=true)
     then FSAvis.EditDateValeur.Date:=strtodate(FSAvis.EditDateExecutionAvis.Text)
     else FSAvis.EditDateValeur.Date:=FSAvis.EditDate.Date+IndiceDateValeur;

     CalculeTotauxAvis;
end;

procedure TFSAvis.EditMontantAvisKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

     if key in[VK_RETURN]then   
     begin
          FSAvis.EditCommissionAvis.SetFocus;
     end;

end;

procedure TFSAvis.EditMontantAvisKeyPress(Sender: TObject; var Key: Char);
begin
     if not(key in['0'..'9','.',','])then key:=#0;
     if key='.' then key:=',';
end;

procedure TFSAvis.EditCommissionAvisKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not(key in['0'..'9','.',','])then key:=#0;
     if key='.' then key:=',';
end;

procedure TFSAvis.EditTaxesAvisKeyPress(Sender: TObject; var Key: Char);
begin
     if not(key in['0'..'9','.',','])then key:=#0;
     if key='.' then key:=',';
end;

procedure TFSAvis.EditTotalAvisKeyPress(Sender: TObject; var Key: Char);
begin
     if not(key in['0'..'9','.',','])then key:=#0;
     if key='.' then key:=',';
end;

procedure TFSAvis.EditCommissionAvisKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

     if key in[VK_RETURN]then
     begin
          FSAvis.EditTaxesAvis.SetFocus;
     end;

end;

procedure TFSAvis.EditTaxesAvisKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

     if key in[VK_RETURN]then
     begin
          FSAvis.EditTotalAvis.SetFocus;
     end;

end;

procedure TFSAvis.EditTotalAvisKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

     if key in[VK_RETURN]then
     begin
          FSAvis.BitValider.SetFocus;
     end;

end;

procedure TFSAvis.BitBtn13Click(Sender: TObject);
begin
     FSAvis.AfficheTaxesAvisBanque.Visible:=false;
     FSAvis.AfficheOptionImpression.Visible:=false;
end;

procedure TFSAvis.BitValiderClick(Sender: TObject);
var  R,l,NumTypeAvis,ChercheSigneDebitCredit,TailleMax:integer;
     RIB,Texte,CompteImputation,DebitCredit,TypeProces,FichierConserne,JourneauxAuxiliaireUtilise,Chiffre,
     Adresse,AdresseLogoBanque,LibelleOperation,DebitCreditDomiciliation:string;
     OKDomiciliation:boolean;
begin

if(FSAvis.EditModePaiement.Text<>'')then         
begin
     PrintAvisBanque1.CacheAvisBanqueX.Enabled:=not(FSAvis.RBImpressionDouble.Checked);
     PrintAvisBanque1.CacheAvisBanqueX.Left:=0;
     PrintAvisBanque1.CacheAvisBanqueX.Top:=0;

     FSAvis.BitPrintType.Caption:=FSAvis.BitPrintType.Caption+' Banque';
     if(FSAvis.EditDebitCreditDomiciliation.Text='Débit')
     then DebitCreditDomiciliation:='crédit'
     else DebitCreditDomiciliation:='débit';

     OpenFParc(RParc);
     ChDomiciliation:=RParc.Parcours+'\'+Exercice+'FDomiciliation';
     assignfile(FDomiciliation,ChDomiciliation);
     if FileExists(ChDomiciliation)then
     Reset(FDomiciliation)
     else Rewrite(FDomiciliation);
     Seek(FDomiciliation,0);
     RIB:='';
     OKDomiciliation:=false;
     while not eof(FDomiciliation)do
     begin
          read(FDomiciliation,RDomiciliation);
          if(RDomiciliation.DesignationDomiciliation=FSAvis.EditDomiciliationAvis.Text)then
          begin
               OKDomiciliation:=true;
               RIB:=RDomiciliation.Identificateur;
          end;
     end;
     CloseFile(FDomiciliation);

     if ChercherBanqueGlobal(MidelLaters(RIB,1,3),RBanqueGlobalCopie)then
     begin
          if(FSAvis.RBAfficherLogoBanque.Checked=true)
          then ProcAffichePhoto(MidelLaters(RIB,1,3),'','LogoBanque',AdresseLogoBanque)
          else ProcAffichePhoto(MidelLaters(RIB,1,3),'Vide','LogoBanque',AdresseLogoBanque);

          if(FSAvis.RBAfficherLogoBanqueLong.Checked=true)
          then ProcAffichePhoto(MidelLaters(RIB,1,3),'','LogoBanqueLong',AdresseLogoBanque)
          else ProcAffichePhoto(MidelLaters(RIB,1,3),'Vide','LogoBanqueLong',AdresseLogoBanque);
     end;

     if ChercherAgence(MidelLaters(RIB,1,8),RAgenceCopie)then
     begin
          PrintAvisBanque1.DataAgenceDonneurOrdre.Caption:=RAgenceCopie.LibelleAgence;
          PrintAvisBanque1.DataAgenceDonneurOrdreX.Caption:=RAgenceCopie.LibelleAgence;
     end;

     if firstlaters(RParc.Text2,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text2,longueur(RParc.Text2)-9);
     if firstlaters(RParc.Text3,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text3,longueur(RParc.Text3)-9);
     if firstlaters(RParc.Text4,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text4,longueur(RParc.Text4)-9);
     if firstlaters(RParc.Text5,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text5,longueur(RParc.Text5)-9);
     if firstlaters(RParc.Text6,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text6,longueur(RParc.Text6)-9);
     if firstlaters(RParc.Text7,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text7,longueur(RParc.Text7)-9);
     if firstlaters(RParc.Text8,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text8,longueur(RParc.Text8)-9);
     if firstlaters(RParc.Text9,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text9,longueur(RParc.Text9)-9);
     if firstlaters(RParc.Text10,9)='Adresse: 'then Adresse:=Lastlaters(RParc.Text10,longueur(RParc.Text10)-9);

     {*******************Entreprise***************}
     OpenFParc(RParc);
     PrintAvisBanque1.DataNomRaisonSocial.Caption:=RParc.Text1;      PrintAvisBanque1.DataNomRaisonSocialX.Caption:=RParc.Text1;
     PrintAvisBanque1.DataAdresse1.Caption:=Adresse;                 PrintAvisBanque1.DataAdresse1X.Caption:=Adresse;
     PrintAvisBanque1.DataAdresse2.Caption:='BEJAIA';                PrintAvisBanque1.DataAdresse2X.Caption:='BEJAIA';
     {***************Fin Entreprise***************}

     PrintAvisBanque1.DataRIBDonneurOrdreBanque.Caption:=MidelLaters(RIB,1,3);          PrintAvisBanque1.DataRIBDonneurOrdreBanqueX.Caption:=MidelLaters(RIB,1,3);
     PrintAvisBanque1.DataRIBDonneurOrdreAgence.Caption:=MidelLaters(RIB,4,8);          PrintAvisBanque1.DataRIBDonneurOrdreAgenceX.Caption:=MidelLaters(RIB,4,8);
     PrintAvisBanque1.DataRIBDonneurOrdreGL.Caption:=MidelLaters(RIB,9,11);             PrintAvisBanque1.DataRIBDonneurOrdreGLX.Caption:=MidelLaters(RIB,9,11);
     PrintAvisBanque1.DataRIBDonneurOrdreIndicatifCle.Caption:=MidelLaters(RIB,12,18);  PrintAvisBanque1.DataRIBDonneurOrdreIndicatifCleX.Caption:=MidelLaters(RIB,12,18);
     PrintAvisBanque1.DataRIBDonneurOrdreOrdre.Caption:=MidelLaters(RIB,19,20);         PrintAvisBanque1.DataRIBDonneurOrdreOrdreX.Caption:=MidelLaters(RIB,19,20);

     if(DebitCreditDomiciliation='DEBIT')
     then LibelleOperation:=FSAvis.EditModePaiement.Text+' en faveur '
     else LibelleOperation:=FSAvis.EditModePaiement.Text+' d''ordre ';
     PrintAvisBanque1.DataLIBELLE.Lines.Text:=LibelleOperation+FSAvis.EditBenificiaire.Text;   PrintAvisBanque1.DataLIBELLEX.Lines.Text:=LibelleOperation+FSAvis.EditBenificiaire.Text;

     PrintAvisBanque1.DataTitreAvisBanque.Caption:='AVIS      DE      '+AnsiUpperCase(DebitCreditDomiciliation)+'      N°.    '+FSAvis.EditNumPiece.Text;                                                                      PrintAvisBanque1.DataTitreAvisBanqueX.Caption:='AVIS      DE      '+AnsiUpperCase(DebitCreditDomiciliation)+'      N°.    '+FSAvis.EditNumPiece.Text;

     PrintAvisBanque1.DataDateAvisBanque.Caption:='Le : '+datetostr(FSAvis.EditDate.Date);    PrintAvisBanque1.DataDateAvisBanqueX.Caption:='Le : '+datetostr(FSAvis.EditDate.Date);

     PrintAvisBanque1.DataDateValeur.Caption:='Date de valeur '+datetostr(FSAvis.EditDateValeur.Date);        PrintAvisBanque1.DataDateValeurX.Caption:='Date de valeur '+datetostr(FSAvis.EditDateValeur.Date);
     PrintAvisBanque1.DataInformationOperation.Lines.Text:='     Nous avons l''honneur de vous informer que nous portons au '+DebitCreditDomiciliation+' de votre compte l''operation suivante:';  PrintAvisBanque1.DataInformationOperationX.Lines.Text:='     Nous avons l''honneur de vous informer que nous portons au '+DebitCreditDomiciliation+' de votre compte l''operation suivante:';

     if(FSAvis.EditMontantAvis.Lines.Text<>'')
     then begin PrintAvisBanque1.DataMontant.Caption:=CompleteCharGauche(FSAvis.EditMontantAvis.Lines.Text,'*',30)+' DA'; PrintAvisBanque1.DataMontantX.Caption:=CompleteCharGauche(FSAvis.EditMontantAvis.Lines.Text,'*',30)+' DA';end
     else begin PrintAvisBanque1.DataMontant.Caption:='*************************'; PrintAvisBanque1.DataMontantX.Caption:='*************************'; end;

     if(FSAvis.EditCommissionAvis.Lines.Text<>'')
     then begin PrintAvisBanque1.DataCommission.Caption:=CompleteCharGauche(FSAvis.EditCommissionAvis.Lines.Text,'*',30)+' DA'; PrintAvisBanque1.DataCommissionX.Caption:=CompleteCharGauche(FSAvis.EditCommissionAvis.Lines.Text,'*',30)+' DA';end
     else begin PrintAvisBanque1.DataCommission.Caption:='*************************'; PrintAvisBanque1.DataCommissionX.Caption:='*************************'; end;

     if(FSAvis.EditTaxesAvis.Lines.Text<>'')
     then begin PrintAvisBanque1.DataTaxes.Caption:=CompleteCharGauche(FSAvis.EditTaxesAvis.Lines.Text,'*',30)+' DA'; PrintAvisBanque1.DataTaxesX.Caption:=CompleteCharGauche(FSAvis.EditTaxesAvis.Lines.Text,'*',30)+' DA';end
     else begin PrintAvisBanque1.DataTaxes.Caption:='*************************'; PrintAvisBanque1.DataTaxesX.Caption:='*************************'; end;

     if(FSAvis.EditTotalAvis.Lines.Text<>'')
     then begin PrintAvisBanque1.DataTotal.Caption:=CompleteCharGauche(FSAvis.EditTotalAvis.Lines.Text,'*',30)+' DA'; PrintAvisBanque1.DataTotalX.Caption:=CompleteCharGauche(FSAvis.EditTotalAvis.Lines.Text,'*',30)+' DA';end
     else begin PrintAvisBanque1.DataTotal.Caption:='*************************'; PrintAvisBanque1.DataTotalX.Caption:='*************************'; end;

     PrintAvisBanque1.Preview;
end;
FSAvis.AfficheOptionImpression.Visible:=false;
FSAvis.AfficheTaxesAvisBanque.Visible:=false;
end;

procedure TFSAvis.IncrimentEditPourcentageCommissionClick(Sender: TObject;
  Button: TUDBtnType);
begin
     CalculeTotauxAvis;
end;

procedure TFSAvis.IncrimentEditPourcentageTaxesClick(Sender: TObject;
  Button: TUDBtnType);
begin
   CalculeTotauxAvis;
end;

procedure TFSAvis.EditPourcentageCommissionExit(Sender: TObject);
begin
     CalculeTotauxAvis;
end;

procedure TFSAvis.EditPourcentageTaxesExit(Sender: TObject);
begin
     CalculeTotauxAvis;
end;

Procedure CalculeTotauxAvis;
var  Pourcentage,Signe,CommisionFixe:real; DebitCreditDomiciliation:string;
begin
     if(FSAvis.EditDebitCreditDomiciliation.Text='Débit')
     then DebitCreditDomiciliation:='Crédit'
     else DebitCreditDomiciliation:='Débit';

     if(DebitCreditDomiciliation='Crédit')
     then Signe:=-1
     else Signe:=1;

     if(FSAvis.EditPourcentageCommission.Text='')or(FSAvis.EditPourcentageCommission.Text='Barème')then
     begin
          if(FSAvis.RBActivePourcentage.Checked=true)then
          begin
               if(DebitCreditDomiciliation='Crédit')
               then FSAvis.EditPourcentageCommission.Text:=floattostr(1)
               else FSAvis.EditPourcentageCommission.Text:=floattostr(1/10);
          end
          else
          begin
               FSAvis.EditPourcentageCommission.Text:='Barème';
               if(DebitCreditDomiciliation='Crédit')
               then CommisionFixe:=5
               else CommisionFixe:=50;
          end;
     end;

     if(FSAvis.EditPourcentageTaxes.Text='')then
     begin
          FSAvis.EditPourcentageTaxes.Text:='19';
     end;

     if(FSAvis.RBActivePourcentage.Checked=true)then
     begin
          Pourcentage:=strtofloat(FSAvis.EditPourcentageCommission.Text)/100;

          FSAvis.EditMontantAvis.Lines.Text:=Vergule(FSAvis.EditMontantChiffre.Text,'2','C','');
          FSAvis.EditCommissionAvis.Lines.Text:=Vergule(floattostr(strtoreal(FSAvis.EditMontantChiffre.Text)*Pourcentage),'2','C','');
          FSAvis.EditTaxesAvis.Lines.Text:=Vergule(floattostr(strtoreal(FSAvis.EditCommissionAvis.Lines.Text)*strtoreal(FSAvis.EditPourcentageTaxes.Text)/100),'2','C','');
          FSAvis.EditTotalAvis.Lines.Text:=Vergule(floattostr(strtoreal(FSAvis.EditMontantAvis.Lines.Text)+(Signe*strtoreal(FSAvis.EditCommissionAvis.Lines.Text))+(Signe*strtoreal(FSAvis.EditTaxesAvis.Lines.Text))),'2','C','');
     end
     else
     begin
          FSAvis.EditMontantAvis.Lines.Text:=Vergule(FSAvis.EditMontantChiffre.Text,'2','C','');
          FSAvis.EditCommissionAvis.Lines.Text:=Vergule(floattostr(CommisionFixe),'2','C','');
          FSAvis.EditTaxesAvis.Lines.Text:=Vergule(floattostr(strtoreal(FSAvis.EditCommissionAvis.Lines.Text)*strtoreal(FSAvis.EditPourcentageTaxes.Text)/100),'2','C','');
          FSAvis.EditTotalAvis.Lines.Text:=Vergule(floattostr(strtoreal(FSAvis.EditMontantAvis.Lines.Text)+(Signe*strtoreal(FSAvis.EditCommissionAvis.Lines.Text))+(Signe*strtoreal(FSAvis.EditTaxesAvis.Lines.Text))),'2','C','');
     end;
end;

procedure TFSAvis.EditMontantAvisEnter(Sender: TObject);
begin
     FSAvis.EditMontantAvis.Text:=Vergule(FSAvis.EditMontantAvis.Text,'2','N','');
end;

procedure TFSAvis.EditMontantAvisExit(Sender: TObject);
begin
     FSAvis.EditMontantAvis.Text:=Vergule(FSAvis.EditMontantAvis.Text,'2','C','');
end;

procedure TFSAvis.EditCommissionAvisEnter(Sender: TObject);
begin
     FSAvis.EditCommissionAvis.Text:=Vergule(FSAvis.EditCommissionAvis.Text,'2','N','');
end;

procedure TFSAvis.EditCommissionAvisExit(Sender: TObject);
begin
     FSAvis.EditCommissionAvis.Text:=Vergule(FSAvis.EditCommissionAvis.Text,'2','C','');
end;

procedure TFSAvis.EditTaxesAvisEnter(Sender: TObject);
begin
     FSAvis.EditTaxesAvis.Text:=Vergule(FSAvis.EditTaxesAvis.Text,'2','N','');
end;

procedure TFSAvis.EditTaxesAvisExit(Sender: TObject);
begin
     FSAvis.EditTaxesAvis.Text:=Vergule(FSAvis.EditTaxesAvis.Text,'2','C','');
end;

procedure TFSAvis.EditTotalAvisEnter(Sender: TObject);
begin
     FSAvis.EditTotalAvis.Text:=Vergule(FSAvis.EditTotalAvis.Text,'2','N','');
end;

procedure TFSAvis.EditTotalAvisExit(Sender: TObject);
begin
     FSAvis.EditTotalAvis.Text:=Vergule(FSAvis.EditTotalAvis.Text,'2','C','');
end;

procedure TFSAvis.AfficheTaxesAvisBanqueExit(Sender: TObject);
begin
FSAvis.AfficheTaxesAvisBanque.Visible:=false;
end;

procedure TFSAvis.RBActivePourcentageClick(Sender: TObject);
begin
     FSAvis.EditPourcentageCommission.Enabled:=FSAvis.RBActivePourcentage.Checked;

     if(FSAvis.RBActivePourcentage.Checked=true)
     then FSAvis.EditPourcentageCommission.Text:=''
     else FSAvis.EditPourcentageCommission.Text:='Barème';

     CalculeTotauxAvis;
end;

procedure AffichageControleSerie(NumDomiciliation:string);
var   R,RSelect,l,NombrePieceSaisie:integer;  PremierNumPiece,DernierNumPiece,PremierNumPieceSaisie,DernierNumPieceSaisie:string;  OKSerie:boolean;
begin
     for R:=1 to FSAvis.TableauSeriePieceAvis.RowCount-1 do FSAvis.TableauSeriePieceAvis.RowHeights[R]:=20;

     l:=0;
     if(FSAvis.RBAfficheControleSerie.Checked=true)then
     begin
          R:=1;
          while(R<=FSAvis.TableauSeriePieceAvis.RowCount-1)do
          begin
               DernierNumeroSeriePieceSaisie(NumDomiciliation,FSAvis.TableauSeriePieceAvis.Cells[0,R],FSAvis.TableauSeriePieceAvis.Cells[2,R],PremierNumPiece,DernierNumPiece,PremierNumPieceSaisie,DernierNumPieceSaisie,NombrePieceSaisie);

               if(DernierNumPiece<>'')then
               begin
                    if(strtointeger(DernierNumPiece)-strtointeger(DernierNumPieceSaisie)>0)
                    then begin OKSerie:=true; l:=l+1; RSelect:=R; end
                    else OKSerie:=false;
               end
               else OKSerie:=false;

               if(OKSerie=true)
               then FSAvis.TableauSeriePieceAvis.RowHeights[R]:=20
               else FSAvis.TableauSeriePieceAvis.RowHeights[R]:=0;
          R:=R+1;
          end;
     end;

     if(l=1)then
     begin
          FSAvis.AfficheSeriePieceAvis.Height:=0;
          FSAvis.TableauSeriePieceAvis.Cells[1,RSelect]:='OK';
          ChargementNumPiece(NumDomiciliation);
     end;
end;

Procedure ChargementNumPiece(NumDomiciliation:string);
var  i,R,LMaxPiece,NumSeriePieceLast,EcartLongueurPiece,NombrePieceSaisie:integer;   OKSelectAvis,OKAvis,OKNumPieceSaisie:boolean;
     NumPiece,PremierNumPieceSerie,DernierNumPieceSerie,PremierNumPieceSaisie,DernierNumPieceSaisie,TypeProcesAvis,FichierConserneAvis,AdresseAvis,TypeProcesBaseAvis,FichierConserneBaseAvis,AdresseBaseAvis:string;
begin
R:=1;
OKSelectAvis:=false;
while(R<=FSAvis.TableauSeriePieceAvis.RowCount-1)and(OKSelectAvis=false)do
begin
     if(FSAvis.TableauSeriePieceAvis.Cells[1,R]='OK')then
     begin
          OKSelectAvis:=true;

           PremierNumPieceSerie:=FSAvis.TableauSeriePieceAvis.Cells[2,R];
           DernierNumPieceSerie:=FSAvis.TableauSeriePieceAvis.Cells[3,R];

           TypeProcesBaseAvis:='Business';   FichierConserneBaseAvis:='FBaseAvis';
           if not(FunctionAdresseProces(TypeProcesBaseAvis,FichierConserneBaseAvis,'',AdresseBaseAvis,TypeProcesReseaux,NomDossierPartageReseauxOut))then
           begin
                AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserneBaseAvis+' recherché !');
           end;

           ChBaseAvis:=AdresseBaseAvis;
           assignfile(FBaseAvis,ChBaseAvis);
           if FileExists(ChBaseAvis)then
           Reset(FBaseAvis)
           else Rewrite(FBaseAvis);
           Seek(FBaseAvis,0);
           NumPiece:='';
           LMaxPiece:=0;
           OKAvis:=false;
           while not eof(FBaseAvis)do
           begin
                read(FBaseAvis,RBaseAvis);

                FichierConserneAvis:=RBaseAvis.DesignationBaseAvis;
                TypeProcesAvis:='Business';
                if not(FunctionAdresseProces(TypeProcesAvis,FichierConserneAvis,'',AdresseAvis,TypeProcesReseaux,NomDossierPartageReseauxOut))then
                begin
                      AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserneAvis+' recherché !');
                end;

                 ChAvis:=AdresseAvis;
                 assignfile(FAvis,ChAvis);
                 if FileExists(ChAvis)then
                 Reset(FAvis)
                 else Rewrite(FAvis);
                 Seek(FAvis,0);
                 i:=0;
                 while not eof(FAvis)do
                 begin
                      read(FAvis,RAvis);

                      if(PremierNumPieceSerie<>'')and(DernierNumPieceSerie<>'')then
                      begin
                           if(strtointeger(RAvis.NumPiece)>=strtointeger(PremierNumPieceSerie))
                           and(strtointeger(RAvis.NumPiece)<=strtointeger(DernierNumPieceSerie))
                           then OKNumPieceSaisie:=true
                           else OKNumPieceSaisie:=false;
                      end
                      else OKNumPieceSaisie:=true;
                                                   
                      if(OKNumPieceSaisie=true)
                      and(RAvis.NumDomiciliationAvis=NumDomiciliation)
                      and(Firstlaters(RAvis.NumPiece,longueur(FSAvis.TableauSeriePieceAvis.Cells[0,R]))=FSAvis.TableauSeriePieceAvis.Cells[0,R])
                      then
                      begin
                           if(longueur(RAvis.NumPiece)>=LMaxPiece)then LMaxPiece:=Longueur(RAvis.NumPiece);
                           if(strtointeger(RAvis.NumPiece)>=strtointeger(NumPiece))then NumPiece:=inttostr(strtointeger(RAvis.NumPiece)+1);

                           OKAvis:=true;
                      end;
                      i:=i+1;
                 end;
                 CloseFile(FAvis);
           end;
           CloseFile(FBaseAvis);

           if(OKAvis=false)then
           begin
                LMaxPiece:=Longueur(FSAvis.TableauSeriePieceAvis.Cells[2,R]);
                NumPiece:=FSAvis.TableauSeriePieceAvis.Cells[2,R];
           end;
     end; 
R:=R+1;
end;

if(OKSelectAvis=true)then
begin
     if(FSAvis.TableauSeriePieceAvis.Cells[0,0]='CP')
     then FSAvis.EditNumPieceCP.Text:=Completezerogauche(NumPiece,inttostr(LMaxPiece));
     if(FSAvis.TableauSeriePieceAvis.Cells[0,0]='')
     then FSAvis.EditNumPiece.Text:=Completezerogauche(NumPiece,inttostr(LMaxPiece));
end
else
begin
     if(FSAvis.TableauSeriePieceAvis.Cells[0,0]='CP')
     then FSAvis.EditNumPieceCP.Text:='';
     if(FSAvis.TableauSeriePieceAvis.Cells[0,0]='')
     then FSAvis.EditNumPiece.Text:='';
end;

if(FSAvis.TableauSeriePieceAvis.Cells[0,0]='CP')
then FSAvis.EditNumPiececp.SetFocus;
if(FSAvis.TableauSeriePieceAvis.Cells[0,0]='')
then FSAvis.EditNumPiece.SetFocus;

FSAvis.AfficheSeriePieceAvis.Height:=0;

end;

procedure TFSAvis.RadioButton2Click(Sender: TObject);
begin
     FSAvis.TypeTrie.Caption:='+';
end;

procedure TFSAvis.RadioButton1Click(Sender: TObject);
begin
     FSAvis.TypeTrie.Caption:='-';
end;

procedure TFSAvis.TableauUniteFondsClick(Sender: TObject);
var TypeData:string; 
begin
     if(FSAvis.RBRubriqueTrieTableauUniteFond.Checked=true)then
begin
     FSAvis.EditRubriqueTrie.Text:=inttostr(FSAvis.TableauUniteFonds.Col);

     TypeData:='';

     if(FSAvis.TableauUniteFonds.Col=2)
     or(FSAvis.TableauUniteFonds.Col=3)
     then
     begin
          TypeData:='';
     end;

     if(FSAvis.TableauUniteFonds.Col=1)
     or(FSAvis.TableauUniteFonds.Col=4)
     then
     begin
          TypeData:='Num';
     end;

     FSAvis.RBRubriqueTrieTableauUniteFond.Checked:=false;
     TrierTableauARowSpecial(FSAvis.TableauUniteFonds,1,FSAvis.TableauUniteFonds.RowCount-1,1,FSAvis.EditRubriqueTrie.Text,TypeData,FSAvis.TypeTrie.Caption);
end;
end;

procedure TFSAvis.TimerAlerteValiditeAvisTimer(Sender: TObject);
begin
     if(FSAvis.AfficheValiditeAvis.Color=$0080FFFF)
     then FSAvis.AfficheValiditeAvis.Color:=$0080FFFF-50
     else FSAvis.AfficheValiditeAvis.Color:=$0080FFFF;
end;

procedure TFSAvis.FormClose(Sender: TObject; var Action: TCloseAction);
var   OKAvis:boolean;   TypeProces,FichierConcerne,Adresse:string;
begin
     ActiverNomForm(0,(Sender as TComponent).Name);
     FSAvis.TimerAlerteValiditeAvis.Enabled:=false;
     FSAvis.AfficheValiditeAvis.Color:=$0080FFFF;

     if(FSTraitementDonnees.Showing=true)then
     begin
          if(FSTraitementDonnees.PageFinanceTiers.Visible=true)then FSTraitementDonnees.CacherTableauFinanceTiers.Visible:=true;
          if(FSTraitementDonnees.PageFinanceDomiciliation.Visible=true)then FSTraitementDonnees.CacherTableauAvis.Visible:=true;
     end;

     if(FSFicheSaisie.Showing=true)then
     begin
          if(ExisteNumAvisinTexte(FSAvis.EditBaseAvis.Text,FSAvis.EditNumAvis.Text,FSFicheSaisie.EditNumAvis.Text))then
          begin
               TypeProces:='Business';   FichierConcerne:=FSAvis.EditBaseAvis.Text;
               if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
               begin
                    AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
               end;

               ChAvis:=Adresse;
               assignfile(FAvis,ChAvis);
               if FileExists(ChAvis)then
               Reset(FAvis)
               else Rewrite(FAvis);
               Seek(FAvis,0);
               OKAvis:=false;
               while not eof(FAvis)and(OKAvis=false)do
               begin
                    read(FAvis,RAvis);
                    if(RAvis.NumAvis=strtointeger(FSAvis.EditNumAvis.Text))then
                    begin
                         OKAvis:=true;
                    end;
               end;
               Closefile(FAvis);

               if(OKAvis=false)then
               begin
                    FSFicheSaisie.EditNumAvis.Text:='';
               end;
          end;

          FSFicheSaisie.TableauListeMouvement.SetFocus;
     end;
end;

procedure TFSAvis.EditDomiciliationPieceChange(Sender: TObject);
var    i,RowSerie,RSerie,PositionTypeAvis,NumTypeAvis,ChercheSigneDebitCredit:integer; NumPiece:integer;  OKSerieCharger:boolean;
       CompteImputation,DebitCredit,TypeProces,FichierConserne,JourneauxAuxiliaireUtilis,JourneauxAuxiliaireUtilise:string;
begin

     ///////////////////////   Contrôle type de domiciliation autorisé   ///////
     RDomiciliationCopie:=ChercherDomiciliation('',FSAvis.EditDomiciliationAvis.Text,PositionDomiciliationRecherche);

     if(RDomiciliationCopie.EtatSoldeDebitCredit='Débit')or(RDomiciliationCopie.EtatSoldeDebitCredit='Crédit')then
     begin
          if(IndiqueTypeAvis(FSAvis.EditTypeAvis.Text,PositionTypeAvis,NumTypeAvis,ChercheSigneDebitCredit,CompteImputation,DebitCredit,TypeProces,FichierConserne,JourneauxAuxiliaireUtilise)=true)then
          begin
               if(RDomiciliationCopie.EtatSoldeDebitCredit<>DebitCredit)then
               begin
                    RDomiciliationCopie:=ChercherDomiciliation('',FSAvis.EditDomiciliationPiece.Text,PositionDomiciliationRecherche);

                    if(RDomiciliationCopie.NumDomiciliation='')
                    or(RDomiciliationCopie.DesignationDomiciliation='')
                    or(RDomiciliationCopie.EtatSoldeDebitCredit='')
                    then
                    begin
                         showmessage('Opération non autorisé ! le type d''avis nécessite une domiciliation planifiée !');
                         Exit;
                    end;
               end;
          end;
      end;
     ///////////////////////////////////////////////////////////////////////////

if(FSAvis.EditDomiciliationPiece.Text='Autres')then
begin
     FSAvis.AfficheAutresAgenceBanque.Visible:=true;
     FSAvis.TableauAutresAgenceBanque.Visible:=true;
     FSAvis.EditRechercheCodeAgence.SetFocus;
     FSAvis.EditSourceDomiciliation.Text:='Piece';
end
else
begin
      FSAvis.EditModePaiementCP.Text:='';
      FSAvis.EditDomiciliationAvisCP.Text:='';
      FSAvis.EditNumPieceCP.Text:='';

      RDomiciliationCopie:=ChercherDomiciliation('',FSAvis.EditDomiciliationPiece.Text,PositionDomiciliationRecherche);
      FSAvis.EditNumDomiciliationPiece.Text:=RDomiciliationCopie.NumDomiciliation;
      FSAvis.EditNumCompteDomiciliation.Text:=RDomiciliationCopie.CompteImputation;
      if ChercherCompteComptable(Firstlaters(FSAvis.EditNumCompteDomiciliation.Text,6),'','PlanComptable',RRegistreCompte)then
      begin
           FSAvis.EditCompteDomiciliation.Text:=RRegistreCompte.Designation;
      end
      else
      begin
           FSAvis.EditNumCompteDomiciliation.Text:=RDomiciliationCopie.NumDomiciliation;
           FSAvis.EditCompteDomiciliation.Text:=RDomiciliationCopie.DesignationDomiciliation;
      end;

      if(FSAvis.EditNumAvis.Text<>'')then
      begin
           if(FSAvis.EditDomiciliationPiece.Text<>'')then
           begin
                ListeSeriePieceDomiciliation(FSAvis.TableauSeriePieceAvis,FSAvis.EditNumDomiciliationPiece.Text,FSAvis.EditModePaiement.Text,FSAvis.EditLongueureSeriePiece.Text);

                RowSerie:=FSAvis.TableauSeriePieceAvis.RowCount-1;

                ListeSeriePieceDomiciliationNew(FSAvis.TableauSeriePieceAvis,RowSerie,FSAvis.EditNumDomiciliationPiece.Text,FSAvis.EditModePaiement.Text,FSAvis.EditLongueureSeriePiece.Text);

                RowSerie:=FSAvis.TableauSeriePieceAvis.RowCount-1;
                if(RowSerie>0)then
                begin
                     FSAvis.AfficheSeriePieceAvis.Height:=401;
                     FSAvis.TableauSeriePieceAvis.SetFocus;
                     FSAvis.TableauSeriePieceAvis.Cells[0,0]:='';
                end
                else
                begin
                     FSAvis.AfficheSeriePieceAvis.Height:=0;
                end;
           end
           else
           begin
                showmessage('Veuillez indiquer la Domiciliation SVP !');
                FSAvis.EditDomiciliationPiece.SetFocus;
           end;
      end;

      if(FSAvis.RBActiveSoldeDomiciliation.Checked=true)then ControleSoldeDomiciliation(FSAvis.EditTypeAvis.Text,'',FSAvis.EditDomiciliationPiece.Text,datetostr(FSAvis.EditDate.Date),FSAvis.EditMontantChiffre.Text);

      if(IndiqueTypeAvis(FSAvis.EditTypeAvis.Text,PositionTypeAvis,NumTypeAvis,ChercheSigneDebitCredit,CompteImputation,DebitCredit,TypeProces,FichierConserne,JourneauxAuxiliaireUtilise)=true)then
      begin
           if(RDomiciliationCopie.EtatSoldeDebitCredit<>DebitCredit)then
           begin
                FSAvis.EditNumDomiciliationAvis.Text:=FSAvis.EditNumDomiciliationPiece.Text;
                FSAvis.EditDomiciliationAvis.Text:=FSAvis.EditDomiciliationPiece.Text;
           end;
      end;

      AffichageControleSerie(FSAvis.EditNumDomiciliationPiece.Text);
end; 

end;

procedure TFSAvis.EditDomiciliationPieceEnter(Sender: TObject);
begin
if not ControleNouveauAvis then exit;
end;

procedure TFSAvis.EditDomiciliationPieceExit(Sender: TObject);
begin
     if(FSAvis.EditDomiciliationPiece.Text='')
     then FSAvis.EditDomiciliationPiece.SetFocus
     else
     begin
          if(FSAvis.AfficheSeriePieceAvis.Height=0)then
          begin
               if(FSAvis.EditNumPiece.Text='')then FSAvis.EditNumPiece.SetFocus;
          end;

          OpenFParc(RParc);
          ChDomiciliation:=RParc.Parcours+'\'+Exercice+'FDomiciliation';
          assignfile(FDomiciliation,ChDomiciliation);
          if FileExists(ChDomiciliation)then
          Reset(FDomiciliation)
          else Rewrite(FDomiciliation);
          Seek(FDomiciliation,0);
          FSAvis.EditDomiciliationAvisCP.Items.Text:='';
          while not eof(FDomiciliation)do
          begin
               read(FDomiciliation,RDomiciliation);
               if(RDomiciliation.DesignationDomiciliation<>FSAvis.EditDomiciliationPiece.Text)then
               begin
                    FSAvis.EditDomiciliationAvisCP.Items.Add(RDomiciliation.DesignationDomiciliation);
               end;
          end;
          CloseFile(FDomiciliation);

          FSAvis.EditDomiciliationAvisCP.ItemIndex:=0;
     end;
end;

procedure TFSAvis.EditDomiciliationPieceKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     
if key in[VK_RETURN]then
begin
     FSAvis.EditNumPiece.SetFocus;
end;

end;

procedure TFSAvis.BitBtn12Click(Sender: TObject);
var  i,CodeAgence:integer;  TypeProces,FichierConcerne,Adresse:string;
begin
     if(longueur(FSAvis.EditRechercheCodeAgence.Text)<>3)then
     begin
          showmessage('Veuillez indiquer le code banque SVP !');
          FSAvis.EditRechercheCodeAgence.SetFocus;
          Exit;
     end;
     
     TypeProces:='Paie';
     FichierConcerne:='FAgence';
     Adresse:='';
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
     end;

     ChAgence:=Adresse;
     assignfile(FAgence,ChAgence);
     if FileExists(ChAgence)
     then Reset(FAgence)
     else Rewrite(FAgence);
     Seek(FAgence,0);
     i:=0;
     CodeAgence:=1;
     while not eof(FAgence)do
     begin
          read(FAgence,RAgence);
          if(RAgence.CodeBanque=FSAvis.EditRechercheCodeAgence.Text)then
          if(CodeAgence<=strtointeger(RAgence.CodeAgence))then CodeAgence:=strtointeger(RAgence.CodeAgence)+1;
          i:=i+1;
     end;
     CloseFile(FAgence);
     FSAvis.AfficheAgence.Visible:=true;
     FSAvis.BitOperationAgence.Kind:=bkAll;
     FSAvis.BitOperationAgence.Caption:='Valider';
     FSAvis.EditPositionAgence.Text:=inttostr(i);
     FSAvis.EditCodeAgence.Text:=Completezerogauche(inttostr(CodeAgence),'5');
     FSAvis.EditLibelleAgence.Text:='';
     FSAvis.EditAdresseAgence.Text:='';
     FSAvis.EditTelephoneAgence.Text:='';
     FSAvis.EditCodeAgence.SetFocus;
end;

procedure TFSAvis.BitBtn1Click(Sender: TObject);
begin
     FSAvis.AfficheAgence.Visible:=false;
end;

procedure TFSAvis.BitOperationAgenceClick(Sender: TObject);
var RExistant,RSupprimer,RSauvgarder:integer;  OKRemise:boolean; CodeAgenceSelect,TypeProces,FichierConcerne,Adresse:string;
begin
     if(FSAvis.BitOperationAgence.Caption='Valider')then
     begin
          TypeProces:='Paie';
          FichierConcerne:='FAgence';
          Adresse:='';
          if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
               AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
          end;

          ChAgence:=Adresse;
          assignfile(FAgence,ChAgence);
          if FileExists(ChAgence)
          then Reset(FAgence)
          else Rewrite(FAgence);
          RAgence.PositionAgence:=strtointeger(FSAvis.EditPositionAgence.Text);
          RAgence.CodeBanque:=FSAvis.EditRechercheCodeAgence.Text;
          RAgence.CodeAgence:=FSAvis.EditCodeAgence.Text;
          RAgence.LibelleAgence:=FSAvis.EditLibelleAgence.Text;
          RAgence.AdresseAgence:=FSAvis.EditAdresseAgence.Text;
          RAgence.TelephoneAgence:=FSAvis.EditTelephoneAgence.Text;
          Seek(FAgence,RAgence.PositionAgence);
          write(FAgence,RAgence);

     CloseFile(FAgence);
     CodeAgenceSelect:=FSAvis.EditCodeAgence.Text;
     end;

     if(FSAvis.BitOperationAgence.Caption='Supprimer')then
     begin
          CodeAgenceSelect:='';
          if SupprimerFAgence(FSAvis.EditRechercheCodeAgence.Text,FSAvis.EditCodeAgence.Text,RExistant,RSupprimer,RSauvgarder)then
          begin
               if(RSupprimer>0)
               then AfficherMessage('Suppression réussie ! FTotal: '+inttostr(RExistant)+', FSupprimer: '+inttostr(RSupprimer)+', FSauvgarder: '+inttostr(RSauvgarder))
               else AfficherMessage('Aucun Registre Supprimer ! FTotal: '+inttostr(RExistant)+', FSupprimer: '+inttostr(RSupprimer)+', FSauvgarder: '+inttostr(RSauvgarder));
          end;
     end;

     RechercheAgenceBanque(FSAvis.TableauAutresAgenceBanque,FSAvis.EditRechercheCodeAgence.Text,'',RAgenceCopie);

     FSAvis.AfficheAgence.Visible:=false;

     FSAvis.TableauAutresAgenceBanque.SetFocus;
end;

procedure TFSAvis.EditCodeAgenceKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

     if key in[VK_RETURN]then
     begin
          FSAvis.EditLibelleAgence.SetFocus;
     end;

end;

procedure TFSAvis.EditLibelleAgenceKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

     if key in[VK_RETURN]then
     begin
          FSAvis.EditAdresseAgence.SetFocus;
     end;

end;

procedure TFSAvis.EditAdresseAgenceKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

     if key in[VK_RETURN]then
     begin
          FSAvis.EditTelephoneAgence.SetFocus;
     end;

end;

procedure TFSAvis.EditTelephoneAgenceKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

     if key in[VK_RETURN]then
     begin
          FSAvis.BitOperationAgence.SetFocus;
     end;

end;

procedure TFSAvis.EditDomiciliationAvisKeyPress(Sender: TObject;
  var Key: Char);
var   i:integer;  OKBoxListe,OKControle:boolean; iNO:string;
begin
     i:=0;
     if(FSAvis.EditDomiciliationAvis.ItemIndex>0)then iNO:=inttostr(FSAvis.EditDomiciliationAvis.ItemIndex) else iNO:='';
     OKBoxListe:=false;
     while(i<=FSAvis.EditDomiciliationAvis.Items.Count)and(OKBoxListe=false)do
     begin
          if(iNO<>'')then
          begin
               if(i=strtointeger(iNO))
               then OKControle:=false
               else OKControle:=true;
          end
          else OKControle:=true;

          if(OKControle=true)and(AnsiUpperCase(firstlaters(FSAvis.EditDomiciliationAvis.Items.Strings[i],longueur(key)))=AnsiUpperCase(key))then
          begin
               OKBoxListe:=true;
               FSAvis.EditDomiciliationAvis.ItemIndex:=i;
               FSAvis.EditDomiciliationAvis.Text:=FSAvis.EditDomiciliationAvis.Items.Strings[i];
          end;
     i:=i+1;
     end;

     if(OKBoxListe=false)then begin FSAvis.EditDomiciliationAvis.ItemIndex:=0; FSAvis.EditDomiciliationAvis.Text:=''; end;
     if(FSAvis.RBBoxListeAutres.Checked=false)then key:=#0;
end;

procedure TFSAvis.EditDomiciliationPieceKeyPress(Sender: TObject;
  var Key: Char);
var   i:integer;  OKBoxListe,OKControle:boolean; iNO:string;
begin
     i:=0;
     if(FSAvis.EditDomiciliationPiece.ItemIndex>0)then iNO:=inttostr(FSAvis.EditDomiciliationPiece.ItemIndex) else iNO:='';
     OKBoxListe:=false;
     while(i<=FSAvis.EditDomiciliationPiece.Items.Count)and(OKBoxListe=false)do
     begin
          if(iNO<>'')then
          begin
               if(i=strtointeger(iNO))
               then OKControle:=false
               else OKControle:=true;
          end
          else OKControle:=true;

          if(OKControle=true)and(AnsiUpperCase(firstlaters(FSAvis.EditDomiciliationPiece.Items.Strings[i],longueur(key)))=AnsiUpperCase(key))then
          begin
               OKBoxListe:=true;
               FSAvis.EditDomiciliationPiece.ItemIndex:=i;
               FSAvis.EditDomiciliationPiece.Text:=FSAvis.EditDomiciliationPiece.Items.Strings[i];
          end;
     i:=i+1;
     end;

     if(OKBoxListe=false)then begin FSAvis.EditDomiciliationPiece.ItemIndex:=0; FSAvis.EditDomiciliationPiece.Text:=''; end;
     if(FSAvis.RBBoxListeAutres.Checked=false)then key:=#0;
end;

procedure TFSAvis.TableauSeriePieceAvisContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
var  R:integer;
begin
     AjusterColWidth(FSAvis.TableauSeriePieceAvis,'','');

     for R:=1 to FSAvis.TableauSeriePieceAvis.RowCount-1 do FSAvis.TableauSeriePieceAvis.RowHeights[R]:=24;
end;

procedure TFSAvis.PageOptionsAvisShow(Sender: TObject);
begin
     FSAvis.RBActiveSoldeDomiciliation.Enabled:=FunctionAutoriserDebitCreditSansSolde;

     ProcListeMouvement(FSAvis.TableauMouvement,'','','','');
     FSAvis.TableauMouvement.RowCount:=FSAvis.TableauMouvement.RowCount+1;
     FSAvis.TableauMouvement.Cells[0,FSAvis.TableauMouvement.RowCount-1]:='';
     FSAvis.TableauMouvement.Cells[1,FSAvis.TableauMouvement.RowCount-1]:='';
     FSAvis.TableauMouvement.Cells[2,FSAvis.TableauMouvement.RowCount-1]:='';
     FSAvis.TableauMouvement.Cells[3,FSAvis.TableauMouvement.RowCount-1]:='Tous';
     FSAvis.TableauMouvement.Row:=FSAvis.TableauMouvement.RowCount-1;
     ListeMouvementAssocierAvis(FSAvis.TableauListeMouvementAssocierAvis,inttostr(strtointeger(FSAvis.EditNumAvis.Text)),FSAvis.TableauMouvement.Cells[0,FSAvis.TableauMouvement.Row],FSAvis.TableauMouvement.Cells[1,FSAvis.TableauMouvement.Row],datetostr(EditTiersDateDebut.Date),datetostr(EditTiersDateFin.Date),FSAvis.EditTiersCodeTiers.Text);
end;                                                                     

Procedure ListeMouvementAssocierAvis(TableauListeMouvementAssocierAvis:TStringGrid; NumAvis,PositionTypeMouvement,PositionMouvement,TiersDateDebut,TiersDateFin,CodeTiers:string);
var  R,C,L:integer;  OKMouvement:boolean;  NotCol:string;   MontantMouvementTotal:real;  TMouvementCopie:TMouvements;
begin
     TableauListeMouvementAssocierAvis.ColCount:=10;
     TableauListeMouvementAssocierAvis.Cols[0].Text:='Or';
     TableauListeMouvementAssocierAvis.Cols[1].Text:='Num Avis';
     TableauListeMouvementAssocierAvis.Cols[2].Text:='Date Avis';
     TableauListeMouvementAssocierAvis.Cols[3].Text:='Montant Avis';
     TableauListeMouvementAssocierAvis.Cols[4].Text:='Code Tiers Avis';

     TableauListeMouvementAssocierAvis.Cols[5].Text:='Num Mt';
     TableauListeMouvementAssocierAvis.Cols[6].Text:='Date Mt';
     TableauListeMouvementAssocierAvis.Cols[7].Text:='Montant Mt';
     TableauListeMouvementAssocierAvis.Cols[8].Text:='Code Tiers Mt';
     TableauListeMouvementAssocierAvis.Cols[9].Text:='Tiers Mt';

     TMouvementCopie:=RemplireTMouvement(FSAvis.TableauMouvement.Cells[0,FSAvis.TableauMouvement.Row]);

     TableauListeMouvementAssocierAvis.RowCount:=2;
     TableauListeMouvementAssocierAvis.Rows[1].Text:='';
     ChListeMouvement:=IndiqueAdresseListeMouvement(PositionTypeMouvement,TypeProcesReseauxListeMouvement); FSAvis.AfficherAdresseAvis.Text:=ChListeMouvementCopie;
     assignfile(FListeMouvement,ChListeMouvement);
     if FileExists(ChListeMouvement)then
     Reset(FListeMouvement)
     else begin Showmessage('Attention ! '+ChListeMouvement+' n''existe pas !'); Exit; end;
     Seek(FListeMouvement,0);
     R:=0;
     MontantMouvementTotal:=0;
     while not eof(FListeMouvement)do
     begin
          read(FListeMouvement,RListeMouvement);

          OKMouvement:=RListeMouvementCopie.ValidationListeMouvement;

          if(OKMouvement=true)then
          begin
               if(RListeMouvement.ListeNumAvis<>'')then
               begin
                    if(ExisteNumInTexte(NumAvis,RListeMouvement.ListeNumAvis))
                    then OKMouvement:=true
                    else OKMouvement:=false;
               end
               else OKMouvement:=false;
          end;

          if(OKMouvement=true)then
          begin
               if(strtodate(RListeMouvement.DateMouvement)>=strtodate(TiersDateDebut))
               and(strtodate(RListeMouvement.DateMouvement)<=strtodate(TiersDateFin))
               then OKMouvement:=true
               else OKMouvement:=false;
          end;

          if(OKMouvement=true)then
          begin
               if(CodeTiers<>'')then
               begin
                    if(RListeMouvement.CodeTiers=CodeTiers)
                    then OKMouvement:=true
                    else OKMouvement:=false;
               end;
          end;

          if(OKMouvement=true)then
          begin
               if(PositionMouvement<>'')and(PositionMouvement<>'Pr')then
               begin
                    if(RListeMouvement.PositionMouvement=strtointeger(PositionMouvement))
                    then OKMouvement:=true
                    else OKMouvement:=false;
               end;
          end;

          if(OKMouvement=true)then
          begin
               R:=R+1;
               TableauListeMouvementAssocierAvis.Rows[R].Text:=inttostr(R);
               ChercherAvisUnique(NumAvis,'',RAvisCopie,PositionAvisRecherche);
               TableauListeMouvementAssocierAvis.Cells[1,R]:=inttostr(RAvisCopie.NumAvis);
               TableauListeMouvementAssocierAvis.Cells[2,R]:=RAvisCopie.DateAvis;
               TableauListeMouvementAssocierAvis.Cells[3,R]:=Vergule(Floattostr(RAvisCopie.Montant),'2','C','');
               TableauListeMouvementAssocierAvis.Cells[4,R]:=RAvisCopie.CodeTiers;

               //RMouvementCopie:=ChercherMouvement(inttostr(RListeMouvement.PositionTypeMouvement),RListeMouvement.PositionMouvement,AdresseFichierConcerne);
               TableauListeMouvementAssocierAvis.Cells[5,R]:=TMouvementCopie[RListeMouvement.PositionMouvement].DesignationMouvement+' N°: '+inttostr(RListeMouvement.NumListeMouvement);
               TableauListeMouvementAssocierAvis.Cells[6,R]:=RListeMouvement.DateMouvement;
               TableauListeMouvementAssocierAvis.Cells[7,R]:=Vergule(Floattostr(RListeMouvement.MontantMouvement),'2','C','');
               RTiersCopie:=ChercherTiers(RListeMouvement.TypeProces,RListeMouvement.FichierTiersConserne,RListeMouvement.CodeTiers,'');
               TableauListeMouvementAssocierAvis.Cells[8,R]:=RTiersCopie.CodeTiers;
               TableauListeMouvementAssocierAvis.Cells[9,R]:=RTiersCopie.NomTiers+' '+RTiersCopie.PrenomTiers;

               MontantMouvementTotal:=MontantMouvementTotal+RListeMouvement.MontantMouvement;

               ListeNumAvisAssocierMouvement(FSAvis.TableauListeNumAvisMouvement,FSAvis.TableauMouvement.Cells[0,FSAvis.TableauMouvement.Row],FSAvis.TableauMouvement.Cells[1,FSAvis.TableauMouvement.Row],inttostr(RListeMouvement.NumListeMouvement),datetostr(FSAvis.EditTiersDateDebut.Date),datetostr(FSAvis.EditTiersDateFin.Date),FSAvis.EditTiersCodeTiers.Text);
          end;
     end;
     CloseFile(FListeMouvement);

     if(R>0)then
            begin
                 TableauListeMouvementAssocierAvis.RowCount:=R+3;
                 TableauListeMouvementAssocierAvis.Rows[R+1].Text:='';
                 TableauListeMouvementAssocierAvis.Rows[R+2].Text:='';

                 TableauListeMouvementAssocierAvis.Cells[6,R+2]:='Total: ';
                 TableauListeMouvementAssocierAvis.Cells[7,R+2]:=Vergule(Floattostr(MontantMouvementTotal),'2','C','');
            end
            else TableauListeMouvementAssocierAvis.RowCount:=2;

     if(strtoreal(FSAvis.TableauListeNumAvisMouvement.Cells[3,FSAvis.TableauListeNumAvisMouvement.RowCount-1])>0)then
     begin
          if(strtoreal(FSAvis.TableauListeNumAvisMouvement.Cells[3,FSAvis.TableauListeNumAvisMouvement.RowCount-1])<>strtoreal(TableauListeMouvementAssocierAvis.Cells[7,TableauListeMouvementAssocierAvis.RowCount-1]))then
          begin
               FSAvis.TableauListeNumAvisMouvement.FixedColor:=clRed;
          end
          else
          begin
               FSAvis.TableauListeNumAvisMouvement.FixedColor:=clLime;
          end;
     end
     else FSAvis.TableauListeNumAvisMouvement.FixedColor:=clBtnFace;

     NotCol:='';

     for C:=1 to TableauListeMouvementAssocierAvis.ColCount-1 do if ExisteNumInTexte(inttostr(C),NotCol)then TableauListeMouvementAssocierAvis.ColWidths[C]:=0;
     AjusterColWidth(TableauListeMouvementAssocierAvis,'',NotCol)
end;

Procedure ListeNumAvisAssocierMouvement(TableauListeNumAvis:TStringGrid; PositionTypeMouvement,PositionMouvement,NumListeMouvement,TiersDateDebut,TiersDateFin,CodeTiers:string);
var  R,C:integer;  OKMouvement:boolean;  NotCol:string;   MontantTotalAvis:real; TAvisCopie:TAviss;
begin
     TableauListeNumAvis.ColCount:=6;
     TableauListeNumAvis.Cols[0].Text:='Or';
     TableauListeNumAvis.Cols[1].Text:='Num Avis';
     TableauListeNumAvis.Cols[2].Text:='Date Avis';
     TableauListeNumAvis.Cols[3].Text:='Montant Avis';
     TableauListeNumAvis.Cols[4].Text:='Code Tiers Avis';
     TableauListeNumAvis.Cols[5].Text:='Tiers';

     TableauListeNumAvis.RowCount:=2;
     TableauListeNumAvis.Rows[1].Text:='';

     TAvisCopie:=RemplireTAvisNumAvis(FSAvis.EditBaseAvis.Text);

     ChListeMouvementCopie:=IndiqueAdresseListeMouvement(PositionTypeMouvement,TypeProcesReseauxListeMouvement); FSAvis.AfficherAdresseAvis.Text:=ChListeMouvementCopie;
     assignfile(FListeMouvementCopie,ChListeMouvementCopie);
     if FileExists(ChListeMouvementCopie)then
     Reset(FListeMouvementCopie)
     else Rewrite(FListeMouvementCopie);
     Seek(FListeMouvementCopie,0);
     R:=0;
     while not eof(FListeMouvementCopie)do
     begin
          read(FListeMouvementCopie,RListeMouvementCopie);

          OKMouvement:=RListeMouvementCopie.ValidationListeMouvement;

          if(OKMouvement=true)then
          begin
               if(NumListeMouvement<>'')then
               begin
                    if(RListeMouvementCopie.NumListeMouvement=strtointeger(NumListeMouvement))
                    then OKMouvement:=true
                    else OKMouvement:=false;
               end;
          end;

          if(OKMouvement=true)then
          begin
               if(strtodate(RListeMouvementCopie.DateMouvement)>=strtodate(TiersDateDebut))
               and(strtodate(RListeMouvementCopie.DateMouvement)<=strtodate(TiersDateFin))
               then OKMouvement:=true
               else OKMouvement:=false;
          end;

          if(OKMouvement=true)then
          begin
               if(CodeTiers<>'')then
               begin
                    if(RListeMouvementCopie.CodeTiers=CodeTiers)
                    then OKMouvement:=true
                    else OKMouvement:=false;
               end;
          end;

          if(OKMouvement=true)then
          begin
               if(PositionMouvement<>'')then
               begin
                    if(PositionMouvement<>'Pr')then
                    begin
                         if(RListeMouvementCopie.PositionMouvement=strtointeger(PositionMouvement))
                         then OKMouvement:=true
                         else OKMouvement:=false;
                    end
                    else OKMouvement:=false;
               end;
          end;

          if(OKMouvement=true)
          and(RListeMouvementCopie.ListeNumAvis<>'')then
          begin
               IndiqueInTableauNumInTexte(TableauListeNumAvis,R,1,RListeMouvementCopie.ListeNumAvis,R);
          end;
     end;
     CloseFile(FListeMouvementCopie);

     if(R>0)then
            begin
                 TableauListeNumAvis.RowCount:=R+3;

                 MontantTotalAvis:=0;
                 for R:=1 to TableauListeNumAvis.RowCount-3 do
                 begin
                      //ChercherAvisUnique(TableauListeNumAvis.Cells[1,R],'',RAvisCopie,PositionAvisRecherche);

                      //TableauListeNumAvis.Cells[0,R]:=inttostr(R);
                      //TableauListeNumAvis.Cells[1,R]:=inttostr(TAvisCopie[strtointeger(TableauListeNumAvis.Cells[1,R])].NumAvis);
                      TableauListeNumAvis.Cells[2,R]:=TAvisCopie[strtointeger(TableauListeNumAvis.Cells[1,R])].DateAvis;
                      TableauListeNumAvis.Cells[3,R]:=Vergule(floattostr(TAvisCopie[strtointeger(TableauListeNumAvis.Cells[1,R])].Montant),'2','C','');
                      TableauListeNumAvis.Cells[4,R]:=TAvisCopie[strtointeger(TableauListeNumAvis.Cells[1,R])].CodeTiers;
                      RTiersCopie:=ChercherTiers(TAvisCopie[strtointeger(TableauListeNumAvis.Cells[1,R])].TypeProces,TAvisCopie[strtointeger(TableauListeNumAvis.Cells[1,R])].AvisConcerneTiers,TAvisCopie[strtointeger(TableauListeNumAvis.Cells[1,R])].CodeTiers,'');
                      TableauListeNumAvis.Cells[5,R]:=RTiersCopie.NomTiers+' '+RTiersCopie.PrenomTiers;

                      MontantTotalAvis:=MontantTotalAvis+TAvisCopie[strtointeger(TableauListeNumAvis.Cells[1,R])].Montant;
                 end;

                 TableauListeNumAvis.Rows[TableauListeNumAvis.RowCount-1].Text:='';
                 TableauListeNumAvis.Rows[TableauListeNumAvis.RowCount-2].Text:='';

                 TableauListeNumAvis.Cells[2,TableauListeNumAvis.RowCount-1]:='Total: ';
                 TableauListeNumAvis.Cells[3,TableauListeNumAvis.RowCount-1]:=Vergule(Floattostr(MontantTotalAvis),'2','C','');
            end
            else TableauListeNumAvis.RowCount:=2;

     NotCol:='';

     for C:=1 to TableauListeNumAvis.ColCount-1 do if ExisteNumInTexte(inttostr(C),NotCol)then TableauListeNumAvis.ColWidths[C]:=0;
     AjusterColWidth(TableauListeNumAvis,'',NotCol)
end;

procedure TableauMouvementClick(Sender: TObject);
begin
     
end;

Procedure IndiqueInTableauNumInTexte(TableauListeNum:TStringGrid; RowIn,ColDataNum:integer; ListeNum:string; var RowOut:integer);
var iENT,lENT,NumTeste:integer; NumTesteD,NumTesteF:string; OKNum:boolean;
begin
     iENT:=1;
     lENT:=RowIn;
     OKNum:=false;
     NumTesteD:='';
     while(iENT<=longueur(ListeNum))do
     begin
          if(ListeNum[iENT]<>';')and(ListeNum[iENT]<>'-')
          then   
          begin
               NumTesteD:=NumTesteD+ListeNum[iENT];
          end;

          if(iENT=longueur(ListeNum))or(ListeNum[iENT]=';')or(ListeNum[iENT]='-')then
          begin
               if(ListeNum[iENT]=';')or(iENT=longueur(ListeNum))then
               begin
                    OKNum:=true;
                    lENT:=lENT+1;
                    TableauListeNum.Rows[lENT].Text:='';
                    TableauListeNum.Cells[ColDataNum,lENT]:=NumTesteD;
               end;

               if(ListeNum[iENT]='-')then
               begin
                    NumTesteF:='';
                    iENT:=iENT+1;
                    while(iENT<=longueur(ListeNum))and(ListeNum[iENT]<>';')do
                    begin
                         NumTesteF:=NumTesteF+ListeNum[iENT];
                         iENT:=iENT+1;
                    end;

                    OKNum:=true;
                    NumTeste:=strtointeger(NumTesteD);
                    while(NumTeste<=strtointeger(NumTesteF))do
                    begin
                         lENT:=lENT+1;
                         TableauListeNum.Rows[lENT].Text:='';
                         TableauListeNum.Cells[ColDataNum,lENT]:=inttostr(NumTeste);                         
                    NumTeste:=strtointeger(NumTesteD)+1;
                    end;
               end;
          NumTesteD:='';
          NumTesteF:='';
          end;
     iENT:=iENT+1;
     end;

     RowOut:=lENT;
end;

procedure TFSAvis.TableauListeNumAvisClick(Sender: TObject);
begin
     FSAvis.TableauListeMouvementAssocierAvis.ColCount:=10;
     FSAvis.TableauListeMouvementAssocierAvis.Cols[0].Text:='Or';
     FSAvis.TableauListeMouvementAssocierAvis.Cols[1].Text:='Num Avis';
     FSAvis.TableauListeMouvementAssocierAvis.Cols[2].Text:='Date Avis';
     FSAvis.TableauListeMouvementAssocierAvis.Cols[3].Text:='Montant Avis';
     FSAvis.TableauListeMouvementAssocierAvis.Cols[4].Text:='Code Tiers Avis';
     FSAvis.TableauListeMouvementAssocierAvis.Cols[5].Text:='Num Mt';
     FSAvis.TableauListeMouvementAssocierAvis.Cols[6].Text:='Date Mt';
     FSAvis.TableauListeMouvementAssocierAvis.Cols[7].Text:='Montant Mt';
     FSAvis.TableauListeMouvementAssocierAvis.Cols[8].Text:='Code Tiers Mt';
     FSAvis.TableauListeMouvementAssocierAvis.Cols[9].Text:='Tiers Mt';
     FSAvis.TableauListeMouvementAssocierAvis.RowCount:=2;
     FSAvis.TableauListeMouvementAssocierAvis.Rows[1].Text:='';

     FSAvis.TableauListeNumAvisMouvement.ColCount:=6;
     FSAvis.TableauListeNumAvisMouvement.Cols[0].Text:='Or';
     FSAvis.TableauListeNumAvisMouvement.Cols[1].Text:='Num Avis';
     FSAvis.TableauListeNumAvisMouvement.Cols[2].Text:='Date Avis';
     FSAvis.TableauListeNumAvisMouvement.Cols[3].Text:='Montant Avis';
     FSAvis.TableauListeNumAvisMouvement.Cols[4].Text:='Code Tiers Avis';
     FSAvis.TableauListeNumAvisMouvement.Cols[5].Text:='Tiers';
     FSAvis.TableauListeNumAvisMouvement.RowCount:=2;
     FSAvis.TableauListeNumAvisMouvement.Rows[1].Text:='';

     if(FSAvis.TableauListeNumAvis.Cells[1,FSAvis.TableauListeNumAvis.Row]<>'')then
     begin
          ListeMouvementAssocierAvis(FSAvis.TableauListeMouvementAssocierAvis,inttostr(strtointeger(TableauListeNumAvis.Cells[1,TableauListeNumAvis.Row])),FSAvis.TableauMouvement.Cells[0,FSAvis.TableauMouvement.Row],FSAvis.TableauMouvement.Cells[1,FSAvis.TableauMouvement.Row],datetostr(EditTiersDateDebut.Date),datetostr(EditTiersDateFin.Date),FSAvis.EditTiersCodeTiers.Text);

          if(strtoreal(FSAvis.TableauListeMouvementAssocierAvis.Cells[7,FSAvis.TableauListeMouvementAssocierAvis.RowCount-1])>0)then
          begin
               if(strtoreal(FSAvis.TableauListeMouvementAssocierAvis.Cells[7,FSAvis.TableauListeMouvementAssocierAvis.RowCount-1])<>strtoreal(TableauListeNumAvis.Cells[3,TableauListeNumAvis.Row]))then
               begin
                    FSAvis.TableauListeMouvementAssocierAvis.FixedColor:=clRed;
               end
               else
               begin
                    FSAvis.TableauListeMouvementAssocierAvis.FixedColor:=clLime;
               end;
          end
          else FSAvis.TableauListeMouvementAssocierAvis.FixedColor:=clBtnFace;
     end;
end;

procedure TFSAvis.BitBtn14Click(Sender: TObject);
begin
     ListeNumAvisAssocierMouvement(FSAvis.TableauListeNumAvis,FSAvis.TableauMouvement.Cells[0,FSAvis.TableauMouvement.Row],FSAvis.TableauMouvement.Cells[1,FSAvis.TableauMouvement.Row],'',datetostr(FSAvis.EditTiersDateDebut.Date),datetostr(FSAvis.EditTiersDateFin.Date),FSAvis.EditTiersCodeTiers.Text);
end;

procedure TFSAvis.EditBaseAvisSelect(Sender: TObject);
begin
     AfficherFSAvis(FSAvis.EditBaseAvis.Text);
end;

procedure TFSAvis.EditChargementFichierConcerneEnter(Sender: TObject);
begin
     if not ControleNouveauAvis then exit;
end;

Procedure AfficherFSAvis(FichierBaseAvis:string);
var  i:integer;   TypeProces,FichierConserne,Adresse:string;
begin
FSAvis.Show;
FSAvis.Left:=FSMenuPrincipal.Left;
FSAvis.Top:=FSMenuPrincipal.Top;
FSAvis.Height:=FSMenuPrincipal.Height;
FSAvis.Width:=FSMenuPrincipal.Width;

FSAvis.AfficheAutresAgenceBanque.Left:=FSAvis.AfficheMontant.Left;
FSAvis.AfficheAutresAgenceBanque.Top:=FSAvis.AfficheMontant.Top;

FSAvis.AfficheChargementNature.Left:=FSAvis.PanelDataAvis.Left+FSAvis.AfficheModePaiement.Left;
FSAvis.AfficheChargementNature.Top:=FSAvis.PanelDataAvis.Top+FSAvis.AfficheModePaiement.Top;

FSAvis.PageSaisieAvis.Show;
FSAvis.AfficheSeriePieceAvis.Height:=0;
//FSAvis.AfficheSeriePiece.Height:=0;

//FSAvis.EditRechercheDateDebut.Date:=strtodate('01/01/'+ExerciceAnnee);
//FSAvis.EditRechercheDateFin.Date:=strtodate('31/12/'+ExerciceAnnee);

//FSAvis.EditTiersDateDebut.Date:=strtodate('01/01/'+ExerciceAnnee);
//FSAvis.EditTiersDateFin.Date:=strtodate('31/12/'+ExerciceAnnee);

ListeTypeFichierTiersBox('Tous','',FichierBaseAvis,FSAvis.EditChargementFichierConcerne,FSAvis.TitreEditChargementFichierConcerne);

FSAvis.EditModePaiement.ItemIndex:=0;
FSAvis.EditModePaiement.Text:='';
FSAvis.AfficheDomiciliation.Visible:=true;
FSAvis.EditDate.Date:=date;
FSAvis.EditDateExecutionAvis.Text:='';
FSAvis.EditNumPiece.Text:='';
FSAvis.EditDomiciliationAvis.Text:='';
FSAvis.EditMontantChiffre.Text:='';
FSAvis.EditMontantLettres.Text:='';
FSAvis.EditChargementCodeFichierConcerne.Text:='';
FSAvis.EditChargementFichierConcerne.Text:='';
FSAvis.EditChargementTypeProces.Text:='';
FSAvis.EditBenificiaire.Text:='';
FSAvis.EditNatureDepences.Text:='';
//FSAvis.EditSignataire.Text:='';
FSAvis.EditCompteImputation.Text:='';
FSAvis.EditDebitCreditDomiciliation.Text:='';
FSAvis.EditOrigine.Text:='';
FSAvis.EditNumProjet.Text:='';
FSAvis.EditNomProjet.Text:='';
FSAvis.EditNumFiche.Text:='';
FSAvis.EditDesignationFiche.Text:='';
FSAvis.EditNumRubrique.Text:='';
FSAvis.EditDesignationRubrique.Text:='';
FSAvis.EditNumPlanificateur.Text:='';
FSAvis.EditDesignationPlanificateur.Text:='';
FSAvis.RBPieceMaitenue.Checked:=true;
FSAvis.BitAfficheFicheTechnique.Kind:=bkRetry;
FSAvis.BitAfficheFicheTechnique.Caption:='.';
FSAvis.BitAfficheFicheTechnique.Cancel:=false;
FSAvis.AfficheProjet.Height:=26;
FSAvis.TableauSelections.Visible:=false;

TypeProces:='Business';  FichierConserne:=FichierBaseAvis;
if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
end;

ChAvis:=Adresse;
assignfile(FAvis,ChAvis);
if FileExists(ChAvis)then
Reset(FAvis)
else Rewrite(FAvis);
Seek(FAvis,0);
i:=0;
FSAvis.EditNumAvis.Items.Text:='';
FSAvis.EditNumAvis.Items.Add('Aucun');
while not eof(FAvis)do
begin
     read(FAvis,RAvis);
     FSAvis.EditNumAvis.Items.Add(Completezerogauche(inttostr(RAvis.NumAvis),'5'));
     i:=i+1;
end;
Closefile(FAvis);

FSAvis.EditNumAvis.ItemIndex:=0;

FSAvis.RBActiveSoldeDomiciliation.Checked:=not(FunctionAutoriserDebitCreditSansSolde);
end;

procedure TFSAvis.EditNatureDepencesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          if(FSAvis.RBPlusieurLigne.Checked=true)then
          begin
               FSAvis.EditNatureDepences.WantReturns:=true;
          end
          else
          begin
               FSAvis.EditNatureDepences.WantReturns:=false;
               FSAvis.BitValiderAvis.SetFocus;
          end;
     end;
end;

procedure TFSAvis.TimerLancerAfficheTiersTimer(Sender: TObject);
begin
     FSAvis.TimerLancerAfficheTiers.Enabled:=false;
     FSAvis.TimerAfficheTiers.Enabled:=true;
end;

procedure TFSAvis.TimerAfficheTiersTimer(Sender: TObject);
begin
     FSAvis.TimerAfficheTiers.Enabled:=false;
     {if(FSAvis.RBChargerPointeur.Checked=true)then
     begin
          ListeTiersPointeur(FSAvis.TableauTiers,FSAvis.EditChargementTypeProces.Text,FSAvis.EditChargementFichierConcerne.Text,'','','',true,FSAvis.RBChargerPointeur.Checked);
          FSAvis.RBChargerPointeur.Checked:=false;
     end;}

     if(FSAvis.PageSaisieAvis.Visible=true)then
     begin
          ListeTiersPointeur(FSAvis.TableauTiers,FSAvis.EditChargementTypeProces.Text,FSAvis.EditChargementFichierConcerne.Text,'','',FSAvis.EditBenificiaire.Text,FSTiers.EditNbrKeyUp,FSTiers.EditNbrKeyUpMemo,FSAvis.TimerLancerAfficheTiers,true,FSAvis.RBChargerPointeur.Checked);
     end;

     if(FSAvis.PageOptionsAvis.Visible=true)then
     begin
          ListeTiersPointeur(FSAvis.TableauTiersListeTiers,FSAvis.EditTiersTypeProces.Text,FSAvis.EditTiersFichierConserne.Text,'','',FSAvis.EditTiersNomTiers.Text,FSTiers.EditNbrKeyUp,FSTiers.EditNbrKeyUpMemo,FSAvis.TimerLancerAfficheTiers,true,FSAvis.RBChargerPointeur.Checked);
     end;
end;

procedure TFSAvis.EditBenificiaireExit(Sender: TObject);
begin
     if(FSAvis.EditChargementCodeFichierConcerneMemoire.Text<>'')and(FSAvis.TableauTiers.Visible=false)then
     begin
          FSAvis.EditChargementCodeFichierConcerne.Text:=FSAvis.EditChargementCodeFichierConcerneMemoire.Text;
          FSAvis.EditBenificiaire.Text:=ImporteDataProcesTiers(FSAvis.EditChargementTypeProces.Text,FSAvis.EditChargementFichierConcerne.Text,FSAvis.EditChargementCodeFichierConcerne.Text,PositionTiersRecherche);
          FSAvis.EditChargementCodeFichierConcerneMemoire.Text:='';
     end;
end;

procedure TFSAvis.BitBtn15Click(Sender: TObject);
begin
     FSAvis.EditChargementCodeFichierConcerne.Text:='';
     FSAvis.EditChargementCodeFichierConcerneMemoire.Text:='';
     FSAvis.EditBenificiaire.Text:='';
end;

procedure TFSAvis.TableauTiersExit(Sender: TObject);
begin
     if(FSAvis.EditChargementCodeFichierConcerneMemoire.Text<>'')and(FSAvis.EditChargementCodeFichierConcerne.Text='')then
     begin
          FSAvis.EditChargementCodeFichierConcerne.Text:=FSAvis.EditChargementCodeFichierConcerneMemoire.Text;
          FSAvis.EditBenificiaire.Text:=ImporteDataProcesTiers(FSAvis.EditChargementTypeProces.Text,FSAvis.EditChargementFichierConcerne.Text,FSAvis.EditChargementCodeFichierConcerne.Text,PositionTiersRecherche);
          FSAvis.EditChargementCodeFichierConcerneMemoire.Text:='';
     end;
end;

Procedure MiseAJourPositionAvisParPeriode(DesignationBaseAvis:string);
var  i,A,M,iMois:integer; TypeProces,FichierConserne,Adresse:string;    OKBaseAvis:boolean;
     RegistrePositionAvisParPeriode:RegistrePositionAvisParPeriodes;
begin
     for A:=2010 to 2050 do
     for M:=1 to 12 do
     begin
          RegistrePositionAvisParPeriode[A,M].PositionAvisBegin:=999999999;
          RegistrePositionAvisParPeriode[A,M].PositionAvisEnd:=0;
     end;

     TypeProces:='Business';   FichierConserne:=DesignationBaseAvis;
     if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
     end;

     ChAvis:=Adresse;
     assignfile(FAvis,ChAvis);
     if FileExists(ChAvis)then
     Reset(FAvis)
     else Rewrite(FAvis);
     Seek(FAvis,0);
     i:=0;
     while not eof(FAvis)do
     begin
          read(FAvis,RAvis); Application.ProcessMessages;
          if(RAvis.ValiditeAvis=true)then
          begin
               A:=strtointeger(Midellaters(RAvis.DateAvis,7,10));
               iMois:=strtointeger(Midellaters(RAvis.DateAvis,4,5));

               if(RegistrePositionAvisParPeriode[A,iMois].PositionAvisBegin>i)then RegistrePositionAvisParPeriode[A,iMois].PositionAvisBegin:=i;
               if(RegistrePositionAvisParPeriode[A,iMois].PositionAvisEnd<i)then RegistrePositionAvisParPeriode[A,iMois].PositionAvisEnd:=i;
          end;
     i:=i+1;
     end;

     for A:=2010 to 2050 do
     for M:=1 to 12 do
     begin
          if(RegistrePositionAvisParPeriode[A,M].PositionAvisBegin=999999999)and(RegistrePositionAvisParPeriode[A,M].PositionAvisEnd=0)then
          begin
               RegistrePositionAvisParPeriode[A,M].PositionAvisBegin:=0;
               RegistrePositionAvisParPeriode[A,M].PositionAvisEnd:=0;
          end;
     end;

     TypeProces:='Business';   FichierConserne:='FBaseAvis';
     if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
     end;

     ChBaseAvis:=Adresse;
     assignfile(FBaseAvis,ChBaseAvis);
     if FileExists(ChBaseAvis)then
     Reset(FBaseAvis)
     else Rewrite(FBaseAvis);
     Seek(FBaseAvis,0);
     i:=0;
     OKBaseAvis:=false;
     while not eof(FBaseAvis)and(OKBaseAvis=false)do
     begin
          read(FBaseAvis,RBaseAvis);  Application.ProcessMessages;
          if(RBaseAvis.DesignationBaseAvis=DesignationBaseAvis)then
          begin
               OKBaseAvis:=true;
               RBaseAvis.RegistrePositionAvisParPeriode:=RegistrePositionAvisParPeriode;

               Seek(FBaseAvis,i);
               write(FBaseAvis,RBaseAvis);
          end;
     i:=i+1;
     end;
     CloseFile(FBaseAvis);
end;

procedure TFSAvis.EditModePaiementKeyPress(Sender: TObject; var Key: Char);
var   i:integer;  OKBoxListe,OKControle:boolean; iNO:string;
begin
     i:=0;
     if(FSAvis.EditModePaiement.ItemIndex>0)then iNO:=inttostr(FSAvis.EditModePaiement.ItemIndex) else iNO:='';
     OKBoxListe:=false;
     while(i<=FSAvis.EditModePaiement.Items.Count)and(OKBoxListe=false)do
     begin
          if(iNO<>'')then
          begin
               if(i=strtointeger(iNO))
               then OKControle:=false
               else OKControle:=true;
          end
          else OKControle:=true;

          if(OKControle=true)and(AnsiUpperCase(firstlaters(FSAvis.EditModePaiement.Items.Strings[i],longueur(key)))=AnsiUpperCase(key))then
          begin
               OKBoxListe:=true;
               FSAvis.EditModePaiement.ItemIndex:=i;
               FSAvis.EditModePaiement.Text:=FSAvis.EditModePaiement.Items.Strings[i];
          end;
     i:=i+1;
     end;

     if(OKBoxListe=false)then begin FSAvis.EditModePaiement.ItemIndex:=0; FSAvis.EditModePaiement.Text:=''; end;
     if(FSAvis.RBBoxListeAutres.Checked=false)then key:=#0;
end;

procedure TFSAvis.EditMontantChiffreKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key in[',','.',';',':']then key:=Decimalseparator;
     if(key=Decimalseparator)and(ExisteCharinstring(key,FSAvis.EditMontantChiffre.Text))then key:=#0;
     if not(key in['0'..'9',Decimalseparator])then key:=#0;
end;

procedure TFSAvis.TableauMouvementClick(Sender: TObject);
begin
     FSAvis.TableauTiersListeTiers.Visible:=false;

     if(FSAvis.EditTiersTypeProces.Text<>FSAvis.TableauMouvement.Cells[4,FSAvis.TableauMouvement.Row])
     or(FSAvis.EditTiersFichierConserne.Text<>FSAvis.TableauMouvement.Cells[5,FSAvis.TableauMouvement.Row])then
     begin
          FSAvis.EditTiersCodeTiers.Text:='';
          FSAvis.EditTiersNomTiers.Text:='';

          FSAvis.EditTiersTypeProces.Text:=FSAvis.TableauMouvement.Cells[4,FSAvis.TableauMouvement.Row];
          FSAvis.EditTiersFichierConserne.Text:=FSAvis.TableauMouvement.Cells[5,FSAvis.TableauMouvement.Row];
     end;

     ListeMouvementAssocierAvis(FSAvis.TableauListeMouvementAssocierAvis,inttostr(strtointeger(FSAvis.EditNumAvis.Text)),FSAvis.TableauMouvement.Cells[0,FSAvis.TableauMouvement.Row],FSAvis.TableauMouvement.Cells[1,FSAvis.TableauMouvement.Row],datetostr(FSAvis.EditTiersDateDebut.Date),datetostr(FSAvis.EditTiersDateFin.Date),FSAvis.EditTiersCodeTiers.Text);

     FSAvis.TableauListeNumAvis.ColCount:=6;
     FSAvis.TableauListeNumAvis.Cols[0].Text:='Or';
     FSAvis.TableauListeNumAvis.Cols[1].Text:='Num Avis';
     FSAvis.TableauListeNumAvis.Cols[2].Text:='Date Avis';
     FSAvis.TableauListeNumAvis.Cols[3].Text:='Montant Avis';
     FSAvis.TableauListeNumAvis.Cols[4].Text:='Code Tiers Avis';
     FSAvis.TableauListeNumAvis.Cols[5].Text:='Tiers';

     FSAvis.TableauListeNumAvis.RowCount:=2;
     FSAvis.TableauListeNumAvis.Rows[1].Text:='';

     {FSAvis.TableauListeMouvementAssocierAvis.RowCount:=2;
     FSAvis.TableauListeMouvementAssocierAvis.Rows[1].Text:='';

     FSAvis.TableauListeNumAvisMouvement.RowCount:=2;
     FSAvis.TableauListeNumAvisMouvement.Rows[1].Text:='';}
end;

procedure TFSAvis.EditTiersNomTiersEnter(Sender: TObject);
begin
     FSAvis.EditTiersCodeTiers.Text:='';
     FSAvis.EditTiersNomTiers.Text:='';

     if(FSAvis.EditTiersFichierConserne.Text<>'')then
     begin
          FSAvis.TableauTiersListeTiers.Visible:=true;
          FSAvis.TableauTiersListeTiers.Top:=FSAvis.PagePrincipale.Top+FSAvis.PageOptionsAvis.Top+FSAvis.AfficheDataTiers.Top+FSAvis.EditTiersNomTiers.Top+FSAvis.EditTiersNomTiers.Height+2;
          FSAvis.TableauTiersListeTiers.Left:=FSAvis.PagePrincipale.Left+FSAvis.PageOptionsAvis.Left+FSAvis.AfficheDataTiers.Left+FSAvis.EditTiersNomTiers.Left;
     end;

     if(FSAvis.EditTiersNomTiers.Text<>'')then
     begin
          FSAvis.TimerLancerAfficheTiers.Enabled:=true;
          FSAvis.EditTiersFichierConserne.Text:=FSAvis.EditTiersFichierConserneAfficher.Text;
     end;
end;

procedure TFSAvis.EditTiersNomTiersKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSAvis.TableauTiersListeTiers.SetFocus;
end;

end;

procedure TFSAvis.EditTiersNomTiersKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
FSAvis.TimerAfficheTiers.Enabled:=false;
FSAvis.TimerLancerAfficheTiers.Enabled:=false;
FSAvis.TimerLancerAfficheTiers.Enabled:=true;
end;

procedure TFSAvis.TableauTiersListeTiersDblClick(Sender: TObject);
begin
     FSAvis.EditTiersCodeTiers.Text:=FSAvis.TableauTiersListeTiers.Cells[1,FSAvis.TableauTiersListeTiers.Row];
     FSAvis.EditTiersNomTiers.Text:=FSAvis.TableauTiersListeTiers.Cells[2,FSAvis.TableauTiersListeTiers.Row];

     FSAvis.TableauTiersListeTiers.Visible:=false;
end;

procedure TFSAvis.TableauTiersListeTiersKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

     if key in[VK_RETURN]then
     begin

     end;

end;

procedure TFSAvis.TableauUniteFondsDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSAvis.TableauListeMouvementDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSAvis.TableauDetaiMouvementAppartenanceMouvemantDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSAvis.TableauDesignationMouvementDrawCell(Sender: TObject;
  ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
          TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSAvis.TableauDestinationDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSAvis.TableauTiersDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSAvis.TableauSelectionsDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSAvis.TableauCompteTiersDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSAvis.TableauSeriePieceAvisDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSAvis.TableauNatureDepensesDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSAvis.TableauMouvementDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSAvis.TableauListeMouvementAssocierAvisDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSAvis.TableauListeNumAvisMouvementDrawCell(Sender: TObject;
  ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSAvis.TableauTiersListeTiersDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSAvis.EditChercheCodebarreEnter(Sender: TObject);
Var  KeyState  :  TKeyboardState;
begin
     if(FSFicheSaisie.RBChercheArticleParCodeBarre.Checked=true)then
     begin
          GetKeyboardState(KeyState);
          VKCAPITAL:=KeyState[VK_CAPITAL];
          KeyState[VK_CAPITAL ] := 1;
          SetKeyboardState(KeyState);
     end;

     FSAvis.EditChercheCodebarre.SelectAll;
end;

procedure TFSAvis.EditChercheCodebarreKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSAvis.EditNumAvis.Text:=inttostr(99999-strtointeger(Midellaters(FSAvis.EditChercheCodebarre.Text,3,7)));
          EditNumAvisSelect(FSAvis.EditNumAvis);
          FSAvis.EditChercheCodebarre.SelectAll;
     end;
end;

procedure TFSAvis.EditChercheCodebarreExit(Sender: TObject);
begin
     if(FSFicheSaisie.RBChercheArticleParCodeBarre.Checked=true)then
     begin
          if(VKCAPITAL=1)then VKCAPITAL:=0;
          GetKeyboardState(KeyState);
          KeyState[VK_CAPITAL ] := VKCAPITAL;
          SetKeyboardState(KeyState);
     end;
end;

procedure TFSAvis.BitBtn16Click(Sender: TObject);
begin
     FSMenuPrincipal.EditRapport.Lines.Text:='';
     FSMenuPrincipal.EditRapport.Lines.Add('');
     FSMenuPrincipal.EditRapport.Lines.Add('');
     FSMenuPrincipal.EditDetailRapport.Lines.Text:='';
     EnregistrerAvisEmplacementReseaux('','',true);
     FSMenuPrincipal.AfficheRapport.Visible:=FunctAfficherRapportPublicationReseaux;
end;

procedure TFSAvis.EditOrigineDblClick(Sender: TObject);
begin
     FSOrigineListeMouvementAvis.Show;
     FSOrigineListeMouvementAvis.EditTypeProces.Text:=FSAvis.EditChargementTypeProces.Text;
     FSOrigineListeMouvementAvis.EditFichierConcerne.Text:=FSAvis.EditChargementFichierConcerne.Text;
     FSOrigineListeMouvementAvis.EditCodeTiersOrigine.Text:=FSAvis.EditChargementCodeFichierConcerne.Text;
     FSOrigineListeMouvementAvis.EditTiers.Text:=FSAvis.EditBenificiaire.Text;
     FSOrigineListeMouvementAvis.EditDateDebut.Date:=strtodate('01/01/'+lastlaters(datetostr(date),4));
     FSOrigineListeMouvementAvis.EditDateFin.Date:=Date;
     FSOrigineListeMouvementAvis.EditNumAvisOrigine.Text:='{'+FSAvis.EditBaseAvis.Text+'}'+inttostr(strtointeger(FSAvis.EditNumAvis.Text));
     FSOrigineListeMouvementAvis.EditTotalAvis.Text:=FSAvis.EditMontantChiffre.Text;

     ProcListeMouvement(FSOrigineListeMouvementAvis.TableauMouvement,'','','?','');

     FSOrigineListeMouvementAvis.TableauListeMouvement.RowCount:=2;
     FSOrigineListeMouvementAvis.TableauListeMouvement.Rows[1].Text:='';
end;

Procedure ListeBaseAvisInclu(ListeBaseAvis,BaseAvisSelect:string; EditListeBaseAvis:TComboBox; TitreBaseAvis:TLabel);
var iE,iSelect,Nbr:integer;  OKBaseAvis:boolean;  BaseAvisTrouver:string;
begin
     iE:=1;
     nbr:=0;
     iSelect:=0;
     BaseAvisTrouver:='';
     EditListeBaseAvis.Items.Text:='';
     while(iE<=longueur(ListeBaseAvis))do
     begin
          if(ListeBaseAvis[iE]<>';')then
          begin
               BaseAvisTrouver:=BaseAvisTrouver+ListeBaseAvis[iE];
          end;

          if(iE=longueur(ListeBaseAvis))or(ListeBaseAvis[iE]=';')then
          begin
               EditListeBaseAvis.Items.Add(BaseAvisTrouver);
               if(BaseAvisTrouver=BaseAvisSelect)then iSelect:=Nbr;
               Nbr:=Nbr+1;
               BaseAvisTrouver:='';
          end;
     iE:=iE+1;
     end;

     EditListeBaseAvis.ItemIndex:=iSelect;
     TitreBaseAvis.Caption:=inttostr(Nbr)+'Fichier: ';
end;

end.
