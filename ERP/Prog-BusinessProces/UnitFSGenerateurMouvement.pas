unit UnitFSGenerateurMouvement;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Buttons, ExtCtrls, ComCtrls;

type
  TFSGenerateurMouvement = class(TForm)
    TableauTypeMouvement: TStringGrid;
    TableauMouvement: TStringGrid;
    AfficheMouvement: TPanel;
    Bevel1: TBevel;
    BitBtn1: TBitBtn;
    BitMouvement: TBitBtn;
    Bevel2: TBevel;
    Label2: TLabel;
    EditPositionMouvement: TEdit;
    Label3: TLabel;
    EditCodeMouvement: TEdit;
    Label4: TLabel;
    EditDesignationMouvement: TEdit;
    EditTitreFichierTiersConserne: TLabel;
    Label6: TLabel;
    AfficheTypeMouvement: TPanel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    BitTypeMouvement: TBitBtn;
    EditPositionTypeMouvement: TEdit;
    EditCodeTypeMouvement: TEdit;
    EditDesignationTypeMouvement: TEdit;
    BitBtn2: TBitBtn;
    EditFichierTiersConserne: TComboBox;
    EditCodeTypeFormuleBase: TEdit;
    TableauTypeFormule: TStringGrid;
    EditCompteConserne: TEdit;
    Label1: TLabel;
    TableauCompteConserne: TStringGrid;
    Label33: TLabel;
    EditTypeProces: TComboBox;
    Label8: TLabel;
    EditTypePrixMouvement: TComboBox;
    Label12: TLabel;
    EditSigneTypeMouvement: TComboBox;
    RadioGroup1: TRadioGroup;
    RBAutoriserVide: TRadioButton;
    RBNePasAutoriserVide: TRadioButton;
    Label13: TLabel;
    RBMouvementeCompte: TCheckBox;
    Label14: TLabel;
    EditEtatUtilise: TComboBox;
    RBAvecDateExecution: TCheckBox;
    Label5: TLabel;
    EditListeAppartenancePositionMouvement: TEdit;
    Label15: TLabel;
    TableauListeAppartenanceCodeMouvement: TStringGrid;
    Label16: TLabel;
    RBAvecLocalisationGeographique: TCheckBox;
    EditOrdreCompteComptable: TEdit;
    IncrimentOrdreCompteComptable: TUpDown;
    Bevel5: TBevel;
    RBMouvementeFinance: TCheckBox;
    Label17: TLabel;
    PanelOperationMouvement: TPanel;
    BitBtn3: TBitBtn;
    Bevel6: TBevel;
    EditTypeStock: TComboBox;
    EditDebitCreditMouvement: TComboBox;
    Label18: TLabel;
    Bevel7: TBevel;
    EditOperationFichierTiersConserne: TEdit;
    EditAddFichierTiersConserne: TEdit;
    TimerADDFichierConcerne: TTimer;
    EditPositionListeMouvementBegin: TEdit;
    EditPositionListeMouvementEnd: TEdit;
    TableauPositionListeMouvementPeriode: TStringGrid;
    Label19: TLabel;
    Label20: TLabel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    PanelAdresseFMouvement: TPanel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    TableauPositionListeMouvementPeriodeAffiche: TStringGrid;
    Panel1: TPanel;
    PanelAdresseFTypeMouvement: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label87: TLabel;
    Label88: TLabel;
    RBFixeColonne: TCheckBox;
    EditFixeColonne: TEdit;
    IncrimentFixeColonne: TUpDown;
    Panel4: TPanel;
    Label21: TLabel;
    EditAnneeSelect: TComboBox;
    BitBtn7: TBitBtn;
    RadioGroup3: TRadioGroup;
    RBSigneDebitCreditPositive: TRadioButton;
    RBSigneDebitCreditNigative: TRadioButton;
    EditSigneDebitCredit: TEdit;
    RBModificationOperer: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure TableauTypeMouvementClick(Sender: TObject);
    procedure BitMouvementClick(Sender: TObject);
    procedure TableauTypeMouvementKeyPress(Sender: TObject; var Key: Char);
    procedure EditPositionTypeMouvementKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditPositionMouvementKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditCodeMouvementKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditDesignationMouvementKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditFichierTiersConserneKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditCodeTypeFormuleBaseKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure TableauMouvementKeyPress(Sender: TObject; var Key: Char);
    procedure EditCodeTypeMouvementKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditDesignationTypeMouvementKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditSigneTypeMouvementKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitTypeMouvementClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure TableauMouvementClick(Sender: TObject);
    procedure EditCodeTypeFormuleBaseEnter(Sender: TObject);
    procedure TableauTypeFormuleDblClick(Sender: TObject);
    procedure TableauTypeFormuleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditCompteConserneEnter(Sender: TObject);
    procedure TableauCompteConserneDblClick(Sender: TObject);
    procedure TableauCompteConserneKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditCompteConserneKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditTypeProcesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditTypePrixMouvementKeyPress(Sender: TObject;
      var Key: Char);
    procedure EditFichierTiersConserneKeyPress(Sender: TObject;
      var Key: Char);
    procedure EditTypePrixMouvementKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditSigneTypeMouvementKeyPress(Sender: TObject;
      var Key: Char);
    procedure EditSigneTypeMouvementSelect(Sender: TObject);
    procedure RBMouvementeCompteClick(Sender: TObject);
    procedure RBMouvementeCompteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditEtatUtiliseKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditEtatUtiliseKeyPress(Sender: TObject; var Key: Char);
    procedure EditTypeProcesChange(Sender: TObject);
    procedure RBAvecDateExecutionClick(Sender: TObject);
    procedure EditListeAppartenancePositionMouvementEnter(Sender: TObject);
    procedure TableauListeAppartenanceCodeMouvementDblClick(
      Sender: TObject);
    procedure TableauListeAppartenanceCodeMouvementKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditListeAppartenancePositionMouvementKeyDown(
      Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RBAvecDateExecutionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RBAvecLocalisationGeographiqueClick(Sender: TObject);
    procedure RBAvecLocalisationGeographiqueKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure IncrimentOrdreCompteComptableClick(Sender: TObject;
      Button: TUDBtnType);
    procedure EditCompteConserneKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RBMouvementeFinanceClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure EditTypeStockKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditTypeStockChange(Sender: TObject);
    procedure EditDebitCreditMouvementKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditFichierTiersConserneSelect(Sender: TObject);
    procedure TimerADDFichierConcerneTimer(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditAnneeSelectChange(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure RBSigneDebitCreditPositiveClick(Sender: TObject);
    procedure RBSigneDebitCreditNigativeClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;
                                      
var
  FSGenerateurMouvement: TFSGenerateurMouvement;

Procedure ProcListeTypeMouvement(TableauTypeMouvement:TStringGrid);
Procedure ProcListeMouvement(TableauMouvement:TStringGrid; PositionTypeMouvement,ListePositionNotAffiche,ListePositionAppartenanceMouvement,RBMouvementeCompte:string);
Procedure ProcListeMouvementX(TableauMouvement:TStringGrid; PositionTypeMouvement,ListePositionNotAffiche,ListePositionAppartenanceMouvement,RBMouvementeCompte:string);
Function FunctionFichierInclu(Fichier,ListeFichier:string):boolean;
Function FunctionFichierIncluImbriquer(ListeFichierData,ListeFichierSource:string; var ListeFichierNonInclu:string):boolean;
Procedure ListeTypeFichierTiersInclu(ListeFichierConcerne,FichierConcerneSelect:string; EditListeFichierConcerne:TComboBox; TitreFichierConcerne:TLabel);

implementation

Uses UnitInitialisation, UnitFSFormules, UnitFSTiers, UnitFSMenuPrincipal, UnitFSParametresAvances,
  UnitFSMoyenTransport;

var

   RParc:RInstalle;
   FParc:FInstalle;
   ParcInstalle:string100;

   TTypeMouvement:TTypeMouvements;
   RTypeMouvement:RTypeMouvements;
   FTypeMouvement:FTypeMouvements;
   ChTypeMouvement:string250;

   TMouvement:TMouvements;
   RMouvement:RMouvements;
   FMouvement:FMouvements;
   ChMouvement:string250;

   TDetailMouvement:TDetailMouvements;
   RDetailMouvement:RDetailMouvements;
   FDetailMouvement:FDetailMouvements;
   ChDetailMouvement:string250;
   Chiffre,Verg,Quat,text:string;

{$R *.dfm}

Procedure ProcListeTypeMouvement(TableauTypeMouvement:TStringGrid);
var  i:integer;   TypeProces,FichierConserne,Adresse:string;
begin
     TableauTypeMouvement.RowCount:=2;
     TableauTypeMouvement.Rows[1].Text:='';

     TableauTypeMouvement.Cols[0].Text:='N°';
     TableauTypeMouvement.Cols[1].Text:='P°';
     TableauTypeMouvement.Cols[2].Text:='Code';
     TableauTypeMouvement.Cols[3].Text:='Désignation';
     TableauTypeMouvement.Cols[4].Text:='Signe';
     TableauTypeMouvement.Cols[5].Text:='Autoriser le Mouvement à Vide';

     TypeProces:='Business';   FichierConserne:='FTypeMouvement';
     if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
     end;

     ChTypeMouvement:=Adresse;
     FSGenerateurMouvement.PanelAdresseFTypeMouvement.Caption:=ChTypeMouvement;
     assignfile(FTypeMouvement,ChTypeMouvement);
     try
     if FileExists(ChTypeMouvement)then
     Reset(FTypeMouvement)
     else begin Rewrite(FTypeMouvement); exit end;
     seek(FTypeMouvement,0);
     i:=0;
     while not eof(FTypeMouvement)do
     begin
          Read(FTypeMouvement,RTypeMouvement);
          i:=i+1;
          TableauTypeMouvement.Rows[i].Text:=inttostr(i);
          TableauTypeMouvement.Cells[1,i]:=inttostr(RTypeMouvement.PositionTypeMouvement);
          TableauTypeMouvement.Cells[2,i]:=RTypeMouvement.CodeTypeMouvement;
          TableauTypeMouvement.Cells[3,i]:=RTypeMouvement.DesignationTypeMouvement;
          TableauTypeMouvement.Cells[4,i]:=RTypeMouvement.SigneTypeMouvement;
          TableauTypeMouvement.Cells[5,i]:=booleantostr(RTypeMouvement.AutoriserMouvementAVide);
     end;
     finally
     CloseFile(FTypeMouvement);
     end;

     if(i>0)then TableauTypeMouvement.RowCount:=i+1
            else TableauTypeMouvement.RowCount:=2;

     AjusterColWidth(TableauTypeMouvement,'','');
     //TableauTypeMouvement.SetFocus;
end;

Procedure ProcListeMouvement(TableauMouvement:TStringGrid; PositionTypeMouvement,ListePositionNotAffiche,ListePositionAppartenanceMouvement,RBMouvementeCompte:string);
var  C,i:integer;
     OKTypeMouvement,OKTerminer,OKMouvement,OKPrelevement:boolean;
     NotRow,NotCol,TypeProces,FichierConserne,Adresse,ListeFichierConcerne,NomDossierPartageOut,EmlacementLocalOuReseauxOut,TypeProcesTypeMouvemen,FichierConserneTypeMouvemen,AdresseTypeMouvemen,TypeProcesReseauxTypeMouvemen,NomDossierPartageReseauxOutTypeMouvemen:string;
     TableauListeFPR:ArrayListeFichierPartageReseaux; TailTFPR:integer;
begin
     TableauMouvement.RowCount:=2;
     TableauMouvement.Rows[1].Text:='';

     TableauMouvement.ColCount:=27;
     TableauMouvement.Cols[0].Text:='P°TMvt';
     TableauMouvement.Cols[1].Text:='P°Mvt';
     TableauMouvement.Cols[2].Text:='Code';
     TableauMouvement.Cols[3].Text:='Désignation';
     TableauMouvement.Cols[4].Text:='Type Proces';
     TableauMouvement.Cols[5].Text:='Fichier Conserne';
     TableauMouvement.Cols[6].Text:='Comptes Conserne';
     TableauMouvement.Cols[7].Text:='Type Prix Mouvement';
     TableauMouvement.Cols[8].Text:='Code Type Formule';
     TableauMouvement.Cols[9].Text:='Type Formule';
     TableauMouvement.Cols[10].Text:='Signe';
     TableauMouvement.Cols[11].Text:='Autoriser M.à Vide';
     TableauMouvement.Cols[12].Text:='Mouvementé Compte';
     TableauMouvement.Cols[13].Text:='Mouvementé Finance';
     TableauMouvement.Cols[14].Text:='Etat Utilisé';
     TableauMouvement.Cols[15].Text:='Avec Date Exécution';
     TableauMouvement.Cols[16].Text:='Avec Localisat°.Géo.';
     TableauMouvement.Cols[17].Text:='Liste P°Mvt Appartenance';
     TableauMouvement.Cols[18].Text:='Type Stock';
     TableauMouvement.Cols[19].Text:='Débit/Crédit';
     TableauMouvement.Cols[20].Text:='Sélect.';
     TableauMouvement.Cols[21].Text:='P°LMBegin';
     TableauMouvement.Cols[22].Text:='P°LMEnd';
     TableauMouvement.Cols[23].Text:='SigneDebitCredit';
     TableauMouvement.Cols[24].Text:='ListeOrdreListeMouvement';
     TableauMouvement.Cols[25].Text:='PBeginDM';
     TableauMouvement.Cols[26].Text:='PEndDM';

     TypeProces:='Business';   FichierConserne:='FMouvement';
     if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
     end;

     TypeProcesTypeMouvemen:='Business';   FichierConserneTypeMouvemen:='FTypeMouvement';
     if not(FunctionAdresseProces(TypeProcesTypeMouvemen,FichierConserneTypeMouvemen,'',AdresseTypeMouvemen,TypeProcesReseauxTypeMouvemen,NomDossierPartageReseauxOutTypeMouvemen))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserneTypeMouvemen+' recherché !');
     end;

     ChTypeMouvement:=AdresseTypeMouvemen;
     assignfile(FTypeMouvement,ChTypeMouvement);
     if FileExists(ChTypeMouvement)then
     Reset(FTypeMouvement)
     else begin Rewrite(FTypeMouvement); exit end;
     seek(FTypeMouvement,0);
     i:=0;
     OKTerminer:=false;
     while(not eof(FTypeMouvement))and(OKTerminer=false)do
     begin
          Read(FTypeMouvement,RTypeMouvement); Application.ProcessMessages;    if(FSMoyenTransport.RBSuspendre.Checked=true)then Exit;

          if(PositionTypeMouvement<>'')then
          begin
               if(inttostr(RTypeMouvement.PositionTypeMouvement)=PositionTypeMouvement)
               then OKTypeMouvement:=true
               else OKTypeMouvement:=false;

               OKTerminer:=OKTypeMouvement;
          end
          else
          begin
               OKTypeMouvement:=true;
          end;

          if(OKTypeMouvement=true)then
          begin
               if(RTypeMouvement.PositionTypeMouvement>=0)
               then ChMouvement:=IndiqueAdresseMouvement(inttostr(RTypeMouvement.PositionTypeMouvement),TypeProcesReseaux)
               else ChMouvement:=Adresse;
               FSGenerateurMouvement.PanelAdresseFMouvement.Caption:=ChMouvement;
               assignfile(FMouvement,ChMouvement);
               if FileExists(ChMouvement)then
               Reset(FMouvement)
               else begin Rewrite(FMouvement); exit end;
               seek(FMouvement,0);
               while not eof(FMouvement)do
               begin
                    Read(FMouvement,RMouvement);  Application.ProcessMessages;  if(FSMoyenTransport.RBSuspendre.Checked=true)then Exit;

                    if(RMouvement.PositionTypeMouvement=RTypeMouvement.PositionTypeMouvement)
                    then OKMouvement:=true
                    else OKMouvement:=false;

                    if(OKMouvement=true)then
                    begin
                         if(RBMouvementeCompte<>'')then
                         begin
                              if(RMouvement.MouvementeCompte=strtoboolean(RBMouvementeCompte))
                              then OKMouvement:=true
                              else OKMouvement:=false;
                         end;
                    end;

                    if(OKMouvement=true)then
                    begin
                         if(ListePositionNotAffiche<>'')then
                         begin
                              if(not Existenumintexte(inttostr(RMouvement.PositionTypeMouvement),ListePositionNotAffiche))
                              then OKMouvement:=true
                              else OKMouvement:=false;
                         end;
                    end;

                    if(OKMouvement=true)then
                    begin
                         i:=i+1;
                         TableauMouvement.Rows[i].Text:='';
                         TableauMouvement.Cells[0,i]:=inttostr(RMouvement.PositionTypeMouvement);
                         TableauMouvement.Cells[1,i]:=inttostr(RMouvement.PositionMouvement);
                         TableauMouvement.Cells[2,i]:=RMouvement.CodeMouvement;
                         TableauMouvement.Cells[3,i]:=RMouvement.DesignationMouvement;
                         TableauMouvement.Cells[4,i]:=RMouvement.TypeProces;
                         TableauMouvement.Cells[5,i]:=RMouvement.FichierTiersConserne;
                         TableauMouvement.Cells[6,i]:=RMouvement.CompteConserne;
                         TableauMouvement.Cells[7,i]:=RMouvement.TypePrixMouvement;
                         TableauMouvement.Cells[8,i]:=RMouvement.CodeTypeFormuleBase;
                         TableauMouvement.Cells[9,i]:=ChercherTypeFormule(RMouvement.CodeTypeFormuleBase,'').DesignationTypeFormule;
                         TableauMouvement.Cells[10,i]:='';
                         if(RMouvement.PositionTypeMouvement<=filesize(FTypeMouvement))then
                         begin
                              seek(FTypeMouvement,RMouvement.PositionTypeMouvement);
                              if not eof(FTypeMouvement)then
                              begin
                                   Read(FTypeMouvement,RTypeMouvement);   if(FSMoyenTransport.RBSuspendre.Checked=true)then Exit;
                                   TableauMouvement.Cells[10,i]:=RTypeMouvement.SigneTypeMouvement
                              end;
                         end;
                         TableauMouvement.Cells[11,i]:=booleantostr(RTypeMouvement.AutoriserMouvementAVide);
                         TableauMouvement.Cells[12,i]:=booleantostr(RMouvement.MouvementeCompte);
                         TableauMouvement.Cells[13,i]:=booleantostr(RMouvement.MouvementeFinance);
                         TableauMouvement.Cells[14,i]:=RMouvement.EtatUtilise;
                         TableauMouvement.Cells[15,i]:=booleantostr(RMouvement.AvecDateExecution);
                         TableauMouvement.Cells[16,i]:=booleantostr(RMouvement.AvecLocalisationGeographique);
                         TableauMouvement.Cells[17,i]:=RMouvement.ListeAppartenanceCodeMouvement;
                         TableauMouvement.Cells[18,i]:=RMouvement.TypeStock;
                         TableauMouvement.Cells[19,i]:=RMouvement.DebitCredit;
                         TableauMouvement.Cells[20,i]:='';
                         if(ListePositionAppartenanceMouvement<>'')then
                         begin
                              if Existenumintexte(inttostr(RMouvement.PositionMouvement),ListePositionAppartenanceMouvement)then
                              begin
                                   TableauMouvement.Cells[20,i]:='OK';
                              end;
                         end;
                         TableauMouvement.Cells[21,i]:=inttostr(RMouvement.PositionListeMouvementBegin);
                         TableauMouvement.Cells[22,i]:=inttostr(RMouvement.PositionListeMouvementEnd);

                         TableauMouvement.Cells[23,i]:=inttostr(RMouvement.SigneDebitCredit);
                    end;
               end;
               CloseFile(FMouvement);
          end;
     end;
     CloseFile(FTypeMouvement);
     
     if(i>0)then TableauMouvement.RowCount:=i+1
            else TableauMouvement.RowCount:=2;

     if(PositionTypeMouvement='')then
     begin
           TypeProces:='Business';
           FichierConserne:='FUniteFonds';
           Adresse:='';
           if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
           begin
                AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
           end;

           TypeProces:='';
           ListeFichierConcerne:='';
           ChUniteFonds:=Adresse;
           assignfile(FUniteFonds,ChUniteFonds);
           if FileExists(ChUniteFonds)then
           begin
                Reset(FUniteFonds);
                Seek(FUniteFonds,0);
                while not eof(FUniteFonds)do
                begin
                     read(FUniteFonds,RUniteFonds);  Application.ProcessMessages;  if(FSMoyenTransport.RBSuspendre.Checked=true)then Exit;
                     if(RUniteFonds.FichierConcerne<>'')
                     then
                     begin
                          if(TypeProces='')then
                          begin
                                TypeProces:=RUniteFonds.TypeProces;
                          end
                          else
                          begin
                               if(not FunctionFichierInclu(RUniteFonds.TypeProces,TypeProces))then
                               begin
                                    showmessage('Attention ! plusieur type proces dans le mème module !');
                               end;
                          end;

                          if(not(FunctionFichierInclu(RUniteFonds.FichierConcerne,ListeFichierConcerne)))then
                          if(ListeFichierConcerne='')
                          then ListeFichierConcerne:=RUniteFonds.FichierConcerne
                          else ListeFichierConcerne:=ListeFichierConcerne+';'+RUniteFonds.FichierConcerne
                     end;
                end;
                CloseFile(FUniteFonds);
           end;

           OpenFParc(RParc);
           ChPrelevement:=RParc.Parcours+'\'+Exercice+'FPrelevement';
           assignfile(FPrelevement,ChPrelevement);
           if FileExists(ChPrelevement)then
           Reset(FPrelevement)
           else Rewrite(FPrelevement);
           Seek(FPrelevement,0);
           OKPrelevement:=false;
           while not eof(FPrelevement)and(OKPrelevement=false)do
           begin
                read(FPrelevement,RPrelevement); Application.ProcessMessages;  if(FSMoyenTransport.RBSuspendre.Checked=true)then Exit;
                if(RPrelevement.Archiver=true)
                and(RPrelevement.MontantPrelevement>0)
                then
                begin
                     OKPrelevement:=true;
                end;
           end;
           CloseFile(FPrelevement);

           if(OKPrelevement=false)then
           begin
                 OpenFParc(RParc);
                 ChAdresseProces:=RParc.Parcours+'\'+Exercice+'FAdresseProces';
                 assignfile(FAdresseProces,ChAdresseProces);
                 if FileExists(ChAdresseProces)then
                 begin
                      Reset(FAdresseProces);
                      Seek(FAdresseProces,0);
                      while not eof(FAdresseProces)and(OKPrelevement=false)do
                      begin
                            read(FAdresseProces,RAdresseProces);  Application.ProcessMessages;  if(FSMoyenTransport.RBSuspendre.Checked=true)then Exit;
                            OpenFParc(RParc);
                            ChListeFichierConcernePartageReseaux:=RParc.Parcours+'\'+Exercice+'FListeFichierConcernePartageReseaux'+' '+inttostr(RAdresseProces.NumAdresseProces);
                            assignfile(FListeFichierConcernePartageReseaux,ChListeFichierConcernePartageReseaux);
                            if FileExists(ChListeFichierConcernePartageReseaux)then
                            begin
                                  Reset(FListeFichierConcernePartageReseaux);
                                  Seek(FListeFichierConcernePartageReseaux,0);
                                  while not eof(FListeFichierConcernePartageReseaux)and(OKPrelevement=false)do
                                  begin
                                       read(FListeFichierConcernePartageReseaux,RListeFichierConcernePartageReseaux);
                                       if ExisteCharInString('Prelevement',RListeFichierConcernePartageReseaux.FichierConcerne)then OKPrelevement:=true;
                                  end;
                                  CloseFile(FListeFichierConcernePartageReseaux);
                            end;
                      end;
                      CloseFile(FAdresseProces);
                 end;
           end;

           if(OKPrelevement=true)and(TypeProces<>'')and(ListeFichierConcerne<>'')then
           begin
                 TableauMouvement.RowCount:=TableauMouvement.RowCount+1;
                 TableauMouvement.Cells[1,TableauMouvement.RowCount-1]:='Pr';
                 TableauMouvement.Cells[2,TableauMouvement.RowCount-1]:='';
                 TableauMouvement.Cells[3,TableauMouvement.RowCount-1]:='Prélèvement';
                 TableauMouvement.Cells[4,TableauMouvement.RowCount-1]:=TypeProces;
                 TableauMouvement.Cells[5,TableauMouvement.RowCount-1]:=ListeFichierConcerne;
                 TableauMouvement.Cells[6,TableauMouvement.RowCount-1]:='';
                 TableauMouvement.Cells[7,TableauMouvement.RowCount-1]:='';
                 TableauMouvement.Cells[8,TableauMouvement.RowCount-1]:='';
                 TableauMouvement.Cells[9,TableauMouvement.RowCount-1]:='';
                 TableauMouvement.Cells[10,TableauMouvement.RowCount-1]:='';
                 TableauMouvement.Cells[11,TableauMouvement.RowCount-1]:='';
                 TableauMouvement.Cells[12,TableauMouvement.RowCount-1]:='Oui';
                 TableauMouvement.Cells[13,TableauMouvement.RowCount-1]:='Oui';
           end;

           TypeProces:='Business';
           FichierConserne:='FMarche';
           Adresse:='';
           if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
           begin
                AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
           end;

           TypeProces:='';
           ListeFichierConcerne:='';
           ChMarche:=Adresse;
           assignfile(FMarche,ChMarche);
           if FileExists(ChMarche)then
           begin
                Reset(FMarche);
                Seek(FMarche,0);
                while not eof(FMarche)do
                begin
                     read(FMarche,RMarche);  Application.ProcessMessages;   if(FSMoyenTransport.RBSuspendre.Checked=true)then Exit;
                     if(RMarche.FichierConcerneTiers<>'')
                     then
                     begin
                          if(TypeProces='')then
                          begin
                                TypeProces:=RMarche.TypeProces;
                          end
                          else
                          begin
                               if(not FunctionFichierInclu(RMarche.TypeProces,TypeProces))then
                               begin
                                    showmessage('Attention ! plusieur type proces dans le mème module !');
                               end;
                          end;

                          if(not(FunctionFichierInclu(RMarche.FichierConcerneTiers,ListeFichierConcerne)))then
                          if(ListeFichierConcerne='')
                          then ListeFichierConcerne:=RMarche.FichierConcerneTiers
                          else ListeFichierConcerne:=ListeFichierConcerne+';'+RMarche.FichierConcerneTiers;
                     end;
                end;
                CloseFile(FMarche);
           end;

           if(TypeProces<>'')and(ListeFichierConcerne<>'')then
           begin
                 TableauMouvement.RowCount:=TableauMouvement.RowCount+1;
                 TableauMouvement.Cells[1,TableauMouvement.RowCount-1]:='ST';
                 TableauMouvement.Cells[2,TableauMouvement.RowCount-1]:='';
                 TableauMouvement.Cells[3,TableauMouvement.RowCount-1]:='Situation Marché';
                 TableauMouvement.Cells[4,TableauMouvement.RowCount-1]:=TypeProces;
                 TableauMouvement.Cells[5,TableauMouvement.RowCount-1]:=ListeFichierConcerne;
                 TableauMouvement.Cells[6,TableauMouvement.RowCount-1]:='';
                 TableauMouvement.Cells[7,TableauMouvement.RowCount-1]:='';
                 TableauMouvement.Cells[8,TableauMouvement.RowCount-1]:='';
                 TableauMouvement.Cells[9,TableauMouvement.RowCount-1]:='';
                 TableauMouvement.Cells[10,TableauMouvement.RowCount-1]:='';
                 TableauMouvement.Cells[11,TableauMouvement.RowCount-1]:='';
                 TableauMouvement.Cells[12,TableauMouvement.RowCount-1]:='Oui';
                 TableauMouvement.Cells[13,TableauMouvement.RowCount-1]:='Oui';
           end;
     end;

     NotRow:='';
     NotCol:='';
     if(ListePositionAppartenanceMouvement<>'')then NotCol:='1;2;4-19;21;22-26';

     for C:=1 to TableauMouvement.ColCount-1 do
     if Existenumintexte(inttostr(C),NotCol)then TableauMouvement.ColWidths[C]:=0;

     AjusterColWidth(TableauMouvement,NotRow,NotCol);
end;

////////////////////////////////////////////////////////////////////////////////
Procedure ProcListeMouvementX(TableauMouvement:TStringGrid; PositionTypeMouvement,ListePositionNotAffiche,ListePositionAppartenanceMouvement,RBMouvementeCompte:string);
var  C,i:integer;
     OKTypeMouvement,OKTerminer,OKMouvement,OKPrelevement:boolean;
     NotRow,NotCol,TypeProces,FichierConserne,Adresse,ListeFichierConcerne,NomDossierPartageOut,EmlacementLocalOuReseauxOut,TypeProcesTypeMouvemen,FichierConserneTypeMouvemen,AdresseTypeMouvemen,TypeProcesReseauxTypeMouvemen,NomDossierPartageReseauxOutTypeMouvemen:string;
     TableauListeFPR:ArrayListeFichierPartageReseaux; TailTFPR:integer;
begin
     TableauMouvement.RowCount:=2;
     TableauMouvement.Rows[1].Text:='';

     TableauMouvement.ColCount:=27;
     TableauMouvement.Cols[0].Text:='P°TMvt';
     TableauMouvement.Cols[1].Text:='P°Mvt';
     TableauMouvement.Cols[2].Text:='Code';
     TableauMouvement.Cols[3].Text:='Désignation';
     TableauMouvement.Cols[4].Text:='Type Proces';
     TableauMouvement.Cols[5].Text:='Fichier Conserne';
     TableauMouvement.Cols[6].Text:='Comptes Conserne';
     TableauMouvement.Cols[7].Text:='Type Prix Mouvement';
     TableauMouvement.Cols[8].Text:='Code Type Formule';
     TableauMouvement.Cols[9].Text:='Type Formule';
     TableauMouvement.Cols[10].Text:='Signe';
     TableauMouvement.Cols[11].Text:='Autoriser M.à Vide';
     TableauMouvement.Cols[12].Text:='Mouvementé Compte';
     TableauMouvement.Cols[13].Text:='Mouvementé Finance';
     TableauMouvement.Cols[14].Text:='Etat Utilisé';
     TableauMouvement.Cols[15].Text:='Avec Date Exécution';
     TableauMouvement.Cols[16].Text:='Avec Localisat°.Géo.';
     TableauMouvement.Cols[17].Text:='Liste P°Mvt Appartenance';
     TableauMouvement.Cols[18].Text:='Type Stock';
     TableauMouvement.Cols[19].Text:='Débit/Crédit';
     TableauMouvement.Cols[20].Text:='Sélect.';
     TableauMouvement.Cols[21].Text:='P°LMBegin';
     TableauMouvement.Cols[22].Text:='P°LMEnd';
     TableauMouvement.Cols[23].Text:='SigneDebitCredit';
     TableauMouvement.Cols[24].Text:='ListeOrdreListeMouvement';
     TableauMouvement.Cols[25].Text:='PBeginDM';
     TableauMouvement.Cols[26].Text:='PEndDM';

     TypeProces:='Business';   FichierConserne:='FMouvement';
     if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
     end;

     TypeProcesTypeMouvemen:='Business';   FichierConserneTypeMouvemen:='FTypeMouvement';
     if not(FunctionAdresseProces(TypeProcesTypeMouvemen,FichierConserneTypeMouvemen,'',AdresseTypeMouvemen,TypeProcesReseauxTypeMouvemen,NomDossierPartageReseauxOutTypeMouvemen))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserneTypeMouvemen+' recherché !');
     end;

     ChTypeMouvement:=AdresseTypeMouvemen;
     assignfile(FTypeMouvement,ChTypeMouvement);
     if FileExists(ChTypeMouvement)then
     Reset(FTypeMouvement)
     else begin Rewrite(FTypeMouvement); exit end;
     seek(FTypeMouvement,0);
     i:=0;
     OKTerminer:=false;
     while(not eof(FTypeMouvement))and(OKTerminer=false)do
     begin
          Read(FTypeMouvement,RTypeMouvement);

          if(PositionTypeMouvement<>'')then
          begin
               if(inttostr(RTypeMouvement.PositionTypeMouvement)=PositionTypeMouvement)
               then OKTypeMouvement:=true
               else OKTypeMouvement:=false;

               OKTerminer:=OKTypeMouvement;
          end
          else
          begin
               OKTypeMouvement:=true;
          end;

          if(OKTypeMouvement=true)then
          begin
               if(RTypeMouvement.PositionTypeMouvement>=0)
               then ChMouvementX:=IndiqueAdresseMouvement(inttostr(RTypeMouvement.PositionTypeMouvement),TypeProcesReseaux)
               else ChMouvementX:=Adresse;
               FSGenerateurMouvement.PanelAdresseFMouvement.Caption:=ChMouvementX;
               assignfile(FMouvementX,ChMouvementX);
               if FileExists(ChMouvementX)then
               Reset(FMouvementX)
               else begin Rewrite(FMouvementX); exit end;
               seek(FMouvementX,0);
               while not eof(FMouvementX)do
               begin
                    Read(FMouvementX,RMouvementX);

                    if(RMouvementX.PositionTypeMouvement=RTypeMouvement.PositionTypeMouvement)
                    then OKMouvement:=true
                    else OKMouvement:=false;

                    if(OKMouvement=true)then
                    begin
                         if(RBMouvementeCompte<>'')then
                         begin
                              if(RMouvement.MouvementeCompte=strtoboolean(RBMouvementeCompte))
                              then OKMouvement:=true
                              else OKMouvement:=false;
                         end;
                    end;

                    if(OKMouvement=true)then
                    begin
                         if(ListePositionNotAffiche<>'')then
                         begin
                              if(not Existenumintexte(inttostr(RMouvementX.PositionTypeMouvement),ListePositionNotAffiche))
                              then OKMouvement:=true
                              else OKMouvement:=false;
                         end;
                    end;

                    if(OKMouvement=true)then
                    begin
                         i:=i+1;
                         TableauMouvement.Rows[i].Text:='';
                         TableauMouvement.Cells[0,i]:=inttostr(RMouvementX.PositionTypeMouvement);
                         TableauMouvement.Cells[1,i]:=inttostr(RMouvementX.PositionMouvement);
                         TableauMouvement.Cells[2,i]:=RMouvementX.CodeMouvement;
                         TableauMouvement.Cells[3,i]:=RMouvementX.DesignationMouvement;
                         TableauMouvement.Cells[4,i]:=RMouvementX.TypeProces;
                         TableauMouvement.Cells[5,i]:=RMouvementX.FichierTiersConserne;
                         TableauMouvement.Cells[6,i]:=RMouvementX.CompteConserne;
                         TableauMouvement.Cells[7,i]:=RMouvementX.TypePrixMouvement;
                         TableauMouvement.Cells[8,i]:=RMouvementX.CodeTypeFormuleBase;
                         TableauMouvement.Cells[9,i]:=ChercherTypeFormule(RMouvementX.CodeTypeFormuleBase,'').DesignationTypeFormule;
                         TableauMouvement.Cells[10,i]:='';
                         if(RMouvementX.PositionTypeMouvement<=filesize(FTypeMouvement))then
                         begin
                              seek(FTypeMouvement,RMouvementX.PositionTypeMouvement);
                              if not eof(FTypeMouvement)then
                              begin
                                   Read(FTypeMouvement,RTypeMouvement);
                                   TableauMouvement.Cells[10,i]:=RTypeMouvement.SigneTypeMouvement
                              end;
                         end;
                         TableauMouvement.Cells[11,i]:=booleantostr(RTypeMouvement.AutoriserMouvementAVide);
                         TableauMouvement.Cells[12,i]:=booleantostr(RMouvementX.MouvementeCompte);
                         TableauMouvement.Cells[13,i]:=booleantostr(RMouvementX.MouvementeFinance);
                         TableauMouvement.Cells[14,i]:=RMouvementX.EtatUtilise;
                         TableauMouvement.Cells[15,i]:=booleantostr(RMouvementX.AvecDateExecution);
                         TableauMouvement.Cells[16,i]:=booleantostr(RMouvementX.AvecLocalisationGeographique);
                         TableauMouvement.Cells[17,i]:=RMouvementX.ListeAppartenanceCodeMouvement;
                         TableauMouvement.Cells[18,i]:=RMouvementX.TypeStock;
                         TableauMouvement.Cells[19,i]:=RMouvementX.DebitCredit;
                         TableauMouvement.Cells[20,i]:='';
                         if(ListePositionAppartenanceMouvement<>'')then
                         begin
                              if Existenumintexte(inttostr(RMouvementX.PositionMouvement),ListePositionAppartenanceMouvement)then
                              begin
                                   TableauMouvement.Cells[20,i]:='OK';
                              end;
                         end;
                         //TableauMouvement.Cells[21,i]:=inttostr(RMouvementX.PositionListeMouvementBegin);
                         //TableauMouvement.Cells[22,i]:=inttostr(RMouvementX.PositionListeMouvementEnd);

                         //TableauMouvement.Cells[23,i]:=inttostr(RMouvementX.SigneDebitCredit);
                    end;
               end;
               CloseFile(FMouvementX);
          end;
     end;
     CloseFile(FTypeMouvement);
     
     if(i>0)then TableauMouvement.RowCount:=i+1
            else TableauMouvement.RowCount:=2;

     if(PositionTypeMouvement='')then
     begin
           TypeProces:='Business';
           FichierConserne:='FUniteFonds';
           Adresse:='';
           if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
           begin
                AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
           end;

           TypeProces:='';
           ListeFichierConcerne:='';
           ChUniteFonds:=Adresse;
           assignfile(FUniteFonds,ChUniteFonds);
           if FileExists(ChUniteFonds)then
           begin
                Reset(FUniteFonds);
                Seek(FUniteFonds,0);
                while not eof(FUniteFonds)do
                begin
                     read(FUniteFonds,RUniteFonds);
                     if(RUniteFonds.FichierConcerne<>'')
                     then
                     begin
                          if(TypeProces='')then
                          begin
                                TypeProces:=RUniteFonds.TypeProces;
                          end
                          else
                          begin
                               if(not FunctionFichierInclu(RUniteFonds.TypeProces,TypeProces))then
                               begin
                                    showmessage('Attention ! plusieur type proces dans le mème module !');
                               end;
                          end;

                          if(not(FunctionFichierInclu(RUniteFonds.FichierConcerne,ListeFichierConcerne)))then
                          if(ListeFichierConcerne='')
                          then ListeFichierConcerne:=RUniteFonds.FichierConcerne
                          else ListeFichierConcerne:=ListeFichierConcerne+';'+RUniteFonds.FichierConcerne
                     end;
                end;
                CloseFile(FUniteFonds);
           end;

           OpenFParc(RParc);
           ChPrelevement:=RParc.Parcours+'\'+Exercice+'FPrelevement';
           assignfile(FPrelevement,ChPrelevement);
           if FileExists(ChPrelevement)then
           Reset(FPrelevement)
           else Rewrite(FPrelevement);
           Seek(FPrelevement,0);
           OKPrelevement:=false;
           while not eof(FPrelevement)and(OKPrelevement=false)do
           begin
                read(FPrelevement,RPrelevement);
                if(RPrelevement.Archiver=true)
                and(RPrelevement.MontantPrelevement>0)
                then
                begin
                     OKPrelevement:=true;
                end;
           end;
           CloseFile(FPrelevement);

           if(OKPrelevement=false)then
           begin
                 OpenFParc(RParc);
                 ChAdresseProces:=RParc.Parcours+'\'+Exercice+'FAdresseProces';
                 assignfile(FAdresseProces,ChAdresseProces);
                 if FileExists(ChAdresseProces)then
                 begin
                      Reset(FAdresseProces);
                      Seek(FAdresseProces,0);
                      while not eof(FAdresseProces)and(OKPrelevement=false)do
                      begin
                            read(FAdresseProces,RAdresseProces);
                            OpenFParc(RParc);
                            ChListeFichierConcernePartageReseaux:=RParc.Parcours+'\'+Exercice+'FListeFichierConcernePartageReseaux'+' '+inttostr(RAdresseProces.NumAdresseProces);
                            assignfile(FListeFichierConcernePartageReseaux,ChListeFichierConcernePartageReseaux);
                            if FileExists(ChListeFichierConcernePartageReseaux)then
                            begin
                                  Reset(FListeFichierConcernePartageReseaux);
                                  Seek(FListeFichierConcernePartageReseaux,0);
                                  while not eof(FListeFichierConcernePartageReseaux)and(OKPrelevement=false)do
                                  begin
                                       read(FListeFichierConcernePartageReseaux,RListeFichierConcernePartageReseaux);
                                       if ExisteCharInString('Prelevement',RListeFichierConcernePartageReseaux.FichierConcerne)then OKPrelevement:=true;
                                  end;
                                  CloseFile(FListeFichierConcernePartageReseaux);
                            end;
                      end;
                      CloseFile(FAdresseProces);
                 end;
           end;

           if(OKPrelevement=true)and(TypeProces<>'')and(ListeFichierConcerne<>'')then
           begin
                 TableauMouvement.RowCount:=TableauMouvement.RowCount+1;
                 TableauMouvement.Cells[1,TableauMouvement.RowCount-1]:='Pr';
                 TableauMouvement.Cells[2,TableauMouvement.RowCount-1]:='';
                 TableauMouvement.Cells[3,TableauMouvement.RowCount-1]:='Prélèvement';
                 TableauMouvement.Cells[4,TableauMouvement.RowCount-1]:=TypeProces;
                 TableauMouvement.Cells[5,TableauMouvement.RowCount-1]:=ListeFichierConcerne;
                 TableauMouvement.Cells[6,TableauMouvement.RowCount-1]:='';
                 TableauMouvement.Cells[7,TableauMouvement.RowCount-1]:='';
                 TableauMouvement.Cells[8,TableauMouvement.RowCount-1]:='';
                 TableauMouvement.Cells[9,TableauMouvement.RowCount-1]:='';
                 TableauMouvement.Cells[10,TableauMouvement.RowCount-1]:='';
                 TableauMouvement.Cells[11,TableauMouvement.RowCount-1]:='';
                 TableauMouvement.Cells[12,TableauMouvement.RowCount-1]:='Oui';
                 TableauMouvement.Cells[13,TableauMouvement.RowCount-1]:='Oui';
           end;

           TypeProces:='Business';
           FichierConserne:='FMarche';
           Adresse:='';
           if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
           begin
                AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
           end;

           TypeProces:='';
           ListeFichierConcerne:='';
           ChMarche:=Adresse;
           assignfile(FMarche,ChMarche);
           if FileExists(ChMarche)then
           begin
                Reset(FMarche);
                Seek(FMarche,0);
                while not eof(FMarche)do
                begin
                     read(FMarche,RMarche);
                     if(RMarche.FichierConcerneTiers<>'')
                     then
                     begin
                          if(TypeProces='')then
                          begin
                                TypeProces:=RMarche.TypeProces;
                          end
                          else
                          begin
                               if(not FunctionFichierInclu(RMarche.TypeProces,TypeProces))then
                               begin
                                    showmessage('Attention ! plusieur type proces dans le mème module !');
                               end;
                          end;

                          if(not(FunctionFichierInclu(RMarche.FichierConcerneTiers,ListeFichierConcerne)))then
                          if(ListeFichierConcerne='')
                          then ListeFichierConcerne:=RMarche.FichierConcerneTiers
                          else ListeFichierConcerne:=ListeFichierConcerne+';'+RMarche.FichierConcerneTiers;
                     end;
                end;
                CloseFile(FMarche);
           end;

           if(TypeProces<>'')and(ListeFichierConcerne<>'')then
           begin
                 TableauMouvement.RowCount:=TableauMouvement.RowCount+1;
                 TableauMouvement.Cells[1,TableauMouvement.RowCount-1]:='ST';
                 TableauMouvement.Cells[2,TableauMouvement.RowCount-1]:='';
                 TableauMouvement.Cells[3,TableauMouvement.RowCount-1]:='Situation Marché';
                 TableauMouvement.Cells[4,TableauMouvement.RowCount-1]:=TypeProces;
                 TableauMouvement.Cells[5,TableauMouvement.RowCount-1]:=ListeFichierConcerne;
                 TableauMouvement.Cells[6,TableauMouvement.RowCount-1]:='';
                 TableauMouvement.Cells[7,TableauMouvement.RowCount-1]:='';
                 TableauMouvement.Cells[8,TableauMouvement.RowCount-1]:='';
                 TableauMouvement.Cells[9,TableauMouvement.RowCount-1]:='';
                 TableauMouvement.Cells[10,TableauMouvement.RowCount-1]:='';
                 TableauMouvement.Cells[11,TableauMouvement.RowCount-1]:='';
                 TableauMouvement.Cells[12,TableauMouvement.RowCount-1]:='Oui';
                 TableauMouvement.Cells[13,TableauMouvement.RowCount-1]:='Oui';
           end;
     end;

     NotRow:='';
     NotCol:='';
     if(ListePositionAppartenanceMouvement<>'')then NotCol:='1;2;4-19;21;22-26';

     for C:=1 to TableauMouvement.ColCount-1 do
     if Existenumintexte(inttostr(C),NotCol)then TableauMouvement.ColWidths[C]:=0;

     AjusterColWidth(TableauMouvement,NotRow,NotCol);
end;
////////////////////////////////////////////////////////////////////////////////

procedure TFSGenerateurMouvement.BitBtn1Click(Sender: TObject);
begin
FSGenerateurMouvement.AfficheMouvement.Visible:=false;
FSGenerateurMouvement.TableauTypeFormule.Visible:=false;
FSGenerateurMouvement.TableauCompteConserne.Visible:=false;
end;

procedure TFSGenerateurMouvement.TableauTypeMouvementClick(
  Sender: TObject);
var  AAAA,R:integer;
begin
FSGenerateurMouvement.AfficheTypeMouvement.Visible:=false;
FSGenerateurMouvement.AfficheMouvement.Visible:=false;
FSGenerateurMouvement.TableauTypeFormule.Visible:=false;
ProcListeMouvement(FSGenerateurMouvement.TableauMouvement,FSGenerateurMouvement.TableauTypeMouvement.Cells[1,FSGenerateurMouvement.TableauTypeMouvement.Row],'','','');

RemplireTableauPositionListeMouvementPeriode(FSGenerateurMouvement.TableauPositionListeMouvementPeriodeAffiche,EditPositionListeMouvementBegin,EditPositionListeMouvementEnd,FSGenerateurMouvement.EditAnneeSelect.Text,FSGenerateurMouvement.TableauMouvement.Cells[0,1],FSGenerateurMouvement.TableauMouvement.Cells[1,1]);
end;

procedure TFSGenerateurMouvement.BitMouvementClick(Sender: TObject);
var  i,R,AAAA:integer;   OKMouvement:boolean;  TypeProces,FichierConserne,Adresse:string;
begin

if(FSGenerateurMouvement.BitMouvement.Caption='Valider')then
begin
     TypeProces:='Business';   FichierConserne:='FMouvement';
     if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
     end;

     ChMouvement:=IndiqueAdresseMouvement(FSGenerateurMouvement.TableauTypeMouvement.Cells[1,FSGenerateurMouvement.TableauTypeMouvement.Row],TypeProcesReseaux);

     if(TypeProcesReseaux='Réseaux')then
     begin
          showmessage('Opération sous réseaux non autorisé !');
          Exit;
     end;
     
     assignfile(FMouvement,ChMouvement);
     if FileExists(ChMouvement)then
     Reset(FMouvement)
     else begin Rewrite(FMouvement); exit end;
     seek(FMouvement,0);
     i:=0;
     OKMouvement:=false;
     while not eof(FMouvement)and(OKMouvement=false)do
     begin
          Read(FMouvement,RMouvement);
          if(FSGenerateurMouvement.EditPositionMouvement.Text<>'')
          and(RMouvement.PositionTypeMouvement=strtointeger(FSGenerateurMouvement.TableauTypeMouvement.Cells[1,FSGenerateurMouvement.TableauTypeMouvement.Row]))
          and(RMouvement.PositionMouvement=strtointeger(FSGenerateurMouvement.EditPositionMouvement.Text))then
          begin
               OKMouvement:=true;
          end
          else i:=i+1;
     end;      

     seek(FMouvement,i);
     RMouvement.PositionTypeMouvement:=strtointeger(FSGenerateurMouvement.TableauTypeMouvement.Cells[1,FSGenerateurMouvement.TableauTypeMouvement.Row]);
     RMouvement.PositionMouvement:=i;
     RMouvement.CodeMouvement:=FSGenerateurMouvement.EditCodeMouvement.Text;
     RMouvement.DesignationMouvement:=FSGenerateurMouvement.EditDesignationMouvement.Text;
     RMouvement.TypeProces:=FSGenerateurMouvement.EditTypeProces.Text;
     RMouvement.FichierTiersConserne:=FSGenerateurMouvement.EditFichierTiersConserne.Text;
     RMouvement.TypeStock:=FSGenerateurMouvement.EditTypeStock.Text;;
     RMouvement.CompteConserne:=FSGenerateurMouvement.EditCompteConserne.Text;
     RMouvement.TypePrixMouvement:=FSGenerateurMouvement.EditTypePrixMouvement.Text;
     RMouvement.DebitCredit:=FSGenerateurMouvement.EditDebitCreditMouvement.Text;
     RMouvement.SigneDebitCredit:=strtointeger(FSGenerateurMouvement.EditSigneDebitCredit.Text);
     RMouvement.CodeTypeFormuleBase:=FSGenerateurMouvement.EditCodeTypeFormuleBase.Text;
     RMouvement.MouvementeCompte:=FSGenerateurMouvement.RBMouvementeCompte.Checked;
     RMouvement.MouvementeFinance:=FSGenerateurMouvement.RBMouvementeFinance.Checked;
     RMouvement.EtatUtilise:=FSGenerateurMouvement.EditEtatUtilise.Text;
     RMouvement.AvecDateExecution:=FSGenerateurMouvement.RBAvecDateExecution.Checked;
     RMouvement.AvecLocalisationGeographique:=FSGenerateurMouvement.RBAvecLocalisationGeographique.Checked;
     RMouvement.ListeAppartenanceCodeMouvement:=FSGenerateurMouvement.EditListeAppartenancePositionMouvement.Text;
     RMouvement.PositionListeMouvementBegin:=strtointeger(FSGenerateurMouvement.EditPositionListeMouvementBegin.Text);
     RMouvement.PositionListeMouvementEnd:=strtointeger(FSGenerateurMouvement.EditPositionListeMouvementEnd.Text);

     AAAA:=Strtointeger(ExerciceAnnee);
     for R:=1 to 12 do
     begin
          RegistrePositionListeMouvementParPeriode[AAAA,R].PositionListeMouvementBegin:=strtointeger(FSGenerateurMouvement.TableauPositionListeMouvementPeriode.Cells[1,R]);
          RegistrePositionListeMouvementParPeriode[AAAA,R].PositionListeMouvementEnd:=strtointeger(FSGenerateurMouvement.TableauPositionListeMouvementPeriode.Cells[2,R]);
     end;
     RMouvement.RegistrePositionListeMouvementParPeriode:=RegistrePositionListeMouvementParPeriode;
     write(FMouvement,RMouvement);
     CloseFile(FMouvement);

end;

if(FSGenerateurMouvement.BitMouvement.Caption='Supprimer')then
begin
     DeleteFMouvement(strtointeger(FSGenerateurMouvement.TableauTypeMouvement.Cells[1,FSGenerateurMouvement.TableauTypeMouvement.Row]),strtointeger(FSGenerateurMouvement.EditPositionMouvement.Text),OKMouvement);
end;

ProcListeMouvement(FSGenerateurMouvement.TableauMouvement,FSGenerateurMouvement.TableauTypeMouvement.Cells[1,FSGenerateurMouvement.TableauTypeMouvement.Row],'','','');

FSGenerateurMouvement.AfficheMouvement.Visible:=false;

FSGenerateurMouvement.RBModificationOperer.Checked:=true;
end;

procedure TFSGenerateurMouvement.TableauTypeMouvementKeyPress(
  Sender: TObject; var Key: Char);
var   TypeProces,FichierConserne,Adresse:string;
begin

if key in['n','N','+','s','S','-','m','M']then
begin
     TypeProces:='Business';   FichierConserne:='FTypeMouvement';
     if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
     end;

     if(TypeProcesReseaux='Réseaux')then
     begin
          showmessage('Opération sous réseaux non autorisé !');
          Exit;
     end;
end;

if key in['n','N','+']then
begin
     FSGenerateurMouvement.AfficheTypeMouvement.Visible:=true;
     FSGenerateurMouvement.EditCodeTypeMouvement.SetFocus;
     FSGenerateurMouvement.BitTypeMouvement.Kind:=bkAll;
     FSGenerateurMouvement.BitTypeMouvement.Caption:='Valider';

     FSGenerateurMouvement.EditPositionTypeMouvement.Text:='';
     FSGenerateurMouvement.EditCodeTypeMouvement.Text:='';
     FSGenerateurMouvement.EditDesignationTypeMouvement.Text:='';
     FSGenerateurMouvement.EditSigneTypeMouvement.Text:='';
     FSGenerateurMouvement.RBAutoriserVide.Checked:=false;
     FSGenerateurMouvement.RBNePasAutoriserVide.Checked:=false;
end;

if key in['s','S','-']then
begin
     FSGenerateurMouvement.AfficheTypeMouvement.Visible:=true;
     FSGenerateurMouvement.BitTypeMouvement.SetFocus;
     FSGenerateurMouvement.BitTypeMouvement.Kind:=bkCancel;
     FSGenerateurMouvement.BitTypeMouvement.Caption:='Supprimer';

     FSGenerateurMouvement.EditPositionTypeMouvement.Text:=FSGenerateurMouvement.TableauTypeMouvement.Cells[1,FSGenerateurMouvement.TableauTypeMouvement.Row];
     FSGenerateurMouvement.EditCodeTypeMouvement.Text:=FSGenerateurMouvement.TableauTypeMouvement.Cells[2,FSGenerateurMouvement.TableauTypeMouvement.Row];
     FSGenerateurMouvement.EditDesignationTypeMouvement.Text:=FSGenerateurMouvement.TableauTypeMouvement.Cells[3,FSGenerateurMouvement.TableauTypeMouvement.Row];
     FSGenerateurMouvement.EditSigneTypeMouvement.Text:=FSGenerateurMouvement.TableauTypeMouvement.Cells[4,FSGenerateurMouvement.TableauTypeMouvement.Row];
     FSGenerateurMouvement.RBAutoriserVide.Checked:=strtoboolean(FSGenerateurMouvement.TableauTypeMouvement.Cells[5,FSGenerateurMouvement.TableauTypeMouvement.Row]);
     FSGenerateurMouvement.RBNePasAutoriserVide.Checked:=NOT(strtoboolean(FSGenerateurMouvement.TableauTypeMouvement.Cells[5,FSGenerateurMouvement.TableauTypeMouvement.Row]));
end;

if key in['m','M']then
begin
     FSGenerateurMouvement.AfficheTypeMouvement.Visible:=true;
     FSGenerateurMouvement.EditCodeTypeMouvement.SetFocus;
     FSGenerateurMouvement.BitTypeMouvement.Kind:=bkAll;
     FSGenerateurMouvement.BitTypeMouvement.Caption:='Valider';

     FSGenerateurMouvement.EditPositionTypeMouvement.Text:=FSGenerateurMouvement.TableauTypeMouvement.Cells[1,FSGenerateurMouvement.TableauTypeMouvement.Row];
     FSGenerateurMouvement.EditCodeTypeMouvement.Text:=FSGenerateurMouvement.TableauTypeMouvement.Cells[2,FSGenerateurMouvement.TableauTypeMouvement.Row];
     FSGenerateurMouvement.EditDesignationTypeMouvement.Text:=FSGenerateurMouvement.TableauTypeMouvement.Cells[3,FSGenerateurMouvement.TableauTypeMouvement.Row];
     FSGenerateurMouvement.EditSigneTypeMouvement.Text:=FSGenerateurMouvement.TableauTypeMouvement.Cells[4,FSGenerateurMouvement.TableauTypeMouvement.Row];
     FSGenerateurMouvement.RBAutoriserVide.Checked:=strtoboolean(FSGenerateurMouvement.TableauTypeMouvement.Cells[5,FSGenerateurMouvement.TableauTypeMouvement.Row]);
     FSGenerateurMouvement.RBNePasAutoriserVide.Checked:=NOT(strtoboolean(FSGenerateurMouvement.TableauTypeMouvement.Cells[5,FSGenerateurMouvement.TableauTypeMouvement.Row]));
end;

end;

procedure TFSGenerateurMouvement.EditPositionTypeMouvementKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSGenerateurMouvement.EditCodeTypeMouvement.SetFocus;
end;

end;

procedure TFSGenerateurMouvement.EditPositionMouvementKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSGenerateurMouvement.EditCodeMouvement.SetFocus;
end;

end;

procedure TFSGenerateurMouvement.EditCodeMouvementKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSGenerateurMouvement.EditDesignationMouvement.SetFocus;
end;

end;

procedure TFSGenerateurMouvement.EditDesignationMouvementKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSGenerateurMouvement.EditTypeProces.SetFocus;
end;

end;

procedure TFSGenerateurMouvement.EditFichierTiersConserneKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSGenerateurMouvement.EditTypeStock.SetFocus;
end;

end;

procedure TFSGenerateurMouvement.EditCodeTypeFormuleBaseKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     if(FSGenerateurMouvement.TableauTypeFormule.Visible=true)
     then FSGenerateurMouvement.TableauTypeFormule.SetFocus
     else FSGenerateurMouvement.RBMouvementeCompte.SetFocus;
end;

end;

procedure TFSGenerateurMouvement.TableauMouvementKeyPress(Sender: TObject;
  var Key: Char);
var  R,l,Ordre:integer;   ChMouvement,NumExiste:string;
begin

if key in['n','N','+','s','S','-','m','M']then
begin
     ChMouvement:=IndiqueAdresseMouvement(FSGenerateurMouvement.TableauTypeMouvement.Cells[1,FSGenerateurMouvement.TableauTypeMouvement.Row],TypeProcesReseaux);

     if(TypeProcesReseaux='Réseaux')then
     begin
          showmessage('Opération sous réseaux non autorisé !');
          Exit;
     end;
end;

if key in['n','N','+']then
begin
     FSGenerateurMouvement.AfficheMouvement.Visible:=true;
     FSGenerateurMouvement.EditCodeMouvement.SetFocus;
     FSGenerateurMouvement.BitMouvement.Kind:=bkAll;
     FSGenerateurMouvement.BitMouvement.Caption:='Valider';

     FSGenerateurMouvement.EditPositionMouvement.Text:='';
     FSGenerateurMouvement.EditCodeMouvement.Text:='';
     FSGenerateurMouvement.EditDesignationMouvement.Text:='';
     FSGenerateurMouvement.EditTypeProces.Text:='';
     FSGenerateurMouvement.EditFichierTiersConserne.Text:='';
     FSGenerateurMouvement.EditTypeStock.Text:='';
     FSGenerateurMouvement.EditCompteConserne.Text:='';
     FSGenerateurMouvement.EditDebitCreditMouvement.Text:='';
     FSGenerateurMouvement.RBSigneDebitCreditPositive.Checked:=true;
     FSGenerateurMouvement.EditSigneDebitCredit.Text:='1';
     FSGenerateurMouvement.EditTypePrixMouvement.Text:='';
     FSGenerateurMouvement.EditCodeTypeFormuleBase.Text:='';
     FSGenerateurMouvement.RBMouvementeCompte.Checked:=true;
     FSGenerateurMouvement.RBMouvementeFinance.Checked:=true;
     FSGenerateurMouvement.EditEtatUtilise.Text:='';
     FSGenerateurMouvement.EditListeAppartenancePositionMouvement.Text:='';
     FSGenerateurMouvement.EditPositionListeMouvementBegin.Text:='0';
     FSGenerateurMouvement.EditPositionListeMouvementEnd.Text:='999999999';
     FSGenerateurMouvement.RBAvecDateExecution.Checked:=False;
     FSGenerateurMouvement.RBAvecLocalisationGeographique.Checked:=False;

     for R:=1 to 12 do
     begin
          FSGenerateurMouvement.TableauPositionListeMouvementPeriode.Rows[R].Text:=inttostr(R);
          FSGenerateurMouvement.TableauPositionListeMouvementPeriode.Cells[1,R]:='999999999';
          FSGenerateurMouvement.TableauPositionListeMouvementPeriode.Cells[2,R]:='0';
     end;
end;

if key in['s','S','-']then
begin
     FSGenerateurMouvement.AfficheMouvement.Visible:=true;
     FSGenerateurMouvement.BitMouvement.SetFocus;
     FSGenerateurMouvement.BitMouvement.Kind:=bkCancel;
     FSGenerateurMouvement.BitMouvement.Caption:='Supprimer';

     FSGenerateurMouvement.EditPositionMouvement.Text:=FSGenerateurMouvement.TableauMouvement.Cells[1,FSGenerateurMouvement.TableauMouvement.Row];
     FSGenerateurMouvement.EditCodeMouvement.Text:=FSGenerateurMouvement.TableauMouvement.Cells[2,FSGenerateurMouvement.TableauMouvement.Row];
     FSGenerateurMouvement.EditDesignationMouvement.Text:=FSGenerateurMouvement.TableauMouvement.Cells[3,FSGenerateurMouvement.TableauMouvement.Row];
     FSGenerateurMouvement.EditTypeProces.Text:=FSGenerateurMouvement.TableauMouvement.Cells[4,FSGenerateurMouvement.TableauMouvement.Row];
     ListeTypeFichierTiersBox(FSGenerateurMouvement.EditTypeProces.Text,'','',FSGenerateurMouvement.EditFichierTiersConserne,FSGenerateurMouvement.EditTitreFichierTiersConserne);
     FSGenerateurMouvement.EditFichierTiersConserne.Text:=FSGenerateurMouvement.TableauMouvement.Cells[5,FSGenerateurMouvement.TableauMouvement.Row];
     FSGenerateurMouvement.EditCompteConserne.Text:=FSGenerateurMouvement.TableauMouvement.Cells[6,FSGenerateurMouvement.TableauMouvement.Row];
     FSGenerateurMouvement.EditTypePrixMouvement.Text:=FSGenerateurMouvement.TableauMouvement.Cells[7,FSGenerateurMouvement.TableauMouvement.Row];
     FSGenerateurMouvement.EditCodeTypeFormuleBase.Text:=FSGenerateurMouvement.TableauMouvement.Cells[8,FSGenerateurMouvement.TableauMouvement.Row];
     FSGenerateurMouvement.RBMouvementeCompte.Checked:=strtoboolean(FSGenerateurMouvement.TableauMouvement.Cells[12,FSGenerateurMouvement.TableauMouvement.Row]);
     FSGenerateurMouvement.RBMouvementeFinance.Checked:=strtoboolean(FSGenerateurMouvement.TableauMouvement.Cells[13,FSGenerateurMouvement.TableauMouvement.Row]);
     FSGenerateurMouvement.EditEtatUtilise.Text:=FSGenerateurMouvement.TableauMouvement.Cells[14,FSGenerateurMouvement.TableauMouvement.Row];
     FSGenerateurMouvement.RBAvecDateExecution.Checked:=strtoboolean(FSGenerateurMouvement.TableauMouvement.Cells[15,FSGenerateurMouvement.TableauMouvement.Row]);
     FSGenerateurMouvement.RBAvecLocalisationGeographique.Checked:=strtoboolean(FSGenerateurMouvement.TableauMouvement.Cells[16,FSGenerateurMouvement.TableauMouvement.Row]);
     FSGenerateurMouvement.EditListeAppartenancePositionMouvement.Text:=FSGenerateurMouvement.TableauMouvement.Cells[17,FSGenerateurMouvement.TableauMouvement.Row];
     FSGenerateurMouvement.EditTypeStock.Text:=FSGenerateurMouvement.TableauMouvement.Cells[18,FSGenerateurMouvement.TableauMouvement.Row];
     FSGenerateurMouvement.EditDebitCreditMouvement.Text:=FSGenerateurMouvement.TableauMouvement.Cells[19,FSGenerateurMouvement.TableauMouvement.Row];
     //FSGenerateurMouvement..Text:=FSGenerateurMouvement.TableauMouvement.Cells[20,FSGenerateurMouvement.TableauMouvement.Row];
     FSGenerateurMouvement.EditPositionListeMouvementBegin.Text:=FSGenerateurMouvement.TableauMouvement.Cells[21,FSGenerateurMouvement.TableauMouvement.Row];
     FSGenerateurMouvement.EditPositionListeMouvementEnd.Text:=FSGenerateurMouvement.TableauMouvement.Cells[22,FSGenerateurMouvement.TableauMouvement.Row];

     if(FSGenerateurMouvement.TableauMouvement.Cells[23,FSGenerateurMouvement.TableauMouvement.Row]='-1')
     then FSGenerateurMouvement.RBSigneDebitCreditNigative.Checked:=true
     else FSGenerateurMouvement.RBSigneDebitCreditPositive.Checked:=true;

     iAnnee:=Strtointeger(ExerciceAnnee);
     RMouvement:=ChercherMouvement(FSGenerateurMouvement.TableauMouvement.Cells[0,FSGenerateurMouvement.TableauMouvement.Row],strtointeger(FSGenerateurMouvement.EditPositionMouvement.Text),AdresseFichierConcerne);
     for R:=1 to 12 do
     begin
          FSGenerateurMouvement.TableauPositionListeMouvementPeriode.Rows[R].Text:=inttostr(R);
          FSGenerateurMouvement.TableauPositionListeMouvementPeriode.Cells[1,R]:=inttostr(RMouvement.RegistrePositionListeMouvementParPeriode[iAnnee,R].PositionListeMouvementBegin);
          FSGenerateurMouvement.TableauPositionListeMouvementPeriode.Cells[2,R]:=inttostr(RMouvement.RegistrePositionListeMouvementParPeriode[iAnnee,R].PositionListeMouvementEnd);
     end;
end;

if key in['m','M']then
begin
     FSGenerateurMouvement.AfficheMouvement.Visible:=true;
     FSGenerateurMouvement.EditCodeMouvement.SetFocus;
     FSGenerateurMouvement.BitMouvement.Kind:=bkAll;
     FSGenerateurMouvement.BitMouvement.Caption:='Valider';

     FSGenerateurMouvement.EditPositionMouvement.Text:=FSGenerateurMouvement.TableauMouvement.Cells[1,FSGenerateurMouvement.TableauMouvement.Row];
     FSGenerateurMouvement.EditCodeMouvement.Text:=FSGenerateurMouvement.TableauMouvement.Cells[2,FSGenerateurMouvement.TableauMouvement.Row];
     FSGenerateurMouvement.EditDesignationMouvement.Text:=FSGenerateurMouvement.TableauMouvement.Cells[3,FSGenerateurMouvement.TableauMouvement.Row];
     FSGenerateurMouvement.EditTypeProces.Text:=FSGenerateurMouvement.TableauMouvement.Cells[4,FSGenerateurMouvement.TableauMouvement.Row];
     ListeTypeFichierTiersBox(FSGenerateurMouvement.EditTypeProces.Text,'','',FSGenerateurMouvement.EditFichierTiersConserne,FSGenerateurMouvement.EditTitreFichierTiersConserne);
     FSGenerateurMouvement.EditFichierTiersConserne.Text:=FSGenerateurMouvement.TableauMouvement.Cells[5,FSGenerateurMouvement.TableauMouvement.Row];
     FSGenerateurMouvement.EditCompteConserne.Text:=FSGenerateurMouvement.TableauMouvement.Cells[6,FSGenerateurMouvement.TableauMouvement.Row];
     FSGenerateurMouvement.EditTypePrixMouvement.Text:=FSGenerateurMouvement.TableauMouvement.Cells[7,FSGenerateurMouvement.TableauMouvement.Row];
     FSGenerateurMouvement.EditCodeTypeFormuleBase.Text:=FSGenerateurMouvement.TableauMouvement.Cells[8,FSGenerateurMouvement.TableauMouvement.Row];
     FSGenerateurMouvement.RBMouvementeCompte.Checked:=strtoboolean(FSGenerateurMouvement.TableauMouvement.Cells[12,FSGenerateurMouvement.TableauMouvement.Row]);
     FSGenerateurMouvement.RBMouvementeFinance.Checked:=strtoboolean(FSGenerateurMouvement.TableauMouvement.Cells[13,FSGenerateurMouvement.TableauMouvement.Row]);
     FSGenerateurMouvement.EditEtatUtilise.Text:=FSGenerateurMouvement.TableauMouvement.Cells[14,FSGenerateurMouvement.TableauMouvement.Row];
     FSGenerateurMouvement.RBAvecDateExecution.Checked:=strtoboolean(FSGenerateurMouvement.TableauMouvement.Cells[15,FSGenerateurMouvement.TableauMouvement.Row]);
     FSGenerateurMouvement.RBAvecLocalisationGeographique.Checked:=strtoboolean(FSGenerateurMouvement.TableauMouvement.Cells[16,FSGenerateurMouvement.TableauMouvement.Row]);
     FSGenerateurMouvement.EditListeAppartenancePositionMouvement.Text:=FSGenerateurMouvement.TableauMouvement.Cells[17,FSGenerateurMouvement.TableauMouvement.Row];
     FSGenerateurMouvement.EditTypeStock.Text:=FSGenerateurMouvement.TableauMouvement.Cells[18,FSGenerateurMouvement.TableauMouvement.Row];
     FSGenerateurMouvement.EditDebitCreditMouvement.Text:=FSGenerateurMouvement.TableauMouvement.Cells[19,FSGenerateurMouvement.TableauMouvement.Row];
     //FSGenerateurMouvement..Text:=FSGenerateurMouvement.TableauMouvement.Cells[20,FSGenerateurMouvement.TableauMouvement.Row];
     FSGenerateurMouvement.EditPositionListeMouvementBegin.Text:=FSGenerateurMouvement.TableauMouvement.Cells[21,FSGenerateurMouvement.TableauMouvement.Row];
     FSGenerateurMouvement.EditPositionListeMouvementEnd.Text:=FSGenerateurMouvement.TableauMouvement.Cells[22,FSGenerateurMouvement.TableauMouvement.Row];

     if(FSGenerateurMouvement.TableauMouvement.Cells[23,FSGenerateurMouvement.TableauMouvement.Row]='-1')
     then FSGenerateurMouvement.RBSigneDebitCreditNigative.Checked:=true
     else FSGenerateurMouvement.RBSigneDebitCreditPositive.Checked:=true;
     
     iAnnee:=Strtointeger(ExerciceAnnee);
     RMouvement:=ChercherMouvement(FSGenerateurMouvement.TableauMouvement.Cells[0,FSGenerateurMouvement.TableauMouvement.Row],strtointeger(FSGenerateurMouvement.EditPositionMouvement.Text),AdresseFichierConcerne);
     for R:=1 to 12 do
     begin
          FSGenerateurMouvement.TableauPositionListeMouvementPeriode.Rows[R].Text:=inttostr(R);
          FSGenerateurMouvement.TableauPositionListeMouvementPeriode.Cells[1,R]:=inttostr(RMouvement.RegistrePositionListeMouvementParPeriode[iAnnee,R].PositionListeMouvementBegin);
          FSGenerateurMouvement.TableauPositionListeMouvementPeriode.Cells[2,R]:=inttostr(RMouvement.RegistrePositionListeMouvementParPeriode[iAnnee,R].PositionListeMouvementEnd);
     end;
end;

if key in['m','M','s','S','-']then
begin
     if(FSGenerateurMouvement.EditCompteConserne.Text<>'')then
     begin
          Ordre:=1;
          NumExiste:='';
          for l:=1 to longueur(FSGenerateurMouvement.EditCompteConserne.Text)do
          begin
               if(FSGenerateurMouvement.EditCompteConserne.Text[l]<>';')then
               begin
                    NumExiste:=NumExiste+FSGenerateurMouvement.EditCompteConserne.Text[l];
               end;

               if(FSGenerateurMouvement.EditCompteConserne.Text[l]=';')or(l=longueur(FSGenerateurMouvement.EditCompteConserne.Text))then
               begin
                    if(Ordre<longueur(NumExiste))then Ordre:=longueur(NumExiste);
                    NumExiste:=''
               end;
          end;
     end;
     FSGenerateurMouvement.IncrimentOrdreCompteComptable.Position:=Ordre;
end;

end;

procedure TFSGenerateurMouvement.EditCodeTypeMouvementKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSGenerateurMouvement.EditDesignationTypeMouvement.SetFocus;
end;

end;

procedure TFSGenerateurMouvement.EditDesignationTypeMouvementKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSGenerateurMouvement.EditSigneTypeMouvement.SetFocus;
end;

end;

procedure TFSGenerateurMouvement.EditSigneTypeMouvementKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSGenerateurMouvement.BitTypeMouvement.SetFocus;
end;

end;

procedure TFSGenerateurMouvement.BitTypeMouvementClick(Sender: TObject);
var  i:integer;   OKTypeMouvement:boolean;   TypeProces,FichierConserne,Adresse:string;
begin

if(FSGenerateurMouvement.BitTypeMouvement.Caption='Valider')then
begin
     TypeProces:='Business';   FichierConserne:='FTypeMouvement';
     if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
     end;

     if(TypeProcesReseaux='Réseaux')then
     begin
          showmessage('Opération sous réseaux non autorisé !');
          Exit;
     end;

     ChTypeMouvement:=Adresse;
     assignfile(FTypeMouvement,ChTypeMouvement);
     if FileExists(ChTypeMouvement)then
     Reset(FTypeMouvement)
     else begin Rewrite(FTypeMouvement); exit end;
     seek(FTypeMouvement,0);
     i:=0;
     OKTypeMouvement:=false;
     while not eof(FTypeMouvement)and(OKTypeMouvement=false)do
     begin
          Read(FTypeMouvement,RTypeMouvement);
          if(FSGenerateurMouvement.EditPositionTypeMouvement.Text<>'')
          and(RTypeMouvement.PositionTypeMouvement=strtointeger(FSGenerateurMouvement.EditPositionTypeMouvement.Text))then
          begin
               OKTypeMouvement:=true;
          end
          else i:=i+1;
     end;      

     seek(FTypeMouvement,i);
     RTypeMouvement.PositionTypeMouvement:=i;
     RTypeMouvement.CodeTypeMouvement:=FSGenerateurMouvement.EditCodeTypeMouvement.Text;
     RTypeMouvement.DesignationTypeMouvement:=FSGenerateurMouvement.EditDesignationTypeMouvement.Text;
     RTypeMouvement.SigneTypeMouvement:=FSGenerateurMouvement.EditSigneTypeMouvement.Text;
     RTypeMouvement.AutoriserMouvementAVide:=FSGenerateurMouvement.RBAutoriserVide.Checked;
     write(FTypeMouvement,RTypeMouvement);
     CloseFile(FTypeMouvement);

end;

if(FSGenerateurMouvement.BitTypeMouvement.Caption='Supprimer')then
begin
     DeleteFTypeMouvement(strtointeger(FSGenerateurMouvement.EditPositionTypeMouvement.Text),OKTypeMouvement);
end;

ProcListeTypeMouvement(FSGenerateurMouvement.TableauTypeMouvement);

FSGenerateurMouvement.AfficheTypeMouvement.Visible:=false;
end;

procedure TFSGenerateurMouvement.BitBtn2Click(Sender: TObject);
begin
FSGenerateurMouvement.AfficheTypeMouvement.Visible:=false;
end;

procedure TFSGenerateurMouvement.TableauMouvementClick(Sender: TObject);
var  R:integer;
begin
     FSGenerateurMouvement.AfficheTypeMouvement.Visible:=false;
     FSGenerateurMouvement.AfficheMouvement.Visible:=false;
     FSGenerateurMouvement.TableauTypeFormule.Visible:=false;
     FSGenerateurMouvement.TableauListeAppartenanceCodeMouvement.Visible:=false;
     FSGenerateurMouvement.TableauCompteConserne.Visible:=false;

     RemplireTableauPositionListeMouvementPeriode(FSGenerateurMouvement.TableauPositionListeMouvementPeriodeAffiche,EditPositionListeMouvementBegin,EditPositionListeMouvementEnd,FSGenerateurMouvement.EditAnneeSelect.Text,FSGenerateurMouvement.TableauMouvement.Cells[0,FSGenerateurMouvement.TableauMouvement.Row],FSGenerateurMouvement.TableauMouvement.Cells[1,FSGenerateurMouvement.TableauMouvement.Row]);

     if(FSGenerateurMouvement.RBFixeColonne.Checked=true)then
     begin
          FSGenerateurMouvement.TableauMouvement.FixedCols:=strtointeger(FSGenerateurMouvement.EditFixeColonne.Text);
          FSGenerateurMouvement.RBFixeColonne.Checked:=false;
     end;
end;


procedure TFSGenerateurMouvement.EditCodeTypeFormuleBaseEnter(
  Sender: TObject);
begin
FSGenerateurMouvement.TableauTypeFormule.Visible:=true;
FSGenerateurMouvement.TableauTypeFormule.Left:=FSGenerateurMouvement.AfficheMouvement.Left+FSGenerateurMouvement.EditCodeTypeFormuleBase.Left;
FSGenerateurMouvement.TableauTypeFormule.Top:=FSGenerateurMouvement.AfficheMouvement.Top+FSGenerateurMouvement.EditCodeTypeFormuleBase.Top+FSGenerateurMouvement.EditCodeTypeFormuleBase.Height;

ListeTypeFormule(FSGenerateurMouvement.TableauTypeFormule);
end;

procedure TFSGenerateurMouvement.TableauTypeFormuleDblClick(
  Sender: TObject);
begin
FSGenerateurMouvement.EditCodeTypeFormuleBase.Text:=FSGenerateurMouvement.TableauTypeFormule.Cells[2,FSGenerateurMouvement.TableauTypeFormule.Row];
FSGenerateurMouvement.TableauTypeFormule.Visible:=false;
FSGenerateurMouvement.RBMouvementeCompte.SetFocus;
end;

procedure TFSGenerateurMouvement.TableauTypeFormuleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSGenerateurMouvement.EditCodeTypeFormuleBase.Text:=FSGenerateurMouvement.TableauTypeFormule.Cells[2,FSGenerateurMouvement.TableauTypeFormule.Row];
     FSGenerateurMouvement.TableauTypeFormule.Visible:=false;
     FSGenerateurMouvement.RBMouvementeCompte.SetFocus;
end;

end;

procedure TFSGenerateurMouvement.EditCompteConserneEnter(Sender: TObject);
var m,l:integer;  OK:boolean;  TypeProces,FichierConcerne,Adresse:string;
begin

FSGenerateurMouvement.TableauCompteConserne.Visible:=true;
FSGenerateurMouvement.TableauCompteConserne.Left:=FSGenerateurMouvement.AfficheMouvement.Left+FSGenerateurMouvement.EditCompteConserne.Left;
FSGenerateurMouvement.TableauCompteConserne.Top:=FSGenerateurMouvement.AfficheMouvement.Top+FSGenerateurMouvement.EditCompteConserne.Top+FSGenerateurMouvement.EditCompteConserne.Height;

ListePlanComptableSelectCompte(FSGenerateurMouvement.TableauCompteConserne,strtointeger(FSGenerateurMouvement.EditOrdreCompteComptable.Text),FSGenerateurMouvement.EditCompteConserne.Text);

end;

procedure TFSGenerateurMouvement.TableauCompteConserneDblClick(
  Sender: TObject);
begin

if(FSGenerateurMouvement.TableauCompteConserne.Cells[0,FSGenerateurMouvement.TableauCompteConserne.Row]='OK')
then FSGenerateurMouvement.TableauCompteConserne.Cells[0,FSGenerateurMouvement.TableauCompteConserne.Row]:=''
else FSGenerateurMouvement.TableauCompteConserne.Cells[0,FSGenerateurMouvement.TableauCompteConserne.Row]:='OK';

end;

procedure TFSGenerateurMouvement.TableauCompteConserneKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
var  R:integer;  OKPointVergule:boolean;
begin

if key in[VK_ESCAPE]then FSGenerateurMouvement.TableauCompteConserne.Visible:=false;

if key in[VK_RETURN]then
begin
     FSGenerateurMouvement.EditCompteConserne.Text:='';
     OKPointVergule:=false;
     for R:=1 to FSGenerateurMouvement.TableauCompteConserne.RowCount-1 do
     begin
          if(FSGenerateurMouvement.TableauCompteConserne.Cells[0,R]='OK')then
          begin
               if(OKPointVergule=false)then
               begin
                    FSGenerateurMouvement.EditCompteConserne.Text:=FSGenerateurMouvement.TableauCompteConserne.Cells[1,R];
                    OKPointVergule:=true;
               end
               else
               begin
                    FSGenerateurMouvement.EditCompteConserne.Text:=FSGenerateurMouvement.EditCompteConserne.Text+';'+
                                                                   FSGenerateurMouvement.TableauCompteConserne.Cells[1,R];
               end;
          end;
     end;
     FSGenerateurMouvement.TableauCompteConserne.Visible:=false;
     FSGenerateurMouvement.EditTypePrixMouvement.SetFocus;
end;

end;

procedure TFSGenerateurMouvement.EditCompteConserneKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     if(FSGenerateurMouvement.TableauCompteConserne.Visible=true)
     then FSGenerateurMouvement.TableauCompteConserne.SetFocus
     else FSGenerateurMouvement.EditTypePrixMouvement.SetFocus;
end;

if key in[VK_ESCAPE]then FSGenerateurMouvement.TableauCompteConserne.Visible:=false;

end;

procedure TFSGenerateurMouvement.EditTypeProcesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSGenerateurMouvement.EditFichierTiersConserne.SetFocus;
end;

end;

procedure TFSGenerateurMouvement.EditTypePrixMouvementKeyPress(
  Sender: TObject; var Key: Char);
begin
key:=#0;
end;

procedure TFSGenerateurMouvement.EditFichierTiersConserneKeyPress(
  Sender: TObject; var Key: Char);
begin
if(key='+')then
begin
      FSGenerateurMouvement.EditOperationFichierTiersConserne.Text:=key;
      FSGenerateurMouvement.EditAddFichierTiersConserne.Text:=FSGenerateurMouvement.EditFichierTiersConserne.Text;
end;
key:=#0;
end;

procedure TFSGenerateurMouvement.EditTypePrixMouvementKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSGenerateurMouvement.EditDebitCreditMouvement.SetFocus;
end;

end;

procedure TFSGenerateurMouvement.EditSigneTypeMouvementKeyPress(
  Sender: TObject; var Key: Char);
begin
key:=#0;
end;

procedure TFSGenerateurMouvement.EditSigneTypeMouvementSelect(
  Sender: TObject);
begin

if(FSGenerateurMouvement.EditSigneTypeMouvement.Text='-')or(FSGenerateurMouvement.EditSigneTypeMouvement.Text='*')then
begin
     FSGenerateurMouvement.RBAutoriserVide.Enabled:=true;
     FSGenerateurMouvement.RBNePasAutoriserVide.Enabled:=true;

     FSGenerateurMouvement.RBAutoriserVide.Checked:=false;
     FSGenerateurMouvement.RBNePasAutoriserVide.Checked:=true;
end
else
begin
     FSGenerateurMouvement.RBAutoriserVide.Checked:=false;
     FSGenerateurMouvement.RBNePasAutoriserVide.Checked:=false;

     FSGenerateurMouvement.RBAutoriserVide.Enabled:=false;
     FSGenerateurMouvement.RBNePasAutoriserVide.Enabled:=false;
end;

end;

procedure TFSGenerateurMouvement.RBMouvementeCompteClick(Sender: TObject);
begin
FSGenerateurMouvement.RBMouvementeCompte.Caption:=booleantostr(FSGenerateurMouvement.RBMouvementeCompte.Checked);
if(FSGenerateurMouvement.RBMouvementeCompte.Checked=true)then
begin
     FSGenerateurMouvement.RBMouvementeFinance.Checked:=true;
     FSGenerateurMouvement.RBMouvementeFinance.Enabled:=false;
end
else FSGenerateurMouvement.RBMouvementeFinance.Enabled:=true;

end;

procedure TFSGenerateurMouvement.RBMouvementeCompteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSGenerateurMouvement.EditEtatUtilise.SetFocus;
end;

end;

procedure TFSGenerateurMouvement.EditEtatUtiliseKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSGenerateurMouvement.RBAvecDateExecution.SetFocus;
end;

end;

procedure TFSGenerateurMouvement.EditEtatUtiliseKeyPress(Sender: TObject;
  var Key: Char);
begin
key:=#0;
end;

procedure TFSGenerateurMouvement.EditTypeProcesChange(Sender: TObject);
begin
ListeTypeFichierTiersBox(FSGenerateurMouvement.EditTypeProces.Text,'','',FSGenerateurMouvement.EditFichierTiersConserne,FSGenerateurMouvement.EditTitreFichierTiersConserne);
end;

procedure TFSGenerateurMouvement.RBAvecDateExecutionClick(Sender: TObject);
begin
     FSGenerateurMouvement.RBAvecDateExecution.Caption:=booleantostr(FSGenerateurMouvement.RBAvecDateExecution.Checked);
end;

procedure TFSGenerateurMouvement.EditListeAppartenancePositionMouvementEnter(
  Sender: TObject);
var   ListeAppartenancePositionMouvement:string;
begin
     ListeAppartenancePositionMouvement:='?';
     if(FSGenerateurMouvement.EditListeAppartenancePositionMouvement.Text<>'')then ListeAppartenancePositionMouvement:=FSGenerateurMouvement.EditListeAppartenancePositionMouvement.Text;
     FSGenerateurMouvement.TableauListeAppartenanceCodeMouvement.Visible:=true;
     FSGenerateurMouvement.TableauListeAppartenanceCodeMouvement.Left:=FSGenerateurMouvement.AfficheMouvement.Left+FSGenerateurMouvement.EditListeAppartenancePositionMouvement.Left+FSGenerateurMouvement.EditListeAppartenancePositionMouvement.Width+5;
     FSGenerateurMouvement.TableauListeAppartenanceCodeMouvement.Top:=FSGenerateurMouvement.AfficheMouvement.Top+FSGenerateurMouvement.EditListeAppartenancePositionMouvement.Top;
     ProcListeMouvement(FSGenerateurMouvement.TableauListeAppartenanceCodeMouvement,'',FSGenerateurMouvement.EditPositionMouvement.Text,ListeAppartenancePositionMouvement,'');
end;

procedure TFSGenerateurMouvement.TableauListeAppartenanceCodeMouvementDblClick(
  Sender: TObject);
  var  ColSelectOK:integer;
begin
     ColSelectOK:=20;

     if(FSGenerateurMouvement.TableauListeAppartenanceCodeMouvement.Cells[ColSelectOK,FSGenerateurMouvement.TableauListeAppartenanceCodeMouvement.Row]='')
     then FSGenerateurMouvement.TableauListeAppartenanceCodeMouvement.Cells[ColSelectOK,FSGenerateurMouvement.TableauListeAppartenanceCodeMouvement.Row]:='OK'
     else FSGenerateurMouvement.TableauListeAppartenanceCodeMouvement.Cells[ColSelectOK,FSGenerateurMouvement.TableauListeAppartenanceCodeMouvement.Row]:='';
end;

procedure TFSGenerateurMouvement.TableauListeAppartenanceCodeMouvementKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
var  R,ColSelectOK:integer;
begin
     if key in[VK_RETURN]then
     begin
          ColSelectOK:=20;

          FSGenerateurMouvement.EditListeAppartenancePositionMouvement.Text:='';
          R:=1;
          While R<=FSGenerateurMouvement.TableauListeAppartenanceCodeMouvement.RowCount-1 do
          begin
               if(FSGenerateurMouvement.TableauListeAppartenanceCodeMouvement.Cells[ColSelectOK,R]='OK')then
               begin
                    if(FSGenerateurMouvement.EditListeAppartenancePositionMouvement.Text='')
                    then FSGenerateurMouvement.EditListeAppartenancePositionMouvement.Text:=FSGenerateurMouvement.TableauListeAppartenanceCodeMouvement.Cells[1,R]
                    else FSGenerateurMouvement.EditListeAppartenancePositionMouvement.Text:=FSGenerateurMouvement.EditListeAppartenancePositionMouvement.Text+';'+
                         FSGenerateurMouvement.TableauListeAppartenanceCodeMouvement.Cells[1,R];
               end;
          R:=R+1;
          end;
     FSGenerateurMouvement.TableauListeAppartenanceCodeMouvement.Visible:=false;
     FSGenerateurMouvement.BitMouvement.SetFocus;
     end;
end;

procedure TFSGenerateurMouvement.EditListeAppartenancePositionMouvementKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     if(FSGenerateurMouvement.TableauListeAppartenanceCodeMouvement.Visible=true)
     then FSGenerateurMouvement.TableauListeAppartenanceCodeMouvement.SetFocus
     else FSGenerateurMouvement.BitMouvement.SetFocus;
end;

end;

procedure TFSGenerateurMouvement.RBAvecDateExecutionKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSGenerateurMouvement.RBAvecLocalisationGeographique.SetFocus;
end;

end;

procedure TFSGenerateurMouvement.RBAvecLocalisationGeographiqueClick(
  Sender: TObject);
begin
     FSGenerateurMouvement.RBAvecLocalisationGeographique.Caption:=booleantostr(FSGenerateurMouvement.RBAvecLocalisationGeographique.Checked);
end;

procedure TFSGenerateurMouvement.RBAvecLocalisationGeographiqueKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSGenerateurMouvement.EditListeAppartenancePositionMouvement.SetFocus;
end;

end;

procedure TFSGenerateurMouvement.IncrimentOrdreCompteComptableClick(
  Sender: TObject; Button: TUDBtnType);
begin
     ListePlanComptable(FSGenerateurMouvement.TableauCompteConserne,strtointeger(FSGenerateurMouvement.EditOrdreCompteComptable.Text),FSGenerateurMouvement.EditCompteConserne.Text,'','PlanComptable');
end;

procedure TFSGenerateurMouvement.EditCompteConserneKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     ListePlanComptableSelectCompte(FSGenerateurMouvement.TableauCompteConserne,strtointeger(FSGenerateurMouvement.EditOrdreCompteComptable.Text),FSGenerateurMouvement.EditCompteConserne.Text);
end;

procedure TFSGenerateurMouvement.RBMouvementeFinanceClick(Sender: TObject);
begin

if(FSGenerateurMouvement.RBMouvementeCompte.Checked=true)then FSGenerateurMouvement.RBMouvementeFinance.Checked:=true;

FSGenerateurMouvement.RBMouvementeFinance.Caption:=booleantostr(FSGenerateurMouvement.RBMouvementeFinance.Checked);
end;

procedure TFSGenerateurMouvement.FormShow(Sender: TObject);
begin
ActiverNomForm(1,(Sender as TComponent).Name);
     FSGenerateurMouvement.Caption:=RRegistre.Repertoire+' - Exercice '+RRegistre.Exercice+' - Générateur de Mouvements';

     FSGenerateurMouvement.TableauPositionListeMouvementPeriode.ColCount:=3;
     FSGenerateurMouvement.TableauPositionListeMouvementPeriode.Cols[0].Text:='Période';
     FSGenerateurMouvement.TableauPositionListeMouvementPeriode.Cols[1].Text:='P°Begin';
     FSGenerateurMouvement.TableauPositionListeMouvementPeriode.Cols[2].Text:='P°End';

     FSGenerateurMouvement.PanelAdresseFMouvement.Caption:='';

     FSGenerateurMouvement.TableauMouvement.FixedCols:=strtointeger(FSGenerateurMouvement.EditFixeColonne.Text);

     FSGenerateurMouvement.RBModificationOperer.Checked:=false;
end;

procedure TFSGenerateurMouvement.BitBtn3Click(Sender: TObject);
var i,l:integer;  TypeProces,FichierConserne,Adresse:string;
begin
     TypeProces:='Business';   FichierConserne:='FMouvement';
     if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
     end;

     ChMouvement:=Adresse;
     assignfile(FMouvement,ChMouvement);
     if FileExists(ChMouvement)then
     Reset(FMouvement)
     else begin Rewrite(FMouvement); exit end;

     TypeProces:='Business';   FichierConserne:='FTypeMouvement';
     if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
     end;

     ChTypeMouvement:=Adresse;
     assignfile(FTypeMouvement,ChTypeMouvement);
     if FileExists(ChTypeMouvement)then
     Reset(FTypeMouvement)
     else begin Rewrite(FTypeMouvement); exit end;
     seek(FTypeMouvement,0);
     i:=0;
     while not eof(FTypeMouvement)do
     begin
          Read(FTypeMouvement,RTypeMouvement);
          //////////////////////////////////////////////////////////////////////
          seek(FMouvement,0);
          l:=0;
          while not eof(FMouvement)do
          begin
               Read(FMouvement,RMouvement);
               if(RMouvement.PositionTypeMouvement=RTypeMouvement.PositionTypeMouvement)then
               begin
                    RMouvement.PositionTypeMouvement:=i;
                    seek(FMouvement,l);
                    Write(FMouvement,RMouvement);
               end;
               l:=l+1;
          end;
          
          //////////////////////////////////////////////////////////////////////
          RTypeMouvement.PositionTypeMouvement:=i;
          seek(FTypeMouvement,i);
          Write(FTypeMouvement,RTypeMouvement);
          i:=i+1;
     end;
     CloseFile(FTypeMouvement);

     ///////////////////////////************************************************
     seek(FMouvement,0);
     i:=0;
     while not eof(FMouvement)do
     begin
          Read(FMouvement,RMouvement);
          RMouvement.PositionMouvement:=i;
          seek(FMouvement,i);
          Write(FMouvement,RMouvement);
          i:=i+1;
     end;
     CloseFile(FMouvement);
     ///////////////////////////************************************************


     ProcListeTypeMouvement(FSGenerateurMouvement.TableauTypeMouvement);
     ProcListeMouvement(FSGenerateurMouvement.TableauMouvement,'','','','');
end;

procedure TFSGenerateurMouvement.EditTypeStockKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     
if key in[VK_RETURN]then
begin
     FSGenerateurMouvement.EditCompteConserne.SetFocus;
end;

end;

procedure TFSGenerateurMouvement.EditTypeStockChange(Sender: TObject);
begin
     if(FSGenerateurMouvement.EditTypeStock.Text='Marche')then
     begin
          FSGenerateurMouvement.EditTypePrixMouvement.Items.Text:='';
          FSGenerateurMouvement.EditTypePrixMouvement.Items.Add('Prix Marché');
          FSGenerateurMouvement.EditTypePrixMouvement.Items.Add('Prix Soutraitance');
          FSGenerateurMouvement.EditTypePrixMouvement.Items.Add('Prix Attache');
          FSGenerateurMouvement.EditTypePrixMouvement.Items.Add('Coût Unitaire');
     end
     else
     begin
          FSGenerateurMouvement.EditTypePrixMouvement.Items.Text:='';
          FSGenerateurMouvement.EditTypePrixMouvement.Items.Add('Prix Détail');
          FSGenerateurMouvement.EditTypePrixMouvement.Items.Add('Prix Gros');
          FSGenerateurMouvement.EditTypePrixMouvement.Items.Add('Prix D.Gros');
          FSGenerateurMouvement.EditTypePrixMouvement.Items.Add('Prix Achat');
     end; 

     FSGenerateurMouvement.EditTypePrixMouvement.ItemIndex:=0;
end;

procedure TFSGenerateurMouvement.EditDebitCreditMouvementKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     
if key in[VK_RETURN]then
begin
     FSGenerateurMouvement.EditCodeTypeFormuleBase.SetFocus;
end;

end;

procedure TFSGenerateurMouvement.EditFichierTiersConserneSelect(
  Sender: TObject);
begin
     if(FSGenerateurMouvement.EditOperationFichierTiersConserne.Text='+')then
     begin
          if(FSGenerateurMouvement.EditAddFichierTiersConserne.Text<>'')then
          begin
               FSGenerateurMouvement.EditAddFichierTiersConserne.Text:=FSGenerateurMouvement.EditAddFichierTiersConserne.Text+';'+FSGenerateurMouvement.EditFichierTiersConserne.Text;
          end;

     FSGenerateurMouvement.TimerADDFichierConcerne.Enabled:=true;
     end;      
end;

procedure TFSGenerateurMouvement.TimerADDFichierConcerneTimer(Sender: TObject);
begin
     FSGenerateurMouvement.TimerADDFichierConcerne.Enabled:=false;

     if(FSGenerateurMouvement.EditOperationFichierTiersConserne.Text='+')then
     begin
          if(FSGenerateurMouvement.EditAddFichierTiersConserne.Text<>'')then
          begin
               FSGenerateurMouvement.EditFichierTiersConserne.Text:=FSGenerateurMouvement.EditAddFichierTiersConserne.Text;
          end;

     FSGenerateurMouvement.EditOperationFichierTiersConserne.Text:='';
     FSGenerateurMouvement.EditAddFichierTiersConserne.Text:='';
     end;
end;

Function FunctionFichierInclu(Fichier,ListeFichier:string):boolean;
var iE:integer;  OKFichier:boolean;  FichierTrouver:string;
begin
     iE:=1;
     OKFichier:=false;
     FichierTrouver:='';
     while(iE<=longueur(ListeFichier))and(OKFichier=false)do
     begin
          if(ListeFichier[iE]<>';')then
          begin
               FichierTrouver:=FichierTrouver+ListeFichier[iE];
          end;

          if(iE=longueur(ListeFichier))or(ListeFichier[iE]=';')then
          begin
               if(FichierTrouver=Fichier)then
               begin
                    OKFichier:=true;
               end;
               FichierTrouver:='';
          end;
     iE:=iE+1;
     end;

     FunctionFichierInclu:=OKFichier;
end;

Function FunctionFichierIncluImbriquer(ListeFichierData,ListeFichierSource:string; var ListeFichierNonInclu:string):boolean;
var iEImbriquer:integer;  OKFichierImbriquer:boolean;  FichierDate,FichierTrouverImbriquer,TypeProces,FichierConcerneRecherche,Adresse:string;
begin 
     ListeFichierNonInclu:='';

     TypeProces:='Business';   FichierConcerneRecherche:='FTypeFichierTiers';
     if not(FunctionAdresseProces(TypeProces,FichierConcerneRecherche,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
                         //AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
     end;
     ChTypeFichierTiers:=Adresse;
     assignfile(FTypeFichierTiers,ChTypeFichierTiers);
     if FileExists(ChTypeFichierTiers)then
     Reset(FTypeFichierTiers)
     else Rewrite(FTypeFichierTiers);
     Seek(FTypeFichierTiers,0);
     while not eof(FTypeFichierTiers)do
     begin
          read(FTypeFichierTiers,RTypeFichierTiers); //  FTiers

          if(FunctionFichierInclu(RTypeFichierTiers.FichierConcerne,ListeFichierData)=true)
          and(not FunctionFichierInclu(RTypeFichierTiers.FichierConcerne,ListeFichierSource)=true)
          then
          begin
               if(ListeFichierNonInclu='')
               then ListeFichierNonInclu:=RTypeFichierTiers.FichierConcerne
               else ListeFichierNonInclu:=ListeFichierNonInclu+';'+RTypeFichierTiers.FichierConcerne;
          end;
     end;
     CloseFile(FTypeFichierTiers);

     ChTypeFichierTiers:=Adresse;
     assignfile(FTypeFichierTiers,ChTypeFichierTiers);
     if FileExists(ChTypeFichierTiers)then
     Reset(FTypeFichierTiers)
     else Rewrite(FTypeFichierTiers);
     Seek(FTypeFichierTiers,0);
     OKFichierImbriquer:=false;
     while not eof(FTypeFichierTiers)and(OKFichierImbriquer=false)do
     begin
          read(FTypeFichierTiers,RTypeFichierTiers); //  FTiers
          if(FunctionFichierInclu(RTypeFichierTiers.FichierConcerne,ListeFichierData)=true)then
          begin
               FichierDate:=RTypeFichierTiers.FichierConcerne;
               iEImbriquer:=1;
               FichierTrouverImbriquer:='';
               while(iEImbriquer<=longueur(ListeFichierSource))and(OKFichierImbriquer=false)do
               begin
                    if(ListeFichierSource[iEImbriquer]<>';')then
                    begin
                         FichierTrouverImbriquer:=FichierTrouverImbriquer+ListeFichierSource[iEImbriquer];
                    end;

                    if(iEImbriquer=longueur(ListeFichierSource))or(ListeFichierSource[iEImbriquer]=';')then
                    begin
                         if(FichierTrouverImbriquer=FichierDate)then
                         begin
                              OKFichierImbriquer:=true;
                         end;
                         FichierTrouverImbriquer:='';
                    end;
               iEImbriquer:=iEImbriquer+1;
               end;
          end;
     end;
     CloseFile(FTypeFichierTiers);

     FunctionFichierIncluImbriquer:=OKFichierImbriquer;
end;

Procedure ListeTypeFichierTiersInclu(ListeFichierConcerne,FichierConcerneSelect:string; EditListeFichierConcerne:TComboBox; TitreFichierConcerne:TLabel);
var iE,iSelect,Nbr:integer;  OKFichierCincerne:boolean;  FichierConcerneTrouver:string;
begin
     iE:=1;
     nbr:=0;
     iSelect:=0;
     FichierConcerneTrouver:='';
     EditListeFichierConcerne.Items.Text:='';
     while(iE<=longueur(ListeFichierConcerne))do
     begin
          if(ListeFichierConcerne[iE]<>';')then
          begin
               FichierConcerneTrouver:=FichierConcerneTrouver+ListeFichierConcerne[iE];
          end;

          if(iE=longueur(ListeFichierConcerne))or(ListeFichierConcerne[iE]=';')then
          begin
               EditListeFichierConcerne.Items.Add(FichierConcerneTrouver);
               if(FichierConcerneTrouver=FichierConcerneSelect)then iSelect:=Nbr;
               Nbr:=Nbr+1;
               FichierConcerneTrouver:='';
          end;
     iE:=iE+1;
     end;

     EditListeFichierConcerne.ItemIndex:=iSelect;
     TitreFichierConcerne.Caption:=inttostr(Nbr)+'Fichier concerne: ';
end;

procedure TFSGenerateurMouvement.BitBtn4Click(Sender: TObject);
var R:integer; TitreEtat,SousTitreEtat,NomFichierExcel:string;
begin

     if(FSGenerateurMouvement.TableauMouvement.Cells[0,0]='Tous')then
     begin
          TitreEtat:='Tous type de mouvement';
          for R:=1 to FSGenerateurMouvement.TableauTypeMouvement.RowCount-1 do
          begin
               if(SousTitreEtat='')
               then SousTitreEtat:=FSGenerateurMouvement.TableauTypeMouvement.Cells[3,R]
               else SousTitreEtat:=SousTitreEtat+', '+FSGenerateurMouvement.TableauTypeMouvement.Cells[3,R]
          end;

          NomFichierExcel:='Fichier FMouvement';
     end
     else
     begin
          TitreEtat:=FSGenerateurMouvement.TableauTypeMouvement.Cells[3,FSGenerateurMouvement.TableauTypeMouvement.Row];
          SousTitreEtat:='Signe E/S: '+FSGenerateurMouvement.TableauTypeMouvement.Cells[4,FSGenerateurMouvement.TableauTypeMouvement.Row]+
                         ', Autorise Mouvement à vide: '+FSGenerateurMouvement.TableauTypeMouvement.Cells[5,FSGenerateurMouvement.TableauTypeMouvement.Row];;

          NomFichierExcel:='Fichier FMouvement '+FSGenerateurMouvement.TableauTypeMouvement.Cells[3,FSGenerateurMouvement.TableauTypeMouvement.Row];
     end;

     OpenFParc(RParc);
     NomFichierExcel:=RParc.Parcours+'\'+NomFichierExcel;
     TableauToExcel(FSGenerateurMouvement.TableauMouvement,1,0,ColNum,ColDate,ColTexte,ColGauche,ColCentre,ColDroite,TitreEtat,SousTitreEtat,NomFichierExcel,true,FSMenuPrincipal.RBInsertLogo.Checked,FSMenuPrincipal.RBAfficherLaSaisie.Checked);

end;

procedure TFSGenerateurMouvement.BitBtn5Click(Sender: TObject);
var  R:integer; TypeProces,FichierConserne,Adresse:string;
begin
     TypeProces:='Business';   FichierConserne:='FMouvement';
     if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          FSGenerateurMouvement.PanelAdresseFMouvement.Caption:='';
     end
     else
     begin
          FSGenerateurMouvement.PanelAdresseFMouvement.Caption:=Adresse;
     end;

     ProcListeMouvement(FSGenerateurMouvement.TableauMouvement,'','','','');
     FSGenerateurMouvement.TableauMouvement.Cells[0,0]:='Tous';

     RMouvement:=ChercherMouvement(FSGenerateurMouvement.TableauMouvement.Cells[0,1],strtointeger(FSGenerateurMouvement.TableauMouvement.Cells[1,1]),AdresseFichierConcerne);
     FSGenerateurMouvement.TableauPositionListeMouvementPeriodeAffiche.ColCount:=3;
     FSGenerateurMouvement.TableauPositionListeMouvementPeriodeAffiche.Cols[0].Text:='Période';
     FSGenerateurMouvement.TableauPositionListeMouvementPeriodeAffiche.Cols[1].Text:='P°Begin';
     FSGenerateurMouvement.TableauPositionListeMouvementPeriodeAffiche.Cols[2].Text:='P°End';
     iAnnee:=Strtointeger(ExerciceAnnee);
     for R:=1 to 12 do
     begin
          FSGenerateurMouvement.TableauPositionListeMouvementPeriodeAffiche.Rows[R].Text:=inttostr(R);
          FSGenerateurMouvement.TableauPositionListeMouvementPeriodeAffiche.Cells[1,R]:=inttostr(RMouvement.RegistrePositionListeMouvementParPeriode[iAnnee,R].PositionListeMouvementBegin);
          FSGenerateurMouvement.TableauPositionListeMouvementPeriodeAffiche.Cells[2,R]:=inttostr(RMouvement.RegistrePositionListeMouvementParPeriode[iAnnee,R].PositionListeMouvementEnd);
     end;
end;

procedure TFSGenerateurMouvement.BitBtn6Click(Sender: TObject);
var R:integer; TitreEtat,SousTitreEtat,NomFichierExcel:string;
begin
     if(FSGenerateurMouvement.TableauMouvement.Cells[0,0]='Tous')then
     begin
          TitreEtat:='Tous type de mouvement';
          for R:=1 to FSGenerateurMouvement.TableauTypeMouvement.RowCount-1 do
          begin
               if(SousTitreEtat='')
               then SousTitreEtat:=FSGenerateurMouvement.TableauTypeMouvement.Cells[3,R]
               else SousTitreEtat:=SousTitreEtat+', '+FSGenerateurMouvement.TableauTypeMouvement.Cells[3,R]
          end;

          NomFichierExcel:='Fichier FMouvement';
     end
     else
     begin
          TitreEtat:=FSGenerateurMouvement.TableauTypeMouvement.Cells[3,FSGenerateurMouvement.TableauTypeMouvement.Row];
          SousTitreEtat:='Signe E/S: '+FSGenerateurMouvement.TableauTypeMouvement.Cells[4,FSGenerateurMouvement.TableauTypeMouvement.Row]+
                         ', Autorise Mouvement à vide: '+FSGenerateurMouvement.TableauTypeMouvement.Cells[5,FSGenerateurMouvement.TableauTypeMouvement.Row];;

          NomFichierExcel:='Fichier FMouvement '+FSGenerateurMouvement.TableauTypeMouvement.Cells[3,FSGenerateurMouvement.TableauTypeMouvement.Row];
     end;

     OpenFParc(RParc);
     FSMenuPrincipal.SauvgarderFichier.FileName:=RParc.Parcours+'\'+NomFichierExcel;

     if(FSMenuPrincipal.SauvgarderFichier.Execute)then
     begin
          TableauToExcel(FSGenerateurMouvement.TableauMouvement,1,0,ColNum,ColDate,ColTexte,ColGauche,ColCentre,ColDroite,TitreEtat,SousTitreEtat,NomFichierExcel,true,FSMenuPrincipal.RBInsertLogo.Checked,FSMenuPrincipal.RBAfficherLaSaisie.Checked);
     end;
end;

procedure TFSGenerateurMouvement.FormClose(Sender: TObject;
  var Action: TCloseAction);
var  SuspendrePublication:boolean;
begin
     ActiverNomForm(0,(Sender as TComponent).Name);

     if(FSGenerateurMouvement.RBModificationOperer.Checked=true)then
     begin
          FSMenuPrincipal.EditRapport.Lines.Text:='';
          FSMenuPrincipal.EditDetailRapport.Lines.Text:='';
          FSMenuPrincipal.AfficheRapport.Visible:=FunctAfficherRapportPublicationReseaux;
          PublierDansLeReseaux('FMouvement','','',true);
          FSGenerateurMouvement.RBModificationOperer.Checked:=false;
     end;
end;

procedure TFSGenerateurMouvement.EditAnneeSelectChange(Sender: TObject);
begin
     FSGenerateurMouvement.AfficheTypeMouvement.Visible:=false;
     FSGenerateurMouvement.AfficheMouvement.Visible:=false;
     FSGenerateurMouvement.TableauTypeFormule.Visible:=false;
     FSGenerateurMouvement.TableauListeAppartenanceCodeMouvement.Visible:=false;
     FSGenerateurMouvement.TableauCompteConserne.Visible:=false;

     RemplireTableauPositionListeMouvementPeriode(FSGenerateurMouvement.TableauPositionListeMouvementPeriodeAffiche,EditPositionListeMouvementBegin,EditPositionListeMouvementEnd,FSGenerateurMouvement.EditAnneeSelect.Text,FSGenerateurMouvement.TableauMouvement.Cells[0,FSGenerateurMouvement.TableauMouvement.Row],FSGenerateurMouvement.TableauMouvement.Cells[1,FSGenerateurMouvement.TableauMouvement.Row]);
end;

procedure TFSGenerateurMouvement.BitBtn7Click(Sender: TObject);
var  FichierAPublier:string;
     SuspendrePublication:boolean;
begin
     FichierAPublier:='DétailMouvement '+FSGenerateurMouvement.TableauTypeMouvement.Cells[3,FSGenerateurMouvement.TableauTypeMouvement.Row];
     FSMenuPrincipal.EditRapport.Lines.Text:='';
     PublierDansLeReseaux(FichierAPublier,'','',FSMenuPrincipal.RBImporteAutorisationReseaux.Checked);
     //PublierDansLeReseaux('FTypeMouvement','','',FSMenuPrincipal.RBImporteAutorisationReseaux.Checked);
     //PublierDansLeReseaux('FMouvement','','',FSMenuPrincipal.RBImporteAutorisationReseaux.Checked);

     FSMenuPrincipal.AfficheRapport.Visible:=FunctAfficherRapportPublicationReseaux;     
end;

procedure TFSGenerateurMouvement.RBSigneDebitCreditPositiveClick(
  Sender: TObject);
begin
     FSGenerateurMouvement.EditSigneDebitCredit.Text:='1';
end;

procedure TFSGenerateurMouvement.RBSigneDebitCreditNigativeClick(
  Sender: TObject);
begin
     FSGenerateurMouvement.EditSigneDebitCredit.Text:='-1';
end;

end.
