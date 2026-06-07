unit UnitFSFormules;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, ExtCtrls, DB, DBTables;

type
  TFSFormules = class(TForm)
    TableauFormules: TStringGrid;
    BitNouvelleFormule: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn8: TBitBtn;
    Bevel4: TBevel;
    Bevel6: TBevel;
    Bevel5: TBevel;
    AfficheOptions: TControlBar;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    AfficheFonctions: TControlBar;
    StaticText7: TStaticText;
    AfficheRubPers: TControlBar;
    EditListeRub: TComboBox;
    AfficheSuppModifTrier: TPanel;
    Bevel2: TBevel;
    BitOKSuppModifTrier: TBitBtn;
    BitNonSuppModifTrier: TBitBtn;
    AfficheTexte: TPanel;
    EditModification: TEdit;
    EditClose: TEdit;
    BitBtn1: TBitBtn;
    AfficheOperationTrieSupp: TPanel;
    BitBtn12: TBitBtn;
    BitBtn2: TBitBtn;
    Bevel1: TBevel;
    BitBtn3: TBitBtn;
    EditRechercheFormule: TEdit;
    EditACol: TEdit;
    EditARow: TEdit;
    BitRecherche: TBitBtn;
    AfficheTypeFormule: TPanel;
    Bevel3: TBevel;
    Bevel7: TBevel;
    TableauTypeFormule: TStringGrid;
    BitNouveauTF: TBitBtn;
    BitModifierTF: TBitBtn;
    BitSupprimerTF: TBitBtn;
    BitBtn7: TBitBtn;
    AfficheOperationTypeFormule: TPanel;
    Bevel8: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel9: TBevel;
    EditPositionTypeFormule: TEdit;
    EditCodeTypeFormule: TEdit;
    EditDesignationTypeFormule: TEdit;
    BitOperationTypeFormule: TBitBtn;
    TypeFormuleAfficher: TPanel;
    EditCodeTypeFormuleAfficher: TEdit;
    Bevel10: TBevel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    AfficheInsererModele: TPanel;
    BitNonInsererModel: TBitBtn;
    BitOKInsererModel: TBitBtn;
    RBOKInsererModel: TCheckBox;
    StaticText6: TStaticText;
    StaticText8: TStaticText;
    AfficheMaxMin: TPanel;
    TextMaxMin: TLabel;
    EditMaxMin1: TEdit;
    EditMaxMin2: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    BitOKMaxMin: TBitBtn;
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn6: TBitBtn;
    Edit3: TEdit;
    BitBtn10: TBitBtn;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Bevel11: TBevel;
    Bevel12: TBevel;
    TableauFormulesCopie: TStringGrid;
    AfficheCopie: TControlBar;
    StaticCopierSelection: TStaticText;
    StaticCopierTous: TStaticText;
    StaticColler: TStaticText;
    StaticText9: TStaticText;
    AfficheIdentificateurEntreprise: TControlBar;
    EditListeIdentificateurEntreprise: TComboBox;
    AfficheOperationDupliqueTypeFormule: TPanel;
    TableauDupliqueTypeFormule: TStringGrid;
    BitBtn13: TBitBtn;
    Bevel13: TBevel;
    OuvrirFichier: TOpenDialog;
    BitBtn15: TBitBtn;
    Bevel15: TBevel;
    Bevel16: TBevel;
    EnregistrerUnFichier: TSaveDialog;
    AfficheTypeAffichageNonVisible: TPanel;
    BitBtn14: TBitBtn;
    Bevel14: TBevel;
    TableauTypeAffichage: TStringGrid;
    BitTypeNonVisible: TBitBtn;
    Bevel17: TBevel;
    Label9: TLabel;
    EditListeTableauConserne: TComboBox;
    Bevel18: TBevel;
    StaticText10: TStaticText;
    TableauTypeFormulesBaremes: TStringGrid;
    StaticText11: TStaticText;
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitNouvelleFormuleClick(Sender: TObject);
    procedure TableauFormulesContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure StaticText1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure StaticText2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure StaticText3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure StaticText4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure StaticText5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure AfficheOptionsClick(Sender: TObject);
    procedure StaticText1Click(Sender: TObject);
    procedure StaticText2Click(Sender: TObject);
    procedure StaticText3Click(Sender: TObject);
    procedure StaticText4Click(Sender: TObject);
    procedure AfficheOptionsMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure TableauFormulesClick(Sender: TObject);
    procedure StaticText7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure AfficheFonctionsMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure AfficheFonctionsClick(Sender: TObject);
    procedure EditListeRubSelect(Sender: TObject);
    procedure TableauFormulesMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure BitOKSuppModifTrierClick(Sender: TObject);
    procedure BitNonSuppModifTrierClick(Sender: TObject);
    procedure TableauFormulesKeyPress(Sender: TObject; var Key: Char);
    procedure TableauFormulesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure EditRechercheFormuleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditRechercheFormuleKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitRechercheClick(Sender: TObject);
    procedure TypeFormuleAfficherClick(Sender: TObject);
    procedure EditCodeTypeFormuleAfficherEnter(Sender: TObject);
    procedure BitNouveauTFClick(Sender: TObject);
    procedure BitModifierTFClick(Sender: TObject);
    procedure BitSupprimerTFClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitOperationTypeFormuleClick(Sender: TObject);
    procedure TableauTypeFormuleClick(Sender: TObject);
    procedure TableauTypeFormuleDblClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure TableauDupliqueTypeFormuleKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitNonInsererModelClick(Sender: TObject);
    procedure BitOKInsererModelClick(Sender: TObject);
    procedure StaticText6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure StaticText8MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BitOKMaxMinClick(Sender: TObject);
    procedure EditMaxMin1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditMaxMin2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure StaticCopierSelectionMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure StaticCopierTousMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure StaticCollerMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure StaticCopierSelectionClick(Sender: TObject);
    procedure StaticCopierTousClick(Sender: TObject);
    procedure StaticCollerClick(Sender: TObject);
    procedure StaticText9MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure EditListeIdentificateurEntrepriseSelect(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TableauFormulesDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitTypeNonVisibleClick(Sender: TObject);
    procedure TableauTypeAffichageDblClick(Sender: TObject);
    procedure EditListeTableauConserneKeyPress(Sender: TObject; var Key: Char);
    procedure EditListeTableauConserneChange(Sender: TObject);
    procedure StaticText10MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure TableauTypeFormulesBaremesDblClick(Sender: TObject);
    procedure AfficheTypeAffichageNonVisibleMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure AfficheOperationDupliqueTypeFormuleMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure AfficheTypeFormuleMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure TableauTypeFormulesBaremesMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure StaticText11MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure StaticText11Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSFormules: TFSFormules;

Procedure ProcAfficheFormule(TableauFormules:TStringGrid; FichierConcerner:string);
Procedure ProcAfficheAutreFormule(TableauFormules:TStringGrid; Adresse:string);
Procedure TrierFormule(TableauFormules:TStringGrid; Indice:integer);
Procedure ListeTypeFormule(TableauTypeFormule:TStringGrid);
Procedure ProcInserModelFormule(CodeTypeFormule:string);
Procedure OuvrirFichierFormule;
Function FunctTypeAffichageFormuleNonVisible(CodeTypeFormule,TableauConserne,TypeAffichageFormule:string):boolean;
Function ListeTypeAffichageFormuleNonVisible(CodeTypeFormule,TableauConserne:string):string;
Function FunctListeFormuleString(CodeTypeFormule:string):string;
Procedure RemplireFormileComboBox(CodeTypeFormule:string; EditListeRub:TComboBox);

implementation

Uses UnitInitialisation, UnitFSParametresAvances;
     
var

   RParc:RInstalle;
   FParc:FInstalle;
   ParcInstalle:string100;

   RTypeFormule,RTypeFormuleCopie:RTypeFormules;
   FTypeFormule,FTypeFormuleCopie:FTypeFormules;
   TTypeFormule,TTypeFormuleCopie:TTypeFormules;
   ChTypeFormule:string;

   RFormule,RFormuleCopie:RFormules;
   FFormule,FFormuleCopie:FFormules;
   TFormule,TFormuleCopie:TFormules;
   ChFormule,ChFormuleCopie:string;

   RModelFormule:RModelFormules;
   FModelFormule:FModelFormules;
   ChModelFormule:string250;

   i:integer;
   OKArchive:boolean;

{$R *.dfm}

Procedure ProcInserModelFormule(CodeTypeFormule:string);
var       TypeProces,FichierConserne,Adresse,NomDossierPartageReseauxOut:string;
begin
           TypeProces:='Business';   FichierConserne:=CodeTypeFormule;
          if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
               AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
          end;

          ChFormule:=Adresse;
          assignfile(FFormule,ChFormule);
          if FileExists(ChFormule)
          then Reset(FFormule)
          else Rewrite(FFormule);
          Seek(FFormule,0);
          Truncate(FFormule);
          i:=0;

          ChModelFormule:=RParc.Parcours+'\'+Exercice+'FModelFormule';
          assignfile(FModelFormule,ChModelFormule);
          if FileExists(ChModelFormule)then
          Reset(FModelFormule)
          else Rewrite(FModelFormule);
          Seek(FModelFormule,0);
          while not eof(FModelFormule)do
          begin
               read(FModelFormule,RModelFormule);

               RFormule.PositionFormule:=i;
               RFormule.CodeFormule:=inttostr(RModelFormule.NumModelFormule);
               RFormule.Libelle:=RModelFormule.AbreviationModelFormule;
               RFormule.FormuleTexte:='';
               RFormule.Condition:='';
               RFormule.Accumuler:='';
               RFormule.TypeAffichage:=RModelFormule.TypeAffichage;
               RFormule.Sens:='';
               RFormule.Base:='';
               RFormule.Taux:='';
               RFormule.Debit:='';
               RFormule.Credit:='';
               RFormule.Active:=true;
               seek(FFormule,i);
               write(FFormule,RFormule);
               i:=i+1;
          end;
          CloseFile(FModelFormule);
          closefile(FFormule);
end;

Procedure ListeTypeFormule(TableauTypeFormule:TStringGrid);
var    TypeProces,FichierConserne,Adresse,NomDossierPartageReseauxOut:string;
begin
     TableauTypeFormule.ColCount:=4;
     TableauTypeFormule.Cols[0].Text:='N°';
     TableauTypeFormule.Cols[1].Text:='P°';
     TableauTypeFormule.Cols[2].Text:='Code';
     TableauTypeFormule.Cols[3].Text:='Désignation';

     TableauTypeFormule.RowCount:=2;
     TableauTypeFormule.Rows[1].Text:='';

     TypeProces:='Business';   FichierConserne:='FTypeFormule';
     if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
     end;

     ChTypeFormule:=Adresse;
     assignfile(FTypeFormule,ChTypeFormule);
     if FileExists(ChTypeFormule)then
     Reset(FTypeFormule)
     else Rewrite(FTypeFormule);
     seek(FTypeFormule,0);
     i:=0;
     while not eof(FTypeFormule)do
     begin
         Read(FTypeFormule,RTypeFormule);
         i:=i+1;
         TableauTypeFormule.Cells[0,i]:=inttostr(i);
         TableauTypeFormule.Cells[1,i]:=inttostr(RTypeFormule.PositionTypeFormule);
         TableauTypeFormule.Cells[2,i]:=RTypeFormule.CodeTypeFormule;
         TableauTypeFormule.Cells[3,i]:=RTypeFormule.DesignationTypeFormule;
     end;
     CloseFile(FTypeFormule);

     if(i>0)then TableauTypeFormule.RowCount:=i+1
            else TableauTypeFormule.RowCount:=2;

     AjusterColWidth(TableauTypeFormule,'0'+inttostr(i+1),'1');
end;

Procedure TrierFormule(TableauFormules:TStringGrid; Indice:integer);
var OK:boolean; R,m,i,j,ARow,VarA,VarB:integer;
begin
R:=TableauFormules.RowCount;
TableauFormules.Rows[R].Text:='';
OK:=true;
while(OK=true)do
begin
OK:=false;
for i:=1 to TableauFormules.RowCount-2 do
begin
     if(TableauFormules.Cells[Indice,i]>TableauFormules.Cells[Indice,i+1])then
     begin
          OK:=true;
          for m:=1 to 3 do
          begin
               if m=1 then begin VarA:=R; VarB:=i;end;
               if m=2 then begin VarA:=i; VarB:=i+1;end;
               if m=3 then begin VarA:=i+1; VarB:=R;end;
               for j:=0 to TableauFormules.ColCount-1 do
               begin
                    TableauFormules.Cells[j,VarA]:=TableauFormules.Cells[j,VarB];
               end;
          end;
          TableauFormules.Rows[R].Text:='';
     end;
end;
end;

for i:=1 to TableauFormules.RowCount-1 do
begin
     TableauFormules.Cells[0,i]:=inttostr(i);
end;

end;

Procedure ProcAfficheFormule(TableauFormules:TStringGrid; FichierConcerner:string);
var   TypeProces,Adresse,NomDossierPartageReseauxOut:string;
begin
TableauFormules.ColCount:=14;
TableauFormules.Cols[0].Text:='N°';
TableauFormules.Cols[1].Text:='P°';
TableauFormules.Cols[2].Text:='Code(5)';
TableauFormules.Cols[3].Text:='Libellé';
TableauFormules.Cols[4].Text:='Formule';
TableauFormules.Cols[5].Text:='Condition:  XX=YY.AND.XX<>YY.';
TableauFormules.Cols[6].Text:='Accumuler:  +XX,-YY';
TableauFormules.Cols[7].Text:='Type';
TableauFormules.Cols[8].Text:='Sens';
TableauFormules.Cols[9].Text:='Base';
TableauFormules.Cols[10].Text:='Taux';
TableauFormules.Cols[11].Text:='Débit';
TableauFormules.Cols[12].Text:='Crédit';
TableauFormules.Cols[13].Text:='Active';
TableauFormules.RowCount:=2;
TableauFormules.Rows[1].Text:='';

TypeProces:='Business';
if not(FunctionAdresseProces(TypeProces,FichierConcerner,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerner+' recherché !');
end;

ChFormule:=Adresse;
assignfile(FFormule,ChFormule);
if FileExists(ChFormule)then
Reset(FFormule)
else begin Rewrite(FFormule); exit end;
seek(FFormule,0);
i:=0;
while not eof(FFormule)do
begin
    i:=i+1;
    Read(FFormule,RFormule);
    TableauFormules.Rows[i].Text:=inttostr(i);
    TableauFormules.Cells[1,i]:=inttostr(RFormule.PositionFormule);
    TableauFormules.Cells[2,i]:=RFormule.CodeFormule;
    TableauFormules.Cells[3,i]:=RFormule.Libelle;
    TableauFormules.Cells[4,i]:=RFormule.FormuleTexte;
    TableauFormules.Cells[5,i]:=RFormule.Condition;
    TableauFormules.Cells[6,i]:=RFormule.Accumuler;
    TableauFormules.Cells[7,i]:=RFormule.TypeAffichage;
    TableauFormules.Cells[8,i]:=RFormule.Sens;
    TableauFormules.Cells[9,i]:=RFormule.Base;
    TableauFormules.Cells[10,i]:=RFormule.Taux;
    TableauFormules.Cells[11,i]:=RFormule.Debit;
    TableauFormules.Cells[12,i]:=RFormule.Credit;
    TableauFormules.Cells[13,i]:=booltostr(RFormule.Active);
end;
CloseFile(FFormule);

if(i>=1)then TableauFormules.RowCount:=i+1
        else
        begin
             TableauFormules.RowCount:=2;
             TableauFormules.Rows[1].Text:='';
        end;

TrierFormule(TableauFormules,2);
TableauFormules.ColWidths[1]:=0;
TableauFormules.ColWidths[13]:=0;
AjusterColWidth(TableauFormules,'','1;13');
end;

Procedure ProcAfficheAutreFormule(TableauFormules:TStringGrid; Adresse:string);
begin
TableauFormules.ColCount:=14;
TableauFormules.Cols[0].Text:='N°';
TableauFormules.Cols[1].Text:='P°';
TableauFormules.Cols[2].Text:='Code(5)';
TableauFormules.Cols[3].Text:='Libellé';
TableauFormules.Cols[4].Text:='Formule';
TableauFormules.Cols[5].Text:='Condition:  XX=YY.AND.XX<>YY.';
TableauFormules.Cols[6].Text:='Accumuler:  +XX,-YY';
TableauFormules.Cols[7].Text:='Type';
TableauFormules.Cols[8].Text:='Sens';
TableauFormules.Cols[9].Text:='Base';
TableauFormules.Cols[10].Text:='Taux';
TableauFormules.Cols[11].Text:='Débit';
TableauFormules.Cols[12].Text:='Crédit';
TableauFormules.Cols[13].Text:='Active';
TableauFormules.RowCount:=2;
TableauFormules.Rows[1].Text:='';

ChFormule:=Adresse;
assignfile(FFormule,ChFormule);
if FileExists(ChFormule)then
Reset(FFormule)
else begin Rewrite(FFormule); exit end;
seek(FFormule,0);
i:=0;
while not eof(FFormule)do
begin
    i:=i+1;
    Read(FFormule,RFormule);
    TableauFormules.Rows[i].Text:=inttostr(i);
    TableauFormules.Cells[1,i]:=inttostr(RFormule.PositionFormule);
    TableauFormules.Cells[2,i]:=RFormule.CodeFormule;
    TableauFormules.Cells[3,i]:=RFormule.Libelle;
    TableauFormules.Cells[4,i]:=RFormule.FormuleTexte;
    TableauFormules.Cells[5,i]:=RFormule.Condition;
    TableauFormules.Cells[6,i]:=RFormule.Accumuler;
    TableauFormules.Cells[7,i]:=RFormule.TypeAffichage;
    TableauFormules.Cells[8,i]:=RFormule.Sens;
    TableauFormules.Cells[9,i]:=RFormule.Base;
    TableauFormules.Cells[10,i]:=RFormule.Taux;
    TableauFormules.Cells[11,i]:=RFormule.Debit;
    TableauFormules.Cells[12,i]:=RFormule.Credit;
    TableauFormules.Cells[13,i]:=booltostr(RFormule.Active);
end;
CloseFile(FFormule);

if(i>=1)then TableauFormules.RowCount:=i+1
        else
        begin
             TableauFormules.RowCount:=2;
             TableauFormules.Rows[1].Text:='';
        end;

TrierFormule(TableauFormules,2);
TableauFormules.ColWidths[1]:=0;
TableauFormules.ColWidths[13]:=0;
AjusterColWidth(TableauFormules,'','1;13');
end;

procedure TFSFormules.BitBtn8Click(Sender: TObject);
begin
if(FSFormules.EditModification.Text='Modification')then
begin
FSFormules.EditClose.Text:='OK';

if(FinArchivage=false)then
begin// UNITE ARCHIVE::::::::::::::::::::::::::::
FSFormules.AfficheSuppModifTrier.Visible:=true;
FSFormules.BitOKSuppModifTrier.Caption:='Modifier';
FSFormules.BitOKSuppModifTrier.SetFocus;
end// UNITE ARCHIVE::::::::::::::::::::::::::::
else
begin
    showmessage('Modification non enregistrés !');
    FSFormules.EditClose.Text:='';
    FSFormules.Close;
end;
end
else
begin
     FSFormules.EditClose.Text:='';
     FSFormules.Close;
end;
end;

procedure TFSFormules.BitBtn12Click(Sender: TObject);
begin
FSFormules.AfficheSuppModifTrier.Visible:=true;
FSFormules.BitOKSuppModifTrier.Caption:='Trier';
FSFormules.BitOKSuppModifTrier.SetFocus;
FSFormules.AfficheOperationTrieSupp.Height:=35;
end;

procedure TFSFormules.BitBtn11Click(Sender: TObject);
begin
FSFormules.EditClose.Text:='';

if(FinArchivage=false)then
begin// UNITE ARCHIVE::::::::::::::::::::::::::::
FSFormules.AfficheSuppModifTrier.Visible:=true;
FSFormules.BitOKSuppModifTrier.Caption:='Modifier';
FSFormules.BitOKSuppModifTrier.SetFocus;
end// UNITE ARCHIVE::::::::::::::::::::::::::::
else
begin
    showmessage('Modification non autorisé !');
end;
end;

procedure TFSFormules.BitBtn9Click(Sender: TObject);
begin

if(FinArchivage=false)then
begin// UNITE ARCHIVE::::::::::::::::::::::::::::
FSFormules.AfficheSuppModifTrier.Visible:=true;
FSFormules.BitOKSuppModifTrier.Caption:='Désactiver';
FSFormules.BitOKSuppModifTrier.SetFocus;
end// UNITE ARCHIVE::::::::::::::::::::::::::::
else
begin
    showmessage('Modification non autorisé !');
end;

end;

procedure TFSFormules.BitNouvelleFormuleClick(Sender: TObject);
var   i:integer;  TypeProces,FichierConserne,Adresse:string;
begin

if((FinArchivage=false)
and(FSFormules.BitNouvelleFormule.Caption='Nouvelle'))then
begin
     FSFormules.BitNouvelleFormule.Caption:='Valider';
     FSFormules.TableauFormules.RowCount:=2;
     FSFormules.TableauFormules.Rows[1].Text:='N';
     FSFormules.AfficheTexte.Caption:='Nouvelle Formule';
     FSFormules.AfficheTexte.Color:=clInactiveCaptionText;
     FSFormules.TableauFormules.SetFocus;
     FSFormules.TableauFormules.Col:=2;
end
else
begin
if((FSFormules.TableauFormules.Cells[2,1]<>'')
and(OKArchive=false))
then
begin
FSFormules.BitNouvelleFormule.Caption:='Nouvelle';

TypeProces:='Business';   FichierConserne:=FSFormules.EditCodeTypeFormuleAfficher.Text;
if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
end;

ChFormule:=Adresse;
assignfile(FFormule,ChFormule);
if FileExists(ChFormule)then
Reset(FFormule)
else Rewrite(FFormule);
seek(FFormule,0);
i:=0;
while not eof(FFormule)do
begin
    Read(FFormule,RFormule);
    i:=i+1;
end;
Seek(FFormule,i);
RFormule.PositionFormule:=i;
RFormule.CodeFormule:=FSFormules.TableauFormules.Cells[2,1];
RFormule.Libelle:=FSFormules.TableauFormules.Cells[3,1];
RFormule.FormuleTexte:=FSFormules.TableauFormules.Cells[4,1];
RFormule.Condition:=FSFormules.TableauFormules.Cells[5,1];
RFormule.Accumuler:=FSFormules.TableauFormules.Cells[6,1];
RFormule.TypeAffichage:=FSFormules.TableauFormules.Cells[7,1];
RFormule.Sens:=FSFormules.TableauFormules.Cells[8,1];
RFormule.Base:=FSFormules.TableauFormules.Cells[9,1];
RFormule.Taux:=FSFormules.TableauFormules.Cells[10,1];
RFormule.Debit:=FSFormules.TableauFormules.Cells[11,1];
RFormule.Credit:=FSFormules.TableauFormules.Cells[12,1];
RFormule.Active:=true;
write(FFormule,RFormule);
CloseFile(FFormule);

end;

FSFormules.BitNouvelleFormule.Caption:='Nouvelle';

ProcAfficheFormule(FSFormules.TableauFormules,FSFormules.EditCodeTypeFormuleAfficher.Text);
end;
end;

procedure TFSFormules.TableauFormulesContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
FSFormules.AfficheOptions.Visible:=true;
FSFormules.AfficheCopie.Visible:=false;

if MousePos.X<(FSFormules.TableauFormules.Width-FSFormules.AfficheOptions.Width)
then FSFormules.AfficheOptions.Left:=(MousePos.X+FSFormules.TableauFormules.Left)
else FSFormules.AfficheOptions.Left:=(FSFormules.TableauFormules.Width-
     FSFormules.AfficheOptions.Width+FSFormules.TableauFormules.Left);

if MousePos.Y<(FSFormules.TableauFormules.Height-FSFormules.AfficheOptions.Height)
then FSFormules.AfficheOptions.Top:=(MousePos.Y+FSFormules.TableauFormules.Top)
else FSFormules.AfficheOptions.Top:=(FSFormules.TableauFormules.Height-
     FSFormules.AfficheOptions.Height)+FSFormules.TableauFormules.Top;
end;

procedure TFSFormules.StaticText1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
FSFormules.AfficheCopie.Visible:=false;
FSFormules.AfficheRubPers.Visible:=false;
FSFormules.AfficheMaxMin.Visible:=false;
FSFormules.AfficheMaxMin.Visible:=false;
FSFormules.AfficheFonctions.Visible:=false;
FSFormules.StaticText1.Color:=$00E7FC94;
FSFormules.StaticText2.Color:=$00F5FED3;
FSFormules.StaticText3.Color:=$00F5FED3;
FSFormules.StaticText4.Color:=$00F5FED3;
FSFormules.StaticText5.Color:=$00F5FED3;
end;

procedure TFSFormules.StaticText2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
FSFormules.AfficheCopie.Visible:=false;
FSFormules.AfficheRubPers.Visible:=false;
FSFormules.AfficheFonctions.Visible:=false;
FSFormules.StaticText2.Color:=$00E7FC94;
FSFormules.StaticText1.Color:=$00F5FED3;
FSFormules.StaticText3.Color:=$00F5FED3;
FSFormules.StaticText4.Color:=$00F5FED3;
FSFormules.StaticText5.Color:=$00F5FED3;
end;

procedure TFSFormules.StaticText3MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
FSFormules.AfficheRubPers.Visible:=false;
FSFormules.AfficheMaxMin.Visible:=false;
FSFormules.AfficheFonctions.Visible:=false;
FSFormules.StaticText3.Color:=$00E7FC94;
FSFormules.StaticText1.Color:=$00F5FED3;
FSFormules.StaticText2.Color:=$00F5FED3;
FSFormules.StaticText4.Color:=$00F5FED3;
FSFormules.StaticText5.Color:=$00F5FED3;

if(FSFormules.TableauFormules.Width-
  (FSFormules.AfficheOptions.Left+
   FSFormules.AfficheOptions.Width)>=
   FSFormules.AfficheCopie.Width)
then
begin
FSFormules.AfficheCopie.Left:=
FSFormules.AfficheOptions.Left+
FSFormules.AfficheOptions.Width;
end
else
begin
FSFormules.AfficheCopie.Left:=
FSFormules.AfficheOptions.Left-
FSFormules.AfficheOptions.Width;
end;

FSFormules.AfficheCopie.Top:=
FSFormules.AfficheOptions.Top+
FSFormules.StaticText3.Top;

FSFormules.AfficheCopie.Visible:=true;
end;

procedure TFSFormules.StaticText4MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
FSFormules.AfficheCopie.Visible:=false;
FSFormules.AfficheRubPers.Visible:=false;
FSFormules.AfficheMaxMin.Visible:=false;
FSFormules.AfficheFonctions.Visible:=false;
FSFormules.StaticText4.Color:=$00E7FC94;
FSFormules.StaticText1.Color:=$00F5FED3;
FSFormules.StaticText2.Color:=$00F5FED3;
FSFormules.StaticText3.Color:=$00F5FED3;
FSFormules.StaticText5.Color:=$00F5FED3;
end;

procedure TFSFormules.StaticText5MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
FSFormules.AfficheCopie.Visible:=false;
FSFormules.AfficheRubPers.Visible:=false;
FSFormules.AfficheMaxMin.Visible:=false;
FSFormules.StaticText5.Color:=$00E7FC94;
FSFormules.StaticText1.Color:=$00F5FED3;
FSFormules.StaticText2.Color:=$00F5FED3;
FSFormules.StaticText3.Color:=$00F5FED3;
FSFormules.StaticText4.Color:=$00F5FED3;

if(FSFormules.TableauFormules.Width-
  (FSFormules.AfficheOptions.Left+
   FSFormules.AfficheOptions.Width)>=
   FSFormules.AfficheFonctions.Width)
then
begin
FSFormules.AfficheFonctions.Left:=
FSFormules.AfficheOptions.Left+
FSFormules.AfficheOptions.Width;
end
else
begin
FSFormules.AfficheFonctions.Left:=
FSFormules.AfficheOptions.Left-
FSFormules.AfficheOptions.Width;
end;

FSFormules.AfficheFonctions.Top:=
FSFormules.AfficheOptions.Top+
FSFormules.StaticText5.Top;

FSFormules.AfficheFonctions.Visible:=true;
end;

procedure TFSFormules.AfficheOptionsClick(Sender: TObject);
begin
FSFormules.AfficheOptions.Visible:=false;
FSFormules.AfficheFonctions.Visible:=false;
end;

procedure TFSFormules.StaticText1Click(Sender: TObject);
begin
ProcAfficheFormule(FSFormules.TableauFormules,FSFormules.EditCodeTypeFormuleAfficher.Text);
FSFormules.AfficheOptions.Visible:=false;
end;

procedure TFSFormules.StaticText2Click(Sender: TObject);
begin
FSFormules.AfficheOptions.Visible:=false;
end;

procedure TFSFormules.StaticText3Click(Sender: TObject);
begin
FSFormules.AfficheOptions.Visible:=false;
end;

procedure TFSFormules.StaticText4Click(Sender: TObject);
begin
FSFormules.AfficheOptions.Visible:=false;
end;

procedure TFSFormules.AfficheOptionsMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
FSFormules.StaticText1.Color:=$00F5FED3;
FSFormules.StaticText2.Color:=$00F5FED3;
FSFormules.StaticText3.Color:=$00F5FED3;
FSFormules.StaticText4.Color:=$00F5FED3;
FSFormules.StaticText5.Color:=$00F5FED3;
end;

procedure TFSFormules.TableauFormulesClick(Sender: TObject);
var  ACol,ARow:integer;
begin
FSFormules.EditARow.Text:=inttostr(FSFormules.TableauFormules.Row);
FSFormules.EditACol.Text:=inttostr(FSFormules.TableauFormules.Col);

FSFormules.AfficheOperationTrieSupp.Height:=35;
FSFormules.AfficheOptions.Visible:=false;
FSFormules.AfficheFonctions.Visible:=false;
FSFormules.AfficheRubPers.Visible:=false;
FSFormules.AfficheMaxMin.Visible:=false;
FSFormules.AfficheTypeAffichageNonVisible.Visible:=false;
FSFormules.AfficheOperationDupliqueTypeFormule.Visible:=false;
ACol:=FSFormules.TableauFormules.Col;
ARow:=FSFormules.TableauFormules.Row;

if(FSFormules.TableauFormules.Cells[13,ARow]='-1')
then
begin
     FSFormules.AfficheTexte.Caption:=FSFormules.TableauFormules.Cells[ACol,ARow];
     FSFormules.AfficheTexte.Color:=clInactiveCaptionText;
end
else
if(FSFormules.TableauFormules.Cells[13,ARow]='0')
then
begin
     FSFormules.AfficheTexte.Caption:='Formule Désactivé!';
     FSFormules.AfficheTexte.Color:=clRed;
end
else
if(FSFormules.TableauFormules.Cells[13,ARow]='')
then
begin
     FSFormules.AfficheTexte.Caption:='Nouvelle Formule';
     FSFormules.AfficheTexte.Color:=clInactiveCaptionText;
end;

FSFormules.TableauFormules.Cells[0,0]:=FSFormules.TableauFormules.Cells[1,ARow];

end;

procedure TFSFormules.StaticText7MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
FSFormules.StaticText7.Color:=$00E7FC94;
FSFormules.StaticText6.Color:=$00F5FED3;
FSFormules.StaticText8.Color:=$00F5FED3;
FSFormules.StaticText9.Color:=$00F5FED3;
FSFormules.StaticText10.Color:=$00F5FED3;
FSFormules.StaticText11.Color:=$00F5FED3;

if(FSFormules.TableauFormules.Width-
  (FSFormules.AfficheFonctions.Left+
   FSFormules.AfficheFonctions.Width)>=
   FSFormules.AfficheRubPers.Width)
then
begin
FSFormules.AfficheRubPers.Left:=
FSFormules.AfficheFonctions.Left+
FSFormules.AfficheFonctions.Width;
end
else
begin
FSFormules.AfficheRubPers.Left:=
FSFormules.AfficheFonctions.Left-
FSFormules.AfficheFonctions.Width;
end;

FSFormules.AfficheRubPers.Top:=
FSFormules.AfficheFonctions.Top+
FSFormules.StaticText7.Top;

FSFormules.AfficheRubPers.Visible:=true;
FSFormules.AfficheMaxMin.Visible:=false;
FSFormules.AfficheIdentificateurEntreprise.Visible:=false;
FSFormules.TableauTypeFormulesBaremes.Visible:=false;

FSFormules.EditListeRub.Items.Text:='';
FSFormules.EditListeRub.Items.Add('Valeur Initiale');
FSFormules.EditListeRub.Items.Add('Mode de payement');
FSFormules.EditListeRub.Items.Add('Liste Valeurs');
RemplireFormileComboBox(FSFormules.EditCodeTypeFormuleAfficher.Text,FSFormules.EditListeRub);
end;

procedure TFSFormules.AfficheFonctionsMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
FSFormules.StaticText6.Color:=$00F5FED3;
FSFormules.StaticText7.Color:=$00F5FED3;
FSFormules.StaticText8.Color:=$00F5FED3;
FSFormules.StaticText9.Color:=$00F5FED3;
FSFormules.StaticText10.Color:=$00F5FED3;
FSFormules.StaticText11.Color:=$00F5FED3;
end;

procedure TFSFormules.AfficheFonctionsClick(Sender: TObject);
begin
FSFormules.AfficheFonctions.Visible:=false;
FSFormules.AfficheOptions.Visible:=false;
end;

procedure TFSFormules.EditListeRubSelect(Sender: TObject);
begin
FSFormules.TableauFormules.Cells[4,FSFormules.TableauFormules.Row]:=
FSFormules.TableauFormules.Cells[4,FSFormules.TableauFormules.Row]+
WithoutChar(StaticText7.Caption,' ')+'('+FSFormules.EditListeRub.Text+')';
FSFormules.AfficheOptions.Visible:=false;
FSFormules.AfficheFonctions.Visible:=false;
FSFormules.AfficheRubPers.Visible:=false;
end;

procedure TFSFormules.TableauFormulesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
FSFormules.AfficheOptions.Visible:=false;
FSFormules.AfficheMaxMin.Visible:=false;
FSFormules.AfficheRubPers.Visible:=false;
FSFormules.AfficheFonctions.Visible:=false;
FSFormules.AfficheCopie.Visible:=false;
FSFormules.AfficheIdentificateurEntreprise.Visible:=false;
FSFormules.TableauTypeFormulesBaremes.Visible:=false;
end;

procedure TFSFormules.BitOKSuppModifTrierClick(Sender: TObject);
var   i,k:integer; OK:boolean; ARow,ACol:integer;  TypeProces,FichierConserne,Adresse:string;
begin

if(FSFormules.TableauFormules.Cells[1,FSFormules.TableauFormules.Row]='')
then
begin                                     
     FSFormules.TableauFormules.SetFocus;
     FSFormules.AfficheSuppModifTrier.Visible:=false;
     exit;
end;

if(FSFormules.BitOKSuppModifTrier.Caption='Supprimer')
then
begin
ARow:=FSFormules.TableauFormules.Row;

TypeProces:='Business';   FichierConserne:=FSFormules.EditCodeTypeFormuleAfficher.Text;
if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
end;

ChFormule:=Adresse;
assignfile(FFormule,ChFormule);      
if FileExists(ChFormule)then
Reset(FFormule)
else Rewrite(FFormule);
seek(FFormule,0);
i:=0;
OK:=false;
while not eof(FFormule)and(OK=false)do
begin
    Read(FFormule,RFormule);
if(RFormule.CodeFormule=FSFormules.TableauFormules.Cells[2,FSFormules.TableauFormules.Row])
then
begin
    OK:=true;
    k:=i;
    while not eof(FFormule)do
    begin
    read(FFormule,RFormule);
    Seek(FFormule,k);
    Write(FFormule,RFormule);
    k:=k+1;                      
    Seek(FFormule,k+1);
    end;
    Seek(FFormule,k);
    Truncate(FFormule);
    Seek(FFormule,0);
    i:=0;
end
else i:=i+1;
end;
closefile(FFormule);
end;

if(FSFormules.BitOKSuppModifTrier.Caption='Désactiver')
or(FSFormules.BitOKSuppModifTrier.Caption='Activer')
then
begin
ARow:=FSFormules.TableauFormules.Row;

if(FSFormules.BitOKSuppModifTrier.Caption='Désactiver')
then
begin
     FSFormules.TableauFormules.Cells[13,ARow]:='0';
     FSFormules.AfficheTexte.Caption:='Formule Désactivé!';
     FSFormules.AfficheTexte.Color:=clRed;
end;

if(FSFormules.BitOKSuppModifTrier.Caption='Activer')
then
begin
     FSFormules.TableauFormules.Cells[13,ARow]:='-1';
     ACol:=FSFormules.TableauFormules.Col;
     ARow:=FSFormules.TableauFormules.Row;
     FSFormules.AfficheTexte.Caption:=FSFormules.TableauFormules.Cells[ACol,ARow];
     FSFormules.AfficheTexte.Color:=clInactiveCaptionText;
end;

TypeProces:='Business';   FichierConserne:=FSFormules.EditCodeTypeFormuleAfficher.Text;
if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
end;

ChFormule:=Adresse;
assignfile(FFormule,ChFormule);
if FileExists(ChFormule)then
Reset(FFormule)
else Rewrite(FFormule);
     RFormule.PositionFormule:=Strtointeger(FSFormules.TableauFormules.Cells[1,ARow]);
     RFormule.CodeFormule:=FSFormules.TableauFormules.Cells[2,ARow];
     RFormule.Libelle:=FSFormules.TableauFormules.Cells[3,ARow];
     RFormule.FormuleTexte:=FSFormules.TableauFormules.Cells[4,ARow];
     RFormule.Condition:=FSFormules.TableauFormules.Cells[5,ARow];
     RFormule.Accumuler:=FSFormules.TableauFormules.Cells[6,ARow];
     RFormule.TypeAffichage:=FSFormules.TableauFormules.Cells[7,ARow];
     RFormule.Sens:=FSFormules.TableauFormules.Cells[8,ARow];
     RFormule.Base:=FSFormules.TableauFormules.Cells[9,ARow];
     RFormule.Taux:=FSFormules.TableauFormules.Cells[10,ARow];
     RFormule.Debit:=FSFormules.TableauFormules.Cells[11,ARow];
     RFormule.Credit:=FSFormules.TableauFormules.Cells[12,ARow];
     RFormule.Active:=strtobool(FSFormules.TableauFormules.Cells[13,ARow]);
     seek(FFormule,RFormule.PositionFormule);
     write(FFormule,RFormule);
     closefile(FFormule);

{seek(FFormule,0);
i:=0;
OK:=false;
while not eof(FFormule)and(OK=false)do
begin
    Read(FFormule,RFormule);
if((RFormule.PositionFormule=FSFormules.TableauFormules.Cells[1,FSFormules.TableauFormules.Row])
and(RFormule.CodeFormule=FSFormules.TableauFormules.Cells[2,FSFormules.TableauFormules.Row]))
then
begin
    OK:=true;
    k:=i;
    while not eof(FFormule)do
    begin
    read(FFormule,RFormule);
    Seek(FFormule,k);
    Write(FFormule,RFormule);
    k:=k+1;
    Seek(FFormule,k+1);
    end;
    Seek(FFormule,k);
    Truncate(FFormule);
    Seek(FFormule,0);
    i:=0;
end
else i:=i+1;
end;
closefile(FFormule);}
end;

if(FSFormules.BitOKSuppModifTrier.Caption='Modifier')then
begin//IF MODIFICATION.
TypeProces:='Business';   FichierConserne:=FSFormules.EditCodeTypeFormuleAfficher.Text;
if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
end;

ChFormule:=Adresse;
assignfile(FFormule,ChFormule);
if FileExists(ChFormule)then
Reset(FFormule);
ARow:=1;
while ARow<=FSFormules.TableauFormules.RowCount-1 do
begin
     RFormule.PositionFormule:=Strtointeger(FSFormules.TableauFormules.Cells[1,ARow]);
     RFormule.CodeFormule:=FSFormules.TableauFormules.Cells[2,ARow];
     RFormule.Libelle:=FSFormules.TableauFormules.Cells[3,ARow];
     RFormule.FormuleTexte:=FSFormules.TableauFormules.Cells[4,ARow];
     RFormule.Condition:=FSFormules.TableauFormules.Cells[5,ARow];
     RFormule.Accumuler:=FSFormules.TableauFormules.Cells[6,ARow];
     RFormule.TypeAffichage:=FSFormules.TableauFormules.Cells[7,ARow];
     RFormule.Sens:=FSFormules.TableauFormules.Cells[8,ARow];
     RFormule.Base:=FSFormules.TableauFormules.Cells[9,ARow];
     RFormule.Taux:=FSFormules.TableauFormules.Cells[10,ARow];
     RFormule.Debit:=FSFormules.TableauFormules.Cells[11,ARow];
     RFormule.Credit:=FSFormules.TableauFormules.Cells[12,ARow];
     RFormule.Active:=strtobool(FSFormules.TableauFormules.Cells[13,ARow]);
     seek(FFormule,RFormule.PositionFormule);
     write(FFormule,RFormule);
ARow:=ARow+1;
end;//BOUCLE TABLEAU FORMULES.
CloseFile(FFormule);
FSFormules.EditModification.Text:='';
if(FSFormules.EditClose.Text='OK')
then
    begin
         FSFormules.EditClose.Text:='';
         FSFormules.AfficheSuppModifTrier.Visible:=false;
         FSFormules.Close;
         exit;
    end;

end;//IF MODIFICATION.

if(FSFormules.BitOKSuppModifTrier.Caption='Trier')then
begin
TypeProces:='Business';   FichierConserne:=FSFormules.EditCodeTypeFormuleAfficher.Text;
if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
end;

ChFormule:=Adresse;
assignfile(FFormule,ChFormule);
if FileExists(ChFormule)then
Reset(FFormule)
else Rewrite(FFormule);
OK:=false;
while(OK=false)do
begin
i:=-1;
seek(FFormule,0);
OK:=true;
while not eof(FFormule)do
begin
    i:=i+1;
    seek(FFormule,i);
    Read(FFormule,RFormule);//0 F0
    if not eof(FFormule)then
    begin
         i:=i+1;
         seek(FFormule,i);
         Read(FFormule,RFormuleCopie);//1 F1
         if(RFormule.CodeFormule>RFormuleCopie.CodeFormule)then
         begin
              OK:=false;
              i:=i-1;
              seek(FFormule,i);
              write(FFormule,RFormuleCopie);
              i:=i+1;
              seek(FFormule,i);
              write(FFormule,RFormule);
         end;

    end;
    i:=i-1;
end;
end;
CloseFile(FFormule);

TypeProces:='Business';   FichierConserne:=FSFormules.EditCodeTypeFormuleAfficher.Text;
if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
end;

ChFormule:=Adresse;
assignfile(FFormule,ChFormule);
if FileExists(ChFormule)then
Reset(FFormule)
else Rewrite(FFormule);
i:=0;
while not eof(FFormule)do
begin
     read(FFormule,RFormule);
     RFormule.PositionFormule:=i;
     seek(FFormule,i);
     write(FFormule,RFormule);
     i:=i+1;
end;

end;

ProcAfficheFormule(FSFormules.TableauFormules,FSFormules.EditCodeTypeFormuleAfficher.Text);
FSFormules.TableauFormules.SetFocus;
FSFormules.AfficheSuppModifTrier.Visible:=false;
end;

procedure TFSFormules.BitNonSuppModifTrierClick(Sender: TObject);
begin
FSFormules.EditModification.Text:='';
if(FSFormules.EditClose.Text='OK')
then
    begin
         FSFormules.EditClose.Text:='';
         FSFormules.AfficheSuppModifTrier.Visible:=false;
         FSFormules.Close;
         exit;
    end;
FSFormules.TableauFormules.SetFocus;
FSFormules.AfficheSuppModifTrier.Visible:=false;
end;

procedure TFSFormules.TableauFormulesKeyPress(Sender: TObject;
  var Key: Char);
begin
FSFormules.EditModification.Text:='Modification';

if(FinArchivage)
or(FSFormules.TableauFormules.Cells[13,FSFormules.TableauFormules.Row]='0')
then
begin
    key:=#13;
    showmessage('Modification non autorisé !');
end
else
begin// UNITE ARCHIVE::::::::::::::::::::::::::::

end;// UNITE ARCHIVE::::::::::::::::::::::::::::

end;

procedure TFSFormules.TableauFormulesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=VK_RETURN then
begin

if(FinArchivage=false)then
begin// UNITE ARCHIVE::::::::::::::::::::::::::::
     if(FSFormules.TableauFormules.Cells[0,1]='N')then
     begin
          FSFormules.BitNouvelleFormule.SetFocus;
     end
     else
     begin
     FSFormules.AfficheSuppModifTrier.Visible:=true;
     FSFormules.BitOKSuppModifTrier.Caption:='Modifier';
     FSFormules.BitOKSuppModifTrier.SetFocus;
     end;
end// UNITE ARCHIVE::::::::::::::::::::::::::::
else
begin
    showmessage('Modification non autorisé !');
end;
end;
end;

procedure TFSFormules.BitBtn1Click(Sender: TObject);
begin
if(FinArchivage=false)then
begin// UNITE ARCHIVE::::::::::::::::::::::::::::
FSFormules.AfficheSuppModifTrier.Visible:=true;
FSFormules.BitOKSuppModifTrier.Caption:='Activer';
FSFormules.BitOKSuppModifTrier.SetFocus;
end// UNITE ARCHIVE::::::::::::::::::::::::::::
else
begin
    showmessage('Modification non autorisé !');
end;
end;

procedure TFSFormules.BitBtn3Click(Sender: TObject);
begin
FSFormules.AfficheTypeFormule.Visible:=false;

if(FSFormules.AfficheOperationTrieSupp.Height=35)
then FSFormules.AfficheOperationTrieSupp.Height:=233
else FSFormules.AfficheOperationTrieSupp.Height:=35;
end;

procedure TFSFormules.BitBtn2Click(Sender: TObject);
begin

if(FinArchivage=false)then
begin// UNITE ARCHIVE::::::::::::::::::::::::::::
FSFormules.AfficheSuppModifTrier.Visible:=true;
FSFormules.BitOKSuppModifTrier.Caption:='Supprimer';
FSFormules.BitOKSuppModifTrier.SetFocus;
end// UNITE ARCHIVE::::::::::::::::::::::::::::
else
begin
    showmessage('Modification non autorisé !');
end;

FSFormules.AfficheOperationTrieSupp.Height:=35;

end;

procedure TFSFormules.EditRechercheFormuleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFormules.BitRecherche.SetFocus;
end;

end;

procedure TFSFormules.EditRechercheFormuleKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
FSFormules.EditARow.Text:='0';
FSFormules.EditACol.Text:='1';
end;

procedure TFSFormules.BitRechercheClick(Sender: TObject);
var ACol,ARow,l:integer;  OKFormule:boolean;
begin

if(strtointeger(FSFormules.EditACol.Text)<12)
then
begin
     FSFormules.EditACol.Text:=inttostr(strtointeger(FSFormules.EditACol.Text)+1);
end
else
begin
     FSFormules.EditACol.Text:='2';

     if(strtointeger(FSFormules.EditARow.Text)<FSFormules.TableauFormules.RowCount-1)
     then FSFormules.EditARow.Text:=inttostr(strtointeger(FSFormules.EditARow.Text)+1)
     else FSFormules.EditARow.Text:='0';
end;

ARow:=strtointeger(FSFormules.EditARow.Text);
ACol:=strtointeger(FSFormules.EditACol.Text);


OKFormule:=false;
while(ARow<=FSFormules.TableauFormules.RowCount-1)and(OKFormule=false)do
begin
     while(ACol<=FSFormules.TableauFormules.ColCount-1)and(OKFormule=false)do
     begin
          if(longueur(FSFormules.TableauFormules.Cells[ACol,ARow])>=longueur(FSFormules.EditRechercheFormule.Text))then
          begin
               l:=1;
               while(l<=longueur(FSFormules.TableauFormules.Cells[ACol,ARow])-longueur(FSFormules.EditRechercheFormule.Text)+1)do
               begin
                    if(Firstlaters(Lastlaters(FSFormules.TableauFormules.Cells[ACol,ARow],longueur(FSFormules.TableauFormules.Cells[ACol,ARow])-l+1),longueur(FSFormules.EditRechercheFormule.Text))=FSFormules.EditRechercheFormule.Text)then
                    begin
                         OKFormule:=true;
                         FSFormules.TableauFormules.Row:=ARow;
                         FSFormules.TableauFormules.Col:=ACol;
                         FSFormules.TableauFormules.SetFocus;
                    end;
               l:=l+1;
               end;
          end;
     ACol:=ACol+1;
     FSFormules.EditACol.Text:=inttostr(ACol);
     end;
     if(OKFormule=false)then ACol:=1;
ARow:=ARow+1;
if(OKFormule<>true)then FSFormules.EditARow.Text:=inttostr(ARow);
end;

end;

procedure TFSFormules.TypeFormuleAfficherClick(Sender: TObject);
begin
FSFormules.AfficheTypeFormule.Visible:=true;
FSFormules.AfficheTypeAffichageNonVisible.Visible:=false;
ListeTypeFormule(FSFormules.TableauTypeFormule);

FSFormules.TableauTypeFormule.RowCount:=FSFormules.TableauTypeFormule.RowCount+1;

FSFormules.TableauTypeFormule.Cells[0,FSFormules.TableauTypeFormule.RowCount-1]:=inttostr(FSFormules.TableauTypeFormule.RowCount-1);
FSFormules.TableauTypeFormule.Cells[1,FSFormules.TableauTypeFormule.RowCount-1]:='?';
FSFormules.TableauTypeFormule.Cells[2,FSFormules.TableauTypeFormule.RowCount-1]:='Autres';
FSFormules.TableauTypeFormule.Cells[3,FSFormules.TableauTypeFormule.RowCount-1]:='Importer dans un autre fichier';

AjusterColWidth(FSFormules.TableauTypeFormule,'0'+inttostr(i+1),'1');
end;

procedure TFSFormules.EditCodeTypeFormuleAfficherEnter(Sender: TObject);
begin
FSFormules.AfficheTypeFormule.Visible:=true;
ListeTypeFormule(FSFormules.TableauTypeFormule);
end;

procedure TFSFormules.BitNouveauTFClick(Sender: TObject);
var i:integer;
begin
OpenFParc(RParc);
ChTypeFormule:=RParc.Parcours+'\'+Exercice+'FTypeFormule';
assignfile(FTypeFormule,ChTypeFormule);
if FileExists(ChTypeFormule)then
Reset(FTypeFormule)
else Rewrite(FTypeFormule);
seek(FTypeFormule,0);
i:=0;
while not eof(FTypeFormule)do
begin
    Read(FTypeFormule,RTypeFormule);
    i:=i+1;
end;
CloseFile(FTypeFormule);

FSFormules.AfficheOperationTypeFormule.Visible:=true;
FSFormules.BitOperationTypeFormule.Kind:=FSFormules.BitNouveauTF.Kind;
FSFormules.BitOperationTypeFormule.Caption:='Valider';

FSFormules.EditPositionTypeFormule.Text:=inttostr(i);
FSFormules.EditCodeTypeFormule.Text:='Formule '+Completezerogauche(inttostr(i+1),'2');
FSFormules.EditDesignationTypeFormule.Text:='';

FSFormules.EditDesignationTypeFormule.SetFocus;
end;

procedure TFSFormules.BitModifierTFClick(Sender: TObject);
begin
FSFormules.AfficheOperationTypeFormule.Visible:=true;
FSFormules.BitOperationTypeFormule.Kind:=FSFormules.BitModifierTF.Kind;
FSFormules.BitOperationTypeFormule.Caption:='Valider';

FSFormules.EditPositionTypeFormule.Text:=FSFormules.TableauTypeFormule.Cells[1,FSFormules.TableauTypeFormule.Row];
FSFormules.EditCodeTypeFormule.Text:=FSFormules.TableauTypeFormule.Cells[2,FSFormules.TableauTypeFormule.Row];
FSFormules.EditDesignationTypeFormule.Text:=FSFormules.TableauTypeFormule.Cells[3,FSFormules.TableauTypeFormule.Row];

FSFormules.BitOperationTypeFormule.SetFocus;
end;

procedure TFSFormules.BitSupprimerTFClick(Sender: TObject);
begin
FSFormules.AfficheOperationTypeFormule.Visible:=true;
FSFormules.BitOperationTypeFormule.Kind:=FSFormules.BitSupprimerTF.Kind;
FSFormules.BitOperationTypeFormule.Caption:=FSFormules.BitSupprimerTF.Caption;

FSFormules.EditPositionTypeFormule.Text:=FSFormules.TableauTypeFormule.Cells[1,FSFormules.TableauTypeFormule.Row];
FSFormules.EditCodeTypeFormule.Text:=FSFormules.TableauTypeFormule.Cells[2,FSFormules.TableauTypeFormule.Row];
FSFormules.EditDesignationTypeFormule.Text:=FSFormules.TableauTypeFormule.Cells[3,FSFormules.TableauTypeFormule.Row];
FSFormules.BitOperationTypeFormule.SetFocus;
end;

procedure TFSFormules.BitBtn7Click(Sender: TObject);
begin
FSFormules.AfficheTypeFormule.Visible:=false;
end;

procedure TFSFormules.BitOperationTypeFormuleClick(Sender: TObject);
var i:integer;  OKTypeFormule:boolean;
begin

if(FSFormules.BitOperationTypeFormule.Caption='Valider')then
begin
     OpenFParc(RParc);
     ChTypeFormule:=RParc.Parcours+'\'+Exercice+'FTypeFormule';
     assignfile(FTypeFormule,ChTypeFormule);
     if FileExists(ChTypeFormule)then
     Reset(FTypeFormule)
     else Rewrite(FTypeFormule);
     seek(FTypeFormule,0);
     i:=0;
     OKTypeFormule:=false;
     while not eof(FTypeFormule)and(OKTypeFormule=false)do
     begin
         Read(FTypeFormule,RTypeFormule);
         if(RTypeFormule.PositionTypeFormule=strtointeger(FSFormules.EditPositionTypeFormule.Text))then
         begin
              OKTypeFormule:=true;
         end
         else i:=i+1;
     end;

     seek(FTypeFormule,i);
     RTypeFormule.PositionTypeFormule:=strtointeger(FSFormules.EditPositionTypeFormule.Text);
     RTypeFormule.CodeTypeFormule:=FSFormules.EditCodeTypeFormule.Text;
     RTypeFormule.DesignationTypeFormule:=FSFormules.EditDesignationTypeFormule.Text;
     write(FTypeFormule,RTypeFormule);

     CloseFile(FTypeFormule);
end;

if(FSFormules.BitOperationTypeFormule.Caption='Supprimer')then
begin
     DeleteFTypeFormule(strtointeger(FSFormules.EditPositionTypeFormule.Text),OKTypeFormule);
end;

ListeTypeFormule(FSFormules.TableauTypeFormule);
FSFormules.AfficheOperationTypeFormule.Visible:=false;
end;

procedure TFSFormules.TableauTypeFormuleClick(Sender: TObject);
begin
FSFormules.AfficheOperationTypeFormule.Visible:=false;
end;

procedure TFSFormules.TableauTypeFormuleDblClick(Sender: TObject);
begin
     FSFormules.EditCodeTypeFormuleAfficher.Text:=FSFormules.TableauTypeFormule.Cells[2,FSFormules.TableauTypeFormule.Row];
     FSFormules.TypeFormuleAfficher.Caption:=FSFormules.TableauTypeFormule.Cells[3,FSFormules.TableauTypeFormule.Row];

     if(FSFormules.EditCodeTypeFormuleAfficher.Text='Autres')then
     begin
          OuvrirFichierFormule;
     end
     else
     begin
          ProcAfficheFormule(FSFormules.TableauFormules,FSFormules.EditCodeTypeFormuleAfficher.Text);
     end;

FSFormules.AfficheTypeFormule.Visible:=false;
end;

procedure TFSFormules.BitBtn4Click(Sender: TObject);
begin
FSFormules.AfficheOperationTrieSupp.Height:=35;
FSFormules.AfficheOperationDupliqueTypeFormule.Visible:=true;
ListeTypeFormule(FSFormules.TableauDupliqueTypeFormule);

FSFormules.TableauDupliqueTypeFormule.RowCount:=FSFormules.TableauDupliqueTypeFormule.RowCount+1;

FSFormules.TableauDupliqueTypeFormule.Cells[0,FSFormules.TableauDupliqueTypeFormule.RowCount-1]:=inttostr(FSFormules.TableauDupliqueTypeFormule.RowCount-1);
FSFormules.TableauDupliqueTypeFormule.Cells[1,FSFormules.TableauDupliqueTypeFormule.RowCount-1]:='?';
FSFormules.TableauDupliqueTypeFormule.Cells[2,FSFormules.TableauDupliqueTypeFormule.RowCount-1]:='Autres';
FSFormules.TableauDupliqueTypeFormule.Cells[3,FSFormules.TableauDupliqueTypeFormule.RowCount-1]:='Importer dans un autre fichier';

AjusterColWidth(FSFormules.TableauDupliqueTypeFormule,'0'+inttostr(i+1),'1');
end;

procedure TFSFormules.TableauDupliqueTypeFormuleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var     TypeProces,FichierConserne,Adresse:string;
begin

if(FSFormules.TableauDupliqueTypeFormule.Cells[1,FSFormules.TableauDupliqueTypeFormule.Row]<>'?')then
begin
      if(FSFormules.TableauDupliqueTypeFormule.Cells[2,FSFormules.TableauDupliqueTypeFormule.Row]=FSFormules.EditCodeTypeFormuleAfficher.Text)then
      begin
           showmessage('Vous ne pouvez pas duplquer le mème type !');
      end
      else
      begin
            TypeProces:='Business';   FichierConserne:=FSFormules.EditCodeTypeFormuleAfficher.Text;
            if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
            begin
                 AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
            end;

           ChFormuleCopie:=Adresse;
           assignfile(FFormuleCopie,ChFormuleCopie);
           if FileExists(ChFormuleCopie)then
           Reset(FFormuleCopie)
           else Rewrite(FFormuleCopie);
           seek(FFormuleCopie,0);
           Truncate(FFormuleCopie);


           TypeProces:='Business';   FichierConserne:=FSFormules.TableauDupliqueTypeFormule.Cells[2,FSFormules.TableauDupliqueTypeFormule.Row];
           if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
           begin
                AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
           end;

           ChFormule:=Adresse;
           assignfile(FFormule,ChFormule);
           if FileExists(ChFormule)then
           Reset(FFormule)
           else Rewrite(FFormule);
           seek(FFormule,0);
           i:=0;
           while not eof(FFormule)do
           begin
               Read(FFormule,RFormule);
               seek(FFormuleCopie,i);
               write(FFormuleCopie,RFormule);
               i:=i+1;
           end;

           CloseFile(FFormule);
           CloseFile(FFormuleCopie);

           FSFormules.AfficheOperationDupliqueTypeFormule.Visible:=false;
           ProcAfficheFormule(FSFormules.TableauFormules,FSFormules.EditCodeTypeFormuleAfficher.Text);
      end;
end
else
begin
     OuvrirFichierFormule;
end;

end;

procedure TFSFormules.BitBtn5Click(Sender: TObject);
var   i:integer;  TypeProces,FichierConserne,Adresse:string;
begin
if(FSFormules.EditCodeTypeFormuleAfficher.Text<>'')then
begin

     TypeProces:='Business';   FichierConserne:=FSFormules.EditCodeTypeFormuleAfficher.Text;
     if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
     end;

     ChFormule:=Adresse;
     assignfile(FFormule,ChFormule);
     if FileExists(ChFormule)then
     begin
          FSFormules.AfficheInsererModele.Visible:=true;
          FSFormules.RBOKInsererModel.Checked:=false;
          FSFormules.BitNonInsererModel.SetFocus;
     end
     else
     begin
          ProcInserModelFormule(FSFormules.EditCodeTypeFormuleAfficher.Text);
          ProcAfficheFormule(FSFormules.TableauFormules,FSFormules.EditCodeTypeFormuleAfficher.Text);
     end;
end;

end;

procedure TFSFormules.BitNonInsererModelClick(Sender: TObject);
begin
FSFormules.AfficheInsererModele.Visible:=false;
end;

procedure TFSFormules.BitOKInsererModelClick(Sender: TObject);
begin

if(FSFormules.RBOKInsererModel.Checked=true)then
begin
     ProcInserModelFormule(FSFormules.EditCodeTypeFormuleAfficher.Text);
     ProcAfficheFormule(FSFormules.TableauFormules,FSFormules.EditCodeTypeFormuleAfficher.Text);
end;
FSFormules.AfficheInsererModele.Visible:=false;
end;

procedure TFSFormules.StaticText6MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
FSFormules.StaticText6.Color:=$00E7FC94;
FSFormules.StaticText7.Color:=$00F5FED3;
FSFormules.StaticText8.Color:=$00F5FED3;
FSFormules.StaticText9.Color:=$00F5FED3;
FSFormules.StaticText10.Color:=$00F5FED3;
FSFormules.StaticText11.Color:=$00F5FED3;

if(FSFormules.TableauFormules.Width-
  (FSFormules.AfficheFonctions.Left+
   FSFormules.AfficheFonctions.Width)>=
   FSFormules.AfficheMaxMin.Width)
then
begin
FSFormules.AfficheMaxMin.Left:=
FSFormules.AfficheFonctions.Left+
FSFormules.AfficheFonctions.Width;
end
else
begin
FSFormules.AfficheMaxMin.Left:=
FSFormules.AfficheFonctions.Left-
FSFormules.AfficheFonctions.Width;
end;

FSFormules.AfficheMaxMin.Top:=
FSFormules.AfficheFonctions.Top+
FSFormules.StaticText6.Top;

FSFormules.AfficheMaxMin.Visible:=true;
FSFormules.AfficheRubPers.Visible:=false;
FSFormules.AfficheIdentificateurEntreprise.Visible:=false;
FSFormules.TableauTypeFormulesBaremes.Visible:=false;
FSFormules.TextMaxMin.Caption:=WithoutChar(StaticText6.Caption,' ');
FSFormules.EditMaxMin1.Text:='';
FSFormules.EditMaxMin2.Text:='';

FSFormules.EditMaxMin1.SetFocus;
end;

procedure TFSFormules.StaticText8MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
FSFormules.StaticText8.Color:=$00E7FC94;
FSFormules.StaticText6.Color:=$00F5FED3;
FSFormules.StaticText7.Color:=$00F5FED3;
FSFormules.StaticText9.Color:=$00F5FED3;
FSFormules.StaticText10.Color:=$00F5FED3;
FSFormules.StaticText11.Color:=$00F5FED3;

if(FSFormules.TableauFormules.Width-
  (FSFormules.AfficheFonctions.Left+
   FSFormules.AfficheFonctions.Width)>=
   FSFormules.AfficheMaxMin.Width)
then
begin
FSFormules.AfficheMaxMin.Left:=
FSFormules.AfficheFonctions.Left+
FSFormules.AfficheFonctions.Width;
end
else
begin
FSFormules.AfficheMaxMin.Left:=
FSFormules.AfficheFonctions.Left-
FSFormules.AfficheFonctions.Width;
end;

FSFormules.AfficheMaxMin.Top:=
FSFormules.AfficheFonctions.Top+
FSFormules.StaticText8.Top;

FSFormules.AfficheMaxMin.Visible:=true;
FSFormules.AfficheRubPers.Visible:=false;
FSFormules.AfficheIdentificateurEntreprise.Visible:=false;
FSFormules.TableauTypeFormulesBaremes.Visible:=false;
FSFormules.TextMaxMin.Caption:=WithoutChar(StaticText8.Caption,' ');
FSFormules.EditMaxMin1.Text:='';
FSFormules.EditMaxMin2.Text:='';

FSFormules.EditMaxMin1.SetFocus;
end;

procedure TFSFormules.BitOKMaxMinClick(Sender: TObject);
begin
FSFormules.TableauFormules.Cells[4,FSFormules.TableauFormules.Row]:=
FSFormules.TableauFormules.Cells[4,FSFormules.TableauFormules.Row]+
FSFormules.TextMaxMin.Caption+'('+FSFormules.EditMaxMin1.Text+'&'+FSFormules.EditMaxMin2.Text+')';
FSFormules.AfficheOptions.Visible:=false;
FSFormules.AfficheFonctions.Visible:=false;
FSFormules.AfficheRubPers.Visible:=false;
FSFormules.AfficheMaxMin.Visible:=false;
end;

procedure TFSFormules.EditMaxMin1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFormules.EditMaxMin2.SetFocus;
end;

end;

procedure TFSFormules.EditMaxMin2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFormules.BitOKMaxMin.SetFocus;
end;

end;

procedure TFSFormules.BitBtn6Click(Sender: TObject);
var  R,C,l:integer; Registre,RegistreCopie:Registres; FormuleTexte ,Accumuler,TypeAffichage,CodeFormule,Variable,Resultat:string;
     OKFormule,OKPositifMontant:boolean;
begin
Variable:='';
CodeFormule:='';
TypeAffichage:='';
Accumuler:='';
Resultat:='';
FormuleTexte:='§MaxNum('+FSFormules.Edit1.Text+'&'+FSFormules.Edit2.Text+')';
CalculeFormule(Variable,CodeFormule,TypeAffichage,Accumuler,FormuleTexte,FSFormules.EditCodeTypeFormuleAfficher.Text,TableauFormules,'',0,0,Registre,Registre,Resultat);
FSFormules.Edit3.Text:=Resultat;
end;

procedure TFSFormules.BitBtn10Click(Sender: TObject);
var  R,C,l:integer; Registre,RegistreCopie:Registres; FormuleTexte ,Accumuler,TypeAffichage,CodeFormule,Variable,Resultat:string;
     OKFormule,OKPositifMontant:boolean;
begin
Variable:='';
CodeFormule:='';
TypeAffichage:='';
Accumuler:='';
Resultat:='';
FormuleTexte:='§MinNum('+FSFormules.Edit1.Text+'&'+FSFormules.Edit2.Text+')';
//FormuleTexte:='§INT('+FSFormules.Edit1.Text+')';
CalculeFormule(Variable,CodeFormule,TypeAffichage,Accumuler,FormuleTexte,FSFormules.EditCodeTypeFormuleAfficher.Text,TableauFormules,'',0,0,Registre,Registre,Resultat);
FSFormules.Edit3.Text:=Resultat;

//FormuleTexte:='§INT('+FSFormules.Edit1.Text+')';
end;

procedure TFSFormules.StaticCopierSelectionMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
FSFormules.StaticCopierSelection.Color:=$00E7FC94;
FSFormules.StaticCopierTous.Color:=$00F5FED3;
FSFormules.StaticColler.Color:=$00F5FED3;
end;

procedure TFSFormules.StaticCopierTousMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
FSFormules.StaticCopierTous.Color:=$00E7FC94;
FSFormules.StaticCopierSelection.Color:=$00F5FED3;
FSFormules.StaticColler.Color:=$00F5FED3;
end;

procedure TFSFormules.StaticCollerMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
FSFormules.StaticColler.Color:=$00E7FC94;
FSFormules.StaticCopierTous.Color:=$00F5FED3;
FSFormules.StaticCopierSelection.Color:=$00F5FED3;
end;

procedure TFSFormules.StaticCopierSelectionClick(Sender: TObject);
begin
     FSFormules.AfficheOptions.Visible:=false;
     FSFormules.AfficheCopie.Visible:=false;

     FSFormules.TableauFormulesCopie.ColCount:=FSFormules.TableauFormules.ColCount;
     FSFormules.TableauFormulesCopie.RowCount:=2;
     FSFormules.TableauFormulesCopie.Rows[1].Text:='';
     FSFormules.TableauFormulesCopie.Rows[1].Text:=FSFormules.TableauFormules.Rows[FSFormules.TableauFormules.Row].Text;
     FSFormules.TableauFormulesCopie.Cells[0,0]:='1';
end;

procedure TFSFormules.StaticCopierTousClick(Sender: TObject);
var  R:integer;
begin
     FSFormules.AfficheOptions.Visible:=false;
     FSFormules.AfficheCopie.Visible:=false;

     FSFormules.TableauFormulesCopie.ColCount:=FSFormules.TableauFormules.ColCount;
     FSFormules.TableauFormulesCopie.RowCount:=FSFormules.TableauFormules.RowCount;
     for R:=1 to FSFormules.TableauFormules.RowCount-1 do
     begin
          FSFormules.TableauFormulesCopie.Rows[R].Text:='';
          FSFormules.TableauFormulesCopie.Rows[R].Text:=FSFormules.TableauFormules.Rows[R].Text;
     end;
     FSFormules.TableauFormulesCopie.Cells[0,0]:='N';
end;

procedure TFSFormules.StaticCollerClick(Sender: TObject);
var  R:integer;
begin
     FSFormules.AfficheOptions.Visible:=false;
     FSFormules.AfficheCopie.Visible:=false;

     if(FSFormules.TableauFormulesCopie.Cells[0,0]='N')then
     begin
          FSFormules.TableauFormules.RowCount:=FSFormules.TableauFormulesCopie.RowCount;
          for R:=1 to FSFormules.TableauFormulesCopie.RowCount-1 do
          begin
               FSFormules.TableauFormules.Rows[R].Text:='';
               FSFormules.TableauFormules.Rows[R].Text:=FSFormules.TableauFormulesCopie.Rows[R].Text;
          end;
     end
     else
     begin
          FSFormules.TableauFormules.Rows[FSFormules.TableauFormules.Row].Text:=FSFormules.TableauFormulesCopie.Rows[1].Text;
     end;
end;

procedure TFSFormules.StaticText9MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var  i:integer;
begin
FSFormules.StaticText9.Color:=$00E7FC94;
FSFormules.StaticText6.Color:=$00F5FED3;
FSFormules.StaticText7.Color:=$00F5FED3;
FSFormules.StaticText8.Color:=$00F5FED3;
FSFormules.StaticText10.Color:=$00F5FED3;
FSFormules.StaticText11.Color:=$00F5FED3;

if(FSFormules.TableauFormules.Width-(FSFormules.AfficheFonctions.Left+FSFormules.AfficheFonctions.Width)>=FSFormules.AfficheIdentificateurEntreprise.Width)
then
begin
      FSFormules.AfficheIdentificateurEntreprise.Left:=FSFormules.AfficheFonctions.Left+FSFormules.AfficheFonctions.Width;
end
else
begin
      FSFormules.AfficheIdentificateurEntreprise.Left:=FSFormules.AfficheFonctions.Left-FSFormules.AfficheFonctions.Width;
      
end;

ListeIdentificateurEntrepriseComboBox(FSFormules.EditListeIdentificateurEntreprise,false,'');

FSFormules.AfficheIdentificateurEntreprise.Top:=FSFormules.AfficheFonctions.Top+FSFormules.StaticText9.Top;

FSFormules.AfficheIdentificateurEntreprise.Visible:=true;
FSFormules.AfficheMaxMin.Visible:=false;
FSFormules.AfficheRubPers.Visible:=false;
FSFormules.TableauTypeFormulesBaremes.Visible:=false;
end;

procedure TFSFormules.EditListeIdentificateurEntrepriseSelect(
  Sender: TObject);
begin
FSFormules.TableauFormules.Cells[4,FSFormules.TableauFormules.Row]:=
FSFormules.TableauFormules.Cells[4,FSFormules.TableauFormules.Row]+
WithoutChar(StaticText9.Caption,' ')+'('+FSFormules.EditListeIdentificateurEntreprise.Text+')';
FSFormules.AfficheOptions.Visible:=false;
FSFormules.AfficheFonctions.Visible:=false;
FSFormules.AfficheIdentificateurEntreprise.Visible:=false;

end;

procedure TFSFormules.FormShow(Sender: TObject);
begin
ActiverNomForm(1,(Sender as TComponent).Name);
     FSFormules.Caption:=RRegistre.Repertoire+' - Exercice '+RRegistre.Exercice+' - Formules de Calcule';

     FSFormules.AfficheOperationTrieSupp.Height:=35;
end;

procedure TFSFormules.BitBtn13Click(Sender: TObject);
begin
     FSFormules.AfficheOperationDupliqueTypeFormule.Visible:=false;
end;

procedure TFSFormules.BitBtn15Click(Sender: TObject);
var i:integer;   TypeProces,FichierConcerner,Adresse:string;
begin
     FSFormules.AfficheOperationTrieSupp.Height:=35;

     FSFormules.EnregistrerUnFichier.FileName:=FSFormules.EditCodeTypeFormuleAfficher.Text+' '+FSFormules.TypeFormuleAfficher.Caption+'.dll';

     if(FSFormules.EnregistrerUnFichier.Execute=true)then
     begin
          TypeProces:='Business';
          FichierConcerner:=FSFormules.EditCodeTypeFormuleAfficher.Text;
          if not(FunctionAdresseProces(TypeProces,FichierConcerner,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
               AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerner+' recherché !');
          end;

          ChFormuleCopie:=FSFormules.EnregistrerUnFichier.FileName;
          assignfile(FFormuleCopie,ChFormuleCopie);
          if FileExists(ChFormuleCopie)
          then Reset(FFormuleCopie)
          else Rewrite(FFormuleCopie);
          seek(FFormuleCopie,0);
          Truncate(FFormuleCopie);

          ChFormule:=Adresse;
          assignfile(FFormule,ChFormule);
          if FileExists(ChFormule)then
          Reset(FFormule)
          else begin Rewrite(FFormule); exit end;
          seek(FFormule,0);
          i:=0;
          while not eof(FFormule)do
          begin
               Read(FFormule,RFormule);
               seek(FFormuleCopie,i);
               write(FFormuleCopie,RFormule);
          i:=i+1;
          end;
          CloseFile(FFormule);
          CloseFile(FFormuleCopie);
     end;
end;

Procedure OuvrirFichierFormule;
var i,MaxCodeFormule:integer; OKTypeFormule:boolean;
begin
     if(FSFormules.OuvrirFichier.Execute=true)then
     begin
          if(FSFormules.EditCodeTypeFormuleAfficher.Text='Autres')then
          begin
               OpenFParc(RParc);
               ChTypeFormule:=RParc.Parcours+'\'+Exercice+'FTypeFormule';
               assignfile(FTypeFormule,ChTypeFormule);
               if FileExists(ChTypeFormule)then
               Reset(FTypeFormule)
               else Rewrite(FTypeFormule);
               seek(FTypeFormule,0);
               i:=0;
               MaxCodeFormule:=1;
               OKTypeFormule:=false;
               while not eof(FTypeFormule)do
               begin
                   Read(FTypeFormule,RTypeFormule);
                   if(MaxCodeFormule<strtointeger(Midellaters(RTypeFormule.CodeTypeFormule,9,10)))then MaxCodeFormule:=strtointeger(Midellaters(RTypeFormule.CodeTypeFormule,9,10));

                   if(RTypeFormule.CodeTypeFormule=FSFormules.EditCodeTypeFormuleAfficher.Text)then
                   begin
                        OKTypeFormule:=true;
                   end;

               i:=i+1;
               end;

               if(OKTypeFormule=false)then
               begin
                    MaxCodeFormule:=MaxCodeFormule+1;
                    FSFormules.EditCodeTypeFormuleAfficher.Text:='Formule '+completezerogauche(inttostr(MaxCodeFormule),'2');
               end
               else
               begin
                    FSFormules.EditCodeTypeFormuleAfficher.Text:=Firstlaters(ExtractFileName(FSFormules.OuvrirFichier.FileName),10);
               end;

               FSFormules.TypeFormuleAfficher.Caption:=MidelLaters(ExtractFileName(FSFormules.OuvrirFichier.FileName),11,longueur(ExtractFileName(FSFormules.OuvrirFichier.FileName))-4);

               seek(FTypeFormule,i);
               RTypeFormule.PositionTypeFormule:=i;
               RTypeFormule.CodeTypeFormule:=FSFormules.EditCodeTypeFormuleAfficher.Text;
               RTypeFormule.DesignationTypeFormule:=FSFormules.TypeFormuleAfficher.Caption;
               write(FTypeFormule,RTypeFormule);

               CloseFile(FTypeFormule);
          end;

     if(Firstlaters(ExtractFileName(FSFormules.OuvrirFichier.FileName),7)='Formule')then
     begin
          ProcAfficheAutreFormule(FSFormules.TableauFormules,FSFormules.OuvrirFichier.FileName);
     end;
     FSFormules.AfficheOperationDupliqueTypeFormule.Visible:=false;
     end;
end;

procedure TFSFormules.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ActiverNomForm(0,(Sender as TComponent).Name);
end;

procedure TFSFormules.TableauFormulesDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSFormules.BitBtn14Click(Sender: TObject);
begin
     FSFormules.AfficheTypeAffichageNonVisible.Visible:=false;
end;

procedure TFSFormules.BitTypeNonVisibleClick(Sender: TObject);
var  R,l,lRow:integer;  OKType:boolean;
begin
     FSFormules.AfficheTypeAffichageNonVisible.Visible:=true;

     FSFormules.TableauTypeAffichage.ColCount:=3;
     FSFormules.TableauTypeAffichage.Cols[0].Text:='N°';
     FSFormules.TableauTypeAffichage.Cols[1].Text:='Type';
     FSFormules.TableauTypeAffichage.Cols[2].Text:='Sélect';

     FSFormules.TableauTypeAffichage.RowCount:=2;
     FSFormules.TableauTypeAffichage.Rows[1].Text:='';

     lRow:=0;

     for R:=1 to FSFormules.TableauFormules.RowCount-1 do
     begin
          l:=1;
          OKType:=false;
          while(l<=lRow)and(OKType=false)do
          begin
               if(FSFormules.TableauTypeAffichage.Cells[1,l]=FSFormules.TableauFormules.Cells[7,R])then OKType:=true;
          l:=l+1;
          end;

          if(OKType=false)then
          begin
               lRow:=lRow+1;
               FSFormules.TableauTypeAffichage.Rows[lRow].Text:=inttostr(lRow);
               FSFormules.TableauTypeAffichage.Cells[1,lRow]:=FSFormules.TableauFormules.Cells[7,R];
               if(FunctTypeAffichageFormuleNonVisible(FSFormules.EditCodeTypeFormuleAfficher.Text,FSFormules.EditListeTableauConserne.Text,FSFormules.TableauTypeAffichage.Cells[1,lRow]))
               then FSFormules.TableauTypeAffichage.Cells[2,lRow]:='OK';
          end;
     end; 

     if(lRow>0)then FSFormules.TableauTypeAffichage.RowCount:=lRow+1
               else FSFormules.TableauTypeAffichage.RowCount:=2;

     AjusterColWidth(FSFormules.TableauTypeAffichage,'','');
end;

procedure TFSFormules.TableauTypeAffichageDblClick(Sender: TObject);
var  i,R:integer; FichierConcerner:string;
begin
     if(FSFormules.TableauTypeAffichage.Cells[2,FSFormules.TableauTypeAffichage.Row]='')
     then FSFormules.TableauTypeAffichage.Cells[2,FSFormules.TableauTypeAffichage.Row]:='OK'
     else FSFormules.TableauTypeAffichage.Cells[2,FSFormules.TableauTypeAffichage.Row]:='';

     TypeProces:='Business';
     FichierConcerner:='FTypeAffichageFormuleNonVisible '+FSFormules.EditListeTableauConserne.Text+' '+FSFormules.EditCodeTypeFormuleAfficher.Text;
     if not(FunctionAdresseProces(TypeProces,FichierConcerner,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          //AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerner+' recherché !');
     end;

     ChTypeAffichageFormuleNonVisible:=Adresse;
     assignfile(FTypeAffichageFormuleNonVisible,ChTypeAffichageFormuleNonVisible);
     if FileExists(ChTypeAffichageFormuleNonVisible)then
     Reset(FTypeAffichageFormuleNonVisible)
     else Rewrite(FTypeAffichageFormuleNonVisible);
     seek(FTypeAffichageFormuleNonVisible,0);
     Truncate(FTypeAffichageFormuleNonVisible);

     i:=0;
     for R:=1 to FSFormules.TableauTypeAffichage.RowCount-1 do
     begin
          if(FSFormules.TableauTypeAffichage.Cells[2,R]='OK')then
          begin
               RTypeAffichageFormuleNonVisible.PositionTAFNV:=i;
               RTypeAffichageFormuleNonVisible.TypeNonVisible:=FSFormules.TableauTypeAffichage.Cells[1,R];
               seek(FTypeAffichageFormuleNonVisible,i);
               Write(FTypeAffichageFormuleNonVisible,RTypeAffichageFormuleNonVisible);
               i:=i+1;
          end;
     end;
     CloseFile(FTypeAffichageFormuleNonVisible);
end;

Function FunctTypeAffichageFormuleNonVisible(CodeTypeFormule,TableauConserne,TypeAffichageFormule:string):boolean;
var  FichierConcerner:string; OKTypeNonVisible:boolean;
begin
     OKTypeNonVisible:=false;

     TypeProces:='Business';
     FichierConcerner:='FTypeAffichageFormuleNonVisible '+TableauConserne+' '+CodeTypeFormule;
     if not(FunctionAdresseProces(TypeProces,FichierConcerner,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          //AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerner+' recherché !');
     end;

     ChTypeAffichageFormuleNonVisible:=Adresse;
     assignfile(FTypeAffichageFormuleNonVisible,ChTypeAffichageFormuleNonVisible);
     if FileExists(ChTypeAffichageFormuleNonVisible)then
     begin
          Reset(FTypeAffichageFormuleNonVisible);
          seek(FTypeAffichageFormuleNonVisible,0);
          while not eof(FTypeAffichageFormuleNonVisible)and(OKTypeNonVisible=false)do
          begin
               Read(FTypeAffichageFormuleNonVisible,RTypeAffichageFormuleNonVisible);
               if(RTypeAffichageFormuleNonVisible.TypeNonVisible=TypeAffichageFormule)
               then OKTypeNonVisible:=true;
          end;
          CloseFile(FTypeAffichageFormuleNonVisible);
     end;

     FunctTypeAffichageFormuleNonVisible:=OKTypeNonVisible;
end;

Function ListeTypeAffichageFormuleNonVisible(CodeTypeFormule,TableauConserne:string):string;
var  FichierConcerner,ListeTypeNonVisible:string;
begin
     ListeTypeNonVisible:='';

     TypeProces:='Business';
     FichierConcerner:='FTypeAffichageFormuleNonVisible '+TableauConserne+' '+CodeTypeFormule;
     if not(FunctionAdresseProces(TypeProces,FichierConcerner,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          //AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerner+' recherché !');
     end;

     ChTypeAffichageFormuleNonVisible:=Adresse;
     assignfile(FTypeAffichageFormuleNonVisible,ChTypeAffichageFormuleNonVisible);
     if FileExists(ChTypeAffichageFormuleNonVisible)then
     begin
          Reset(FTypeAffichageFormuleNonVisible);
          seek(FTypeAffichageFormuleNonVisible,0);
          while not eof(FTypeAffichageFormuleNonVisible)do
          begin
               Read(FTypeAffichageFormuleNonVisible,RTypeAffichageFormuleNonVisible);
               if(ListeTypeNonVisible='')
               then ListeTypeNonVisible:=ListeTypeNonVisible+RTypeAffichageFormuleNonVisible.TypeNonVisible
               else ListeTypeNonVisible:=ListeTypeNonVisible+';'+RTypeAffichageFormuleNonVisible.TypeNonVisible;
          end;
          CloseFile(FTypeAffichageFormuleNonVisible);
     end;

     ListeTypeAffichageFormuleNonVisible:=ListeTypeNonVisible;
end;

procedure TFSFormules.EditListeTableauConserneKeyPress(Sender: TObject;
  var Key: Char);
begin
     key:=#0;
end;

procedure TFSFormules.EditListeTableauConserneChange(Sender: TObject);
begin
     FSFormules.BitTypeNonVisibleClick(FSFormules.BitTypeNonVisible);
end;

Function FunctListeFormuleString(CodeTypeFormule:string):string;
var   ListeFormuleString,FichierConcerner:string;
begin
     ListeFormuleString:='';

     TypeProces:='Business';
     FichierConcerner:=CodeTypeFormule;
     if not(FunctionAdresseProces(TypeProces,FichierConcerner,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerner+' recherché !');
     end;

     ChFormule:=Adresse;
     assignfile(FFormule,ChFormule);
     if FileExists(ChFormule)then
     begin
          Reset(FFormule);
          seek(FFormule,0);
          while not eof(FFormule)do
          begin
               Read(FFormule,RFormule);
               if(ListeFormuleString='')
               then ListeFormuleString:=RFormule.Libelle
               else ListeFormuleString:=ListeFormuleString+';'+RFormule.Libelle;
          end;
          CloseFile(FFormule);
     end;

     FunctListeFormuleString:=ListeFormuleString;
end;

Procedure RemplireFormileComboBox(CodeTypeFormule:string; EditListeRub:TComboBox);
var   FichierConcerner:string;
begin
     TypeProces:='Business';
     FichierConcerner:=CodeTypeFormule;
     if not(FunctionAdresseProces(TypeProces,FichierConcerner,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerner+' recherché !');
     end;

     ChFormule:=Adresse;
     assignfile(FFormule,ChFormule);
     if FileExists(ChFormule)then
     begin
          Reset(FFormule);
          seek(FFormule,0);
          while not eof(FFormule)do
          begin
               Read(FFormule,RFormule);
               EditListeRub.Items.Add(RFormule.Libelle);
          end;
          CloseFile(FFormule);
     end;
end;

procedure TFSFormules.StaticText10MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
FSFormules.StaticText10.Color:=$00E7FC94;
FSFormules.StaticText7.Color:=$00F5FED3;
FSFormules.StaticText6.Color:=$00F5FED3;
FSFormules.StaticText8.Color:=$00F5FED3;
FSFormules.StaticText9.Color:=$00F5FED3;
FSFormules.StaticText11.Color:=$00F5FED3;

if(FSFormules.TableauFormules.Width-
  (FSFormules.AfficheFonctions.Left+
   FSFormules.AfficheFonctions.Width)>=
   FSFormules.TableauTypeFormulesBaremes.Width)
then
begin
     FSFormules.TableauTypeFormulesBaremes.Left:=
     FSFormules.AfficheFonctions.Left+
     FSFormules.AfficheFonctions.Width;
end
else
begin
     FSFormules.TableauTypeFormulesBaremes.Left:=
     FSFormules.AfficheFonctions.Left-
     FSFormules.AfficheFonctions.Width;
end;

FSFormules.TableauTypeFormulesBaremes.Top:=
FSFormules.AfficheFonctions.Top+
FSFormules.StaticText10.Top;

FSFormules.TableauTypeFormulesBaremes.Height:=
FSFormules.Height-FSFormules.TableauTypeFormulesBaremes.Top-70;

FSFormules.AfficheIdentificateurEntreprise.Visible:=false;
FSFormules.TableauTypeFormulesBaremes.Visible:=true;
if(FSFormules.TableauTypeFormulesBaremes.Cells[0,0]<>'OK')then ListeTypeFormule(FSFormules.TableauTypeFormulesBaremes);
FSFormules.TableauTypeFormulesBaremes.Cells[0,0]:='OK';
FSFormules.TableauTypeFormulesBaremes.SetFocus;
end;

procedure TFSFormules.TableauTypeFormulesBaremesDblClick(Sender: TObject);
begin
     FSFormules.TableauFormules.Cells[4,FSFormules.TableauFormules.Row]:=
     FSFormules.TableauFormules.Cells[4,FSFormules.TableauFormules.Row]+
     WithoutChar(StaticText10.Caption,' ')+
     '('+FSFormules.TableauTypeFormulesBaremes.Cells[2,FSFormules.TableauTypeFormulesBaremes.Row]+')';
     FSFormules.TableauTypeFormulesBaremes.Visible:=false;
end;

procedure TFSFormules.AfficheTypeAffichageNonVisibleMouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSFormules.AfficheOperationDupliqueTypeFormuleMouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSFormules.AfficheTypeFormuleMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSFormules.TableauTypeFormulesBaremesMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSFormules.StaticText11MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
FSFormules.StaticText11.Color:=$00E7FC94;
FSFormules.StaticText7.Color:=$00F5FED3;
FSFormules.StaticText6.Color:=$00F5FED3;
FSFormules.StaticText8.Color:=$00F5FED3;
FSFormules.StaticText9.Color:=$00F5FED3;
FSFormules.StaticText10.Color:=$00F5FED3;

FSFormules.AfficheIdentificateurEntreprise.Visible:=false;
FSFormules.AfficheMaxMin.Visible:=false;
FSFormules.AfficheRubPers.Visible:=false;
FSFormules.TableauTypeFormulesBaremes.Visible:=false;
end;

procedure TFSFormules.StaticText11Click(Sender: TObject);
begin
     FSFormules.TableauFormules.Cells[4,FSFormules.TableauFormules.Row]:=
     FSFormules.TableauFormules.Cells[4,FSFormules.TableauFormules.Row]+WithoutChar(FSFormules.StaticText11.Caption,' ')+'('+')';

     FSFormules.AfficheFonctions.Visible:=false;
end;

End.
