unit UnitFSMoyenTransport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ExtCtrls, Buttons, ComCtrls;

type
  TFSMoyenTransport = class(TForm)
    AfficheOperationMoyenTransport: TPanel;
    Bevel1: TBevel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Bevel7: TBevel;
    EditPositionMoyenTransport: TEdit;
    EditMoyenTransport: TEdit;
    EditMatriculeTransport: TEdit;
    EditNomChauffeur: TEdit;
    EditPrenomChauffeur: TEdit;
    EditPieceIdentite: TEdit;
    BitOperationMoyenTransport: TBitBtn;
    BitBtn2: TBitBtn;
    EditTypeFicheValider: TEdit;
    EditNumMovementPrelevementValider: TEdit;
    EditNumFicheValider: TEdit;
    EditCodeTiersValider: TEdit;
    EditMatriculeEffectifValider: TEdit;
    AfficheSupportMoyenTransport: TPanel;
    PageMoyenTransport: TPageControl;
    TabSheet1: TTabSheet;
    AfficheSupportOperationMoyenTransport: TPanel;
    EditMatriculeEffectif: TEdit;
    EditCodeTiers: TEdit;
    EditNumFiche: TEdit;
    EditNumMovementPrelevement: TEdit;
    Panel2: TPanel;
    Bevel5: TBevel;
    Bevel4: TBevel;
    Bevel36: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    EditTypeFiche: TComboBox;
    EditDateDebut: TDateTimePicker;
    EditDateFin: TDateTimePicker;
    EditExercice: TComboBox;
    AfficheTitreMouvementPrelevement: TPanel;
    Panel3: TPanel;
    Panel6: TPanel;
    RBAfficherTous: TCheckBox;
    TableauMouvement: TStringGrid;
    AfficheNumFiche: TPanel;
    EditValeurPrecis: TComboBox;
    TableauListeMouvement: TStringGrid;
    TableauMoyenTransport: TStringGrid;
    Panel1: TPanel;
    Bevel6: TBevel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    LabelEditMoyenTransport: TLabel;
    LabelEditMatriculeTransport: TLabel;
    LabelEditNomChauffeur: TLabel;
    LabelEditPrenomChauffeur: TLabel;
    LabelEditPieceIdentite: TLabel;
    TabSheet2: TTabSheet;
    EditTitreEtat: TMemo;
    TableauTiersMoyenTransport: TStringGrid;
    Panel4: TPanel;
    Label53: TLabel;
    TitreEditTiersFichierConserne: TLabel;
    EditTiersTypeProces: TComboBox;
    EditTiersFichierConserne: TComboBox;
    PanelTiers: TPanel;
    TitreEditTiers: TLabel;
    Label29: TLabel;
    Label22: TLabel;
    EditCodeTiersMT: TEdit;
    EditTitreInfoMoyenTransport: TComboBox;
    EditInfoMoyenTransport: TEdit;
    EditTiersMT: TEdit;
    EditMouvement: TComboBox;
    TableauMoyenTransportMT: TStringGrid;
    TableauTiersMT: TStringGrid;
    Panel5: TPanel;
    Label27: TLabel;
    Label21: TLabel;
    EditDateDebutMT: TDateTimePicker;
    EditDateFinMT: TDateTimePicker;
    Panel7: TPanel;
    RadioGroup1: TRadioGroup;
    RBAfficherTotalAnterieur: TRadioButton;
    RBNaPasAfficherTotalAnterieur: TRadioButton;
    AfficheOptionPrint: TPanel;
    Bevel32: TBevel;
    RadioGroup5: TRadioGroup;
    StaticText2: TStaticText;
    RBOrientationPapier: TComboBox;
    RBAjustement: TCheckBox;
    BitBtn20: TBitBtn;
    RBSuspendre: TCheckBox;
    procedure EditTypeFicheSelect(Sender: TObject);
    procedure EditTypeFicheKeyPress(Sender: TObject; var Key: Char);
    procedure TableauMouvementClick(Sender: TObject);
    procedure TableauListeMouvementClick(Sender: TObject);
    procedure TableauMoyenTransportClick(Sender: TObject);
    procedure BitOperationMoyenTransportClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure EditPositionMoyenTransportKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditMoyenTransportKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditMatriculeTransportKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNomChauffeurKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditPrenomChauffeurKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditPieceIdentiteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauMoyenTransportKeyPress(Sender: TObject;
      var Key: Char);
    procedure EditDateDebutChange(Sender: TObject);
    procedure RBAfficherTousClick(Sender: TObject);
    procedure EditValeurPrecisKeyPress(Sender: TObject; var Key: Char);
    procedure EditValeurPrecisChange(Sender: TObject);
    procedure EditExerciceSelect(Sender: TObject);
    procedure TableauMoyenTransportDblClick(Sender: TObject);
    procedure EditTiersTypeProcesSelect(Sender: TObject);
    procedure EditTiersFichierConserneSelect(Sender: TObject);
    procedure EditInfoMoyenTransportEnter(Sender: TObject);
    procedure EditTiersMTEnter(Sender: TObject);
    procedure TableauMoyenTransportMTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauTiersMTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauTiersMoyenTransportClick(Sender: TObject);
    procedure EditTiersTypeProcesEnter(Sender: TObject);
    procedure EditTiersFichierConserneEnter(Sender: TObject);
    procedure EditTitreInfoMoyenTransportKeyPress(Sender: TObject;
      var Key: Char);
    procedure EditDateDebutMTChange(Sender: TObject);
    procedure RBAfficherTotalAnterieurClick(Sender: TObject);
    procedure RBNaPasAfficherTotalAnterieurClick(Sender: TObject);
    procedure AfficheOptionPrintClick(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSMoyenTransport: TFSMoyenTransport;

  Procedure ProcListeMoyenTransport(TableauMoyenTransport:TStringGrid; TypeFiche,NumMovementPrelevement,NumFiche,MatriculeEffectif,CodeTiers:string);
  Procedure AjouterMoyenTransport(PositionMoyenTransport,TypeFiche,NumMovementPrelevement,NumFiche,MatriculeEffectif,MoyenTransport,MatriculeTransport,NomChauffeur,PrenomChauffeur,PieceIdentite,CodeTiers:string);
  Procedure ValiderMoyenTransport(PositionMoyenTransport,TypeFiche,NumMovementPrelevement,NumFiche,MoyenTransport,MatriculeTransport,NomChauffeur,PrenomChauffeur,PieceIdentite,CodeTiers,MatriculeEffectif:string);
  Procedure AfficherDetailMoyenTransport(PositionMoyenTransport,TypeFiche,NumMovementPrelevement,NumFiche,MatriculeEffectif,CodeTiers:string; var EditProcPositionMoyenTransport,EditProcTypeFiche,EditProcNumMovementPrelevement,EditProcNumFiche,EditProcMatriculeEffectif,EditProcMoyenTransport,EditProcMatriculeTransport,EditProcNomChauffeur,EditProcPrenomChauffeur,EditProcPieceIdentite,EditProcCodeTiers:TEdit);
  Procedure InitialisationMoyenTransport;
  Procedure AfficherInfoLabelMoyenTransport(ARow:integer);
  Procedure InitialisationTraitementMoyenTransport;
  Procedure AfficherMoyenTransportTiersMatricule(TableauMoyenTransportTiersMatricule:TStringGrid;  TypeProces,FichierConserne,CodeTiers,TitreInfoMoyenTransport,InfoMoyenTransport,DateDebut,DateFin:string; AfficherTotalAnterieur:boolean);
  Procedure InfoMoyenTransport(TypeFiche,NumMovementPrelevement,NumFiche,MatriculeEffectif,CodeTiers:string; var MoyenTransport,MatriculeTransport,NomChauffeur,PrenomChauffeur,PieceIdentite:string);
  Procedure RemplirTableauInfoMoyenTransport(Tableau:TStringGrid; RapportTraitement:TMemo; TitreInfoMoyenTransport:string);

implementation

uses UnitInitialisation, UnitSuppression, UnitFSListePrelevement, UnitFSGenerateurMouvement, UnitFSFicheSaisie,
     UnitFSPrelevement, UnitFSTiers, UnitFSMenuPrincipal,
  UnitFSTraitementDonnees;

{$R *.dfm}

procedure TFSMoyenTransport.EditTypeFicheSelect(Sender: TObject);
begin
     InitialisationMoyenTransport;
end;

procedure TFSMoyenTransport.EditTypeFicheKeyPress(Sender: TObject;
  var Key: Char);
begin
     key:=#0;
end;

procedure TFSMoyenTransport.TableauMouvementClick(Sender: TObject);
var  TypeFiche,NumMovementPrelevement,NumFiche,MatriculeEffectif,CodeTiers,FichierConcerne,ValeursPrecis,PLMBegin,PLMEnd:string;
begin
     FSMoyenTransport.AfficheOperationMoyenTransport.Visible:=false;
     FSMoyenTransport.EditNumFiche.Text:='';
     FSMoyenTransport.EditCodeTiers.Text:='';
     FSMoyenTransport.EditMatriculeEffectif.Text:='';
     TypeFiche:=FSMoyenTransport.EditTypeFiche.Text;

     if(FSMoyenTransport.EditTypeFiche.Text='Mouvement')then
     begin
          PLMBegin:=FSMoyenTransport.TableauMouvement.Cells[21,FSMoyenTransport.TableauMouvement.Row];
          PLMEnd:=FSMoyenTransport.TableauMouvement.Cells[22,FSMoyenTransport.TableauMouvement.Row];
          FSMoyenTransport.EditNumMovementPrelevement.Text:=FSMoyenTransport.TableauMouvement.Cells[1,FSMoyenTransport.TableauMouvement.Row];
          ProcAfficheListeMouvement(FSMoyenTransport.TableauListeMouvement,FSMoyenTransport.TableauMouvement.Cells[0,FSMoyenTransport.TableauMouvement.Row],FSMoyenTransport.TableauMouvement.Cells[1,FSMoyenTransport.TableauMouvement.Row],PLMBegin,PLMEnd,datetostr(FSMoyenTransport.EditDateDebut.Date),datetostr(FSMoyenTransport.EditDateFin.Date),'','','','','','','','',false,false);
     end;

     if(FSMoyenTransport.EditTypeFiche.Text='Prélèvement')then
     begin
          FSMoyenTransport.EditMatriculeEffectif.Text:=FSMoyenTransport.TableauMouvement.Cells[5,FSMoyenTransport.TableauMouvement.Row];
          if(FSMoyenTransport.EditValeurPrecis.Text='Prélèvement Tiers')then ValeursPrecis:='NON';
          if(FSMoyenTransport.EditValeurPrecis.Text='Prélèvement Divers')then ValeursPrecis:='OUI';
          if(FSMoyenTransport.EditValeurPrecis.Text='Tous Prélèvements')then ValeursPrecis:='';
          FSMoyenTransport.EditNumMovementPrelevement.Text:=FSMoyenTransport.TableauMouvement.Cells[2,FSMoyenTransport.TableauMouvement.Row];
          ListePrelevementUnitesFonds(FSMoyenTransport.TableauListeMouvement,FSMoyenTransport.EditNumMovementPrelevement.Text,FSMoyenTransport.TableauMouvement.Cells[5,FSMoyenTransport.TableauMouvement.Row],ValeursPrecis,datetostr(FSMoyenTransport.EditDateDebut.Date),datetostr(FSMoyenTransport.EditDateFin.Date));
     end;

     if(FSMoyenTransport.RBAfficherTous.Checked=true)then
     begin
          NumMovementPrelevement:='';
          NumFiche:='';
          MatriculeEffectif:='';
          CodeTiers:='';
     end
     else
     begin
          NumMovementPrelevement:=FSMoyenTransport.EditNumMovementPrelevement.Text;
          NumFiche:='';
          MatriculeEffectif:=FSMoyenTransport.EditMatriculeEffectif.Text;
          CodeTiers:='';
     end;

     ProcListeMoyenTransport(FSMoyenTransport.TableauMoyenTransport,TypeFiche,NumMovementPrelevement,NumFiche,MatriculeEffectif,CodeTiers);
     AfficherInfoLabelMoyenTransport(FSMoyenTransport.TableauMoyenTransport.Row);
end;

Procedure ProcListeMoyenTransport(TableauMoyenTransport:TStringGrid; TypeFiche,NumMovementPrelevement,NumFiche,MatriculeEffectif,CodeTiers:string);
var   R:integer;    OKMoyenTransport:boolean;   NotCol,Archive,PositionPrelevement:string;
begin
     TableauMoyenTransport.ColCount:=10;
     TableauMoyenTransport.Cols[0].Text:='N°';
     TableauMoyenTransport.Cols[1].Text:='P°';
     TableauMoyenTransport.Cols[2].Text:='TypeFiche';
     TableauMoyenTransport.Cols[3].Text:='NumMovementPrelevement';
     TableauMoyenTransport.Cols[4].Text:='NumFiche';
     TableauMoyenTransport.Cols[5].Text:='MoyenTransport';
     TableauMoyenTransport.Cols[6].Text:='MatriculeTransport';
     TableauMoyenTransport.Cols[7].Text:='NomChauffeur';
     TableauMoyenTransport.Cols[8].Text:='PrenomChauffeur';
     TableauMoyenTransport.Cols[9].Text:='PieceIdentite';

     TableauMoyenTransport.RowCount:=2;
     TableauMoyenTransport.Rows[1].Text:='';

     R:=0;

     if(TypeFiche<>'')then
     begin
           Archive:='';
           if(TypeFiche='Prélèvement')then
           begin
                RPrelevement:=ChercherPrelevement(strtointeger(NumMovementPrelevement),ExerciceAnnee,'',PositionPrelevement);
                if(RPrelevement.Archiver=true)then Archive:='Archive';
           end;

           OpenFParc(RParc);
           ChMoyenTransport:=RParc.Parcours+'\'+Exercice+'F'+Archive+'MoyenTransport'+TypeFiche;
           assignfile(FMoyenTransport,ChMoyenTransport);
           if FileExists(ChMoyenTransport)then
           Reset(FMoyenTransport)
           else Rewrite(FMoyenTransport);
           Seek(FMoyenTransport,0);
           OKMoyenTransport:=false;
           while not eof(FMoyenTransport)do
           begin
                read(FMoyenTransport,RMoyenTransport);

                OKMoyenTransport:=true;

                if(OKMoyenTransport=true)then
                begin
                     if(TypeFiche<>'')then
                     begin
                          if(RMoyenTransport.TypeFiche=TypeFiche)
                          then OKMoyenTransport:=true
                          else OKMoyenTransport:=false;
                     end;
                end;

                if(OKMoyenTransport=true)then
                begin
                     if(NumMovementPrelevement<>'')then
                     begin
                          if(inttostr(RMoyenTransport.NumMovementPrelevement)=NumMovementPrelevement)
                          then OKMoyenTransport:=true
                          else OKMoyenTransport:=false;
                     end;
                end;

                if(OKMoyenTransport=true)then
                begin
                     if(NumFiche<>'')then
                     begin
                          if(inttostr(RMoyenTransport.NumFiche)=NumFiche)
                          then OKMoyenTransport:=true
                          else OKMoyenTransport:=false;
                     end;
                end;

                if(OKMoyenTransport=true)then
                begin
                     if(MatriculeEffectif<>'')then
                     begin
                          if(RMoyenTransport.MatriculeEffectif=MatriculeEffectif)
                          then OKMoyenTransport:=true
                          else OKMoyenTransport:=false;
                     end;
                end;

                if(OKMoyenTransport=true)then
                begin
                     if(CodeTiers<>'')then
                     begin
                          if(RMoyenTransport.CodeTiers=CodeTiers)
                          then OKMoyenTransport:=true
                          else OKMoyenTransport:=false;
                     end;
                end;

                if(OKMoyenTransport=true)then
                begin
                     R:=R+1;
                     TableauMoyenTransport.Rows[R].Text:=inttostr(R);
                     TableauMoyenTransport.Cells[1,R]:=inttostr(RMoyenTransport.PositionMoyenTransport);
                     TableauMoyenTransport.Cells[2,R]:=RMoyenTransport.TypeFiche;
                     TableauMoyenTransport.Cells[3,R]:=inttostr(RMoyenTransport.NumMovementPrelevement);
                     TableauMoyenTransport.Cells[4,R]:=inttostr(RMoyenTransport.NumFiche);
                     TableauMoyenTransport.Cells[5,R]:=RMoyenTransport.MoyenTransport;
                     TableauMoyenTransport.Cells[6,R]:=RMoyenTransport.MatriculeTransport;
                     TableauMoyenTransport.Cells[7,R]:=RMoyenTransport.NomChauffeur;
                     TableauMoyenTransport.Cells[8,R]:=RMoyenTransport.PrenomChauffeur;
                     TableauMoyenTransport.Cells[9,R]:=RMoyenTransport.PieceIdentite;
                end;
           end;
           CloseFile(FMoyenTransport);
     end
     else
     begin
           repeat
           if(TypeFiche='')then TypeFiche:='Mouvement' else TypeFiche:='Prélèvement';
           Archive:='';
           if(TypeFiche='Prélèvement')then
           begin
                RPrelevement:=ChercherPrelevement(strtointeger(NumMovementPrelevement),ExerciceAnnee,'',PositionPrelevement);
                if(RPrelevement.Archiver=true)then Archive:='Archive';
           end;

           OpenFParc(RParc);
           ChMoyenTransport:=RParc.Parcours+'\'+Exercice+'F'+Archive+'MoyenTransport'+TypeFiche;
           assignfile(FMoyenTransport,ChMoyenTransport);
           if FileExists(ChMoyenTransport)then
           Reset(FMoyenTransport)
           else Rewrite(FMoyenTransport);
           Seek(FMoyenTransport,0);
           OKMoyenTransport:=false;
           while not eof(FMoyenTransport)do
           begin
                read(FMoyenTransport,RMoyenTransport);

                if(CodeTiers<>'')then
                begin
                     if(RMoyenTransport.CodeTiers=CodeTiers)
                     then OKMoyenTransport:=true
                     else OKMoyenTransport:=false;
                end;

                if(OKMoyenTransport=true)then
                begin
                     R:=R+1;
                     TableauMoyenTransport.Rows[R].Text:=inttostr(R);
                     TableauMoyenTransport.Cells[1,R]:=inttostr(RMoyenTransport.PositionMoyenTransport);
                     TableauMoyenTransport.Cells[2,R]:=RMoyenTransport.TypeFiche;
                     TableauMoyenTransport.Cells[3,R]:=inttostr(RMoyenTransport.NumMovementPrelevement);
                     TableauMoyenTransport.Cells[4,R]:=inttostr(RMoyenTransport.NumFiche);
                     TableauMoyenTransport.Cells[5,R]:=RMoyenTransport.MoyenTransport;
                     TableauMoyenTransport.Cells[6,R]:=RMoyenTransport.MatriculeTransport;
                     TableauMoyenTransport.Cells[7,R]:=RMoyenTransport.NomChauffeur;
                     TableauMoyenTransport.Cells[8,R]:=RMoyenTransport.PrenomChauffeur;
                     TableauMoyenTransport.Cells[9,R]:=RMoyenTransport.PieceIdentite;
                end;
           end;
           CloseFile(FMoyenTransport);
           until TypeFiche='Prélèvement'
     end;

     if(R>0)then TableauMoyenTransport.RowCount:=R+1
            else TableauMoyenTransport.RowCount:=2;

     NotCol:='';
     AjusterColWidth(TableauMoyenTransport,'',NotCol);
end;

procedure TFSMoyenTransport.TableauListeMouvementClick(Sender: TObject);
var  TypeFiche,NumMovementPrelevement,NumFiche,CodeTiers,MatriculeEffectif:string;
begin
     FSMoyenTransport.AfficheOperationMoyenTransport.Visible:=false;
     FSMoyenTransport.EditNumFiche.Text:=FSMoyenTransport.TableauListeMouvement.Cells[1,FSMoyenTransport.TableauListeMouvement.Row];
     FSMoyenTransport.EditMatriculeEffectif.Text:='';
     TypeFiche:=FSMoyenTransport.EditTypeFiche.Text;

     if(FSMoyenTransport.EditTypeFiche.Text='Mouvement')then
     begin
          FSMoyenTransport.EditCodeTiers.Text:=FSMoyenTransport.TableauListeMouvement.Cells[9,FSMoyenTransport.TableauListeMouvement.Row];
     end;

     if(FSMoyenTransport.EditTypeFiche.Text='Prélèvement')then
     begin
          FSMoyenTransport.EditCodeTiers.Text:=FSMoyenTransport.TableauListeMouvement.Cells[4,FSMoyenTransport.TableauListeMouvement.Row];
          FSMoyenTransport.EditMatriculeEffectif.Text:=FSMoyenTransport.TableauListeMouvement.Cells[10,FSMoyenTransport.TableauListeMouvement.Row];
     end;
     
     if(FSMoyenTransport.RBAfficherTous.Checked=true)then
     begin
          NumMovementPrelevement:='';
          NumFiche:='';
          CodeTiers:='';
          MatriculeEffectif:='';

          ProcListeMoyenTransport(FSMoyenTransport.TableauMoyenTransport,TypeFiche,NumMovementPrelevement,NumFiche,MatriculeEffectif,CodeTiers);
     end
     else
     begin
          NumMovementPrelevement:=FSMoyenTransport.EditNumMovementPrelevement.Text;
          NumFiche:=FSMoyenTransport.EditNumFiche.Text;
          CodeTiers:=FSMoyenTransport.EditCodeTiers.Text;
          MatriculeEffectif:=FSMoyenTransport.EditMatriculeEffectif.Text;

          if((NumMovementPrelevement<>'')and(NumFiche<>''))
          then ProcListeMoyenTransport(FSMoyenTransport.TableauMoyenTransport,TypeFiche,NumMovementPrelevement,NumFiche,MatriculeEffectif,CodeTiers)
          else
          begin
               FSMoyenTransport.TableauMoyenTransport.RowCount:=2;
               FSMoyenTransport.TableauMoyenTransport.Rows[1].Text:='';
          end;
     end;

     AfficherInfoLabelMoyenTransport(FSMoyenTransport.TableauMoyenTransport.Row);
end;

procedure TFSMoyenTransport.TableauMoyenTransportClick(Sender: TObject);
begin
     FSMoyenTransport.AfficheOperationMoyenTransport.Visible:=false;
     AfficherInfoLabelMoyenTransport(FSMoyenTransport.TableauMoyenTransport.Row);
end;

procedure TFSMoyenTransport.BitOperationMoyenTransportClick(
  Sender: TObject);
var   TypeFiche,NumMovementPrelevement,NumFiche,MatriculeEffectif,CodeTiers:string; OKMoyenTransport:boolean;
begin
     TypeFiche:=FSMoyenTransport.EditTypeFiche.Text;

     if(FSMoyenTransport.BitOperationMoyenTransport.Caption='Valider')then
     begin
          ValiderMoyenTransport(FSMoyenTransport.EditPositionMoyenTransport.Text,
                                FSMoyenTransport.EditTypeFicheValider.Text,
                                FSMoyenTransport.EditNumMovementPrelevementValider.Text,
                                FSMoyenTransport.EditNumFicheValider.Text,
                                FSMoyenTransport.EditMoyenTransport.Text,
                                FSMoyenTransport.EditMatriculeTransport.Text,
                                FSMoyenTransport.EditNomChauffeur.Text,
                                FSMoyenTransport.EditPrenomChauffeur.Text,
                                FSMoyenTransport.EditPieceIdentite.Text,
                                FSMoyenTransport.EditCodeTiersValider.Text,
                                FSMoyenTransport.EditMatriculeEffectifValider.Text);
     end;

     if(FSMoyenTransport.BitOperationMoyenTransport.Caption='Supprimer')then
     begin
          DeleteFMoyenTransport(FSMoyenTransport.EditPositionMoyenTransport.Text,FSMoyenTransport.EditTypeFicheValider.Text,FSMoyenTransport.EditNumMovementPrelevementValider.Text,OKMoyenTransport);
     end;

     if(FSMoyenTransport.RBAfficherTous.Checked=true)then
     begin
          NumMovementPrelevement:='';
          NumFiche:='';
          CodeTiers:='';
          MatriculeEffectif:='';
     end
     else
     begin
          NumMovementPrelevement:=FSMoyenTransport.EditNumMovementPrelevementValider.Text;
          NumFiche:=FSMoyenTransport.EditNumFicheValider.Text;
          CodeTiers:='';
          MatriculeEffectif:=FSMoyenTransport.EditMatriculeEffectif.Text;
     end;


     if(FSMoyenTransport.AfficheOperationMoyenTransport.Left<>8)then
     begin
          ProcListeMoyenTransport(FSMoyenTransport.TableauMoyenTransport,TypeFiche,NumMovementPrelevement,NumFiche,MatriculeEffectif,CodeTiers);
          AfficherInfoLabelMoyenTransport(FSMoyenTransport.TableauMoyenTransport.Row);
          FSMoyenTransport.AfficheOperationMoyenTransport.Visible:=false;
     end
     else
     begin
          FSMoyenTransport.AfficheOperationMoyenTransport.Visible:=false;
          FSMoyenTransport.Close;

          if(FSFicheSaisie.Showing)then
          begin
               AfficherDetailMoyenTransport('','Mouvement',FSFicheSaisie.EditPositionMouvement.Text,FSFicheSaisie.EditOrdreListeMouvement.Text,FSMoyenTransport.EditMatriculeEffectif.Text,FSMoyenTransport.EditCodeTiers.Text,
                                            FSFicheSaisie.EditPositionMoyenTransport,
                                            FSFicheSaisie.EditTypeFiche,
                                            FSFicheSaisie.EditNumMovementPrelevement,
                                            FSFicheSaisie.EditNumFiche,
                                            FSFicheSaisie.EditMatriculeEffectifValider,
                                            FSFicheSaisie.EditMoyenTransport,
                                            FSFicheSaisie.EditMatriculeTransport,
                                            FSFicheSaisie.EditNomChauffeur,
                                            FSFicheSaisie.EditPrenomChauffeur,
                                            FSFicheSaisie.EditPieceIdentite,
                                            FSPrelevement.EditCodeTiersValider);

              FSFicheSaisie.EditInfoMoyenTransport.Text:=FSFicheSaisie.EditMatriculeTransport.Text;
          end;

          if(FSPrelevement.Showing)then
          begin
               AfficherDetailMoyenTransport('','Prélèvement',FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditNumPrelevementUniteFonds.Text,FSPrelevement.EditMatricule.Text,FSPrelevement.EditCodeTiers.Text,
                                  FSPrelevement.EditPositionMoyenTransport,
                                  FSPrelevement.EditTypeFiche,
                                  FSPrelevement.EditNumMovementPrelevement,
                                  FSPrelevement.EditNumFiche,
                                  FSPrelevement.EditMatriculeEffectifValider,
                                  FSPrelevement.EditMoyenTransport,
                                  FSPrelevement.EditMatriculeTransport,
                                  FSPrelevement.EditNomChauffeur,
                                  FSPrelevement.EditPrenomChauffeur,
                                  FSPrelevement.EditPieceIdentite,
                                  FSPrelevement.EditCodeTiersValider);
          end;
     end;

end;

procedure TFSMoyenTransport.BitBtn2Click(Sender: TObject);
begin
     if(FSMoyenTransport.AfficheOperationMoyenTransport.Left<>8)
     then FSMoyenTransport.AfficheOperationMoyenTransport.Visible:=false
     else
     begin
          FSMoyenTransport.AfficheOperationMoyenTransport.Visible:=false;
          FSMoyenTransport.Close;
     end;
end;

procedure TFSMoyenTransport.EditPositionMoyenTransportKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSMoyenTransport.EditMoyenTransport.SetFocus;
     end;
end;

procedure TFSMoyenTransport.EditMoyenTransportKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSMoyenTransport.EditMatriculeTransport.SetFocus;
     end;
end;

procedure TFSMoyenTransport.EditMatriculeTransportKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSMoyenTransport.EditNomChauffeur.SetFocus;
     end;
end;

procedure TFSMoyenTransport.EditNomChauffeurKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSMoyenTransport.EditPrenomChauffeur.SetFocus;
     end;
end;

procedure TFSMoyenTransport.EditPrenomChauffeurKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSMoyenTransport.EditPieceIdentite.SetFocus;
     end;
end;

procedure TFSMoyenTransport.EditPieceIdentiteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSMoyenTransport.BitOperationMoyenTransport.SetFocus;
     end;
end;

procedure TFSMoyenTransport.TableauMoyenTransportKeyPress(Sender: TObject;
  var Key: Char);
begin
     if(FSMoyenTransport.EditNumMovementPrelevement.Text='')or(FSMoyenTransport.EditNumFiche.Text='')then
     begin
          if(FSMoyenTransport.EditNumMovementPrelevement.Text='')then
          begin
               showmessage('Veuillez indiquer le Mouvement !');
               FSMoyenTransport.TableauMouvement.SetFocus;
          end;

          if(FSMoyenTransport.EditNumFiche.Text='')then
          begin
               showmessage('Veuillez indiquer le détail mouvement');
               FSMoyenTransport.TableauListeMouvement.SetFocus;
          end;

          exit;
     end;

     if key in['n','N']then
     begin
          FSMoyenTransport.AfficheOperationMoyenTransport.Visible:=true;
          FSMoyenTransport.BitOperationMoyenTransport.Kind:=bkAll;
          FSMoyenTransport.BitOperationMoyenTransport.Caption:='Valider';

          FSMoyenTransport.EditTypeFicheValider.Text:=FSMoyenTransport.EditTypeFiche.Text;
          FSMoyenTransport.EditNumMovementPrelevementValider.Text:=FSMoyenTransport.EditNumMovementPrelevement.Text;
          FSMoyenTransport.EditNumFicheValider.Text:=FSMoyenTransport.EditNumFiche.Text;
          FSMoyenTransport.EditCodeTiersValider.Text:=FSMoyenTransport.EditCodeTiers.Text;
          FSMoyenTransport.EditMatriculeEffectifValider.Text:=FSMoyenTransport.EditMatriculeEffectif.Text;

          FSMoyenTransport.EditPositionMoyenTransport.Text:='';
          FSMoyenTransport.EditMoyenTransport.Text:='';
          FSMoyenTransport.EditMatriculeTransport.Text:='';
          FSMoyenTransport.EditNomChauffeur.Text:='';
          FSMoyenTransport.EditPrenomChauffeur.Text:='';
          FSMoyenTransport.EditPieceIdentite.Text:='';

          FSMoyenTransport.EditMoyenTransport.SetFocus;
     end;

     if key in['m','M']then
     begin
          FSMoyenTransport.AfficheOperationMoyenTransport.Visible:=true;
          FSMoyenTransport.BitOperationMoyenTransport.Kind:=bkAll;
          FSMoyenTransport.BitOperationMoyenTransport.Caption:='Valider';

          FSMoyenTransport.EditTypeFicheValider.Text:=FSMoyenTransport.EditTypeFiche.Text;
          FSMoyenTransport.EditNumMovementPrelevementValider.Text:=FSMoyenTransport.EditNumMovementPrelevement.Text;
          FSMoyenTransport.EditNumFicheValider.Text:=FSMoyenTransport.EditNumFiche.Text;
          FSMoyenTransport.EditCodeTiersValider.Text:=FSMoyenTransport.EditCodeTiers.Text;
          FSMoyenTransport.EditMatriculeEffectifValider.Text:=FSMoyenTransport.EditMatriculeEffectif.Text;

          FSMoyenTransport.EditPositionMoyenTransport.Text:=FSMoyenTransport.TableauMoyenTransport.Cells[1,FSMoyenTransport.TableauMoyenTransport.Row];
          FSMoyenTransport.EditMoyenTransport.Text:=FSMoyenTransport.TableauMoyenTransport.Cells[5,FSMoyenTransport.TableauMoyenTransport.Row];
          FSMoyenTransport.EditMatriculeTransport.Text:=FSMoyenTransport.TableauMoyenTransport.Cells[6,FSMoyenTransport.TableauMoyenTransport.Row];
          FSMoyenTransport.EditNomChauffeur.Text:=FSMoyenTransport.TableauMoyenTransport.Cells[7,FSMoyenTransport.TableauMoyenTransport.Row];
          FSMoyenTransport.EditPrenomChauffeur.Text:=FSMoyenTransport.TableauMoyenTransport.Cells[8,FSMoyenTransport.TableauMoyenTransport.Row];
          FSMoyenTransport.EditPieceIdentite.Text:=FSMoyenTransport.TableauMoyenTransport.Cells[9,FSMoyenTransport.TableauMoyenTransport.Row];
     end;

     if key in['s','S']then
     begin
          FSMoyenTransport.AfficheOperationMoyenTransport.Visible:=true;
          FSMoyenTransport.BitOperationMoyenTransport.Kind:=bkCancel;
          FSMoyenTransport.BitOperationMoyenTransport.Caption:='Supprimer';

          FSMoyenTransport.EditTypeFicheValider.Text:=FSMoyenTransport.EditTypeFiche.Text;
          FSMoyenTransport.EditNumMovementPrelevementValider.Text:=FSMoyenTransport.EditNumMovementPrelevement.Text;
          FSMoyenTransport.EditNumFicheValider.Text:=FSMoyenTransport.EditNumFiche.Text;
          FSMoyenTransport.EditCodeTiersValider.Text:=FSMoyenTransport.EditCodeTiers.Text;
          FSMoyenTransport.EditMatriculeEffectifValider.Text:=FSMoyenTransport.EditMatriculeEffectif.Text;

          FSMoyenTransport.EditPositionMoyenTransport.Text:=FSMoyenTransport.TableauMoyenTransport.Cells[1,FSMoyenTransport.TableauMoyenTransport.Row];
          FSMoyenTransport.EditMoyenTransport.Text:=FSMoyenTransport.TableauMoyenTransport.Cells[5,FSMoyenTransport.TableauMoyenTransport.Row];
          FSMoyenTransport.EditMatriculeTransport.Text:=FSMoyenTransport.TableauMoyenTransport.Cells[6,FSMoyenTransport.TableauMoyenTransport.Row];
          FSMoyenTransport.EditNomChauffeur.Text:=FSMoyenTransport.TableauMoyenTransport.Cells[7,FSMoyenTransport.TableauMoyenTransport.Row];
          FSMoyenTransport.EditPrenomChauffeur.Text:=FSMoyenTransport.TableauMoyenTransport.Cells[8,FSMoyenTransport.TableauMoyenTransport.Row];
          FSMoyenTransport.EditPieceIdentite.Text:=FSMoyenTransport.TableauMoyenTransport.Cells[9,FSMoyenTransport.TableauMoyenTransport.Row];
     end;
end;

Procedure ValiderMoyenTransport(PositionMoyenTransport,TypeFiche,NumMovementPrelevement,NumFiche,MoyenTransport,MatriculeTransport,NomChauffeur,PrenomChauffeur,PieceIdentite,CodeTiers,MatriculeEffectif:string);
var  i,iSelect:integer;  OKMoyenTransport:boolean;  Archive,PositionPrelevement:string;
begin
     if(TypeFiche<>'')then
     begin
          Archive:='';
          if(TypeFiche='Prélèvement')then
          begin
               RPrelevement:=ChercherPrelevement(strtointeger(NumMovementPrelevement),ExerciceAnnee,'',PositionPrelevement);
               if(RPrelevement.Archiver=true)then Archive:='Archive';
          end;

          OpenFParc(RParc);
          ChMoyenTransport:=RParc.Parcours+'\'+Exercice+'F'+Archive+'MoyenTransport'+TypeFiche;
          assignfile(FMoyenTransport,ChMoyenTransport);
          if FileExists(ChMoyenTransport)then
          Reset(FMoyenTransport)
          else Rewrite(FMoyenTransport);
          Seek(FMoyenTransport,0);
          i:=0;
          OKMoyenTransport:=false;
          while not eof(FMoyenTransport)and(OKMoyenTransport=false)do
          begin
               read(FMoyenTransport,RMoyenTransport);
               if(inttostr(RMoyenTransport.PositionMoyenTransport)=PositionMoyenTransport)then
               begin
                    OKMoyenTransport:=true;
                    iSelect:=i;
               end;
          i:=i+1;
          end;

          if(OKMoyenTransport=true)then i:=iSelect;
          RMoyenTransport.PositionMoyenTransport:=i;
          RMoyenTransport.TypeFiche:=TypeFiche;
          RMoyenTransport.NumMovementPrelevement:=strtointeger(NumMovementPrelevement);
          RMoyenTransport.MatriculeEffectif:=MatriculeEffectif;
          RMoyenTransport.NumFiche:=strtointeger(NumFiche);
          RMoyenTransport.CodeTiers:=CodeTiers;
          RMoyenTransport.MoyenTransport:=MoyenTransport;
          RMoyenTransport.MatriculeTransport:=MatriculeTransport;
          RMoyenTransport.NomChauffeur:=NomChauffeur;
          RMoyenTransport.PrenomChauffeur:=PrenomChauffeur;
          RMoyenTransport.PieceIdentite:=PieceIdentite;
          Seek(FMoyenTransport,i);
          write(FMoyenTransport,RMoyenTransport);

          CloseFile(FMoyenTransport);
     end;
end;

Procedure AjouterMoyenTransport(PositionMoyenTransport,TypeFiche,NumMovementPrelevement,NumFiche,MatriculeEffectif,MoyenTransport,MatriculeTransport,NomChauffeur,PrenomChauffeur,PieceIdentite,CodeTiers:string);
begin
     FSMoyenTransport.Height:=FSMoyenTransport.AfficheOperationMoyenTransport.Height+50;
     FSMoyenTransport.Width:=FSMoyenTransport.AfficheOperationMoyenTransport.Width+30;

     FSMoyenTransport.AfficheSupportMoyenTransport.Height:=FSMoyenTransport.Height-50;
     FSMoyenTransport.AfficheSupportMoyenTransport.Width:=FSMoyenTransport.Width-30;

     FSMoyenTransport.AfficheOperationMoyenTransport.Visible:=true;
     FSMoyenTransport.AfficheOperationMoyenTransport.Left:=8;
     FSMoyenTransport.AfficheOperationMoyenTransport.Top:=8;

     FSMoyenTransport.Position:=poDesktopCenter;
     FSMoyenTransport.Show;      

     FSMoyenTransport.BitOperationMoyenTransport.Kind:=bkAll;
     FSMoyenTransport.BitOperationMoyenTransport.Caption:='Valider';

     FSMoyenTransport.EditTypeFicheValider.Text:=TypeFiche;
     FSMoyenTransport.EditNumMovementPrelevementValider.Text:=NumMovementPrelevement;
     FSMoyenTransport.EditNumFicheValider.Text:=NumFiche;
     FSMoyenTransport.EditCodeTiersValider.Text:=CodeTiers;
     FSMoyenTransport.EditMatriculeEffectifValider.Text:=MatriculeEffectif;

     FSMoyenTransport.EditPositionMoyenTransport.Text:=PositionMoyenTransport;
     FSMoyenTransport.EditMoyenTransport.Text:=MoyenTransport;
     FSMoyenTransport.EditMatriculeTransport.Text:=MatriculeTransport;
     FSMoyenTransport.EditNomChauffeur.Text:=NomChauffeur;
     FSMoyenTransport.EditPrenomChauffeur.Text:=PrenomChauffeur;
     FSMoyenTransport.EditPieceIdentite.Text:=PieceIdentite;

     FSMoyenTransport.EditMoyenTransport.SetFocus;
end;

Procedure AfficherDetailMoyenTransport(PositionMoyenTransport,TypeFiche,NumMovementPrelevement,NumFiche,MatriculeEffectif,CodeTiers:string; var EditProcPositionMoyenTransport,EditProcTypeFiche,EditProcNumMovementPrelevement,EditProcNumFiche,EditProcMatriculeEffectif,EditProcMoyenTransport,EditProcMatriculeTransport,EditProcNomChauffeur,EditProcPrenomChauffeur,EditProcPieceIdentite,EditProcCodeTiers:TEdit);
var  OKMoyenTransport,Archive,PositionPrelevement:string;
begin
     EditProcPositionMoyenTransport.Text:='';
     EditProcTypeFiche.Text:=TypeFiche;
     EditProcNumMovementPrelevement.Text:=NumMovementPrelevement;
     EditProcNumFiche.Text:=NumFiche;
     EditProcMatriculeEffectif.Text:=MatriculeEffectif;
     EditProcMoyenTransport.Text:='';
     EditProcMatriculeTransport.Text:='';
     EditProcNomChauffeur.Text:='';
     EditProcPrenomChauffeur.Text:='';
     EditProcPieceIdentite.Text:='';
     EditProcCodeTiers.Text:=CodeTiers;

     if(TypeFiche<>'')then
     begin
          if(PositionMoyenTransport<>'')
          or(NumMovementPrelevement<>'')
          or(NumFiche<>'')
          or(MatriculeEffectif<>'')
          or(CodeTiers<>'')
          then
          begin
               Archive:='';
               if(TypeFiche='Prélèvement')then
               begin
                    RPrelevement:=ChercherPrelevement(strtointeger(NumMovementPrelevement),ExerciceAnnee,'',PositionPrelevement);
                    if(RPrelevement.Archiver=true)then Archive:='Archive';
               end;

               OpenFParc(RParc);
               ChMoyenTransport:=RParc.Parcours+'\'+Exercice+'F'+Archive+'MoyenTransport'+TypeFiche;
               assignfile(FMoyenTransport,ChMoyenTransport);
               if FileExists(ChMoyenTransport)then
               begin
                    try;
                    Reset(FMoyenTransport);
                    Seek(FMoyenTransport,0);
                    OKMoyenTransport:='false';
                    while not eof(FMoyenTransport)and((OKMoyenTransport='false')or(OKMoyenTransport=''))do
                    begin
                         read(FMoyenTransport,RMoyenTransport);  Application.ProcessMessages;

                         OKMoyenTransport:='';

                         if(TypeFiche<>'')and((OKMoyenTransport='true')or(OKMoyenTransport=''))then
                         begin
                              if(RMoyenTransport.TypeFiche=TypeFiche)
                              then OKMoyenTransport:='true'
                              else OKMoyenTransport:='false';
                         end
                         else if(TypeFiche='')then OKMoyenTransport:='false';

                         if(PositionMoyenTransport<>'')and((OKMoyenTransport='true')or(OKMoyenTransport=''))then
                         begin
                              if(inttostr(RMoyenTransport.PositionMoyenTransport)=PositionMoyenTransport)
                              then OKMoyenTransport:='true'
                              else OKMoyenTransport:='false';
                         end;

                         if(NumMovementPrelevement<>'')and((OKMoyenTransport='true')or(OKMoyenTransport=''))then
                         begin
                              if(inttostr(RMoyenTransport.NumMovementPrelevement)=NumMovementPrelevement)
                              then OKMoyenTransport:='true'
                              else OKMoyenTransport:='false';
                         end
                         else if(NumMovementPrelevement='')then OKMoyenTransport:='false';

                         if(NumFiche<>'')and((OKMoyenTransport='true')or(OKMoyenTransport=''))then
                         begin
                              if(inttostr(RMoyenTransport.NumFiche)=NumFiche)
                              then OKMoyenTransport:='true'
                              else OKMoyenTransport:='false';
                         end
                         else if(NumFiche='')then OKMoyenTransport:='false';

                         if(MatriculeEffectif<>'')and((OKMoyenTransport='true')or(OKMoyenTransport=''))then
                         begin
                              if(RMoyenTransport.MatriculeEffectif=MatriculeEffectif)
                              then OKMoyenTransport:='true'
                              else OKMoyenTransport:='false';
                         end
                         else
                         if(TypeFiche='Prélèvement')then if(MatriculeEffectif='')then OKMoyenTransport:='false';

                         if(CodeTiers<>'')and((OKMoyenTransport='true')or(OKMoyenTransport=''))then
                         begin
                              if(RMoyenTransport.CodeTiers=CodeTiers)
                              then OKMoyenTransport:='true'
                              else OKMoyenTransport:='false';
                         end
                         else if(CodeTiers='')then OKMoyenTransport:='false';

                         if(OKMoyenTransport='true')then
                         begin
                              EditProcPositionMoyenTransport.Text:=inttostr(RMoyenTransport.PositionMoyenTransport);
                              EditProcTypeFiche.Text:=RMoyenTransport.TypeFiche;
                              EditProcNumMovementPrelevement.Text:=inttostr(RMoyenTransport.NumMovementPrelevement);
                              EditProcNumFiche.Text:=inttostr(RMoyenTransport.NumFiche);
                              EditProcMatriculeEffectif.Text:=RMoyenTransport.MatriculeEffectif;
                              EditProcMoyenTransport.Text:=RMoyenTransport.MoyenTransport;
                              EditProcMatriculeTransport.Text:=RMoyenTransport.MatriculeTransport;
                              EditProcNomChauffeur.Text:=RMoyenTransport.NomChauffeur;
                              EditProcPrenomChauffeur.Text:=RMoyenTransport.PrenomChauffeur;
                              EditProcPieceIdentite.Text:=RMoyenTransport.PieceIdentite;
                              EditProcCodeTiers.Text:=RMoyenTransport.CodeTiers;
                         end;
                    end;
                    finally
                    CloseFile(FMoyenTransport);
                    end;
               end;
          end;
     end;
end;

procedure TFSMoyenTransport.EditDateDebutChange(Sender: TObject);
var  TypeFiche,NumMovementPrelevement,NumFiche,MatriculeEffectif,CodeTiers,PLMBegin,PLMEnd:string;
begin
     TypeFiche:=FSMoyenTransport.EditTypeFiche.Text;

     if(FSMoyenTransport.EditTypeFiche.Text='Mouvement')then
     begin
          PLMBegin:=FSMoyenTransport.TableauMouvement.Cells[21,FSMoyenTransport.TableauMouvement.Row];
          PLMEnd:=FSMoyenTransport.TableauMouvement.Cells[22,FSMoyenTransport.TableauMouvement.Row];
          ProcAfficheListeMouvement(FSMoyenTransport.TableauListeMouvement,FSMoyenTransport.TableauMouvement.Cells[0,FSMoyenTransport.TableauMouvement.Row],FSMoyenTransport.TableauMouvement.Cells[1,FSMoyenTransport.TableauMouvement.Row],PLMBegin,PLMEnd,datetostr(FSMoyenTransport.EditDateDebut.Date),datetostr(FSMoyenTransport.EditDateFin.Date),'','','','','','','','',false,false);
     end;

     if(FSMoyenTransport.EditTypeFiche.Text='Prélèvement')then
     begin
          
     end;

     if(FSMoyenTransport.RBAfficherTous.Checked=true)then
     begin
          NumMovementPrelevement:='';
          NumFiche:='';
          CodeTiers:='';
          MatriculeEffectif:='';
     end
     else
     begin
          NumMovementPrelevement:=FSMoyenTransport.TableauMouvement.Cells[1,FSMoyenTransport.TableauMouvement.Row];
          NumFiche:=FSMoyenTransport.TableauListeMouvement.Cells[1,FSMoyenTransport.TableauListeMouvement.Row];
          CodeTiers:='';
          MatriculeEffectif:=FSMoyenTransport.EditMatriculeEffectif.Text;
     end;

     ProcListeMoyenTransport(FSMoyenTransport.TableauMoyenTransport,TypeFiche,NumMovementPrelevement,NumFiche,MatriculeEffectif,CodeTiers);
end;

procedure TFSMoyenTransport.RBAfficherTousClick(Sender: TObject);
var  TypeFiche,NumMovementPrelevement,NumFiche,MatriculeEffectif,CodeTiers:string;
begin
     TypeFiche:=FSMoyenTransport.EditTypeFiche.Text;

     if(FSMoyenTransport.RBAfficherTous.Checked=true)then
     begin
          NumMovementPrelevement:='';
          NumFiche:='';
          CodeTiers:='';
          MatriculeEffectif:='';
     end
     else
     begin            
          NumMovementPrelevement:=FSMoyenTransport.EditNumMovementPrelevement.Text;
          NumFiche:=FSMoyenTransport.EditNumFiche.Text;
          CodeTiers:='';
          MatriculeEffectif:=FSMoyenTransport.EditMatriculeEffectif.Text;
     end;

     ProcListeMoyenTransport(FSMoyenTransport.TableauMoyenTransport,TypeFiche,NumMovementPrelevement,NumFiche,MatriculeEffectif,CodeTiers);
end;

procedure TFSMoyenTransport.EditValeurPrecisKeyPress(Sender: TObject;
  var Key: Char);
begin
     key:=#0;
end;

procedure TFSMoyenTransport.EditValeurPrecisChange(Sender: TObject);
var  TypeFiche,NumMovementPrelevement,NumFiche,MatriculeEffectif,CodeTiers,FichierConcerne,ValeursPrecis,PLMBegin,PLMEnd:string;
begin
     FSMoyenTransport.EditNumMovementPrelevement.Text:=FSMoyenTransport.TableauMouvement.Cells[1,FSMoyenTransport.TableauMouvement.Row];
     FSMoyenTransport.EditNumFiche.Text:='';
     TypeFiche:=FSMoyenTransport.EditTypeFiche.Text;

     if(FSMoyenTransport.EditTypeFiche.Text='Mouvement')then
     begin
          PLMBegin:=FSMoyenTransport.TableauMouvement.Cells[21,FSMoyenTransport.TableauMouvement.Row];
          PLMEnd:=FSMoyenTransport.TableauMouvement.Cells[22,FSMoyenTransport.TableauMouvement.Row];                                                                
          ProcAfficheListeMouvement(FSMoyenTransport.TableauListeMouvement,FSMoyenTransport.TableauMouvement.Cells[0,FSMoyenTransport.TableauMouvement.Row],FSMoyenTransport.TableauMouvement.Cells[1,FSMoyenTransport.TableauMouvement.Row],PLMBegin,PLMEnd,datetostr(FSMoyenTransport.EditDateDebut.Date),datetostr(FSMoyenTransport.EditDateFin.Date),'','','','','','','','',false,false);
     end;

     if(FSMoyenTransport.EditTypeFiche.Text='Prélèvement')then
     begin
          if(FSMoyenTransport.EditValeurPrecis.Text='Prélèvement Tiers')then ValeursPrecis:='NON';
          if(FSMoyenTransport.EditValeurPrecis.Text='Prélèvement Divers')then ValeursPrecis:='OUI';
          if(FSMoyenTransport.EditValeurPrecis.Text='Tous Prélèvements')then ValeursPrecis:='';
          ListePrelevementUnitesFonds(FSMoyenTransport.TableauListeMouvement,FSMoyenTransport.TableauMouvement.Cells[2,FSMoyenTransport.TableauMouvement.Row],FSMoyenTransport.TableauMouvement.Cells[5,FSMoyenTransport.TableauMouvement.Row],ValeursPrecis,datetostr(FSMoyenTransport.EditDateDebut.Date),datetostr(FSMoyenTransport.EditDateFin.Date));
     end;

     if(FSMoyenTransport.RBAfficherTous.Checked=true)then
     begin
          NumMovementPrelevement:='';
          NumFiche:='';
          CodeTiers:='';
          MatriculeEffectif:='';
     end
     else
     begin
          NumMovementPrelevement:=FSMoyenTransport.EditNumMovementPrelevement.Text;
          NumFiche:='';
          CodeTiers:='';
          MatriculeEffectif:=FSMoyenTransport.EditMatriculeEffectif.Text;
     end;

     ProcListeMoyenTransport(FSMoyenTransport.TableauMoyenTransport,TypeFiche,NumMovementPrelevement,NumFiche,MatriculeEffectif,CodeTiers);
end;

procedure TFSMoyenTransport.EditExerciceSelect(Sender: TObject);
begin
     FSMoyenTransport.EditDateDebut.Date:=strtodate('01/01/'+FSMoyenTransport.EditExercice.Text);
     FSMoyenTransport.EditDateFin.Date:=strtodate('31/12/'+FSMoyenTransport.EditExercice.Text);

     InitialisationMoyenTransport;
end;

Procedure InitialisationMoyenTransport;
var  TypeFiche,NumMovementPrelevement,NumFiche,MatriculeEffectif,CodeTiers:string;
begin
     FSMoyenTransport.AfficheOperationMoyenTransport.Visible:=false;

     AfficherInfoLabelMoyenTransport(FSMoyenTransport.TableauMoyenTransport.Row);

     FSMoyenTransport.EditNumMovementPrelevement.Text:='';
     FSMoyenTransport.EditNumFiche.Text:='';
     FSMoyenTransport.EditCodeTiers.Text:='';
     FSMoyenTransport.EditMatriculeEffectif.Text:='';
     TypeFiche:=FSMoyenTransport.EditTypeFiche.Text;

     FSMoyenTransport.TableauMouvement.RowCount:=2;
     FSMoyenTransport.TableauMouvement.Rows[1].Text:='';

     FSMoyenTransport.TableauListeMouvement.RowCount:=2;
     FSMoyenTransport.TableauListeMouvement.Rows[1].Text:='';

     FSMoyenTransport.TableauMoyenTransport.RowCount:=2;
     FSMoyenTransport.TableauMoyenTransport.Rows[1].Text:='';     

     if(FSMoyenTransport.EditTypeFiche.Text='Mouvement')then
     begin
          FSMoyenTransport.AfficheTitreMouvementPrelevement.Caption:='Liste des mouvements';
          FSMoyenTransport.AfficheNumFiche.Caption:='Liste des mouvements commerciaux';
          ProcListeMouvement(FSMoyenTransport.TableauMouvement,'','','','');

          FSMoyenTransport.TableauMouvement.ColWidths[0]:=0;
          FSMoyenTransport.TableauMouvement.ColWidths[1]:=0;
          FSMoyenTransport.TableauMouvement.FixedCols:=3;
          FSMoyenTransport.TableauMouvement.FixedRows:=1;
     end;

     if(FSMoyenTransport.EditTypeFiche.Text='Prélèvement')then
     begin
          FSMoyenTransport.AfficheTitreMouvementPrelevement.Caption:='Liste des Prélèvement';
          FSMoyenTransport.AfficheNumFiche.Caption:='Liste des Prélèvement unités de fonds ';
          ListePrelevement(FSMoyenTransport.TableauMouvement,datetostr(FSMoyenTransport.EditDateDebut.Date),datetostr(FSMoyenTransport.EditDateFin.Date),'','','',FSListePrelevement.RBAbregerTitreRubrique.Checked);

          FSMoyenTransport.TableauMouvement.ColWidths[0]:=0;
          FSMoyenTransport.TableauMouvement.ColWidths[1]:=0;
          FSMoyenTransport.TableauMouvement.ColWidths[3]:=0;
          FSMoyenTransport.TableauMouvement.ColWidths[4]:=0;
          FSMoyenTransport.TableauMouvement.FixedCols:=5;

          FSMoyenTransport.TableauMouvement.RowHeights[1]:=0;
          FSMoyenTransport.TableauMouvement.FixedRows:=2;
          FSMoyenTransport.TableauMouvement.RowCount:=FSMoyenTransport.TableauMouvement.RowCount-2;             
     end;

     FSMoyenTransport.TableauListeMouvement.RowCount:=2;
     FSMoyenTransport.TableauListeMouvement.Rows[1].Text:='';

     if(FSMoyenTransport.RBAfficherTous.Checked=true)then
     begin
          NumMovementPrelevement:='';
          NumFiche:='';
          CodeTiers:='';
          MatriculeEffectif:='';
     end
     else
     begin
          NumMovementPrelevement:='';
          NumFiche:='';
          CodeTiers:='';
          MatriculeEffectif:=FSMoyenTransport.EditMatriculeEffectif.Text;
     end;

     ProcListeMoyenTransport(FSMoyenTransport.TableauMoyenTransport,TypeFiche,NumMovementPrelevement,NumFiche,MatriculeEffectif,CodeTiers);
end;

procedure TFSMoyenTransport.TableauMoyenTransportDblClick(Sender: TObject);
begin
     FSMoyenTransport.EditNumMovementPrelevement.Text:=FSMoyenTransport.TableauMoyenTransport.Cells[3,FSMoyenTransport.TableauMoyenTransport.Row];
     FSMoyenTransport.EditNumFiche.Text:=FSMoyenTransport.TableauMoyenTransport.Cells[4,FSMoyenTransport.TableauMoyenTransport.Row];
end;

Procedure AfficherInfoLabelMoyenTransport(ARow:integer);
begin
     FSMoyenTransport.LabelEditMoyenTransport.Caption:=FSMoyenTransport.TableauMoyenTransport.Cells[5,ARow];
     FSMoyenTransport.LabelEditMatriculeTransport.Caption:=FSMoyenTransport.TableauMoyenTransport.Cells[6,ARow];
     FSMoyenTransport.LabelEditNomChauffeur.Caption:=FSMoyenTransport.TableauMoyenTransport.Cells[7,ARow];
     FSMoyenTransport.LabelEditPrenomChauffeur.Caption:=FSMoyenTransport.TableauMoyenTransport.Cells[8,ARow];
     FSMoyenTransport.LabelEditPieceIdentite.Caption:=FSMoyenTransport.TableauMoyenTransport.Cells[9,ARow];
end;

procedure TFSMoyenTransport.EditTiersTypeProcesSelect(Sender: TObject);
begin
     ListeTypeFichierTiersBox(FSMoyenTransport.EditTiersTypeProces.Text,'','',EditTiersFichierConserne,FSMoyenTransport.TitreEditTiersFichierConserne);
end;

procedure TFSMoyenTransport.EditTiersFichierConserneSelect(
  Sender: TObject);
begin
     FSMoyenTransport.TitreEditTiers.Caption:=Lastlaters(FSMoyenTransport.EditTiersFichierConserne.Text,longueur(FSMoyenTransport.EditTiersFichierConserne.Text)-1)
end;

procedure TFSMoyenTransport.EditInfoMoyenTransportEnter(Sender: TObject);
begin
     FSMoyenTransport.TableauTiersMT.Visible:=false;
     FSMoyenTransport.TableauMoyenTransportMT.Visible:=true;
     FSMoyenTransport.EditInfoMoyenTransport.Text:='';
     ProcListeMoyenTransport(FSMoyenTransport.TableauMoyenTransportMT,'','','','',FSMoyenTransport.EditCodeTiersMT.Text);

     FSMoyenTransport.TableauMoyenTransportMT.SetFocus;
end;

procedure TFSMoyenTransport.EditTiersMTEnter(Sender: TObject);
begin
     FSMoyenTransport.EditInfoMoyenTransport.Text:='';
     FSMoyenTransport.TableauMoyenTransportMT.Visible:=false;
     FSMoyenTransport.TableauTiersMT.Visible:=true;
     FSMoyenTransport.TableauTiersMT.Top:=FSMoyenTransport.PanelTiers.Top+FSMoyenTransport.PanelTiers.Height+2;
     FSMoyenTransport.TableauTiersMT.Left:=FSMoyenTransport.PanelTiers.Left+FSMoyenTransport.EditTiersMT.Left;
     ListeTiers(FSMoyenTransport.TableauTiersMT,FSMoyenTransport.EditTiersTypeProces.Text,FSMoyenTransport.EditTiersFichierConserne.Text,'','',FSMoyenTransport.EditTiersMT.Text,true);
end;

procedure TFSMoyenTransport.TableauMoyenTransportMTKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var  C:integer; AColInfo:string;
begin
     if key in[VK_RETURN]then
     begin
          FSMoyenTransport.EditInfoMoyenTransport.Text:='';

          if(FSMoyenTransport.EditTitreInfoMoyenTransport.Text='Moyen transport')then AColInfo:='5';
          if(FSMoyenTransport.EditTitreInfoMoyenTransport.Text='Matricule')then AColInfo:='6';
          if(FSMoyenTransport.EditTitreInfoMoyenTransport.Text='Chauffeur')then AColInfo:='7;8';
          if(FSMoyenTransport.EditTitreInfoMoyenTransport.Text='Pièce Identité')then AColInfo:='9';

          for C:=1 to FSMoyenTransport.TableauMoyenTransportMT.ColCount-1 do
          begin
               if existenumintexte(inttostr(C),AColInfo)then
               if(FSMoyenTransport.EditInfoMoyenTransport.Text='')
               then FSMoyenTransport.EditInfoMoyenTransport.Text:=FSMoyenTransport.TableauMoyenTransportMT.Cells[C,FSMoyenTransport.TableauMoyenTransportMT.Row]
               else FSMoyenTransport.EditInfoMoyenTransport.Text:=FSMoyenTransport.EditInfoMoyenTransport.Text+' '+FSMoyenTransport.TableauMoyenTransportMT.Cells[C,FSMoyenTransport.TableauMoyenTransportMT.Row]
          end;

          FSMoyenTransport.TableauMoyenTransportMT.Visible:=false;

          AfficherMoyenTransportTiersMatricule(FSMoyenTransport.TableauTiersMoyenTransport,FSMoyenTransport.EditTiersTypeProces.Text,FSMoyenTransport.EditTiersFichierConserne.Text,FSMoyenTransport.EditCodeTiersMT.Text,FSMoyenTransport.EditTitreInfoMoyenTransport.Text,FSMoyenTransport.EditInfoMoyenTransport.Text,datetostr(FSMoyenTransport.EditDateDebutMT.Date),datetostr(FSMoyenTransport.EditDateFinMT.Date),FSMoyenTransport.RBAfficherTotalAnterieur.Checked);
     end;
end;

procedure TFSMoyenTransport.TableauTiersMTKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          if(FSMoyenTransport.TableauTiersMT.Cells[1,FSMoyenTransport.TableauTiersMT.Row]='Tous')then
          begin
               FSMoyenTransport.EditCodeTiersMT.Text:='';
               FSMoyenTransport.EditTiersMT.Text:='';
          end
          else
          begin
               FSMoyenTransport.EditCodeTiersMT.Text:=FSMoyenTransport.TableauTiersMT.Cells[1,FSMoyenTransport.TableauTiersMT.Row];
               FSMoyenTransport.EditTiersMT.Text:=FSMoyenTransport.TableauTiersMT.Cells[2,FSMoyenTransport.TableauTiersMT.Row];
          end;

          FSMoyenTransport.TableauTiersMT.Visible:=false;

          AfficherMoyenTransportTiersMatricule(FSMoyenTransport.TableauTiersMoyenTransport,FSMoyenTransport.EditTiersTypeProces.Text,FSMoyenTransport.EditTiersFichierConserne.Text,FSMoyenTransport.EditCodeTiersMT.Text,FSMoyenTransport.EditTitreInfoMoyenTransport.Text,FSMoyenTransport.EditInfoMoyenTransport.Text,datetostr(FSMoyenTransport.EditDateDebutMT.Date),datetostr(FSMoyenTransport.EditDateFinMT.Date),FSMoyenTransport.RBAfficherTotalAnterieur.Checked);
     end;
end;

procedure TFSMoyenTransport.TableauTiersMoyenTransportClick(Sender: TObject);
begin
     FSMoyenTransport.TableauTiersMT.Visible:=false;
     FSMoyenTransport.TableauMoyenTransportMT.Visible:=false;
     FSMoyenTransport.AfficheOptionPrint.Height:=31;
end;

Procedure InitialisationTraitementMoyenTransport;
begin
     FSMoyenTransport.TableauTiersMT.Visible:=false;
     FSMoyenTransport.TableauMoyenTransportMT.Visible:=false;
     FSMoyenTransport.EditCodeTiersMT.Text:='';
     FSMoyenTransport.EditTiersMT.Text:='';
     FSMoyenTransport.EditInfoMoyenTransport.Text:='';
end;

procedure TFSMoyenTransport.EditTiersTypeProcesEnter(Sender: TObject);
begin
     InitialisationTraitementMoyenTransport;
end;

procedure TFSMoyenTransport.EditTiersFichierConserneEnter(Sender: TObject);
begin
     InitialisationTraitementMoyenTransport;
end;

procedure TFSMoyenTransport.EditTitreInfoMoyenTransportKeyPress(
  Sender: TObject; var Key: Char);
begin
     key:=#0;
end;

Procedure AfficherMoyenTransportTiersMatricule(TableauMoyenTransportTiersMatricule:TStringGrid;  TypeProces,FichierConserne,CodeTiers,TitreInfoMoyenTransport,InfoMoyenTransport,DateDebut,DateFin:string; AfficherTotalAnterieur:boolean);
var   R,C:integer; OKMouvement:boolean;  DebitCreditTypeMouvement,NotCol:string;   TotalDebit,TotalCredit,AnterieurDebit,AnterieurCredit:real;
begin
     TableauMoyenTransportTiersMatricule.ColCount:=10;
     TableauMoyenTransportTiersMatricule.Cols[0].Text:='N°';
     TableauMoyenTransportTiersMatricule.Cols[1].Text:='Date';
     TableauMoyenTransportTiersMatricule.Cols[2].Text:='Mode Payement';
     TableauMoyenTransportTiersMatricule.Cols[3].Text:='N° Pièce';
     TableauMoyenTransportTiersMatricule.Cols[4].Text:='Transport';
     TableauMoyenTransportTiersMatricule.Cols[5].Text:='Matricule';
     TableauMoyenTransportTiersMatricule.Cols[6].Text:='Chauffeur';
     TableauMoyenTransportTiersMatricule.Cols[7].Text:='Pièce Ident.';
     TableauMoyenTransportTiersMatricule.Cols[8].Text:='Débit';
     TableauMoyenTransportTiersMatricule.Cols[9].Text:='Crédit';

     TableauMoyenTransportTiersMatricule.RowCount:=2;
     TableauMoyenTransportTiersMatricule.Rows[1].Text:='';
     R:=0;
     TotalDebit:=0;
     TotalCredit:=0;
     AnterieurDebit:=0;
     AnterieurCredit:=0;

     if(AfficherTotalAnterieur=true)then
     begin
          R:=R+1;
          TableauMoyenTransportTiersMatricule.Rows[R].Text:='';
          TableauMoyenTransportTiersMatricule.Cells[0,R]:='';
          TableauMoyenTransportTiersMatricule.Cells[1,R]:='Solde au: '+datetostr(strtodate(DateDebut)-1);
          TableauMoyenTransportTiersMatricule.Cells[2,R]:='';
          TableauMoyenTransportTiersMatricule.Cells[3,R]:='';
          TableauMoyenTransportTiersMatricule.Cells[4,R]:='';
          TableauMoyenTransportTiersMatricule.Cells[5,R]:='';
          TableauMoyenTransportTiersMatricule.Cells[6,R]:='';
          TableauMoyenTransportTiersMatricule.Cells[7,R]:='';
          TableauMoyenTransportTiersMatricule.Cells[8,R]:='';
          TableauMoyenTransportTiersMatricule.Cells[9,R]:='';
     end;
     
     OpenFParc(RParc);
     ChPrelevementUniteFonds:=RParc.Parcours+'\'+Exercice+'FArchivePrelevementUniteFonds';
     assignfile(FPrelevementUniteFonds,ChPrelevementUniteFonds);
     if FileExists(ChPrelevementUniteFonds)then
     begin
          Reset(FPrelevementUniteFonds);
          Seek(FPrelevementUniteFonds,0);
          while not eof(FPrelevementUniteFonds)do
          begin
               read(FPrelevementUniteFonds,RPrelevementUniteFonds);

               if(RPrelevementUniteFonds.TypeProces=TypeProces)
               and(RPrelevementUniteFonds.FichierConcerne=FichierConserne)
               then OKMouvement:=true
               else OKMouvement:=false;

               if(OKMouvement=true)then
               begin
                    if(CodeTiers<>'')then
                    begin
                         if(RPrelevementUniteFonds.CodeTiers=CodeTiers)
                         then OKMouvement:=true
                         else OKMouvement:=false;
                    end;
               end;

               if(OKMouvement=true)then
               begin
                    RMoyenTransport:=ChercherMoyenTransport('','Prélèvement',inttostr(RPrelevementUniteFonds.NumPrelevement),RPrelevementUniteFonds.Matricule,inttostr(RPrelevementUniteFonds.NumPrelevementUniteFonds));
                    
                    if(InfoMoyenTransport<>'')then
                    begin

                         if(TitreInfoMoyenTransport='Moyen transport')then
                         begin
                              if(RMoyenTransport.MoyenTransport=InfoMoyenTransport)
                              then OKMouvement:=true
                              else OKMouvement:=false;
                         end;

                         if(TitreInfoMoyenTransport='Moyen transport')then
                         begin
                              if(RMoyenTransport.MoyenTransport=InfoMoyenTransport)
                              then OKMouvement:=true
                              else OKMouvement:=false;
                         end;

                         if(TitreInfoMoyenTransport='Matricule')then
                         begin
                              if(RMoyenTransport.MatriculeTransport=InfoMoyenTransport)
                              then OKMouvement:=true
                              else OKMouvement:=false;
                         end;

                         if(TitreInfoMoyenTransport='Chauffeur')then
                         begin
                              if(RMoyenTransport.NomChauffeur+' '+RMoyenTransport.PrenomChauffeur=InfoMoyenTransport)
                              then OKMouvement:=true
                              else OKMouvement:=false;
                         end;

                         if(TitreInfoMoyenTransport='Pièce Identité')then
                         begin
                              if(RMoyenTransport.PieceIdentite=InfoMoyenTransport)
                              then OKMouvement:=true
                              else OKMouvement:=false;
                         end;
                    end;
               end;

               if(OKMouvement=true)then
               begin
                     DebitCreditTypeMouvement:='Débit';
                     if(DebitCreditTypeMouvement='Débit')then C:=8 else C:=9;
               end;

               if(OKMouvement=true)then
               begin
                    if(RPrelevementUniteFonds.ValeurPrecise=false)and(RPrelevementUniteFonds.ValeurPrelevement>0)
                    then OKMouvement:=true
                    else OKMouvement:=false;
               end;

               if(OKMouvement=true)then
               begin
                    if(strtodate(RPrelevementUniteFonds.DatePrelevement)>=strtodate(DateDebut))
                    and(strtodate(RPrelevementUniteFonds.DatePrelevement)<=strtodate(DateFin))
                    then
                    begin
                         OKMouvement:=true;
                    end
                    else
                    begin
                         OKMouvement:=false;
                         if(strtodate(RPrelevementUniteFonds.DatePrelevement)<strtodate(DateDebut))then
                         begin
                              if(AfficherTotalAnterieur=true)then
                              begin
                                   TableauMoyenTransportTiersMatricule.Cells[C,1]:=Vergule(floattostr(strtoreal(TableauMoyenTransportTiersMatricule.Cells[C,1])+RPrelevementUniteFonds.ValeurPrelevement),'2','C','');

                                    if(C=8)then
                                    begin
                                         AnterieurDebit:=AnterieurDebit+RPrelevementUniteFonds.ValeurPrelevement;
                                         TotalDebit:=TotalDebit+RPrelevementUniteFonds.ValeurPrelevement;
                                    end
                                    else
                                    begin
                                         AnterieurCredit:=AnterieurCredit+RPrelevementUniteFonds.ValeurPrelevement;
                                         TotalCredit:=TotalCredit+RPrelevementUniteFonds.ValeurPrelevement;
                                    end;
                              end;
                         end;
                    end;
                end;

               if(OKMouvement=true)then
               begin
                    R:=R+1;
                    TableauMoyenTransportTiersMatricule.Rows[R].Text:='';
                    TableauMoyenTransportTiersMatricule.Cells[0,R]:=inttostr(R);
                    TableauMoyenTransportTiersMatricule.Cells[1,R]:=RPrelevementUniteFonds.DatePrelevement;
                    TableauMoyenTransportTiersMatricule.Cells[2,R]:=RPrelevementUniteFonds.ModePaiement+' '+RPrelevementUniteFonds.Domiciliation;;
                    TableauMoyenTransportTiersMatricule.Cells[3,R]:=RPrelevementUniteFonds.NumPiece;
                    TableauMoyenTransportTiersMatricule.Cells[4,R]:=RMoyenTransport.MoyenTransport;
                    TableauMoyenTransportTiersMatricule.Cells[5,R]:=RMoyenTransport.MatriculeTransport;
                    TableauMoyenTransportTiersMatricule.Cells[6,R]:=RMoyenTransport.NomChauffeur+' '+RMoyenTransport.PrenomChauffeur;
                    TableauMoyenTransportTiersMatricule.Cells[7,R]:=RMoyenTransport.PieceIdentite;

                    TableauMoyenTransportTiersMatricule.Cells[C,R]:=Vergule(floattostr(RPrelevementUniteFonds.ValeurPrelevement),'2','C','');

                    if(C=8)then TotalDebit:=TotalDebit+RPrelevementUniteFonds.ValeurPrelevement
                           else TotalCredit:=TotalCredit+RPrelevementUniteFonds.ValeurPrelevement;
               end;
          end;
     CloseFile(FPrelevementUniteFonds);
     end;     

     if(R>0)then
            begin
                 TableauMoyenTransportTiersMatricule.RowCount:=R+3;
                 TableauMoyenTransportTiersMatricule.Rows[R+1].Text:='';
                 TableauMoyenTransportTiersMatricule.Rows[R+2].Text:='';

                 if(AfficherTotalAnterieur=true)then
                 begin
                      TableauMoyenTransportTiersMatricule.Cells[8,1]:=Vergule(floattostr(AnterieurDebit),'2','C','');
                      TableauMoyenTransportTiersMatricule.Cells[9,1]:=Vergule(floattostr(AnterieurCredit),'2','C','');
                 end;

                 TableauMoyenTransportTiersMatricule.Cells[7,R+2]:='Total: ';
                 TableauMoyenTransportTiersMatricule.Cells[8,R+2]:=Vergule(floattostr(TotalDebit),'2','C','');
                 TableauMoyenTransportTiersMatricule.Cells[9,R+2]:=Vergule(floattostr(TotalCredit),'2','C','');
            end
            else TableauMoyenTransportTiersMatricule.RowCount:=2;

     NotCol:='';

     for C:=1 to TableauMoyenTransportTiersMatricule.ColCount-1 do if existenumintexte(inttostr(C),NotCol)then TableauMoyenTransportTiersMatricule.ColWidths[C]:=0;

     AjusterColWidth(TableauMoyenTransportTiersMatricule,'',NotCol)
end;

procedure TFSMoyenTransport.EditDateDebutMTChange(Sender: TObject);
begin
     AfficherMoyenTransportTiersMatricule(FSMoyenTransport.TableauTiersMoyenTransport,FSMoyenTransport.EditTiersTypeProces.Text,FSMoyenTransport.EditTiersFichierConserne.Text,FSMoyenTransport.EditCodeTiersMT.Text,FSMoyenTransport.EditTitreInfoMoyenTransport.Text,FSMoyenTransport.EditInfoMoyenTransport.Text,datetostr(FSMoyenTransport.EditDateDebutMT.Date),datetostr(FSMoyenTransport.EditDateFinMT.Date),FSMoyenTransport.RBAfficherTotalAnterieur.Checked);
end;

procedure TFSMoyenTransport.RBAfficherTotalAnterieurClick(Sender: TObject);
begin
     AfficherMoyenTransportTiersMatricule(FSMoyenTransport.TableauTiersMoyenTransport,FSMoyenTransport.EditTiersTypeProces.Text,FSMoyenTransport.EditTiersFichierConserne.Text,FSMoyenTransport.EditCodeTiersMT.Text,FSMoyenTransport.EditTitreInfoMoyenTransport.Text,FSMoyenTransport.EditInfoMoyenTransport.Text,datetostr(FSMoyenTransport.EditDateDebutMT.Date),datetostr(FSMoyenTransport.EditDateFinMT.Date),FSMoyenTransport.RBAfficherTotalAnterieur.Checked);
end;

procedure TFSMoyenTransport.RBNaPasAfficherTotalAnterieurClick(
  Sender: TObject);
begin
     AfficherMoyenTransportTiersMatricule(FSMoyenTransport.TableauTiersMoyenTransport,FSMoyenTransport.EditTiersTypeProces.Text,FSMoyenTransport.EditTiersFichierConserne.Text,FSMoyenTransport.EditCodeTiersMT.Text,FSMoyenTransport.EditTitreInfoMoyenTransport.Text,FSMoyenTransport.EditInfoMoyenTransport.Text,datetostr(FSMoyenTransport.EditDateDebutMT.Date),datetostr(FSMoyenTransport.EditDateFinMT.Date),FSMoyenTransport.RBAfficherTotalAnterieur.Checked);
end;

procedure TFSMoyenTransport.AfficheOptionPrintClick(Sender: TObject);
begin

if(FSMoyenTransport.AfficheOptionPrint.Height=31)
then FSMoyenTransport.AfficheOptionPrint.Height:=223
else FSMoyenTransport.AfficheOptionPrint.Height:=31;

end;

procedure TFSMoyenTransport.BitBtn20Click(Sender: TObject);
var  R,C:integer;  TitreEtat,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol:string;  ImprimeTableau:boolean;
begin
     FSMoyenTransport.AfficheOptionPrint.Height:=31;

     FSMoyenTransport.EditTitreEtat.Lines.Text:='';
     FSMoyenTransport.EditTitreEtat.Lines.Add('Etat Commercial');
     FSMoyenTransport.EditTitreEtat.Lines.Add('Période du '+datetostr(FSMoyenTransport.EditDateDebut.Date)+' au '+datetostr(FSMoyenTransport.EditDateFin.Date));

     if(FSMoyenTransport.EditTiersMT.Text<>'')
     then FSMoyenTransport.EditTitreEtat.Lines.Add(FSMoyenTransport.TitreEditTiers.Caption+': '+FSMoyenTransport.EditTiersMT.Text);

     if(FSMoyenTransport.EditInfoMoyenTransport.Text<>'')then
     FSMoyenTransport.EditTitreEtat.Lines.Add('Transport: '+FSMoyenTransport.EditInfoMoyenTransport.Text);

     TitreEtat:=FSMoyenTransport.EditTitreEtat.Text;

     GrasARow:='0;'+inttostr(FSMoyenTransport.TableauTiersMoyenTransport.RowCount-1);
     GrasACol:='0';
     CenterARow:='0';
     CenterACol:='0';
     RightARow:='';
     RightACol:='8;9';
     ImprimeTableau:=true;
     R:=0;
     OptionsImpression(FSMoyenTransport.TableauTiersMoyenTransport,'Center',R,1,TitreEtat,FSMoyenTransport.RBAjustement.Checked,FSMoyenTransport.RBOrientationPapier.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,true,1,FSMenuPrincipal.ImageCodebarre,true,R);
end;

procedure TFSMoyenTransport.TabSheet2Show(Sender: TObject);
begin
     FSMoyenTransport.AfficheOperationMoyenTransport.Visible:=false;
end;

procedure TFSMoyenTransport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ActiverNomForm(0,(Sender as TComponent).Name);
end;

procedure TFSMoyenTransport.FormShow(Sender: TObject);
begin
ActiverNomForm(1,(Sender as TComponent).Name);
end;

Procedure InfoMoyenTransport(TypeFiche,NumMovementPrelevement,NumFiche,MatriculeEffectif,CodeTiers:string; var MoyenTransport,MatriculeTransport,NomChauffeur,PrenomChauffeur,PieceIdentite:string);
var   OKMoyenTransport:boolean;  Archive,PositionPrelevement:string;
begin
     if(TypeFiche<>'')then
     begin
           Archive:='';
           if(TypeFiche='Prélèvement')then
           begin
                RPrelevement:=ChercherPrelevement(strtointeger(NumMovementPrelevement),ExerciceAnnee,'',PositionPrelevement);
                if(RPrelevement.Archiver=true)then Archive:='Archive';
           end;

           OpenFParc(RParc);
           ChMoyenTransport:=RParc.Parcours+'\'+Exercice+'F'+Archive+'MoyenTransport'+TypeFiche;
           assignfile(FMoyenTransport,ChMoyenTransport);
           if FileExists(ChMoyenTransport)then
           Reset(FMoyenTransport)
           else Rewrite(FMoyenTransport);
           Seek(FMoyenTransport,0);
           OKMoyenTransport:=false;
           while not eof(FMoyenTransport)and(OKMoyenTransport=false)do
           begin
                read(FMoyenTransport,RMoyenTransport);

                if(TypeFiche<>'')then
                begin
                     if(RMoyenTransport.TypeFiche=TypeFiche)
                     then OKMoyenTransport:=true
                     else OKMoyenTransport:=false;
                end;

                if(OKMoyenTransport=true)then
                begin
                     if(NumMovementPrelevement<>'')then
                     begin
                          if(inttostr(RMoyenTransport.NumMovementPrelevement)=NumMovementPrelevement)
                          then OKMoyenTransport:=true
                          else OKMoyenTransport:=false;
                     end;
                end;

                if(OKMoyenTransport=true)then
                begin
                     if(NumFiche<>'')then
                     begin
                          if(inttostr(RMoyenTransport.NumFiche)=NumFiche)
                          then OKMoyenTransport:=true
                          else OKMoyenTransport:=false;
                     end;
                end;

                if(OKMoyenTransport=true)then
                begin
                     if(MatriculeEffectif<>'')then
                     begin
                          if(RMoyenTransport.MatriculeEffectif=MatriculeEffectif)
                          then OKMoyenTransport:=true
                          else OKMoyenTransport:=false;
                     end;
                end;

                if(OKMoyenTransport=true)then
                begin
                     if(CodeTiers<>'')then
                     begin
                          if(RMoyenTransport.CodeTiers=CodeTiers)
                          then OKMoyenTransport:=true
                          else OKMoyenTransport:=false;
                     end;
                end;

                if(OKMoyenTransport=true)then
                begin
                     MoyenTransport:=RMoyenTransport.MoyenTransport;
                     MatriculeTransport:=RMoyenTransport.MatriculeTransport;
                     NomChauffeur:=RMoyenTransport.NomChauffeur;
                     PrenomChauffeur:=RMoyenTransport.PrenomChauffeur;
                     PieceIdentite:=RMoyenTransport.PieceIdentite;
                end;
           end;
           CloseFile(FMoyenTransport);
     end;
end;

Procedure RemplirTableauInfoMoyenTransport(Tableau:TStringGrid; RapportTraitement:TMemo; TitreInfoMoyenTransport:string);
var   R:integer;
      OKMoyenTransport:boolean;
      Archive,PositionPrelevement,TypeFiche,TypeFicheAffiche,NumMovementPrelevement,NumFiche,MatriculeEffectif,CodeTiers:string;
      MoyenTransport,MatriculeTransport,NomChauffeur,PrenomChauffeur,PieceIdentite:string;
begin
     RapportTraitement.Lines.Add('Remplissage Moyen de transports');

     TypeFiche:='';
     repeat
     begin
           if(TypeFiche='')then TypeFiche:='Mouvement' else TypeFiche:='Prélèvement';
           RapportTraitement.Lines.Add('TypeFiche: '+TypeFiche);
           Archive:='';
           if(TypeFiche='Prélèvement')then
           begin
                Archive:='Archive';
           end;

           if(TypeFiche<>'')then
           begin
                OpenFParc(RParc);
                ChMoyenTransport:=RParc.Parcours+'\'+Exercice+'F'+Archive+'MoyenTransport'+TypeFiche;
                assignfile(FMoyenTransport,ChMoyenTransport);
                if FileExists(ChMoyenTransport)then
                Reset(FMoyenTransport)
                else Rewrite(FMoyenTransport);
                Seek(FMoyenTransport,0);
                while not eof(FMoyenTransport)do
                begin
                     read(FMoyenTransport,RMoyenTransport); Application.ProcessMessages;  if(FSTraitementDonnees.RBSuspendreTraitement.Checked)then begin RapportTraitement.Lines.Add('Traitement Suspendu.'); Exit; end;
                
                     R:=1;
                     OKMoyenTransport:=false;
                     while(R<=Tableau.RowCount-1)and(OKMoyenTransport=false)do
                     begin
                          if(Tableau.Cells[16,R]='UF')then
                          begin
                               TypeFicheAffiche:='Prélèvement';
                               NumMovementPrelevement:=Tableau.Cells[27,R];
                               NumFiche:=Tableau.Cells[29,R];
                               MatriculeEffectif:=Tableau.Cells[28,R];
                               CodeTiers:=Tableau.Cells[9,R];
                          end
                          else
                          if(Tableau.Cells[16,R]='LM')then
                          begin
                               TypeFicheAffiche:='Mouvement';
                               NumMovementPrelevement:='';
                               NumFiche:=Tableau.Cells[1,R];
                               MatriculeEffectif:='';
                               CodeTiers:=Tableau.Cells[9,R];
                          end
                          else
                          begin
                               TypeFicheAffiche:='';
                               NumMovementPrelevement:='';
                               NumFiche:='';
                               MatriculeEffectif:='';
                               CodeTiers:='';
                          end;

                          if(TypeFicheAffiche<>'')then
                          begin
                               if(RMoyenTransport.TypeFiche=TypeFicheAffiche)
                               then OKMoyenTransport:=true
                               else OKMoyenTransport:=false;
                          end
                          else OKMoyenTransport:=false;

                          if(OKMoyenTransport=true)then
                          begin
                               if(NumMovementPrelevement<>'')then
                               begin
                                    if(RMoyenTransport.NumMovementPrelevement=strtointeger(NumMovementPrelevement))
                                    then OKMoyenTransport:=true
                                    else OKMoyenTransport:=false;
                               end;
                          end;

                          if(OKMoyenTransport=true)then
                          begin
                               if(NumFiche<>'')then
                               begin
                                    if(RMoyenTransport.NumFiche=strtointeger(NumFiche))
                                    then OKMoyenTransport:=true
                                    else OKMoyenTransport:=false;
                               end;
                          end;

                          if(OKMoyenTransport=true)then
                          begin
                               if(MatriculeEffectif<>'')then
                               begin
                                    if(RMoyenTransport.MatriculeEffectif=MatriculeEffectif)
                                    then OKMoyenTransport:=true
                                    else OKMoyenTransport:=false;
                               end;
                          end;

                          if(OKMoyenTransport=true)then
                          begin
                               if(CodeTiers<>'')then
                               begin
                                    if(RMoyenTransport.CodeTiers=CodeTiers)
                                    then OKMoyenTransport:=true
                                    else OKMoyenTransport:=false;
                               end;
                          end;
                 
                          if(OKMoyenTransport=true)then
                          begin
                               MoyenTransport:=RMoyenTransport.MoyenTransport;
                               MatriculeTransport:=RMoyenTransport.MatriculeTransport;
                               NomChauffeur:=RMoyenTransport.NomChauffeur;
                               PrenomChauffeur:=RMoyenTransport.PrenomChauffeur;
                               PieceIdentite:=RMoyenTransport.PieceIdentite;

                               if(TitreInfoMoyenTransport='Moyen transport')then Tableau.Cells[22,R]:=MoyenTransport;
                               if(TitreInfoMoyenTransport='Matricule')then Tableau.Cells[22,R]:=MatriculeTransport;
                               if(TitreInfoMoyenTransport='Chauffeur')then Tableau.Cells[22,R]:=NomChauffeur+' '+PrenomChauffeur;
                               if(TitreInfoMoyenTransport='Pièce Identité')then Tableau.Cells[22,R]:=PieceIdentite;

                               if(TitreInfoMoyenTransport='Tous')then
                               begin
                                    if(MoyenTransport<>'')then
                                    begin
                                         if(Tableau.Cells[22,R]='')
                                         then Tableau.Cells[22,R]:=MoyenTransport
                                         else Tableau.Cells[22,R]:=Tableau.Cells[22,R]+' '+MoyenTransport;
                                    end;

                                    if(MatriculeTransport<>'')then
                                    begin
                                         if(Tableau.Cells[22,R]='')
                                         then Tableau.Cells[22,R]:=' Mat: '+MatriculeTransport
                                         else Tableau.Cells[22,R]:=Tableau.Cells[22,R]+' Mat: '+MatriculeTransport;
                                    end;

                                    if(NomChauffeur<>'')or(PrenomChauffeur<>'')then
                                    begin
                                         if(Tableau.Cells[22,R]='')
                                         then Tableau.Cells[22,R]:=' Chauf: '+NomChauffeur+' '+PrenomChauffeur
                                         else Tableau.Cells[22,R]:=Tableau.Cells[22,R]+' Chauf: '+NomChauffeur+' '+PrenomChauffeur;
                                    end;

                                    if(PieceIdentite<>'')then
                                    begin
                                         if(Tableau.Cells[22,R]='')
                                         then Tableau.Cells[22,R]:=' Pce: '+PieceIdentite
                                         else Tableau.Cells[22,R]:=Tableau.Cells[22,R]+' Pce: '+PieceIdentite;
                                    end;
                               end;

                               RapportTraitement.Lines.Add(Tableau.Cells[22,R]);
                          end;

                     R:=R+1;
                     end;
                end;
                CloseFile(FMoyenTransport);
           end;
     end;
     until TypeFiche='Prélèvement';
     
end;

end.

