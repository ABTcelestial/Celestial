unit UnitFSTraitementAnalyse;
interface
uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, UnitFirstThread, StdCtrls, Buttons, Grids,
  ExtCtrls, ComCtrls; // Ajouter : , MonThread;

type
  TFSTraitementAnalyse = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Bevel1: TBevel;
    TableauListeAppartenanceMouvementTB: TStringGrid;
    BitBtn1: TBitBtn;
    RBSuspendreTBohr: TCheckBox;
    Rapport: TMemo;
    TabSheet2: TTabSheet;
    TableauDetailMouvement: TStringGrid;
    Memo1: TMemo;
    BitBtn2: TBitBtn;
    Bevel2: TBevel;
    CheckBox1: TCheckBox;
    TableauMouvement: TStringGrid;
    TableauTypeMouvement: TStringGrid;
    DataAdresse: TLabel;
    TabSheet3: TTabSheet;
    Bevel3: TBevel;
    AdresseFAvis: TLabel;
    TableauAvis: TStringGrid;
    BitBtn3: TBitBtn;
    TabSheet4: TTabSheet;
    EditFormule: TEdit;
    BitCalculer: TBitBtn;
    EditResultat: TEdit;
    TableauData: TStringGrid;
    BitBtn4: TBitBtn;
    TabSheet5: TTabSheet;
    TableauTailleRegistres: TStringGrid;
    BitAfficherTailleRegistres: TBitBtn;
    EditBufferSize: TComboBox;
    Label1: TLabel;
    EditUniteMesureBufferSize: TLabel;
    AfficheOptionPrint: TPanel;
    Bevel32: TBevel;
    RadioGroup5: TRadioGroup;
    StaticText2: TStaticText;
    RBOrientationPapier: TComboBox;
    RBAjustement: TCheckBox;
    BitBtn20: TBitBtn;
    BitBtn29: TBitBtn;
    Bevel4: TBevel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TableauMouvementDblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure TableauTypeMouvementDblClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitCalculerClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitAfficherTailleRegistresClick(Sender: TObject);
    procedure EditBufferSizeChange(Sender: TObject);
    procedure AfficheOptionPrintClick(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn29Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var FSTraitementAnalyse : TFSTraitementAnalyse;


implementation

Uses UnitInitialisation, UnitFSTiers, UnitFSGenerateurMouvement,
  UnitFSMenuPrincipal;

{$R *.DFM}

procedure TFSTraitementAnalyse.BitBtn1Click(Sender: TObject);
var   R,S,iPAP,IBegin,IEnd,SigneDebitCredit:integer;      OKMouvement:boolean;
begin
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.ColCount:=43;
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.RowCount:=2;
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Rows[1].Text:='';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[0].Text:='N°';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[1].Text:='Ordre';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[2].Text:='Num';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[3].Text:='P°TM';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[4].Text:='P°M';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[5].Text:='Date.Etablis.';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[6].Text:='Mode de payement';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[7].Text:='Code Type F';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[8].Text:='Type Proc';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[9].Text:='Fichier Tièrs Consern';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[10].Text:='Code Tiers';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[11].Text:='Tiers';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[12].Text:='M.Mouvement';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[13].Text:='Sélection';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[14].Text:='Date Exécution';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[15].Text:='C°Payés';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[16].Text:='Payés';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[17].Text:='C°Wilaya';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[18].Text:='Wilaya';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[19].Text:='C°Daira';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[20].Text:='Daira';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[21].Text:='C°Commune';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[22].Text:='Commune';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[23].Text:='C°Zone';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[24].Text:='Zone';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[25].Text:='Adresse';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[26].Text:='Exécution !';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[27].Text:='NumProjet ';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[28].Text:='Projet';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[29].Text:='Mode Paiement';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[30].Text:='Num Domiciliation';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[31].Text:='Domiciliation';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[32].Text:='Num Pièce';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[33].Text:='Num Avis';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[34].Text:='OdrMAp';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[35].Text:='Info Avis';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[36].Text:='M.Avis';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[37].Text:='Data1';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[38].Text:='Data2';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[39].Text:='Data3';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[40].Text:='Data4';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[41].Text:='Data5';
     FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cols[42].Text:='Data6';
     R:=0;

     FSTraitementAnalyse.Rapport.Lines.Text:='';
S:=1;
while(S<=FSTraitementAnalyse.TableauMouvement.RowCount-1)do
begin     
     if(FSTraitementAnalyse.TableauMouvement.Cells[20,S]='OK')
     and(FSTraitementAnalyse.TableauMouvement.Cells[1,S]<>'Pr')
     and(FSTraitementAnalyse.TableauMouvement.Cells[1,S]<>'ST')
     then
     begin
     TypeProces:='Business';
     FichierConcerne:='FListeMouvement';
     Adresse:='';
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          if(FichierConcerne<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier {'+FichierConcerne+'} recherché !');
     end;

     ChListeMouvementX:=IndiqueAdresseListeMouvement(FSTraitementAnalyse.TableauMouvement.Cells[0,S],TypeProcesReseauxListeMouvement);
     assignfile(FListeMouvementX,ChListeMouvementX);
     if FileExists(ChListeMouvementX)then
     begin
          Reset(FListeMouvementX);
          IBegin:=0;
          IEnd:=999999999;
          iPAP:=IBegin;
          if(iPAP<=999999999)then
          begin
                Seek(FListeMouvementX,iPAP);
                while not eof(FListeMouvementX)and(iPAP<=IEnd)do
                begin
                     read(FListeMouvementX,RListeMouvementX); Application.ProcessMessages;  if(FSTraitementAnalyse.RBSuspendreTBohr.Checked)then Exit;
                     iPAP:=iPAP+1;

                     SigneDebitCredit:=1;

                     OKMouvement:=true;

                     if(OKMouvement=true)then
                     begin
                          FSTraitementAnalyse.Rapport.Lines.Add('Mouvement périodique: '+inttostr(RListeMouvementX.PositionMouvement)+' '+inttostr(RListeMouvementX.NumListeMouvement)+' du '+RListeMouvementX.DateMouvement+'. Montant: '+vergule(floattostr(RListeMouvementX.MontantMouvement),'2','C',''));

                           R:=R+1;
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Rows[R].Text:=inttostr(R);
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[1,R]:=inttostr(RListeMouvementX.OrdreListeMouvement);
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[2,R]:=inttostr(RListeMouvementX.NumListeMouvement);
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[3,R]:=inttostr(RListeMouvementX.PositionTypeMouvement);
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[4,R]:=inttostr(RListeMouvementX.PositionMouvement);
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[5,R]:=RListeMouvementX.DateMouvement;
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[6,R]:=RListeMouvementX.ModePaiement+' '+RListeMouvementX.Domiciliation;
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[7,R]:=RListeMouvementX.CodeTypeFormule;
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[8,R]:=RListeMouvementX.TypeProces;
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[9,R]:=RListeMouvementX.FichierTiersConserne;
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[10,R]:=RListeMouvementX.CodeTiers;
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[11,R]:='';//ImporteDataProcesTiers(RListeMouvementX.TypeProces,RListeMouvementX.FichierTiersConserne,RListeMouvementX.CodeTiers,PositionTiersRecherche);
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[12,R]:=Vergule(floattostr(RListeMouvementX.MontantMouvement*SigneDebitCredit),'2','C','');
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[13,R]:='OK';
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[14,R]:=inttostr(RListeMouvementX.PositionMouvement)+' N° '+inttostr(RListeMouvementX.NumListeMouvement);
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[15,R]:=RListeMouvementX.CodePaysExecutionMouvement;
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[16,R]:='';//ChercherLocalisationGeographique(RListeMouvementX.CodePaysExecutionMouvement,'FPays').IntitulleLocalisationGeographique;
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[17,R]:=RListeMouvementX.CodeWilayaExecutionMouvement;
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[18,R]:='';//ChercherLocalisationGeographique(RListeMouvementX.CodeWilayaExecutionMouvement,'FWilaya').IntitulleLocalisationGeographique;
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[19,R]:=RListeMouvementX.CodeDairaExecutionMouvement;
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[20,R]:='';//ChercherLocalisationGeographique(RListeMouvementX.CodeDairaExecutionMouvement,'FDaira').IntitulleLocalisationGeographique;
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[21,R]:=RListeMouvementX.CodeCommuneExecutionMouvement;
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[22,R]:='';//ChercherLocalisationGeographique(RListeMouvementX.CodeCommuneExecutionMouvement,'FCommune').IntitulleLocalisationGeographique;
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[23,R]:=RListeMouvementX.CodeZoneExecutionMouvement;
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[24,R]:='';//ChercherLocalisationGeographique(RListeMouvementX.CodeZoneExecutionMouvement,'FZone').IntitulleLocalisationGeographique;
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[25,R]:=RListeMouvementX.AdresseExecutionMouvement;
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[26,R]:=booleantostr(RListeMouvementX.OKExecution);
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[27,R]:=RListeMouvementX.NumProjetFinance;
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[28,R]:='';//ChercherProjetFinance(RListeMouvementX.NumProjetFinance,PositionProjetFinancesRecherche).DesignationProjetFinance;
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[29,R]:=RListeMouvementX.ModePaiement;
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[30,R]:=RListeMouvementX.NumDomiciliation;
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[31,R]:=RListeMouvementX.Domiciliation;
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[32,R]:=RListeMouvementX.NumPiece;
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[33,R]:=RListeMouvementX.ListeNumAvis;
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[34,R]:='LM';
                           //MontantAvis:=CalculeMontantListeAvis(RListeMouvementX.ListeNumAvis,'');
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[35,R]:='';//Vergule(floattostr(MontantAvis),'2','C','');
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[36,R]:='';

                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[37,R]:='';
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[38,R]:='';
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[39,R]:='';
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[40,R]:='';
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[41,R]:='';
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Cells[42,R]:='';

                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.RowCount:=R+1;
                           FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.Row:=R;
                     end;
                end;
          end;
          CloseFile(FListeMouvementX);
     end;
     end;
S:=S+1;
end;

     if R>0 then FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.RowCount:=R+1
            else FSTraitementAnalyse.TableauListeAppartenanceMouvementTB.RowCount:=2;

     AjusterColWidth(FSTraitementAnalyse.TableauListeAppartenanceMouvementTB,'','');
end;

procedure TFSTraitementAnalyse.FormShow(Sender: TObject);
var  C:integer; NotCol:string;
begin
     ProcListeMouvement(FSTraitementAnalyse.TableauMouvement,'','','?','');

     ProcListeTypeMouvement(FSTraitementAnalyse.TableauTypeMouvement);

     FSTraitementAnalyse.TableauTypeMouvement.ColCount:=21;
     FSTraitementAnalyse.TableauTypeMouvement.Cols[20].Text:='Sélect';

     NotCol:='1;4-19';
     for C:=0 to FSTraitementAnalyse.TableauTypeMouvement.ColCount-1 do
     if ExisteNumInTexte(inttostr(C),NotCol)then FSTraitementAnalyse.TableauTypeMouvement.ColWidths[C]:=0;
     AjusterColWidth(FSTraitementAnalyse.TableauTypeMouvement,'',NotCol);
end;

procedure TFSTraitementAnalyse.TableauMouvementDblClick(Sender: TObject);
begin
     if(FSTraitementAnalyse.TableauMouvement.Cells[20,FSTraitementAnalyse.TableauMouvement.Row]='OK')then
     begin
          FSTraitementAnalyse.TableauMouvement.Cells[20,FSTraitementAnalyse.TableauMouvement.Row]:='';
     end
     else
     begin
          FSTraitementAnalyse.TableauMouvement.Cells[20,FSTraitementAnalyse.TableauMouvement.Row]:='OK'
     end;
end;

procedure TFSTraitementAnalyse.BitBtn2Click(Sender: TObject);
var   R,S,iPAP,IBegin,IEnd,SigneDebitCredit:integer;      OKDetailMouvement:boolean;
begin
     FSTraitementAnalyse.TableauDetailMouvement.ColCount:=11;
     FSTraitementAnalyse.TableauDetailMouvement.RowCount:=2;
     FSTraitementAnalyse.TableauDetailMouvement.Rows[1].Text:='';
     FSTraitementAnalyse.TableauDetailMouvement.Cols[0].Text:='N°';
     FSTraitementAnalyse.TableauDetailMouvement.Cols[1].Text:='P°';
     FSTraitementAnalyse.TableauDetailMouvement.Cols[2].Text:='NuM';
     FSTraitementAnalyse.TableauDetailMouvement.Cols[3].Text:='Ordre';
     FSTraitementAnalyse.TableauDetailMouvement.Cols[4].Text:='Date';
     FSTraitementAnalyse.TableauDetailMouvement.Cols[5].Text:='Code Article';
     FSTraitementAnalyse.TableauDetailMouvement.Cols[6].Text:='Désignation Article';
     FSTraitementAnalyse.TableauDetailMouvement.Cols[7].Text:='Réf';
     FSTraitementAnalyse.TableauDetailMouvement.Cols[8].Text:='Unité M.';
     FSTraitementAnalyse.TableauDetailMouvement.Cols[9].Text:='Quantité';
     FSTraitementAnalyse.TableauDetailMouvement.Cols[10].Text:='Prix U.';

     R:=0;

     FSTraitementAnalyse.Rapport.Lines.Text:='';
S:=1;
while(S<=FSTraitementAnalyse.TableauTypeMouvement.RowCount-1)do
begin     
     if(FSTraitementAnalyse.TableauTypeMouvement.Cells[20,S]='OK')
     and(FSTraitementAnalyse.TableauTypeMouvement.Cells[1,S]<>'Pr')
     and(FSTraitementAnalyse.TableauTypeMouvement.Cells[1,S]<>'ST')
     then
     begin
     TypeProces:='Business';
     FichierConcerne:='DétailMouvement '+FSTraitementAnalyse.TableauTypeMouvement.Cells[3,S];
     Adresse:='';
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          if(FichierConcerne<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier {'+FichierConcerne+'} recherché !');
     end;

     FSTraitementAnalyse.DataAdresse.Caption:='Adresse: ???';

     ChDetailMouvementX:=Adresse;
     assignfile(FDetailMouvementX,ChDetailMouvementX);
     if FileExists(ChDetailMouvementX)then
     begin
     FSTraitementAnalyse.DataAdresse.Caption:='Adresse: '+ChDetailMouvementX;
          Reset(FDetailMouvementX);
          IBegin:=0;
          IEnd:=999999999;
          iPAP:=IBegin;
          if(iPAP<=999999999)then
          begin
                Seek(FDetailMouvementX,iPAP);
                while not eof(FDetailMouvementX)and(iPAP<=IEnd)do
                begin                       
                     read(FDetailMouvementX,RDetailMouvementX); Application.ProcessMessages;  if(FSTraitementAnalyse.RBSuspendreTBohr.Checked)then Exit;
                     iPAP:=iPAP+1;

                     OKDetailMouvement:=true;

                     if(OKDetailMouvement=true)then
                     begin
                          FSTraitementAnalyse.Rapport.Lines.Add('Mouvement périodique: '+inttostr(RDetailMouvementX.PositionDetailMouvement)+' '+inttostr(RDetailMouvementX.NumDetailMouvement)+' du '+RDetailMouvementX.DateMouvement+' Article: '+RDetailMouvementX.DesignationArticle+'. Quantité: '+vergule(floattostr(RDetailMouvementX.Quantite),'2','C',''));

                           R:=R+1;
                           FSTraitementAnalyse.TableauDetailMouvement.Rows[R].Text:=inttostr(R);
                           FSTraitementAnalyse.TableauDetailMouvement.Cells[1,R]:=inttostr(RDetailMouvementX.PositionDetailMouvement);
                           FSTraitementAnalyse.TableauDetailMouvement.Cells[2,R]:=inttostr(RDetailMouvementX.NumDetailMouvement);
                           FSTraitementAnalyse.TableauDetailMouvement.Cells[3,R]:=inttostr(RDetailMouvementX.OrdreListeMouvement);
                           FSTraitementAnalyse.TableauDetailMouvement.Cells[4,R]:=RDetailMouvementX.DateMouvement;
                           FSTraitementAnalyse.TableauDetailMouvement.Cells[5,R]:=RDetailMouvementX.CodeArticle;
                           FSTraitementAnalyse.TableauDetailMouvement.Cells[6,R]:=RDetailMouvementX.DesignationArticle;
                           FSTraitementAnalyse.TableauDetailMouvement.Cells[7,R]:=RDetailMouvementX.ReferenceArticle;
                           FSTraitementAnalyse.TableauDetailMouvement.Cells[8,R]:=RDetailMouvementX.UMArticle;
                           FSTraitementAnalyse.TableauDetailMouvement.Cells[9,R]:=floattostr(RDetailMouvementX.Quantite);
                           FSTraitementAnalyse.TableauDetailMouvement.Cells[10,R]:=floattostr(RDetailMouvementX.PrixUnitaire);

                           FSTraitementAnalyse.TableauDetailMouvement.RowCount:=R+1;
                           FSTraitementAnalyse.TableauDetailMouvement.Row:=R;
                     end;
                end;
          end;
          CloseFile(FDetailMouvementX);
     end;
     end;
S:=S+1;
end;

     if R>0 then FSTraitementAnalyse.TableauDetailMouvement.RowCount:=R+1
            else FSTraitementAnalyse.TableauDetailMouvement.RowCount:=2;

     AjusterColWidth(FSTraitementAnalyse.TableauDetailMouvement,'','');
end;

procedure TFSTraitementAnalyse.TableauTypeMouvementDblClick(
  Sender: TObject);
begin
     if(FSTraitementAnalyse.TableauTypeMouvement.Cells[20,FSTraitementAnalyse.TableauTypeMouvement.Row]='OK')then
     begin
          FSTraitementAnalyse.TableauTypeMouvement.Cells[20,FSTraitementAnalyse.TableauTypeMouvement.Row]:='';
     end
     else
     begin
          FSTraitementAnalyse.TableauTypeMouvement.Cells[20,FSTraitementAnalyse.TableauTypeMouvement.Row]:='OK'
     end;
end;

procedure TFSTraitementAnalyse.BitBtn3Click(Sender: TObject);
var  R:integer; FichierConserneBaseAvis:string;
begin
     FSTraitementAnalyse.TableauAvis.ColCount:=17;
     FSTraitementAnalyse.TableauAvis.Cols[0].Text:='N°';
     FSTraitementAnalyse.TableauAvis.Cols[1].Text:='NumAvis';
     FSTraitementAnalyse.TableauAvis.Cols[2].Text:='DateAvis';
     FSTraitementAnalyse.TableauAvis.Cols[3].Text:='DateExecute';
     FSTraitementAnalyse.TableauAvis.Cols[4].Text:='DesignationTypeAvis';
     FSTraitementAnalyse.TableauAvis.Cols[5].Text:='ModePaiement';
     FSTraitementAnalyse.TableauAvis.Cols[6].Text:='NumPiece';
     FSTraitementAnalyse.TableauAvis.Cols[7].Text:='NumDomiciliationAvis';
     FSTraitementAnalyse.TableauAvis.Cols[8].Text:='DomiciliationAvis';
     FSTraitementAnalyse.TableauAvis.Cols[9].Text:='Montant';
     FSTraitementAnalyse.TableauAvis.Cols[10].Text:='TypeProces';
     FSTraitementAnalyse.TableauAvis.Cols[11].Text:='CodeTiers';
     FSTraitementAnalyse.TableauAvis.Cols[12].Text:='NatureDepense';
     FSTraitementAnalyse.TableauAvis.Cols[13].Text:='CompteImputation';
     FSTraitementAnalyse.TableauAvis.Cols[14].Text:='DebitCredit';
     FSTraitementAnalyse.TableauAvis.Cols[15].Text:='Signataire';
     FSTraitementAnalyse.TableauAvis.Cols[16].Text:='Origine';

     FSTraitementAnalyse.TableauAvis.RowCount:=2;
     FSTraitementAnalyse.TableauAvis.Rows[1].Text:='';

     FichierConserneBaseAvis:='FAvis';

     TypeProces:='Business';
     if not(FunctionAdresseProces(TypeProces,FichierConserneBaseAvis,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserneBaseAvis+' recherché !');
     end;

     ChAvisX:=Adresse;  FSTraitementAnalyse.AdresseFAvis.Caption:=ChAvisX;
     assignfile(FAvisX,ChAvisX);
     if FileExists(ChAvisX)then
     Reset(FAvisX)
     else Rewrite(FAvisX);
     Seek(FAvisX,0);
     R:=0;
     while not eof(FAvisX)do
     begin
          read(FAvisX,RAvisX);

          R:=R+1;
          FSTraitementAnalyse.TableauAvis.Rows[R].Text:=inttostr(R);
          FSTraitementAnalyse.TableauAvis.Cells[1,R]:=inttostr(RAvisX.NumAvis);
          FSTraitementAnalyse.TableauAvis.Cells[2,R]:=RAvisX.DateAvis;
          FSTraitementAnalyse.TableauAvis.Cells[3,R]:=RAvisX.DateExecute;
          FSTraitementAnalyse.TableauAvis.Cells[4,R]:=RAvisX.DesignationTypeAvis;
          FSTraitementAnalyse.TableauAvis.Cells[5,R]:=RAvisX.ModePaiement;
          FSTraitementAnalyse.TableauAvis.Cells[6,R]:=RAvisX.NumPiece;
          FSTraitementAnalyse.TableauAvis.Cells[7,R]:=RAvisX.NumDomiciliationAvis;
          FSTraitementAnalyse.TableauAvis.Cells[8,R]:=RAvisX.DomiciliationAvis;
          FSTraitementAnalyse.TableauAvis.Cells[9,R]:=Vergule(floattostr(RAvisX.Montant),'2','C','');
          FSTraitementAnalyse.TableauAvis.Cells[10,R]:=RAvisX.TypeProces;
          FSTraitementAnalyse.TableauAvis.Cells[11,R]:=RAvisX.CodeTiers;
          FSTraitementAnalyse.TableauAvis.Cells[12,R]:=RAvisX.NatureDepense;
          FSTraitementAnalyse.TableauAvis.Cells[13,R]:=RAvisX.CompteImputation;
          FSTraitementAnalyse.TableauAvis.Cells[14,R]:=RAvisX.DebitCredit;
          FSTraitementAnalyse.TableauAvis.Cells[15,R]:=RAvisX.Signataire;
          FSTraitementAnalyse.TableauAvis.Cells[16,R]:=RAvisX.Origine;
     end;
     CloseFile(FAvisX);

     if(R>0)then FSTraitementAnalyse.TableauAvis.RowCount:=R+1
            else FSTraitementAnalyse.TableauAvis.RowCount:=2;

     AjusterColWidth(FSTraitementAnalyse.TableauAvis,'','');
end;

procedure TFSTraitementAnalyse.BitCalculerClick(Sender: TObject);
var  Registre:Registres;var ResultCalcule:string;
begin
     CalculeFormule('','','','',FSTraitementAnalyse.EditFormule.Text,'Formule 01',FSTraitementAnalyse.TableauData,'',1,1,Registre,Registre,ResultCalcule);
     FSTraitementAnalyse.EditResultat.Text:=ResultCalcule;
end;

procedure TFSTraitementAnalyse.BitBtn4Click(Sender: TObject);
begin
     FSTraitementAnalyse.EditResultat.Text:=floattostr(ValePositive(strtoreal(FSTraitementAnalyse.EditFormule.Text)));
end;

procedure TFSTraitementAnalyse.BitAfficherTailleRegistresClick(Sender: TObject);
begin
     ProcAfficherTailleRegistres(FSTraitementAnalyse.TableauTailleRegistres,strtointeger(FSTraitementAnalyse.EditBufferSize.Text));
end;

procedure TFSTraitementAnalyse.EditBufferSizeChange(Sender: TObject);
begin
     FSTraitementAnalyse.BitAfficherTailleRegistresClick(FSTraitementAnalyse.BitAfficherTailleRegistres);
end;

procedure TFSTraitementAnalyse.AfficheOptionPrintClick(Sender: TObject);
begin

if(FSTraitementAnalyse.AfficheOptionPrint.Height=31)
then FSTraitementAnalyse.AfficheOptionPrint.Height:=271
else FSTraitementAnalyse.AfficheOptionPrint.Height:=31;

end;

procedure TFSTraitementAnalyse.BitBtn20Click(Sender: TObject);
var   R,C,IndiceNbrLaters,NbrLaters:integer;
      TitreEtat,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,TypeEtat:string;
      ImprimeTableau:boolean;
begin
     TitreEtat:='Nombre Optimale BlockRead: BufferSize: '+FSTraitementAnalyse.EditBufferSize.Text+' '+FSTraitementAnalyse.EditUniteMesureBufferSize.Caption;

     GrasARow:='0';
     GrasACol:='0';
     CenterARow:='0';
     CenterACol:='0;2;3';
     RightARow:='';
     RightACol:='';

     OptionsImpression(FSTraitementAnalyse.TableauTailleRegistres,'Center',R,1,TitreEtat,FSTraitementAnalyse.RBAjustement.Checked,FSTraitementAnalyse.RBOrientationPapier.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,true,1,FSMenuPrincipal.ImageCodebarre,true,R);

     FSTraitementAnalyse.AfficheOptionPrint.Height:=31;
end;

procedure TFSTraitementAnalyse.BitBtn29Click(Sender: TObject);
var  TitreEtat,SousTitreEtat,TypeEtat:string;
begin
     FSTraitementAnalyse.AfficheOptionPrint.Height:=31;
     TitreEtat:='Nombre Optimale BlockRead';
     SousTitreEtat:='BufferSize: '+FSTraitementAnalyse.EditBufferSize.Text+' '+FSTraitementAnalyse.EditUniteMesureBufferSize.Caption;

     ColTexte:='1-3';

     TableauToExcel(FSTraitementAnalyse.TableauTailleRegistres,1,0,ColNum,ColDate,ColTexte,ColGauche,ColCentre,ColDroite,TitreEtat,SousTitreEtat,'',true,FSMenuPrincipal.RBInsertLogo.Checked,FSMenuPrincipal.RBAfficherLaSaisie.Checked);

end;

end.
