unit UnitFSRecapitulatifProjets;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ExtCtrls, StdCtrls, Buttons, ComCtrls;

type
    TFSRecapitulatifProjets = class(TForm)
    PagePrincipale: TPageControl;
    PageRecapitulatif: TTabSheet;
    Bevel2: TBevel;
    Label53: TLabel;
    Label52: TLabel;
    TableauProjetFinance: TStringGrid;
    TableauRecapitulatifProjets: TStringGrid;
    EditRonStructure: TComboBox;
    EditTiersTypeProces: TComboBox;
    EditTiersFichierConserne: TComboBox;
    RBAfficheTiers: TCheckBox;
    AffichePrint: TPanel;
    Bevel1: TBevel;
    BitBtn1: TBitBtn;
    RBOrientationPapierRecapitulatifProjets: TComboBox;
    PageOptions: TTabSheet;
    GroupBox1: TGroupBox;
    RBOKProjet: TCheckBox;
    RBOKStructure: TCheckBox;
    RBOKNature: TCheckBox;
    RBOKCodification: TCheckBox;
    RBOKSurface: TCheckBox;
    RadioGroup1: TRadioGroup;
    RBInclurePlanificateur: TCheckBox;
    RBInclurePreselection: TCheckBox;
    RBInclureAvisFinancier: TCheckBox;
    EditCodeEditingTableauRecapitulatifProjets: TEdit;
    BitBtn3: TBitBtn;
    RBInclureValeurProjetFinance: TCheckBox;
    BitAfficheSource: TBitBtn;
    EditColBeginEdit: TEdit;
    BitBtn4: TBitBtn;
    TableauAnomalie: TStringGrid;
    EditColBeginEditAnomalie: TEdit;
    EditRonStructureAnomalie: TComboBox;
    Bevel3: TBevel;
    BitBtn2: TBitBtn;
    BitBtn5: TBitBtn;
    BitCorrigerPreselection: TBitBtn;
    Bevel5: TBevel;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    Bevel4: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    Bevel10: TBevel;
    Panel2: TPanel;
    Label49: TLabel;
    EditPartieDecimale: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure TableauProjetFinanceClick(Sender: TObject);
    procedure EditRonStructureChange(Sender: TObject);
    procedure RBAfficheTiersClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PageRecapitulatifShow(Sender: TObject);
    procedure TableauRecapitulatifProjetsContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure EditCodeEditingTableauRecapitulatifProjetsKeyDown(
      Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitAfficheSourceClick(Sender: TObject);
    procedure TableauRecapitulatifProjetsClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure PageOptionsShow(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure TableauAnomalieClick(Sender: TObject);
    procedure BitCorrigerPreselectionClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure TableauProjetFinanceDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauRecapitulatifProjetsDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauAnomalieDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSRecapitulatifProjets: TFSRecapitulatifProjets;


Procedure RecapitulatifPlanificationProjets(TableauRecapitulatifProjets:TStringGrid; TypeProces,FichierConcerne:string; ColBeginEdit:integer; RBAfficheTiers:boolean);
Procedure RecapitulatifDetailRubriqueProjets(TableauRecapitulatifProjets:TStringGrid; TypeProces,FichierConcerne:string; ColBeginEdit:integer);
Procedure RecapitulatifAvis(TableauRecapitulatifProjets:TStringGrid; TypeProces,FichierConcerne:string; ColBeginEdit:integer);
Procedure RecapitulatifValeurProjetFinance(TableauRecapitulatifProjets:TStringGrid; ColBeginEdit:integer);
Procedure CumuleRecapitulatifProjet(TableauRecapitulatifProjets:TStringGrid; ColBeginEdit:integer);
Procedure ProcAfficherRecapitulatifProjet(TableauAffichage:TStringGrid; NumProjetFinance:string; InclurePlanificateur,InclurePreselection,InclureAvisFinancier,InclureValeurProjetFinance:boolean);
Procedure RecapitulatifPreselection(TableauRecapitulatifProjets:TStringGrid; TypeProces,FichierConcerne:string; ColBeginEdit,LongueurRong:integer; RBAfficheTiers:boolean);
Procedure AnomaliePlanificationPreselectionStructures(TableauAnomalie:TStringGrid; RowSelect,ColSelect:string);

implementation

Uses UnitInitialisation, UnitFSGenerateurBase, UnitFSFormulairePreselection,
     UnitFSMenuPrincipal, UnitFSPlanificateur, UnitFSFicheTechniqueProjet, UnitFSTiers, UnitFSParametresAvances;


var

RParc:RInstalle;
FParc:FInstalle;
ParcInstalle:string100;

TProjetFinance:TProjetFinances;
RProjetFinance:RProjetFinances;
FProjetFinance:FProjetFinances;
ChProjetFinance:string250;

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





TTypeAvis:TTypeAviss;
RTypeAvis:RTypeAviss;
FTypeAvis:FTypeAviss;
ChTypeAvis:string250;

TClient:TTierss;
RClient:RTierss;
FClient:FTierss;
ChClient:string250;

{$R *.dfm}

procedure TFSRecapitulatifProjets.BitBtn1Click(Sender: TObject);
var  DebutRow,EcartTableau:integer;
     TitreEtat,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol:string;
     ImprimeEtat:boolean;
begin
TitreEtat:='Récapitulatif du Projet: '+FSRecapitulatifProjets.TableauProjetFinance.Cells[2,FSRecapitulatifProjets.TableauProjetFinance.Row];

GrasARow:='0';
GrasACol:='0';
CenterARow:='0';
CenterACol:='0';
RightARow:='';
RightACol:=inttostr(FSRecapitulatifProjets.TableauRecapitulatifProjets.ColCount-1)+';'+inttostr(FSRecapitulatifProjets.TableauRecapitulatifProjets.ColCount-2)+';'+inttostr(FSRecapitulatifProjets.TableauRecapitulatifProjets.ColCount-3);

EcartTableau:=2;
DebutRow:=0;
ImprimeEtat:=true;
OptionsImpression(FSRecapitulatifProjets.TableauRecapitulatifProjets,'Center',DebutRow,1,TitreEtat,true,FSRecapitulatifProjets.RBOrientationPapierRecapitulatifProjets.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,ImprimeEtat,EcartTableau,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
end;

Procedure RecapitulatifPreselection(TableauRecapitulatifProjets:TStringGrid; TypeProces,FichierConcerne:string; ColBeginEdit,LongueurRong:integer; RBAfficheTiers:boolean);
var   i,l,RowEdit:integer;   OKPreselection:boolean;  NotCol,MessageTexte:string;
begin
     {TableauRecapitulatifProjets.ColCount:=TableauRecapitulatifProjets.ColCount+11;
     TableauRecapitulatifProjets.Cols[ColBeginEdit+0].Text:='NumPlanificateur';
     TableauRecapitulatifProjets.Cols[ColBeginEdit+1].Text:='NumRubrique';
     TableauRecapitulatifProjets.Cols[ColBeginEdit+2].Text:='Date Planification';
     TableauRecapitulatifProjets.Cols[ColBeginEdit+3].Text:='Code Tiers';
     TableauRecapitulatifProjets.Cols[ColBeginEdit+4].Text:='Tiers';
     TableauRecapitulatifProjets.Cols[ColBeginEdit+5].Text:='Montant';
     TableauRecapitulatifProjets.Cols[ColBeginEdit+6].Text:='Verssement';
     TableauRecapitulatifProjets.Cols[ColBeginEdit+7].Text:='Reste';
     TableauRecapitulatifProjets.Cols[ColBeginEdit+8].Text:='Défaut D/C/+';
     TableauRecapitulatifProjets.Cols[ColBeginEdit+9].Text:='Source';
     TableauRecapitulatifProjets.Cols[ColBeginEdit+10].Text:='Num';}

     OpenFParc(RParc);
     ChFormulairePreselection:=RParc.Parcours+'\'+Exercice+'FFormulairePreselection';
     assignfile(FFormulairePreselection,ChFormulairePreselection);
     if FileExists(ChFormulairePreselection)then
     Reset(FFormulairePreselection)
     else Rewrite(FFormulairePreselection);
     Seek(FFormulairePreselection,0);
     while not eof(FFormulairePreselection)do
     begin
          read(FFormulairePreselection,RFormulairePreselection);
          if(longueur(RFormulairePreselection.NumProjet)=LongueurRong)
          and(RFormulairePreselection.Accord<>'Défavorable')then
          begin
               l:=1;
               OKPreselection:=false;
               while(l<=TableauRecapitulatifProjets.RowCount-1)and(OKPreselection=false)do
               begin
                    if(TableauRecapitulatifProjets.Cells[ColBeginEdit+3,l]='')
                    and(TableauRecapitulatifProjets.Cells[1,l]=RFormulairePreselection.NumProjet)then
                    begin
                         OKPreselection:=true;
                         RowEdit:=l;
                    end;
               l:=l+1;
               end;

               if(OKPreselection=true)then
               begin
                    TableauRecapitulatifProjets.Cells[ColBeginEdit,RowEdit]:=inttostr(RFormulairePreselection.NumFormulairePreselection);
                    TableauRecapitulatifProjets.Cells[ColBeginEdit+1,RowEdit]:='';//inttostr(RFormulairePreselection.NumRubrique);
                    TableauRecapitulatifProjets.Cells[ColBeginEdit+2,RowEdit]:=RFormulairePreselection.Accord+' du: '+RFormulairePreselection.DateFormulairePreselection;
                    TableauRecapitulatifProjets.Cells[ColBeginEdit+3,RowEdit]:=RFormulairePreselection.CodeTier;
                    TableauRecapitulatifProjets.Cells[ColBeginEdit+9,RowEdit]:='FFormulairePreselection';
                    TableauRecapitulatifProjets.Cells[ColBeginEdit+10,RowEdit]:=inttostr(RFormulairePreselection.NumFormulairePreselection);

                    if(RBAfficheTiers=true)then
                    begin
                         RClient:=ChercherTiers(TypeProces,FichierConcerne,RFormulairePreselection.CodeTier,'');
                         TableauRecapitulatifProjets.Cells[ColBeginEdit+4,RowEdit]:=RClient.NomTiers+' '+RClient.PrenomTiers;
                    end
                    else TableauRecapitulatifProjets.Cells[ColBeginEdit+4,RowEdit]:='';

                    if(RFormulairePreselection.OKReglementApportInitial=true)then
                    begin
                         TableauRecapitulatifProjets.Cells[ColBeginEdit+5,RowEdit]:=Vergule(floattostr(RFormulairePreselection.MontantLogement),FSRecapitulatifProjets.EditPartieDecimale.Text,'C','');
                         TableauRecapitulatifProjets.Cells[ColBeginEdit+6,RowEdit]:=Vergule(floattostr(RFormulairePreselection.ApportInitial),FSRecapitulatifProjets.EditPartieDecimale.Text,'C','');
                    end
                    else
                    begin
                         TableauRecapitulatifProjets.Cells[ColBeginEdit+5,RowEdit]:='';
                         TableauRecapitulatifProjets.Cells[ColBeginEdit+6,RowEdit]:='';
                    end;

                    MessageTexte:='Aucune Confirmation !';
                    i:=0;
                    if(DateCorrecte(RFormulairePreselection.DateFinDureePreselection))then
                    begin
                         if(strtodate(RFormulairePreselection.DateFinDureePreselection)>=Date)then
                         begin
                              MessageTexte:='Confirmation avant: ';
                              while(strtodate(RFormulairePreselection.DateFinDureePreselection)>Date+i)do
                              begin
                                   i:=i+1;
                              end;
                         end;

                         if(Date>strtodate(RFormulairePreselection.DateFinDureePreselection))then
                         begin
                              MessageTexte:='Délais dépassé de : ';
                              while(Date>strtodate(RFormulairePreselection.DateFinDureePreselection)+i)do
                              begin
                                   i:=i+1;
                              end;
                         end;
                    end;

                    if(RFormulairePreselection.OKReglementApportInitial=false)then
                    begin
                         if(i>0)then TableauRecapitulatifProjets.Cells[ColBeginEdit+7,RowEdit]:=MessageTexte+Completezerogauche(inttostr(i),'2')+' Jours !'
                                else TableauRecapitulatifProjets.Cells[ColBeginEdit+7,RowEdit]:=MessageTexte;
                    end
                    else
                    begin
                         TableauRecapitulatifProjets.Cells[ColBeginEdit+7,RowEdit]:=Vergule(floattostr(RFormulairePreselection.MontantLogement-RFormulairePreselection.ApportInitial),FSRecapitulatifProjets.EditPartieDecimale.Text,'C','')+' "Non Planifié !"';
                    end;
               end;
          end;
     end;
     CloseFile(FFormulairePreselection);

     if(RBAfficheTiers=true)
     then NotCol:='1;'+inttostr(ColBeginEdit)+';'+inttostr(ColBeginEdit+1)+';'+inttostr(ColBeginEdit+3)+';'+inttostr(ColBeginEdit+8)+';'+inttostr(ColBeginEdit+9)+';'+inttostr(ColBeginEdit+10)
     else NotCol:='1;'+inttostr(ColBeginEdit)+';'+inttostr(ColBeginEdit+1)+';'+inttostr(ColBeginEdit+3)+'-'+inttostr(ColBeginEdit+8)+';'+inttostr(ColBeginEdit+9)+';'+inttostr(ColBeginEdit+10);

     for l:=1 to ColBeginEdit+10 do
     if(ExisteNuminTexte(inttostr(l),NotCol))then TableauRecapitulatifProjets.ColWidths[l]:=0; 
     AjusterColWidth(TableauRecapitulatifProjets,'',NotCol);
end;

Procedure RecapitulatifPlanificationProjets(TableauRecapitulatifProjets:TStringGrid; TypeProces,FichierConcerne:string; ColBeginEdit:integer; RBAfficheTiers:boolean);
var   l,RowEdit:integer;   OKPlanification:boolean;  NotCol:string;   RProjetFinanceInfo:RProjetFinances;
      TFicheTechniqueChargement:TFicheTechniques;
      TRubriqueFicheTechniqueChargement:TRubriqueFicheTechniques;
      TTypeAvisChargement:TTypeAviss;
begin
     RProjetFinanceInfo.NumProjetFinance:='';
     RProjetFinanceInfo.DesignationProjetFinance:='';
     RProjetFinanceInfo.NatureProjetFinance:='';
     RProjetFinanceInfo.Codification:='';
     RProjetFinanceInfo.LocalisationPreciseProjetFinance:='';
     RProjetFinanceInfo.AdresseProjetFinance:='';
     RProjetFinanceInfo.DateDebutProjetFinance:='';
     RProjetFinanceInfo.HeureDebutProjetFinance:='';
     RProjetFinanceInfo.DelaisRealisationProjetFinance:=0;
     RProjetFinanceInfo.UniteDelaisRealisationProjetFinance:='';
     RProjetFinanceInfo.DateFinProjetFinance:='';
     RProjetFinanceInfo.HeureFinProjetFinance:='';
     RProjetFinanceInfo.UniteMesureProjetFinance:='';
     RProjetFinanceInfo.PrixUniteHTMesureProjetFinance:=0;
     RProjetFinanceInfo.MesureGlobaleProjetFinance:=0;
     RProjetFinanceInfo.MesurePartielleProjetFinance:=0;
     RProjetFinanceInfo.MontantHTProjetFinance:=0;
     RProjetFinanceInfo.TaxePourcentage:=0;
     RProjetFinanceInfo.DecompositionProjetFinance:=false;
     RProjetFinanceInfo.PourcentagePartieCommune:=0;
     RProjetFinanceInfo.TypeUsage:='';

     TableauRecapitulatifProjets.ColCount:=TableauRecapitulatifProjets.ColCount+11;
     TableauRecapitulatifProjets.Cols[ColBeginEdit+0].Text:='NumPlanificateur';
     TableauRecapitulatifProjets.Cols[ColBeginEdit+1].Text:='NumRubrique';
     TableauRecapitulatifProjets.Cols[ColBeginEdit+2].Text:='Date Planification';
     TableauRecapitulatifProjets.Cols[ColBeginEdit+3].Text:='Code Tiers';
     TableauRecapitulatifProjets.Cols[ColBeginEdit+4].Text:='Tiers';
     TableauRecapitulatifProjets.Cols[ColBeginEdit+5].Text:='Montant';
     TableauRecapitulatifProjets.Cols[ColBeginEdit+6].Text:='Verssement';
     TableauRecapitulatifProjets.Cols[ColBeginEdit+7].Text:='Reste';
     TableauRecapitulatifProjets.Cols[ColBeginEdit+8].Text:='Défaut D/C/+';
     TableauRecapitulatifProjets.Cols[ColBeginEdit+9].Text:='Source';
     TableauRecapitulatifProjets.Cols[ColBeginEdit+10].Text:='Num';

     TFicheTechniqueChargement:=RemplireTFicheTechnique;
     TRubriqueFicheTechniqueChargement:=RemplireTRubriqueFicheTechnique;
     TTypeAvisChargement:=RemplireTableauTypeAvisNumTypeAvis;

     OpenFParc(RParc);
     ChPlanificateur:=RParc.Parcours+'\'+Exercice+'FPlanificateur';
     assignfile(FPlanificateur,ChPlanificateur);
     if FileExists(ChPlanificateur)then
     Reset(FPlanificateur)
     else Rewrite(FPlanificateur);
     Seek(FPlanificateur,0);
     while not eof(FPlanificateur)do
     begin
          read(FPlanificateur,RPlanificateur);

          l:=1;
          OKPlanification:=false;
          while(l<=TableauRecapitulatifProjets.RowCount-1)and(OKPlanification=false)do
          begin
               if(TableauRecapitulatifProjets.Cells[1,l]=RPlanificateur.CodeStructureProjet)then
               begin
                    OKPlanification:=true;
                    RowEdit:=l;
               end;
          l:=l+1;
          end;

          if(OKPlanification=true)then
          begin
               //RubriqueArborescence('',inttostr(RPlanificateur.NumRubrique),RRubriqueFicheTechniqueCopie,RFicheTechniqueCopie,RTypeAvis);
               RProjetFinanceInfo:=ChercherProjetFinance(RPlanificateur.CodeStructureProjet,PositionProjetFinancesRecherche);

               TableauRecapitulatifProjets.Cells[ColBeginEdit,RowEdit]:=inttostr(RPlanificateur.NumPlanificateur);
               TableauRecapitulatifProjets.Cells[ColBeginEdit+1,RowEdit]:=inttostr(RPlanificateur.NumRubrique);
               TableauRecapitulatifProjets.Cells[ColBeginEdit+2,RowEdit]:='Planifier le: '+RPlanificateur.DatePlanificateur;
               TableauRecapitulatifProjets.Cells[ColBeginEdit+3,RowEdit]:=RPlanificateur.CodeTiers;
               if(RBAfficheTiers=true)then
               begin
                    RClient:=ChercherTiers(TypeProces,FichierConcerne,RPlanificateur.CodeTiers,'');
                    TableauRecapitulatifProjets.Cells[ColBeginEdit+4,RowEdit]:=RClient.NomTiers+' '+RClient.PrenomTiers;
               end
               else TableauRecapitulatifProjets.Cells[ColBeginEdit+4,RowEdit]:='';
               TableauRecapitulatifProjets.Cells[ColBeginEdit+5,RowEdit]:=Vergule(floattostr(RPlanificateur.Quantite*RPlanificateur.PrixUnitaire*(1+(RProjetFinanceInfo.TaxePourcentage/100))),FSRecapitulatifProjets.EditPartieDecimale.Text,'C','');
               TableauRecapitulatifProjets.Cells[ColBeginEdit+6,RowEdit]:='';
               TableauRecapitulatifProjets.Cells[ColBeginEdit+7,RowEdit]:='';
               TableauRecapitulatifProjets.Cells[ColBeginEdit+8,RowEdit]:=TTypeAvisChargement[TFicheTechniqueChargement[TRubriqueFicheTechniqueChargement[RPlanificateur.NumRubrique].NumFicheTechnique].NumTypeAvis].DebitCredit;
               TableauRecapitulatifProjets.Cells[ColBeginEdit+9,RowEdit]:='FPlanificateur';
               TableauRecapitulatifProjets.Cells[ColBeginEdit+10,RowEdit]:=inttostr(RPlanificateur.NumPlanificateur);
          end;
     end;
     CloseFile(FPlanificateur);

     RecapitulatifDetailRubriqueProjets(TableauRecapitulatifProjets,TypeProces,FichierConcerne,ColBeginEdit);

     if(FSRecapitulatifProjets.RBAfficheTiers.Checked=true)
     then NotCol:='1;'+inttostr(ColBeginEdit)+';'+inttostr(ColBeginEdit+1)+';'+inttostr(ColBeginEdit+3)+';'+inttostr(ColBeginEdit+8)+';'+inttostr(ColBeginEdit+9)+';'+inttostr(ColBeginEdit+10)
     else NotCol:='1;'+inttostr(ColBeginEdit)+';'+inttostr(ColBeginEdit+1)+';'+inttostr(ColBeginEdit+3)+'-'+inttostr(ColBeginEdit+8)+';'+inttostr(ColBeginEdit+9)+';'+inttostr(ColBeginEdit+10);
    

     for l:=1 to ColBeginEdit+10 do
     if(ExisteNuminTexte(inttostr(l),NotCol))then TableauRecapitulatifProjets.ColWidths[l]:=0;
     AjusterColWidth(TableauRecapitulatifProjets,'',NotCol);
end;

//RRubriqueFicheTechniqueCopie,RFicheTechniqueCopie,RTypeAvis

Procedure RecapitulatifDetailRubriqueProjets(TableauRecapitulatifProjets:TStringGrid; TypeProces,FichierConcerne:string; ColBeginEdit:integer);
var   l,RowEdit,Signe,SigneDebitCredit:integer;   OKDetailRubriqueFicheTechnique:boolean;  NotCol:string;
      TFicheTechniqueChargement:TFicheTechniques;
      TRubriqueFicheTechniqueChargement:TRubriqueFicheTechniques;
      TTypeAvisChargement:TTypeAviss;
begin
     SigneDebitCredit:=1;

     TFicheTechniqueChargement:=RemplireTFicheTechnique;
     TRubriqueFicheTechniqueChargement:=RemplireTRubriqueFicheTechnique;
     TTypeAvisChargement:=RemplireTableauTypeAvisNumTypeAvis;

     OpenFParc(RParc);
     ChDetailRubriqueFicheTechnique:=RParc.Parcours+'\'+Exercice+'FDetailRubriqueFicheTechnique';
     assignfile(FDetailRubriqueFicheTechnique,ChDetailRubriqueFicheTechnique);
     if FileExists(ChDetailRubriqueFicheTechnique)then
     Reset(FDetailRubriqueFicheTechnique)
     else Rewrite(FDetailRubriqueFicheTechnique);
     Seek(FDetailRubriqueFicheTechnique,0);
     while not eof(FDetailRubriqueFicheTechnique)do
     begin
          read(FDetailRubriqueFicheTechnique,RDetailRubriqueFicheTechnique);

          l:=1;                                                           
          OKDetailRubriqueFicheTechnique:=false;
          while(l<=TableauRecapitulatifProjets.RowCount-1)and(OKDetailRubriqueFicheTechnique=false)do
          begin
               if(RDetailRubriqueFicheTechnique.NumPlanificateur<>0)then
               begin
                    if(TableauRecapitulatifProjets.Cells[ColBeginEdit,l]=inttostr(RDetailRubriqueFicheTechnique.NumPlanificateur))
                    and(TableauRecapitulatifProjets.Cells[ColBeginEdit+1,l]=inttostr(RDetailRubriqueFicheTechnique.NumRubrique))
                    and(TableauRecapitulatifProjets.Cells[ColBeginEdit+3,l]=RDetailRubriqueFicheTechnique.CodeTiers)
                    then
                    begin
                         OKDetailRubriqueFicheTechnique:=true;
                         RowEdit:=l;
                    end;
               end
               else
               begin
                    if(TableauRecapitulatifProjets.Cells[ColBeginEdit+3,l]=RDetailRubriqueFicheTechnique.CodeTiers)
                    then
                    begin
                         OKDetailRubriqueFicheTechnique:=true;
                         RowEdit:=l;
                    end;
               end;
          l:=l+1;
          end;

          if(OKDetailRubriqueFicheTechnique=true)then
          begin
               //RubriqueArborescence('',inttostr(RDetailRubriqueFicheTechnique.NumRubrique),RRubriqueFicheTechniqueCopie,RFicheTechniqueCopie,RTypeAvis);

               if(RDetailRubriqueFicheTechnique.NumRubrique<=High(TRubriqueFicheTechniqueChargement))
               and(TRubriqueFicheTechniqueChargement[RDetailRubriqueFicheTechnique.NumRubrique].NumFicheTechnique<=High(TFicheTechniqueChargement))
               and(TFicheTechniqueChargement[TRubriqueFicheTechniqueChargement[RDetailRubriqueFicheTechnique.NumRubrique].NumFicheTechnique].NumTypeAvis<=High(TTypeAvisChargement))
               then
               begin
                    SigneDebitCredit:=TTypeAvisChargement[TFicheTechniqueChargement[TRubriqueFicheTechniqueChargement[RDetailRubriqueFicheTechnique.NumRubrique].NumFicheTechnique].NumTypeAvis].SigneDebitCredit;
                    if(TTypeAvisChargement[TFicheTechniqueChargement[TRubriqueFicheTechniqueChargement[RDetailRubriqueFicheTechnique.NumRubrique].NumFicheTechnique].NumTypeAvis].DebitCredit=TableauRecapitulatifProjets.Cells[ColBeginEdit+8,RowEdit])then Signe:=SigneDebitCredit*(1) else Signe:=SigneDebitCredit*(-1);
                    TableauRecapitulatifProjets.Cells[ColBeginEdit+6,RowEdit]:=floattostr(strtoreal(TableauRecapitulatifProjets.Cells[ColBeginEdit+6,RowEdit])+
                                                                               (Signe*RDetailRubriqueFicheTechnique.Quantite*RDetailRubriqueFicheTechnique.Montant));
               end;
          end;
     end;
     CloseFile(FDetailRubriqueFicheTechnique);

     l:=1;
     while(l<=TableauRecapitulatifProjets.RowCount-1)do
     begin
          TableauRecapitulatifProjets.Cells[ColBeginEdit+7,l]:=Vergule(floattostr(strtoreal(TableauRecapitulatifProjets.Cells[ColBeginEdit+5,l])-
                                                                     strtoreal(TableauRecapitulatifProjets.Cells[ColBeginEdit+6,l])),'2','C','');
          if(strtoreal(TableauRecapitulatifProjets.Cells[ColBeginEdit+7,l])=0)then TableauRecapitulatifProjets.Cells[ColBeginEdit+7,l]:='';
          TableauRecapitulatifProjets.Cells[ColBeginEdit+6,l]:=Vergule(TableauRecapitulatifProjets.Cells[ColBeginEdit+6,l],'2','C','');
     l:=l+1;
     end;
end;

//RRubriqueFicheTechniqueCopie,RFicheTechniqueCopie,RTypeAvis

Procedure RecapitulatifAvis(TableauRecapitulatifProjets:TStringGrid; TypeProces,FichierConcerne:string; ColBeginEdit:integer);
var  l,RowEdit,Signe,SigneDebitCredit:integer; OKAvis:boolean;
begin
     SigneDebitCredit:=1;
     
     OpenFParc(RParc);
     ChAvis:=RParc.Parcours+'\'+Exercice+'FAvis';
     assignfile(FAvis,ChAvis);
     if FileExists(ChAvis)then
     Reset(FAvis)
     else Rewrite(FAvis);
     Seek(FAvis,0);
     while not eof(FAvis)do
     begin
          read(FAvis,RAvis);

          OKAvis:=RAvis.ValiditeAvis;

          if(OKAvis=true)then
          begin
               l:=1;
               OKAvis:=false;
               while(l<=TableauRecapitulatifProjets.RowCount-1)and(OKAvis=false)do
               begin
                    if(TableauRecapitulatifProjets.Cells[ColBeginEdit,l]=RAvis.NumPlanificateur)
                    and(TableauRecapitulatifProjets.Cells[ColBeginEdit+1,l]=RAvis.NumRubrique)
                    and(TableauRecapitulatifProjets.Cells[ColBeginEdit+3,l]=RAvis.CodeTiers)
                    then
                    begin
                          OKAvis:=true;
                          RowEdit:=l;
                    end;
               l:=l+1;
               end;
          end;

          if(OKAvis=true)then
          begin
               ChercherTypeAvis('',RAvis.DesignationTypeAvis,'','','','',RTypeAvis);
               SigneDebitCredit:=RTypeAvis.SigneDebitCredit;
               if(RTypeAvis.DebitCredit=TableauRecapitulatifProjets.Cells[ColBeginEdit+8,RowEdit])then Signe:=SigneDebitCredit*(1) else Signe:=SigneDebitCredit*(-1);
               TableauRecapitulatifProjets.Cells[ColBeginEdit+6,RowEdit]:=floattostr(strtoreal(TableauRecapitulatifProjets.Cells[ColBeginEdit+6,RowEdit])+
                                                                          (Signe*RAvis.Montant));
          end;
     end;
     CloseFile(FAvis);

     l:=1;
     while(l<=TableauRecapitulatifProjets.RowCount-1)do
     begin
          TableauRecapitulatifProjets.Cells[ColBeginEdit+7,l]:=Vergule(floattostr(strtoreal(TableauRecapitulatifProjets.Cells[ColBeginEdit+5,l])-
                                                                     strtoreal(TableauRecapitulatifProjets.Cells[ColBeginEdit+6,l])),FSRecapitulatifProjets.EditPartieDecimale.Text,'C','');
          if(strtoreal(TableauRecapitulatifProjets.Cells[ColBeginEdit+7,l])=0)then TableauRecapitulatifProjets.Cells[ColBeginEdit+7,l]:='';
          TableauRecapitulatifProjets.Cells[ColBeginEdit+6,l]:=Vergule(TableauRecapitulatifProjets.Cells[ColBeginEdit+6,l],FSRecapitulatifProjets.EditPartieDecimale.Text,'C','');
     l:=l+1;
     end;
end;

Procedure RecapitulatifValeurProjetFinance(TableauRecapitulatifProjets:TStringGrid; ColBeginEdit:integer);
var  l,RowEdit:integer; OKProjetFinance:boolean;
begin
     OpenFParc(RParc);
     ChProjetFinance:=RParc.Parcours+'\'+Exercice+'FProjetFinance';
     assignfile(FProjetFinance,ChProjetFinance);
     if FileExists(ChProjetFinance)then
     Reset(FProjetFinance)
     else Rewrite(FProjetFinance);
     Seek(FProjetFinance,0);
     while not eof(FProjetFinance)do
     begin
          read(FProjetFinance,RProjetFinance);

          if(RProjetFinance.MontantHTProjetFinance>0)then OKProjetFinance:=true;
     
          if(OKProjetFinance=true)then
          begin
               l:=1;
               OKProjetFinance:=false;
               while(l<=TableauRecapitulatifProjets.RowCount-1)and(OKProjetFinance=false)do
               begin
                    if(longueur(RProjetFinance.NumProjetFinance)=10+(FSRecapitulatifProjets.EditRonStructure.ItemIndex*5))
                    and(TableauRecapitulatifProjets.Cells[1,l]=RProjetFinance.NumProjetFinance)
                    and(strtoreal(TableauRecapitulatifProjets.Cells[ColBeginEdit+5,l])=0)
                    then
                    begin
                          OKProjetFinance:=true;
                          RowEdit:=l;
                    end;
               l:=l+1;
               end;
          end;

          if(OKProjetFinance=true)then
          begin
               TableauRecapitulatifProjets.Cells[ColBeginEdit+5,RowEdit]:=Vergule(floattostr(RProjetFinance.MontantHTProjetFinance),FSRecapitulatifProjets.EditPartieDecimale.Text,'C','');
          end;
     end;
     CloseFile(FProjetFinance);

     l:=1;
     while(l<=TableauRecapitulatifProjets.RowCount-1)do
     begin
          TableauRecapitulatifProjets.Cells[ColBeginEdit+7,l]:=Vergule(floattostr(strtoreal(TableauRecapitulatifProjets.Cells[ColBeginEdit+5,l])-
                                                                     strtoreal(TableauRecapitulatifProjets.Cells[ColBeginEdit+6,l])),FSRecapitulatifProjets.EditPartieDecimale.Text,'C','');
          if(strtoreal(TableauRecapitulatifProjets.Cells[ColBeginEdit+7,l])=0)then TableauRecapitulatifProjets.Cells[ColBeginEdit+7,l]:='';
          TableauRecapitulatifProjets.Cells[ColBeginEdit+6,l]:=Vergule(TableauRecapitulatifProjets.Cells[ColBeginEdit+6,l],FSRecapitulatifProjets.EditPartieDecimale.Text,'C','');
     l:=l+1;
     end;
end;


Procedure CumuleRecapitulatifProjet(TableauRecapitulatifProjets:TStringGrid; ColBeginEdit:integer);
var   RouCountMax,R,l,Ordre:integer;  OKProjetFinance:boolean;  NotCol:string;
begin
     R:=1;
     RouCountMax:=TableauRecapitulatifProjets.RowCount-1;
     while(R<=RouCountMax)do
     begin
          if(longueur(TableauRecapitulatifProjets.Cells[1,R])<10+(FSRecapitulatifProjets.EditRonStructure.ItemIndex*5))then
          begin
               l:=1;
               OKProjetFinance:=false;
               while(l<=RouCountMax)and(OKProjetFinance=false)do
               begin
                    if(TableauRecapitulatifProjets.Cells[1,R]=TableauRecapitulatifProjets.Cells[1,R]+'Z')then
                    begin
                         OKProjetFinance:=true;
                    end;
               l:=l+1;
               end;

               if(OKProjetFinance=false)then
               begin
                    Division(longueur(TableauRecapitulatifProjets.Cells[1,R]),5,Ordre,l);
                    TableauRecapitulatifProjets.RowCount:=TableauRecapitulatifProjets.RowCount+2;
                    TableauRecapitulatifProjets.Rows[TableauRecapitulatifProjets.RowCount-1].Text:='';
                    TableauRecapitulatifProjets.Rows[TableauRecapitulatifProjets.RowCount-2].Text:='';
                    TableauRecapitulatifProjets.Cells[1,TableauRecapitulatifProjets.RowCount-2]:=TableauRecapitulatifProjets.Cells[1,R]+'Z';
                    TableauRecapitulatifProjets.Cells[1,TableauRecapitulatifProjets.RowCount-1]:=TableauRecapitulatifProjets.Cells[1,R]+'ZT';
                    TableauRecapitulatifProjets.Cells[Ordre,TableauRecapitulatifProjets.RowCount-2]:='Total '+TableauRecapitulatifProjets.Cells[Ordre,R];
               end;
          end;
     R:=R+1;
     end;

     TrierTableauARowSpecial(TableauRecapitulatifProjets,1,TableauRecapitulatifProjets.RowCount-1,1,inttostr(FSGenerateurBase.EditRebriqueTrie.ItemIndex+1),'','+');

     R:=1;
     RouCountMax:=TableauRecapitulatifProjets.RowCount-1;
     while(R<=RouCountMax)do
     begin
          if(lastlaters(TableauRecapitulatifProjets.Cells[1,R],1)<>'Z')
          and(lastlaters(TableauRecapitulatifProjets.Cells[1,R],1)<>'T')
          and((strtoreal(TableauRecapitulatifProjets.Cells[ColBeginEdit+5,R])<>0)or(strtoreal(TableauRecapitulatifProjets.Cells[ColBeginEdit+6,R])<>0))
          then
          begin
               l:=1;
               while(l<=RouCountMax)do
               begin
                    if(lastlaters(TableauRecapitulatifProjets.Cells[1,l],1)='Z')then
                    begin
                         if(Firstlaters(TableauRecapitulatifProjets.Cells[1,R],longueur(TableauRecapitulatifProjets.Cells[1,l])-1)=Firstlaters(TableauRecapitulatifProjets.Cells[1,l],longueur(TableauRecapitulatifProjets.Cells[1,l])-1))then
                         begin
                              TableauRecapitulatifProjets.Cells[ColBeginEdit+5,l]:=Vergule(floattostr(strtoreal(TableauRecapitulatifProjets.Cells[ColBeginEdit+5,l])+strtoreal(TableauRecapitulatifProjets.Cells[ColBeginEdit+5,R])),FSRecapitulatifProjets.EditPartieDecimale.Text,'C','');
                              TableauRecapitulatifProjets.Cells[ColBeginEdit+6,l]:=Vergule(floattostr(strtoreal(TableauRecapitulatifProjets.Cells[ColBeginEdit+6,l])+strtoreal(TableauRecapitulatifProjets.Cells[ColBeginEdit+6,R])),FSRecapitulatifProjets.EditPartieDecimale.Text,'C','');
                              TableauRecapitulatifProjets.Cells[ColBeginEdit+7,l]:=Vergule(floattostr(strtoreal(TableauRecapitulatifProjets.Cells[ColBeginEdit+5,l])-strtoreal(TableauRecapitulatifProjets.Cells[ColBeginEdit+6,l])),FSRecapitulatifProjets.EditPartieDecimale.Text,'C','');
                         end;
                    end;
               l:=l+1;
               end;
          end;
     R:=R+1;
     end;

     R:=1;
     RouCountMax:=TableauRecapitulatifProjets.RowCount-1;
     while(R<=RouCountMax)do
     begin
          if(strtoreal(TableauRecapitulatifProjets.Cells[ColBeginEdit+5,R])=0)then TableauRecapitulatifProjets.Cells[ColBeginEdit+5,R]:='';
          if(strtoreal(TableauRecapitulatifProjets.Cells[ColBeginEdit+6,R])=0)then TableauRecapitulatifProjets.Cells[ColBeginEdit+6,R]:='';
          if(strtoreal(TableauRecapitulatifProjets.Cells[ColBeginEdit+7,R])=0)then TableauRecapitulatifProjets.Cells[ColBeginEdit+7,R]:='';
     R:=R+1;
     end;

     NotCol:='1';
     for l:=1 to TableauRecapitulatifProjets.ColCount-1 do if(TableauRecapitulatifProjets.ColWidths[l]=0)then NotCol:=NotCol+';'+inttostr(l);
     AjusterColWidth(TableauRecapitulatifProjets,'',NotCol);
end;

procedure TFSRecapitulatifProjets.TableauProjetFinanceClick(
  Sender: TObject);
begin
     ProcAfficherRecapitulatifProjet(FSRecapitulatifProjets.TableauRecapitulatifProjets,FSRecapitulatifProjets.TableauProjetFinance.Cells[1,FSRecapitulatifProjets.TableauProjetFinance.Row],FSRecapitulatifProjets.RBInclurePlanificateur.Checked,FSRecapitulatifProjets.RBInclurePreselection.Checked,FSRecapitulatifProjets.RBInclureAvisFinancier.Checked,FSRecapitulatifProjets.RBInclureValeurProjetFinance.Checked);
end;

procedure TFSRecapitulatifProjets.EditRonStructureChange(Sender: TObject);
var LongueurRong:integer;
begin
     LongueurRong:=10+(FSRecapitulatifProjets.EditRonStructure.ItemIndex*5);
     ListeProjetFinance(FSRecapitulatifProjets.TableauProjetFinance,'','',inttostr(LongueurRong),true,'1','',false,false,'','');
end;

procedure TFSRecapitulatifProjets.RBAfficheTiersClick(Sender: TObject);
begin
     FSRecapitulatifProjets.TableauRecapitulatifProjets.RowCount:=2;
     FSRecapitulatifProjets.TableauRecapitulatifProjets.Rows[1].Text:='';

     if(FSRecapitulatifProjets.RBAfficheTiers.Checked=true)
     then FSRecapitulatifProjets.RBAfficheTiers.Caption:='Affiche Tiers !'
     else FSRecapitulatifProjets.RBAfficheTiers.Caption:='Ne pas Affiche Tiers';

     ProcAfficherRecapitulatifProjet(FSRecapitulatifProjets.TableauRecapitulatifProjets,FSRecapitulatifProjets.TableauProjetFinance.Cells[1,FSRecapitulatifProjets.TableauProjetFinance.Row],FSRecapitulatifProjets.RBInclurePlanificateur.Checked,FSRecapitulatifProjets.RBInclurePreselection.Checked,FSRecapitulatifProjets.RBInclureAvisFinancier.Checked,FSRecapitulatifProjets.RBInclureValeurProjetFinance.Checked);
end;

procedure TFSRecapitulatifProjets.FormResize(Sender: TObject);
begin
     FSRecapitulatifProjets.PagePrincipale.Width:=FSRecapitulatifProjets.Width-35;
     FSRecapitulatifProjets.PagePrincipale.Height:=FSRecapitulatifProjets.Height-60;

     FSRecapitulatifProjets.TableauRecapitulatifProjets.Width:=FSRecapitulatifProjets.PagePrincipale.Width-8;
     FSRecapitulatifProjets.TableauRecapitulatifProjets.Height:=FSRecapitulatifProjets.PagePrincipale.Height-136;

     FSRecapitulatifProjets.AffichePrint.Width:=FSRecapitulatifProjets.PagePrincipale.Width-648;
end;

procedure TFSRecapitulatifProjets.FormShow(Sender: TObject);
begin
ActiverNomForm(1,(Sender as TComponent).Name);
     FSRecapitulatifProjets.Caption:=RRegistre.Repertoire+' - Exercice '+RRegistre.Exercice+' - Récapitulatif des projets';

     //ProcAfficherRecapitulatifProjet(FSRecapitulatifProjets.RBInclurePlanificateur.Checked,FSRecapitulatifProjets.RBInclurePreselection.Checked,FSRecapitulatifProjets.RBInclureAvisFinancier.Checked);
end;

Procedure ProcAfficherRecapitulatifProjet(TableauAffichage:TStringGrid; NumProjetFinance:string; InclurePlanificateur,InclurePreselection,InclureAvisFinancier,InclureValeurProjetFinance:boolean);
var LongMaxCodeProjet,Rong,PositionIndex,R,ColBeginEdit:integer;  Classement:string;
begin
     OpenFParc(RParc);
     ChProjetFinance:=RParc.Parcours+'\'+Exercice+'FProjetFinance';
     assignfile(FProjetFinance,ChProjetFinance);
     if FileExists(ChProjetFinance)then
     Reset(FProjetFinance)                                                            
     else Rewrite(FProjetFinance);
     Seek(FProjetFinance,0);
     LongMaxCodeProjet:=0;
     while not eof(FProjetFinance)do
     begin
          read(FProjetFinance,RProjetFinance);
          if(Firstlaters(RProjetFinance.NumProjetFinance,Longueur(NumProjetFinance))=NumProjetFinance)then
          begin
               if(LongMaxCodeProjet<=longueur(RProjetFinance.NumProjetFinance))then LongMaxCodeProjet:=longueur(RProjetFinance.NumProjetFinance);
          end;
     end;
     CloseFile(FProjetFinance);

     Rong:=ValeAbsolue(LongMaxCodeProjet/5);

     PositionIndex:=Rong-2;
     FSRecapitulatifProjets.EditRonStructure.Items.Text:='';
     for R:=1to(Rong-1)do
     begin
          Classement:=inttostr(R);
          if(R=1)
          then Classement:=Classement+'er'
          else Classement:=Classement+'ème';
          FSRecapitulatifProjets.EditRonStructure.Items.Add('Structure '+Classement+' Rong');
     end;

     FSRecapitulatifProjets.EditRonStructure.ItemIndex:=PositionIndex;

     ListeProjetFinance(TableauAffichage,'',NumProjetFinance,inttostr(10+(FSRecapitulatifProjets.EditRonStructure.ItemIndex*5)),false,'1','',false,false,'','');

     ColBeginEdit:=TableauAffichage.ColCount;
     FSRecapitulatifProjets.EditColBeginEdit.Text:=inttostr(ColBeginEdit);
     FSGenerateurBase.EditColTiers.Text:=inttostr(ColBeginEdit+4);
     if(InclurePlanificateur=true)then RecapitulatifPlanificationProjets(TableauAffichage,FSRecapitulatifProjets.EditTiersTypeProces.Text,FSRecapitulatifProjets.EditTiersFichierConserne.Text,ColBeginEdit,FSRecapitulatifProjets.RBAfficheTiers.Checked);
     if(InclurePreselection=true)then RecapitulatifPreselection(TableauAffichage,FSRecapitulatifProjets.EditTiersTypeProces.Text,FSRecapitulatifProjets.EditTiersFichierConserne.Text,ColBeginEdit,10+(FSRecapitulatifProjets.EditRonStructure.ItemIndex*5),FSRecapitulatifProjets.RBAfficheTiers.Checked);
     if(InclureAvisFinancier=true)then RecapitulatifAvis(TableauAffichage,FSRecapitulatifProjets.EditTiersTypeProces.Text,FSRecapitulatifProjets.EditTiersFichierConserne.Text,ColBeginEdit);
     if(InclureValeurProjetFinance)then RecapitulatifValeurProjetFinance(TableauAffichage,ColBeginEdit);
     CumuleRecapitulatifProjet(TableauAffichage,ColBeginEdit);
end;

procedure TFSRecapitulatifProjets.PageRecapitulatifShow(Sender: TObject);
begin
     FSRecapitulatifProjets.EditCodeEditingTableauRecapitulatifProjets.Text:='';
     FSRecapitulatifProjets.TableauProjetFinance.SetFocus;
     FSRecapitulatifProjets.TableauProjetFinance.Refresh;
end;

procedure TFSRecapitulatifProjets.TableauRecapitulatifProjetsContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
     FSRecapitulatifProjets.EditCodeEditingTableauRecapitulatifProjets.Text:='';
     FSRecapitulatifProjets.EditCodeEditingTableauRecapitulatifProjets.SetFocus;

     AjusterColWidth(FSRecapitulatifProjets.TableauRecapitulatifProjets,'','');
end;

procedure TFSRecapitulatifProjets.EditCodeEditingTableauRecapitulatifProjetsKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN] then
     begin
          if(FSRecapitulatifProjets.EditCodeEditingTableauRecapitulatifProjets.Text='')then
          begin
               FSRecapitulatifProjets.EditCodeEditingTableauRecapitulatifProjets.Text:='';
               showmessage('OK !');
          end;
     end;
end;

procedure TFSRecapitulatifProjets.BitBtn3Click(Sender: TObject);
begin
     TableauToExcel(FSRecapitulatifProjets.TableauRecapitulatifProjets,1,0,ColNum,ColDate,ColTexte,ColGauche,ColCentre,ColDroite,'Récapitulatif du Projet',FSRecapitulatifProjets.TableauProjetFinance.Cells[2,FSRecapitulatifProjets.TableauProjetFinance.Row],'',true,FSMenuPrincipal.RBInsertLogo.Checked,FSMenuPrincipal.RBAfficherLaSaisie.Checked);
end;

procedure TFSRecapitulatifProjets.BitAfficheSourceClick(Sender: TObject);
var  i,ColBeginEdit:integer; DateTrue:boolean;  Quantite,Montant:real;
begin
     ColBeginEdit:=strtointeger(FSRecapitulatifProjets.EditColBeginEdit.Text);

     if(FSRecapitulatifProjets.TableauRecapitulatifProjets.Cells[ColBeginEdit+9,FSRecapitulatifProjets.TableauRecapitulatifProjets.Row]='FFormulairePreselection')then
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
          ListeFormulairePreselection(FSFormulairePreselection.TableauFormulairePreselection,'','','','','',strtointeger(FSRecapitulatifProjets.TableauRecapitulatifProjets.Cells[ColBeginEdit+10,FSRecapitulatifProjets.TableauRecapitulatifProjets.Row]),FSFormulairePreselection.RBEtatAfficheTraitement.Caption);
          FSFormulairePreselection.TableauFormulairePreselection.Col:=1;
     end;

     if(FSRecapitulatifProjets.TableauRecapitulatifProjets.Cells[ColBeginEdit+9,FSRecapitulatifProjets.TableauRecapitulatifProjets.Row]='FPlanificateur')then
     begin
          FSPlanificateur.Show;
          FSPlanificateur.BitTiersPlanificateur.Kind:=bkCancel;
          FSPlanificateur.BitTiersPlanificateur.Caption:='Tiers';
          FSPlanificateur.AffichageTiers.Left:=8;
          FSPlanificateur.AffichageTiers.Width:=481;
          FSPlanificateur.EditRechercheCodeTiers.Text:=FSRecapitulatifProjets.TableauRecapitulatifProjets.Cells[ColBeginEdit+3,FSRecapitulatifProjets.TableauRecapitulatifProjets.Row];
          FSPlanificateur.EditRechercheTiers.Text:=FSRecapitulatifProjets.TableauRecapitulatifProjets.Cells[ColBeginEdit+4,FSRecapitulatifProjets.TableauRecapitulatifProjets.Row];
          ListePlanificateurTiers(FSPlanificateur.TableauPlanificateur,FSPlanificateur.EditNumRubrique.Text,FSPlanificateur.EditRechercheCodeTiers.Text,FSRecapitulatifProjets.TableauRecapitulatifProjets.Cells[ColBeginEdit+10,FSRecapitulatifProjets.TableauRecapitulatifProjets.Row],Quantite,Montant);
          FSPlanificateur.TableauPlanificateur.Col:=4;
          FSPlanificateur.EditQuantitePlanificateur.Text:=Vergule(floattostr(Quantite),'2','C','');
          FSPlanificateur.EditMontantPlanificateur.Text:=Vergule(floattostr(Montant),'2','C','');

          RPlanificateur:=ChercherPlanificateur(FSRecapitulatifProjets.TableauRecapitulatifProjets.Cells[ColBeginEdit+10,FSRecapitulatifProjets.TableauRecapitulatifProjets.Row]);
          RubriqueArborescence('',inttostr(RPlanificateur.NumRubrique),RRubriqueFicheTechnique,RFicheTechnique,RTypeAvis);
          FSPlanificateur.EditCodeProjet.Text:=Firstlaters(FSRecapitulatifProjets.TableauRecapitulatifProjets.Cells[1,FSRecapitulatifProjets.TableauRecapitulatifProjets.Row],10);
          FSPlanificateur.EditProjet.Text:=ChercherProjetFinance(FSPlanificateur.EditCodeProjet.Text,PositionProjetFinancesRecherche).DesignationProjetFinance;
          FSPlanificateur.EditNumFicheTechnique.Text:=inttostr(RFicheTechnique.NumFicheTechnique);
          FSPlanificateur.EditFicheTechnique.Text:=RFicheTechnique.DesignationFicheTechnique;
          FSPlanificateur.EditNumRubrique.Text:=inttostr(RRubriqueFicheTechnique.NumRubrique);
          FSPlanificateur.EditRubrique.Text:=RRubriqueFicheTechnique.DesignationRubrique;
          FSPlanificateur.EditNumPlanificateurSelect.Text:=FSRecapitulatifProjets.TableauRecapitulatifProjets.Cells[ColBeginEdit+10,FSRecapitulatifProjets.TableauRecapitulatifProjets.Row];
          FSPlanificateur.EditChargementTypeProces.Text:=RTypeAvis.TypeProces;
     FSPlanificateur.EditChargementFichierConcerne.Text:=RTypeAvis.FichierConserne;
     end;
end;

procedure TFSRecapitulatifProjets.TableauRecapitulatifProjetsClick(
  Sender: TObject);
var  ColBeginEdit:integer;
begin
     ColBeginEdit:=strtointeger(FSRecapitulatifProjets.EditColBeginEdit.Text);

     if(FSRecapitulatifProjets.TableauRecapitulatifProjets.Cells[ColBeginEdit+9,FSRecapitulatifProjets.TableauRecapitulatifProjets.Row]='FFormulairePreselection')then
     begin
          FSRecapitulatifProjets.BitAfficheSource.Caption:='Afficher la présélection à la source';
     end;

     if(FSRecapitulatifProjets.TableauRecapitulatifProjets.Cells[ColBeginEdit+9,FSRecapitulatifProjets.TableauRecapitulatifProjets.Row]='FPlanificateur')then
     begin
          FSRecapitulatifProjets.BitAfficheSource.Caption:='Afficher la planification à la source';
     end;
end;

procedure TFSRecapitulatifProjets.BitBtn4Click(Sender: TObject);
var  AColSelect,Reste,ColBeginEdit:integer;
begin
     if not AccesPrivilegies('FS Générateur Projets',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

     ColBeginEdit:=strtointeger(FSRecapitulatifProjets.EditColBeginEdit.Text);
     
     FSGenerateurBase.Show;
     FSGenerateurBase.PageGenerateurBaseAvis.Show;
     FSGenerateurBase.PageProjet.Show;

     FSGenerateurBase.AfficheIndiqueArchivePhoto.Left:=1040;
     FSGenerateurBase.AfficheIndiqueArchivePhoto.Height:=225;
     FSGenerateurBase.AfficheIndiqueArchivePhoto.Width:=225;

     FSGenerateurBase.AffichePropositionFicheTechnique.Left:=0;
     FSGenerateurBase.AffichePropositionFicheTechnique.Top:=0;

     FSGenerateurBase.RBAfficheTiers.Checked:=false;
     ListeProjetFinance(FSGenerateurBase.TableauProjetFinance,'',Firstlaters(FSRecapitulatifProjets.TableauRecapitulatifProjets.Cells[1,FSRecapitulatifProjets.TableauRecapitulatifProjets.Row],10),'',false,'',FSRecapitulatifProjets.TableauRecapitulatifProjets.Cells[1,FSRecapitulatifProjets.TableauRecapitulatifProjets.Row],FSGenerateurBase.RBIndiquerReservationStructure.Checked,false,FSRecapitulatifProjets.EditTiersTypeProces.Text,FSRecapitulatifProjets.EditTiersFichierConserne.Text);
     Division(Longueur(FSRecapitulatifProjets.TableauRecapitulatifProjets.Cells[1,FSRecapitulatifProjets.TableauRecapitulatifProjets.Row]),5,AColSelect,Reste);
     FSGenerateurBase.TableauProjetFinance.Col:=AColSelect;
     FSGenerateurBase.TableauProjetFinance.SetFocus;
end;

Procedure AnomaliePlanificationPreselectionStructures(TableauAnomalie:TStringGrid; RowSelect,ColSelect:string);
var  LongMaxCodeProjet,Rong,PositionIndex,R,ColBeginEdit:integer;  Classement,NotCol:string;    OKFormulaire:boolean;
     TFicheTechniqueChargement:TFicheTechniques;
     TRubriqueFicheTechniqueChargement:TRubriqueFicheTechniques;
     TTypeAvisChargement:TTypeAviss;
begin
     TFicheTechniqueChargement:=RemplireTFicheTechnique;
     TRubriqueFicheTechniqueChargement:=RemplireTRubriqueFicheTechnique;
     TTypeAvisChargement:=RemplireTableauTypeAvisNumTypeAvis;

     OpenFParc(RParc);
     ChProjetFinance:=RParc.Parcours+'\'+Exercice+'FProjetFinance';
     assignfile(FProjetFinance,ChProjetFinance);
     if FileExists(ChProjetFinance)then
     Reset(FProjetFinance)                                                            
     else Rewrite(FProjetFinance);
     Seek(FProjetFinance,0);
     LongMaxCodeProjet:=0;
     while not eof(FProjetFinance)do
     begin
          read(FProjetFinance,RProjetFinance);
          if(Firstlaters(RProjetFinance.NumProjetFinance,Longueur(FSRecapitulatifProjets.TableauProjetFinance.Cells[1,FSRecapitulatifProjets.TableauProjetFinance.Row]))=FSRecapitulatifProjets.TableauProjetFinance.Cells[1,FSRecapitulatifProjets.TableauProjetFinance.Row])then
          begin
               if(LongMaxCodeProjet<=longueur(RProjetFinance.NumProjetFinance))then LongMaxCodeProjet:=longueur(RProjetFinance.NumProjetFinance);
          end;
     end;
     CloseFile(FProjetFinance);

     Rong:=ValeAbsolue(LongMaxCodeProjet/5);

     PositionIndex:=Rong-2;
     FSRecapitulatifProjets.EditRonStructureAnomalie.Items.Text:='';
     for R:=1to(Rong-1)do
     begin
          Classement:=inttostr(R);
          if(R=1)
          then Classement:=Classement+'er'
          else Classement:=Classement+'ème';
          FSRecapitulatifProjets.EditRonStructureAnomalie.Items.Add('Structure '+Classement+' Rong');
     end;

     FSRecapitulatifProjets.EditRonStructureAnomalie.ItemIndex:=PositionIndex;

     ListeProjetFinance(TableauAnomalie,'',FSRecapitulatifProjets.TableauProjetFinance.Cells[1,FSRecapitulatifProjets.TableauProjetFinance.Row],inttostr(10+(FSRecapitulatifProjets.EditRonStructure.ItemIndex*5)),false,'1','',false,false,'','');

     ColBeginEdit:=TableauAnomalie.ColCount;
     FSRecapitulatifProjets.EditColBeginEditAnomalie.Text:=inttostr(ColBeginEdit);

     TableauAnomalie.ColCount:=TableauAnomalie.ColCount+7;
     TableauAnomalie.Cols[ColBeginEdit+0].Text:='P°Présélection';
     TableauAnomalie.Cols[ColBeginEdit+1].Text:='Code Tiers';
     TableauAnomalie.Cols[ColBeginEdit+2].Text:='Tiers Préséléctionné';
     TableauAnomalie.Cols[ColBeginEdit+3].Text:='Num Planification';
     TableauAnomalie.Cols[ColBeginEdit+4].Text:='Code Tiers';
     TableauAnomalie.Cols[ColBeginEdit+5].Text:='Tiers Planifié';
     TableauAnomalie.Cols[ColBeginEdit+6].Text:='Notification';

     R:=1;
     while(R<=TableauAnomalie.RowCount-1)do
     begin
          OpenFParc(RParc);
          ChFormulairePreselection:=RParc.Parcours+'\'+Exercice+'FFormulairePreselection';
          assignfile(FFormulairePreselection,ChFormulairePreselection);
          if FileExists(ChFormulairePreselection)then
          Reset(FFormulairePreselection)
          else Rewrite(FFormulairePreselection);
          Seek(FFormulairePreselection,0);
          OKFormulaire:=false;
          while not eof(FFormulairePreselection)and(OKFormulaire=false)do
          begin
               read(FFormulairePreselection,RFormulairePreselection);
               if(RFormulairePreselection.NumProjet=TableauAnomalie.Cells[1,R])
               then
               begin
                    OKFormulaire:=true;
                    TableauAnomalie.Cells[ColBeginEdit+0,R]:=inttostr(RFormulairePreselection.NumFormulairePreselection);
                    TableauAnomalie.Cells[ColBeginEdit+1,R]:=RFormulairePreselection.CodeTier;
                    TableauAnomalie.Cells[ColBeginEdit+2,R]:=RFormulairePreselection.Tiers;
               end;
          end;
          CloseFile(FFormulairePreselection);

          ChPlanificateur:=RParc.Parcours+'\'+Exercice+'FPlanificateur';
          assignfile(FPlanificateur,ChPlanificateur);
          if FileExists(ChPlanificateur)then
          Reset(FPlanificateur)
          else Rewrite(FPlanificateur);
          Seek(FPlanificateur,0);
          OKFormulaire:=false;
          while not eof(FPlanificateur)and(OKFormulaire=false)do
          begin
               read(FPlanificateur,RPlanificateur);
               if(RPlanificateur.CodeStructureProjet=TableauAnomalie.Cells[1,R])
               then
               begin
                    OKFormulaire:=true;
                    TableauAnomalie.Cells[ColBeginEdit+3,R]:=inttostr(RPlanificateur.NumPlanificateur);
                    TableauAnomalie.Cells[ColBeginEdit+4,R]:=RPlanificateur.CodeTiers;

                    //RubriqueArborescence('',inttostr(RPlanificateur.NumRubrique),RRubriqueFicheTechnique,RFicheTechnique,RTypeAvis);
                    RTiers:=ChercherTiers(TTypeAvisChargement[TFicheTechniqueChargement[TRubriqueFicheTechniqueChargement[RPlanificateur.NumRubrique].NumFicheTechnique].NumTypeAvis].TypeProces,TTypeAvisChargement[TFicheTechniqueChargement[TRubriqueFicheTechniqueChargement[RPlanificateur.NumRubrique].NumFicheTechnique].NumTypeAvis].FichierConserne,RPlanificateur.CodeTiers,'');
                    TableauAnomalie.Cells[ColBeginEdit+5,R]:=RTiers.NomTiers+' '+RTiers.PrenomTiers;
               end;
          end;
          CloseFile(FPlanificateur);

     R:=R+1;
     end;

     R:=1;
     while(R<=TableauAnomalie.RowCount-1)do
     begin
          if(TableauAnomalie.Cells[ColBeginEdit+1,R]<>TableauAnomalie.Cells[ColBeginEdit+4,R])then
          begin
               if((TableauAnomalie.Cells[ColBeginEdit+1,R]<>'')and(TableauAnomalie.Cells[ColBeginEdit+4,R]<>''))
               then TableauAnomalie.Cells[ColBeginEdit+6,R]:='Attention: Tiers présélectionné différent du Tiers planifié !';

               if((TableauAnomalie.Cells[ColBeginEdit+1,R]='')and(TableauAnomalie.Cells[ColBeginEdit+4,R]<>''))
               then TableauAnomalie.Cells[ColBeginEdit+6,R]:='Attention: Tiers planifié non présélectionné  !';

               if((TableauAnomalie.Cells[ColBeginEdit+1,R]<>'')and(TableauAnomalie.Cells[ColBeginEdit+4,R]=''))
               then TableauAnomalie.Cells[ColBeginEdit+6,R]:='Attention: Tiers présélectionné non planifié !';
          end;
     R:=R+1;
     end;

     NotCol:='1';
     for R:=1 to TableauAnomalie.ColCount-1 do if(TableauAnomalie.ColWidths[R]=0)then NotCol:=NotCol+';'+inttostr(R);
     AjusterColWidth(TableauAnomalie,'',NotCol);

     if(RowSelect<>'')then  TableauAnomalie.Row:=MaxInt(strtointeger(RowSelect),1);
     if(ColSelect<>'')then  TableauAnomalie.Col:=MaxInt(strtointeger(ColSelect),1);
     if(TableauAnomalie.Showing=true)then TableauAnomalie.SetFocus;
end;

//RRubriqueFicheTechnique,RFicheTechnique,RTypeAvis

procedure TFSRecapitulatifProjets.PageOptionsShow(Sender: TObject);
begin
     AnomaliePlanificationPreselectionStructures(FSRecapitulatifProjets.TableauAnomalie,inttostr(FSRecapitulatifProjets.TableauAnomalie.Row),inttostr(FSRecapitulatifProjets.TableauAnomalie.Col));
end;


procedure TFSRecapitulatifProjets.BitBtn5Click(Sender: TObject);
var  i,ColBeginEdit:integer; DateTrue:boolean;  Quantite,Montant:real;
begin
     ColBeginEdit:=strtointeger(FSRecapitulatifProjets.EditColBeginEditAnomalie.Text);

     if(FSRecapitulatifProjets.TableauAnomalie.Cells[ColBeginEdit+1,FSRecapitulatifProjets.TableauAnomalie.Row]<>'')then
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
          ListeFormulairePreselection(FSFormulairePreselection.TableauFormulairePreselection,'','','','','',strtointeger(FSRecapitulatifProjets.TableauAnomalie.Cells[ColBeginEdit+0,FSRecapitulatifProjets.TableauAnomalie.Row]),FSFormulairePreselection.RBEtatAfficheTraitement.Caption);
          FSFormulairePreselection.TableauFormulairePreselection.Col:=1;
     end;
end;

procedure TFSRecapitulatifProjets.BitBtn2Click(Sender: TObject);
var  i,ColBeginEdit:integer; DateTrue:boolean;  Quantite,Montant:real;
begin
     ColBeginEdit:=strtointeger(FSRecapitulatifProjets.EditColBeginEditAnomalie.Text);

     if(FSRecapitulatifProjets.TableauAnomalie.Cells[ColBeginEdit+3,FSRecapitulatifProjets.TableauAnomalie.Row]<>'')then
     begin
          FSPlanificateur.Show;
          FSPlanificateur.BitTiersPlanificateur.Kind:=bkCancel;
          FSPlanificateur.BitTiersPlanificateur.Caption:='Tiers';
          FSPlanificateur.AffichageTiers.Left:=8;
          FSPlanificateur.AffichageTiers.Width:=481;
          FSPlanificateur.EditRechercheCodeTiers.Text:=FSRecapitulatifProjets.TableauAnomalie.Cells[ColBeginEdit+4,FSRecapitulatifProjets.TableauAnomalie.Row];

          FSPlanificateur.EditRechercheTiers.Text:=FSRecapitulatifProjets.TableauAnomalie.Cells[ColBeginEdit+5,FSRecapitulatifProjets.TableauAnomalie.Row];
          ListePlanificateurTiers(FSPlanificateur.TableauPlanificateur,FSPlanificateur.EditNumRubrique.Text,FSPlanificateur.EditRechercheCodeTiers.Text,FSRecapitulatifProjets.TableauAnomalie.Cells[ColBeginEdit+3,FSRecapitulatifProjets.TableauAnomalie.Row],Quantite,Montant);
          FSPlanificateur.TableauPlanificateur.Col:=4;
          FSPlanificateur.EditQuantitePlanificateur.Text:=Vergule(floattostr(Quantite),'2','C','');
          FSPlanificateur.EditMontantPlanificateur.Text:=Vergule(floattostr(Montant),'2','C','');

          RPlanificateur:=ChercherPlanificateur(FSRecapitulatifProjets.TableauAnomalie.Cells[ColBeginEdit+3,FSRecapitulatifProjets.TableauAnomalie.Row]);
          RubriqueArborescence('',inttostr(RPlanificateur.NumRubrique),RRubriqueFicheTechnique,RFicheTechnique,RTypeAvis);
          FSPlanificateur.EditCodeProjet.Text:=Firstlaters(FSRecapitulatifProjets.TableauAnomalie.Cells[1,FSRecapitulatifProjets.TableauAnomalie.Row],2);
          FSPlanificateur.EditProjet.Text:=ChercherProjetFinance(FSPlanificateur.EditCodeProjet.Text,PositionProjetFinancesRecherche).DesignationProjetFinance;
          FSPlanificateur.EditNumFicheTechnique.Text:=inttostr(RFicheTechnique.NumFicheTechnique);
          FSPlanificateur.EditFicheTechnique.Text:=RFicheTechnique.DesignationFicheTechnique;
          FSPlanificateur.EditNumRubrique.Text:=inttostr(RRubriqueFicheTechnique.NumRubrique);
          FSPlanificateur.EditRubrique.Text:=RRubriqueFicheTechnique.DesignationRubrique;
          FSPlanificateur.EditNumPlanificateurSelect.Text:=FSRecapitulatifProjets.TableauAnomalie.Cells[ColBeginEdit+3,FSRecapitulatifProjets.TableauAnomalie.Row];
     end;
end;

procedure TFSRecapitulatifProjets.FormActivate(Sender: TObject);
begin
     if(FSRecapitulatifProjets.PageRecapitulatif.Showing=true)then ProcAfficherRecapitulatifProjet(FSRecapitulatifProjets.TableauRecapitulatifProjets,FSRecapitulatifProjets.TableauProjetFinance.Cells[1,FSRecapitulatifProjets.TableauProjetFinance.Row],FSRecapitulatifProjets.RBInclurePlanificateur.Checked,FSRecapitulatifProjets.RBInclurePreselection.Checked,FSRecapitulatifProjets.RBInclureAvisFinancier.Checked,FSRecapitulatifProjets.RBInclureValeurProjetFinance.Checked);
     if(FSRecapitulatifProjets.PageOptions.Showing=true)then AnomaliePlanificationPreselectionStructures(FSRecapitulatifProjets.TableauAnomalie,inttostr(FSRecapitulatifProjets.TableauAnomalie.Row),inttostr(FSRecapitulatifProjets.TableauAnomalie.Col));
end;

procedure TFSRecapitulatifProjets.TableauAnomalieClick(Sender: TObject);
var  ColBeginEdit:integer;
begin
     ColBeginEdit:=strtointeger(FSRecapitulatifProjets.EditColBeginEditAnomalie.Text);

     if(TableauAnomalie.Cells[ColBeginEdit+1,FSRecapitulatifProjets.TableauAnomalie.Row]<>TableauAnomalie.Cells[ColBeginEdit+4,FSRecapitulatifProjets.TableauAnomalie.Row])
     and(TableauAnomalie.Cells[ColBeginEdit+1,FSRecapitulatifProjets.TableauAnomalie.Row]<>'')
     and(TableauAnomalie.Cells[ColBeginEdit+4,FSRecapitulatifProjets.TableauAnomalie.Row]<>'')then
     begin
          FSRecapitulatifProjets.BitCorrigerPreselection.Enabled:=true;
     end
     else
     begin
          FSRecapitulatifProjets.BitCorrigerPreselection.Enabled:=false;
     end;

end;

procedure TFSRecapitulatifProjets.BitCorrigerPreselectionClick(
  Sender: TObject);
var i:integer;   OKFormulaire:boolean;
begin
          OpenFParc(RParc);
          ChFormulairePreselection:=RParc.Parcours+'\'+Exercice+'FFormulairePreselection';
          assignfile(FFormulairePreselection,ChFormulairePreselection);
          if FileExists(ChFormulairePreselection)then
          Reset(FFormulairePreselection)
          else Rewrite(FFormulairePreselection);
          Seek(FFormulairePreselection,0);
          i:=0;
          OKFormulaire:=false;
          while not eof(FFormulairePreselection)and(OKFormulaire=false)do
          begin
               read(FFormulairePreselection,RFormulairePreselection);
               if(inttostr(RFormulairePreselection.NumFormulairePreselection)=FSRecapitulatifProjets.TableauAnomalie.Cells[strtointeger(FSRecapitulatifProjets.EditColBeginEditAnomalie.Text)+0,FSRecapitulatifProjets.TableauAnomalie.Row])then
               begin
                    OKFormulaire:=true;
               end
               else i:=i+1;
          end;

          Seek(FFormulairePreselection,i);

          RFormulairePreselection.CodeTier:=FSRecapitulatifProjets.TableauAnomalie.Cells[strtointeger(FSRecapitulatifProjets.EditColBeginEditAnomalie.Text)+4,FSRecapitulatifProjets.TableauAnomalie.Row];
          RFormulairePreselection.Tiers:=FSRecapitulatifProjets.TableauAnomalie.Cells[strtointeger(FSRecapitulatifProjets.EditColBeginEditAnomalie.Text)+5,FSRecapitulatifProjets.TableauAnomalie.Row];

          write(FFormulairePreselection,RFormulairePreselection);
          CloseFile(FFormulairePreselection);

          AnomaliePlanificationPreselectionStructures(FSRecapitulatifProjets.TableauAnomalie,inttostr(FSRecapitulatifProjets.TableauAnomalie.Row),inttostr(FSRecapitulatifProjets.TableauAnomalie.Col));
end;

procedure TFSRecapitulatifProjets.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ActiverNomForm(0,(Sender as TComponent).Name);
end;

procedure TFSRecapitulatifProjets.BitBtn6Click(Sender: TObject);
var  ColBeginEdit:integer;
begin
     ColBeginEdit:=strtointeger(FSRecapitulatifProjets.EditColBeginEdit.Text);
     ListeTypeFichierTiersBox(FSFicheTechniqueProjet.EditTiersTypeProces.Text,'','',FSFicheTechniqueProjet.EditTiersFichierConserne,FSFicheTechniqueProjet.EditTitreTiersFichierConserne);
     RPlanificateur:=ChercherPlanificateur(FSRecapitulatifProjets.TableauRecapitulatifProjets.Cells[ColBeginEdit+10,FSRecapitulatifProjets.TableauRecapitulatifProjets.Row]);
     RubriqueArborescence('',inttostr(RPlanificateur.NumRubrique),RRubriqueFicheTechnique,RFicheTechnique,RTypeAvis);
     FSFicheTechniqueProjet.EditTiersNumProjetTraitement.Text:=Firstlaters(FSRecapitulatifProjets.TableauRecapitulatifProjets.Cells[1,FSRecapitulatifProjets.TableauRecapitulatifProjets.Row],longueur(FSRecapitulatifProjets.TableauRecapitulatifProjets.Cells[1,FSRecapitulatifProjets.TableauRecapitulatifProjets.Row])-5);
     FSFicheTechniqueProjet.EditTiersNomProjetTraitement.Text:=ChercherProjetFinance(FSFicheTechniqueProjet.EditTiersNumProjetTraitement.Text,PositionProjetFinancesRecherche).DesignationProjetFinance;
     FSFicheTechniqueProjet.EditTiersTypeProces.Text:=RTypeAvis.TypeProces;
     FSFicheTechniqueProjet.EditTiersFichierConserne.Text:=RTypeAvis.FichierConserne;

     FSFicheTechniqueProjet.EditTiersCodeTiers.Text:=FSRecapitulatifProjets.TableauRecapitulatifProjets.Cells[ColBeginEdit+3,FSRecapitulatifProjets.TableauRecapitulatifProjets.Row];
     FSFicheTechniqueProjet.EditTiersNomTiers.Text:=FSRecapitulatifProjets.TableauRecapitulatifProjets.Cells[ColBeginEdit+4,FSRecapitulatifProjets.TableauRecapitulatifProjets.Row];

     FSFicheTechniqueProjet.RBInclureRegistrePlanificateur.Checked:=true;

     FSFicheTechniqueProjet.IncrimenteEditAnneeSelectMoisTiers.Position:=strtointeger(lastlaters(datetostr(date),4));
     FSFicheTechniqueProjet.EditTiersDateDebut.Date:=strtodate('01/01/'+ExerciceAnnee);
     FSFicheTechniqueProjet.EditTiersDateFin.Date:=strtodate('31/12/'+FSFicheTechniqueProjet.EditAnneeSelectMoisTiers.Text);

     FSFicheTechniqueProjet.RBChargementExterne.Checked:=true;
     FSFicheTechniqueProjet.Show;
     FSFicheTechniqueProjet.PageAnalyseDonnees.Show;

     FSFicheTechniqueProjet.EditTiersDateDebut.Date:=strtodate('01/01/'+ExerciceAnnee);
     FSFicheTechniqueProjet.EditTiersDateFin.Date:=strtodate('31/12/'+FSFicheTechniqueProjet.EditAnneeSelectMoisTiers.Text);
     
     SituationTiersFicheTechnique(FSFicheTechniqueProjet.TableauFinanceTiers,FSFicheTechniqueProjet.EditTiersModePaiement.Text,FSFicheTechniqueProjet.EditTiersDomiciliation.Text,datetostr(FSFicheTechniqueProjet.EditTiersDateDebut.Date),datetostr(FSFicheTechniqueProjet.EditTiersDateFin.Date),FSFicheTechniqueProjet.EditTiersNumProjetTraitement.Text,FSFicheTechniqueProjet.EditTiersNumFicheTechniqueTraitement.Text,FSFicheTechniqueProjet.EditTiersNumRubriqueTraitement.Text,FSFicheTechniqueProjet.EditTiersTypeProces.Text,FSFicheTechniqueProjet.EditTiersFichierConserne.Text,FSFicheTechniqueProjet.EditTiersCodeTiers.Text,FSFicheTechniqueProjet.EditTiersNomTiers.Text,strtointeger(FSFicheTechniqueProjet.EditRubriqueTrie.Text),FSFicheTechniqueProjet.RBAfficherAvisAnnulesTiers.Checked,FSFicheTechniqueProjet.RBAvisExecutesNonExecutes.Checked,FSFicheTechniqueProjet.RBAvisExecutes.Checked,FSFicheTechniqueProjet.RBAvisNonExecutes.Checked,FSFicheTechniqueProjet.EditPourcentageSolde.Text);
end;

procedure TFSRecapitulatifProjets.BitBtn7Click(Sender: TObject);
var  ColBeginEdit:integer;
begin
     ColBeginEdit:=strtointeger(FSRecapitulatifProjets.EditColBeginEdit.Text);
     RPlanificateur:=ChercherPlanificateur(FSRecapitulatifProjets.TableauRecapitulatifProjets.Cells[ColBeginEdit+10,FSRecapitulatifProjets.TableauRecapitulatifProjets.Row]);
     RubriqueArborescence('',inttostr(RPlanificateur.NumRubrique),RRubriqueFicheTechnique,RFicheTechnique,RTypeAvis);
     FSFicheTechniqueProjet.EditCodeProjet.Text:=Firstlaters(FSRecapitulatifProjets.TableauRecapitulatifProjets.Cells[1,FSRecapitulatifProjets.TableauRecapitulatifProjets.Row],longueur(FSRecapitulatifProjets.TableauRecapitulatifProjets.Cells[1,FSRecapitulatifProjets.TableauRecapitulatifProjets.Row])-5);
     FSFicheTechniqueProjet.EditDesignationProjet.Text:=ChercherProjetFinance(FSFicheTechniqueProjet.EditTiersNumProjetTraitement.Text,PositionProjetFinancesRecherche).DesignationProjetFinance;
     FSFicheTechniqueProjet.EditChargementTypeProces.Text:=RTypeAvis.TypeProces;
     FSFicheTechniqueProjet.EditChargementFichierConcerne.Text:=RTypeAvis.FichierConserne;
     FSFicheTechniqueProjet.EditQuantiteRubrique.Text:=Vergule(floattostr(RPlanificateur.Quantite),'2','C','');
     FSFicheTechniqueProjet.EditPrixRubrique.Text:=Vergule(floattostr(RPlanificateur.PrixUnitaire),'2','C','');;
     
     FSFicheTechniqueProjet.EditNumFiche.Text:=inttostr(RFicheTechnique.NumFicheTechnique);
     FSFicheTechniqueProjet.EditDesignationFiche.Text:=RFicheTechnique.DesignationFicheTechnique;

     FSFicheTechniqueProjet.EditNumRubrique.Text:=inttostr(RRubriqueFicheTechnique.NumRubrique);
     FSFicheTechniqueProjet.EditDesignationRubrique.Text:=RRubriqueFicheTechnique.DesignationRubrique;

     FSFicheTechniqueProjet.EditNumPlanificateur.Text:=inttostr(RPlanificateur.NumPlanificateur);
     FSFicheTechniqueProjet.EditDesignationPlanificateur.Text:=RPlanificateur.DesignationPlanificateur;

     FSFicheTechniqueProjet.RBChargementExterne.Checked:=true;

     FSFicheTechniqueProjet.IncrimenteEditAnneeSelectMois.Position:=strtointeger(lastlaters(datetostr(date),4)); 
     FSFicheTechniqueProjet.EditOFDateDebut.Date:=strtodate('01/01/'+ExerciceAnnee);
     FSFicheTechniqueProjet.EditOFDateFin.Date:=strtodate('31/12/'+FSFicheTechniqueProjet.EditAnneeSelectMois.Text);

     FSFicheTechniqueProjet.Show;
     FSFicheTechniqueProjet.PageOperationTechniques.Show;

     FSFicheTechniqueProjet.EditOFDateDebut.Date:=strtodate('01/01/'+ExerciceAnnee);
     FSFicheTechniqueProjet.EditOFDateFin.Date:=strtodate('31/12/'+FSFicheTechniqueProjet.EditAnneeSelectMois.Text);
     
     AfficherDetailRubriqueFicheTechnique(FSFicheTechniqueProjet.TableauDetailRubriqueFicheTechnique,FSFicheTechniqueProjet.EditCodeProjet.Text,FSFicheTechniqueProjet.EditNumFiche.Text,FSFicheTechniqueProjet.EditNumRubrique.Text,FSFicheTechniqueProjet.EditNumPlanificateur.Text,datetostr(FSFicheTechniqueProjet.EditOFDateDebut.Date),datetostr(FSFicheTechniqueProjet.EditOFDateFin.Date));
end;

procedure TFSRecapitulatifProjets.TableauProjetFinanceDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSRecapitulatifProjets.TableauRecapitulatifProjetsDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSRecapitulatifProjets.TableauAnomalieDrawCell(Sender: TObject;
  ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

end.

