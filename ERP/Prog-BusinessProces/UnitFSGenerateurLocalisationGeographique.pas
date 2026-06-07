unit UnitFSGenerateurLocalisationGeographique;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, StdCtrls, Buttons;

type
  TFSGenerateurLocalisationGeographique = class(TForm)
    PagePrincipale: TPageControl;
    PageGenerateurLocalisationGeographique: TTabSheet;
    TableauPays: TStringGrid;
    TableauWilaya: TStringGrid;
    TableauDaira: TStringGrid;
    TableauCommune: TStringGrid;
    Pays: TPanel;
    Wilaya: TPanel;
    Daira: TPanel;
    Commune: TPanel;
    AfficheOperationLocalisation: TPanel;
    EditCodeLocalisation: TEdit;
    EditIntitulleLocalisation: TEdit;
    TitreEditIntitulleLocalisation: TLabel;
    Bevel1: TBevel;
    BitValiderOperationLocalisation: TBitBtn;
    BitBtn2: TBitBtn;
    Bevel3: TBevel;
    EditCodeSource: TEdit;
    EditFichierLocalisationGeographique: TEdit;
    Zone: TPanel;
    TableauZone: TStringGrid;
    TabSheet1: TTabSheet;
    AfficheParametreTaxeAjoute: TPanel;
    Bevel2: TBevel;
    BitBtn1: TBitBtn;
    BitValider: TBitBtn;
    TableauParametreTaxeAjoute: TStringGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EditPositionParametreTaxeAjoute: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    EditCodeLocalisationGeographiquePVA: TEdit;
    Label8: TLabel;
    EditCodeArticleConcerne: TEdit;
    EditValeurTaxe: TEdit;
    Label9: TLabel;
    Bevel4: TBevel;
    EditArticleConcerne: TEdit;
    EditDommaineApplication: TComboBox;
    EditFichierLocalisationGeographiquePTA: TComboBox;
    EditLocalisationGeographiquePVA: TEdit;
    AfficheTableauSelection: TPanel;
    TableauSelection: TStringGrid;
    BitBtn4: TBitBtn;
    AfficheNatureAffichage: TPanel;
    Bevel6: TBevel;
    Label10: TLabel;
    EditNatureAffichage: TComboBox;
    RBBareme: TCheckBox;
    AfficheBareme: TPanel;
    TableauBaremeTaxeAjouter: TStringGrid;
    AfficheOperationBareme: TPanel;
    Label11: TLabel;
    EditQteMin: TEdit;
    Label12: TLabel;
    EditQteMax: TEdit;
    Label13: TLabel;
    EditValeurTaxeBareme: TEdit;
    Bevel5: TBevel;
    BitOperationBareme: TBitBtn;
    Bevel7: TBevel;
    BitBtn5: TBitBtn;
    Bevel8: TBevel;
    EditPositionBaremeTaxeAjouter: TEdit;
    Label14: TLabel;
    RBQteMaxPlus: TCheckBox;
    TableauBaremeTaxeAjouterAfficher: TStringGrid;
    Panel2: TPanel;
    AfficheOptionPrint: TPanel;
    Bevel32: TBevel;
    RadioGroup5: TRadioGroup;
    StaticText2: TStaticText;
    RBOrientationPapier: TComboBox;
    RBAjustement: TCheckBox;
    BitBtn20: TBitBtn;
    EditTitreEtat: TMemo;
    Bevel9: TBevel;
    RBIndiceRubriqueTriCol: TCheckBox;
    EditIndiceRubriqueTriCol: TEdit;
    EditTypeDataTrie: TEdit;
    EditTypeTrie: TComboBox;
    Bevel10: TBevel;
    TableauTitreBaremeTaxeAjouter: TStringGrid;
    AfficheTransfertFormuleCalcule: TPanel;
    TableauTypeFormule: TStringGrid;
    Bevel12: TBevel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    TitreAfficheTransfertFormuleCalcule: TPanel;
    EditValeurePrincipale: TEdit;
    EditSource: TEdit;
    EditValeurFinale: TEdit;
    BitBtn3: TBitBtn;
    Bevel11: TBevel;
    BitBtn6: TBitBtn;
    Bevel13: TBevel;
    EditAutorisationTransfertFormuleCalcule: TEdit;
    EditCodeTypeFormule: TEdit;
    RBValeurFormule: TCheckBox;
    TableauFormuleValeurBareme: TStringGrid;
    TableauFormuleBareme: TStringGrid;
    AfficheDetailFormuleBareme: TPanel;
    AfficheTableauFormuleBareme: TPanel;
    BitBtn9: TBitBtn;
    LabelFormule: TLabel;
    Bevel14: TBevel;
    Bevel15: TBevel;
    EditValeurFormule: TMemo;
    EditRubriqueApplicationTaxeAjouter: TComboBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitValiderOperationLocalisationClick(Sender: TObject);
    procedure TableauPaysKeyPress(Sender: TObject; var Key: Char);
    procedure TableauWilayaClick(Sender: TObject);
    procedure TableauDairaClick(Sender: TObject);
    procedure TableauCommuneClick(Sender: TObject);
    procedure EditCodeLocalisationKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditIntitulleLocalisationKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure TableauWilayaKeyPress(Sender: TObject; var Key: Char);
    procedure TableauDairaKeyPress(Sender: TObject; var Key: Char);
    procedure TableauCommuneKeyPress(Sender: TObject; var Key: Char);
    procedure TableauPaysClick(Sender: TObject);
    procedure TableauZoneClick(Sender: TObject);
    procedure TableauZoneKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitValiderClick(Sender: TObject);
    procedure TableauParametreTaxeAjouteClick(Sender: TObject);
    procedure TableauParametreTaxeAjouteKeyPress(Sender: TObject;
      var Key: Char);
    procedure EditCodeArticleConcerneEnter(Sender: TObject);
    procedure EditCodeLocalisationGeographiquePVAEnter(Sender: TObject);
    procedure TableauSelectionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TabSheet1Show(Sender: TObject);
    procedure EditDommaineApplicationKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditFichierLocalisationGeographiquePTAKeyDown(
      Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditCodeLocalisationGeographiquePVAKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditLocalisationGeographiquePVAKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditCodeArticleConcerneKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditArticleConcerneKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditValeurTaxeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn4Click(Sender: TObject);
    procedure EditNatureAffichageKeyPress(Sender: TObject; var Key: Char);
    procedure EditNatureAffichageChange(Sender: TObject);
    procedure RBBaremeClick(Sender: TObject);
    procedure EditValeurTaxeEnter(Sender: TObject);
    procedure BitOperationBaremeClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure TableauBaremeTaxeAjouterClick(Sender: TObject);
    procedure TableauBaremeTaxeAjouterKeyPress(Sender: TObject;
      var Key: Char);
    procedure EditQteMinKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditQteMaxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditValeurTaxeBaremeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PaysDblClick(Sender: TObject);
    procedure WilayaDblClick(Sender: TObject);
    procedure DairaDblClick(Sender: TObject);
    procedure CommuneDblClick(Sender: TObject);
    procedure ZoneDblClick(Sender: TObject);
    procedure RBQteMaxPlusClick(Sender: TObject);
    procedure AfficheOptionPrintClick(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure RBIndiceRubriqueTriColClick(Sender: TObject);
    procedure EditValeurTaxeContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure TableauTypeFormuleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure EditValeurTaxeBaremeContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure AfficheTransfertFormuleCalculeEnter(Sender: TObject);
    procedure AfficheTransfertFormuleCalculeExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditValeurTaxeKeyPress(Sender: TObject; var Key: Char);
    procedure EditValeurTaxeBaremeKeyPress(Sender: TObject; var Key: Char);
    procedure RBValeurFormuleClick(Sender: TObject);
    procedure EditValeurTaxeBaremeEnter(Sender: TObject);
    procedure TableauFormuleValeurBaremeDblClick(Sender: TObject);
    procedure TableauBaremeTaxeAjouterAfficherClick(Sender: TObject);
    procedure TableauFormuleBaremeClick(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure TableauFormuleBaremeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditValeurFormuleKeyPress(Sender: TObject; var Key: Char);
    procedure EditValeurFormuleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TableauZoneContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure TableauPaysContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure TableauWilayaContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure TableauDairaContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure TableauCommuneContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure EditRubriqueApplicationTaxeAjouterKeyPress(Sender: TObject;
      var Key: Char);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSGenerateurLocalisationGeographique: TFSGenerateurLocalisationGeographique;

Procedure ListeLocalisationGeographique(TableauLocalisationGeographique:TStringGrid; FichierLocalisation,CodeSource:string; RowSelect:integer);
Procedure ActiverCouleur(FichierLocalisationGeographique:string);
Procedure ListeParametreTaxeAjoute(TableauParametreTaxeAjoute:TStringGrid);
Procedure ListeBaremeTaxeAjouter(TableauBaremeTaxeAjouter:TStringGrid;  PositionParametreTaxeAjouter:string);
Function ValeurTaxeAjouter(DommaineApplication,CodeLocalisationGeographique,CodeArticleConcerne:string; var RubriqueApplicationTaxeAjouter:string):string;
Function ValeurBareme(PositionParametreTaxeAjouter:string; Quantite:real):real;
Function CodeLocalisationGeographiqueReduit(CodeLocalisationGeographique:string):integer;

implementation

Uses UnitInitialisation, UnitSuppression, UnitFSGenerateurBase, UnitFSFormules, UnitFSModuleCalculeFormiles,
     UnitFSCreateFichierTexte, UnitFSMenuPrincipal, UnitFSFicheSaisie;

{$R *.dfm}

procedure TFSGenerateurLocalisationGeographique.BitBtn2Click(
  Sender: TObject);
begin
     FSGenerateurLocalisationGeographique.AfficheOperationLocalisation.Visible:=false;
end;

procedure TFSGenerateurLocalisationGeographique.BitValiderOperationLocalisationClick(
  Sender: TObject);
var  i,CodeSourceLocalisation,CodeLocalisation,RExistant,RSupprimer,RSauvgarder:integer;  OKLocalisation:boolean;  TableauLocalisationGeographique:TStringGrid;
begin
     if(FSGenerateurLocalisationGeographique.EditFichierLocalisationGeographique.Text='Pays')then TableauLocalisationGeographique:=FSGenerateurLocalisationGeographique.TableauPays;
     if(FSGenerateurLocalisationGeographique.EditFichierLocalisationGeographique.Text='Wilaya')then TableauLocalisationGeographique:=FSGenerateurLocalisationGeographique.TableauWilaya;
     if(FSGenerateurLocalisationGeographique.EditFichierLocalisationGeographique.Text='Daira')then TableauLocalisationGeographique:=FSGenerateurLocalisationGeographique.TableauDaira;
     if(FSGenerateurLocalisationGeographique.EditFichierLocalisationGeographique.Text='Commune')then TableauLocalisationGeographique:=FSGenerateurLocalisationGeographique.TableauCommune;
     if(FSGenerateurLocalisationGeographique.EditFichierLocalisationGeographique.Text='Zone')then TableauLocalisationGeographique:=FSGenerateurLocalisationGeographique.TableauZone;

     if(FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.Caption='Valider')then
     begin
          OpenFParc(RParc);
          ChLocalisationGeographique:=RParc.Parcours+'\'+Exercice+'F'+FSGenerateurLocalisationGeographique.EditFichierLocalisationGeographique.Text;
          assignfile(FLocalisationGeographique,ChLocalisationGeographique);
          if FileExists(ChLocalisationGeographique)then
          Reset(FLocalisationGeographique)
          else Rewrite(FLocalisationGeographique);
          Seek(FLocalisationGeographique,0);
          i:=0;
          OKLocalisation:=false;
          CodeLocalisation:=strtointeger(FSGenerateurLocalisationGeographique.EditCodeLocalisation.Text);
          while not eof(FLocalisationGeographique)and(OKLocalisation=false)do
          begin
               read(FLocalisationGeographique,RLocalisationGeographique);

               if(Firstlaters(RLocalisationGeographique.CodeLocalisationGeographique,longueur(FSGenerateurLocalisationGeographique.EditCodeSource.Text))=FSGenerateurLocalisationGeographique.EditCodeSource.Text)then
               begin
                    if(CodeLocalisation<=strtointeger(Lastlaters(RLocalisationGeographique.CodeLocalisationGeographique,longueur(RLocalisationGeographique.CodeLocalisationGeographique)-longueur(FSGenerateurLocalisationGeographique.EditCodeSource.Text))))
                    then CodeLocalisation:=strtointeger(Lastlaters(RLocalisationGeographique.CodeLocalisationGeographique,longueur(RLocalisationGeographique.CodeLocalisationGeographique)-longueur(FSGenerateurLocalisationGeographique.EditCodeSource.Text)))+1;

                    if(RLocalisationGeographique.CodeLocalisationGeographique=FSGenerateurLocalisationGeographique.EditCodeLocalisation.Text)
                    then
                    begin
                         OKLocalisation:=true;
                         CodeLocalisation:=strtointeger(Lastlaters(RLocalisationGeographique.CodeLocalisationGeographique,longueur(RLocalisationGeographique.CodeLocalisationGeographique)-longueur(FSGenerateurLocalisationGeographique.EditCodeSource.Text)));
                    end;
               end;
          i:=i+1;
          end;

          if(OKLocalisation=true)then i:=i-1;
          Seek(FLocalisationGeographique,i);
          if(FSGenerateurLocalisationGeographique.EditCodeSource.Text='')
          then RLocalisationGeographique.CodeLocalisationGeographique:=Completezerogauche(inttostr(CodeLocalisation),'3')
          else RLocalisationGeographique.CodeLocalisationGeographique:=Completezerogauche(FSGenerateurLocalisationGeographique.EditCodeSource.Text,'3')+Completezerogauche(inttostr(CodeLocalisation),'3');
          RLocalisationGeographique.IntitulleLocalisationGeographique:=FSGenerateurLocalisationGeographique.EditIntitulleLocalisation.Text;
          write(FLocalisationGeographique,RLocalisationGeographique);
          CloseFile(FLocalisationGeographique);
     end;

     if(FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.Caption='Supprimer')then
     begin
          if(SupprimerLocalisationGeographique(FSGenerateurLocalisationGeographique.EditCodeLocalisation.Text,'F'+FSGenerateurLocalisationGeographique.EditFichierLocalisationGeographique.Text,RExistant,RSupprimer,RSauvgarder))then
          begin
               if(RSupprimer>0)
               then AfficherMessage('Suppression réussie ! FTotal: '+inttostr(RExistant)+' FSupprimer: '+inttostr(RSupprimer)+' FSauvgarder: '+inttostr(RSauvgarder))
               else AfficherMessage('Aucun Registre Supprimer ! FTotal: '+inttostr(RExistant)+' FSupprimer: '+inttostr(RSupprimer)+' FSauvgarder: '+inttostr(RSauvgarder));
          end;
     end;

     ListeLocalisationGeographique(FSGenerateurLocalisationGeographique.TableauPays,'FPays','Tous',FSGenerateurLocalisationGeographique.TableauPays.Row);
     ListeLocalisationGeographique(FSGenerateurLocalisationGeographique.TableauWilaya,'FWilaya',FSGenerateurLocalisationGeographique.TableauPays.Cells[1,FSGenerateurLocalisationGeographique.TableauPays.Row],FSGenerateurLocalisationGeographique.TableauWilaya.Row);
     ListeLocalisationGeographique(FSGenerateurLocalisationGeographique.TableauDaira,'FDaira',FSGenerateurLocalisationGeographique.TableauWilaya.Cells[1,FSGenerateurLocalisationGeographique.TableauWilaya.Row],FSGenerateurLocalisationGeographique.TableauDaira.Row);
     ListeLocalisationGeographique(FSGenerateurLocalisationGeographique.TableauCommune,'FCommune',FSGenerateurLocalisationGeographique.TableauDaira.Cells[1,FSGenerateurLocalisationGeographique.TableauDaira.Row],FSGenerateurLocalisationGeographique.TableauCommune.Row);
     ListeLocalisationGeographique(FSGenerateurLocalisationGeographique.TableauZone,'FZone',FSGenerateurLocalisationGeographique.TableauCommune.Cells[1,FSGenerateurLocalisationGeographique.TableauCommune.Row],FSGenerateurLocalisationGeographique.TableauZone.Row);

     FSGenerateurLocalisationGeographique.AfficheOperationLocalisation.Visible:=false;
     TableauLocalisationGeographique.SetFocus;

end;

Procedure ListeLocalisationGeographique(TableauLocalisationGeographique:TStringGrid; FichierLocalisation,CodeSource:string; RowSelect:integer);
var  R,C:integer;  OKLocalisation:boolean;    NotRow,NotCol:string;
begin
     TableauLocalisationGeographique.ColCount:=3;
     TableauLocalisationGeographique.RowCount:=2;
     TableauLocalisationGeographique.Rows[1].Text:='';

     TableauLocalisationGeographique.Cols[0].Text:=Lastlaters(FichierLocalisation,longueur(FichierLocalisation)-1);
     TableauLocalisationGeographique.Cols[1].Text:='Code';
     TableauLocalisationGeographique.Cols[2].Text:='Libellé';

     OpenFParc(RParc);
     ChLocalisationGeographique:=RParc.Parcours+'\'+Exercice+FichierLocalisation;
     assignfile(FLocalisationGeographique,ChLocalisationGeographique);
     if FileExists(ChLocalisationGeographique)then
     Reset(FLocalisationGeographique)
     else Rewrite(FLocalisationGeographique);
     Seek(FLocalisationGeographique,0);
     R:=0;
     OKLocalisation:=false;
     while not eof(FLocalisationGeographique)do
     begin
          read(FLocalisationGeographique,RLocalisationGeographique);

          if(CodeSource<>'')and(CodeSource<>'Tous')then
          begin
               if(firstlaters(RLocalisationGeographique.CodeLocalisationGeographique,longueur(CodeSource))=CodeSource)
               then OKLocalisation:=true
               else OKLocalisation:=false;
          end
          else
          if(CodeSource='Tous')then OKLocalisation:=true
          else OKLocalisation:=false;

          if(OKLocalisation=true)then
          begin
               R:=R+1;
               TableauLocalisationGeographique.Rows[R].Text:=inttostr(R);
               TableauLocalisationGeographique.Cells[1,R]:=RLocalisationGeographique.CodeLocalisationGeographique;
               TableauLocalisationGeographique.Cells[2,R]:=RLocalisationGeographique.IntitulleLocalisationGeographique;
          end;
     end;
     CloseFile(FLocalisationGeographique);

     if(R>0)then TableauLocalisationGeographique.RowCount:=R+1
            else TableauLocalisationGeographique.RowCount:=2;

     if(RowSelect>0)and(RowSelect<=R)then TableauLocalisationGeographique.Row:=RowSelect;

     NotRow:='';
     NotCol:='1';

     for C:=1 to TableauLocalisationGeographique.ColCount-1 do
     if ExisteNumInTexte(inttostr(C),NotCol)then TableauLocalisationGeographique.ColWidths[C]:=0;
     AjusterColWidth(TableauLocalisationGeographique,NotRow,NotCol);

     TrierTableauARowSpecial(TableauLocalisationGeographique,1,TableauLocalisationGeographique.RowCount-1,1,'2','','+');
end;

procedure TFSGenerateurLocalisationGeographique.TableauPaysKeyPress(
  Sender: TObject; var Key: Char);
begin
     if key in['n','N']then
     begin
          FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.Kind:=bkAll;
          FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.Caption:='Valider';
          FSGenerateurLocalisationGeographique.AfficheOperationLocalisation.Visible:=true;
          FSGenerateurLocalisationGeographique.EditCodeLocalisation.Text:='';
          FSGenerateurLocalisationGeographique.EditIntitulleLocalisation.Text:='';

          FSGenerateurLocalisationGeographique.EditIntitulleLocalisation.SetFocus;
     end;

     if key in['m','M','s','S']then
     begin
          FSGenerateurLocalisationGeographique.AfficheOperationLocalisation.Visible:=true;
          FSGenerateurLocalisationGeographique.EditCodeLocalisation.Text:=FSGenerateurLocalisationGeographique.TableauPays.Cells[1,FSGenerateurLocalisationGeographique.TableauPays.Row];
          FSGenerateurLocalisationGeographique.EditIntitulleLocalisation.Text:=FSGenerateurLocalisationGeographique.TableauPays.Cells[2,FSGenerateurLocalisationGeographique.TableauPays.Row];

          if key in['m','M']then
          begin
               FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.Kind:=bkAll;
               FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.Caption:='Valider';
               FSGenerateurLocalisationGeographique.EditIntitulleLocalisation.SetFocus;
          end;

          if key in['s','S']then
          begin
               FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.Kind:=bkCancel;
               FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.Caption:='Supprimer';
               FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.SetFocus;
          end;
     end;
end;

procedure TFSGenerateurLocalisationGeographique.TableauWilayaClick(
  Sender: TObject);
begin
     ListeLocalisationGeographique(FSGenerateurLocalisationGeographique.TableauDaira,'FDaira',FSGenerateurLocalisationGeographique.TableauWilaya.Cells[1,FSGenerateurLocalisationGeographique.TableauWilaya.Row],FSGenerateurLocalisationGeographique.TableauDaira.Row);
     ListeLocalisationGeographique(FSGenerateurLocalisationGeographique.TableauCommune,'FCommune',FSGenerateurLocalisationGeographique.TableauDaira.Cells[1,FSGenerateurLocalisationGeographique.TableauDaira.Row],FSGenerateurLocalisationGeographique.TableauCommune.Row);
     ListeLocalisationGeographique(FSGenerateurLocalisationGeographique.TableauZone,'FZone',FSGenerateurLocalisationGeographique.TableauCommune.Cells[1,FSGenerateurLocalisationGeographique.TableauCommune.Row],FSGenerateurLocalisationGeographique.TableauZone.Row);

     FSGenerateurLocalisationGeographique.TitreEditIntitulleLocalisation.Caption:='Wilaya';
     FSGenerateurLocalisationGeographique.EditFichierLocalisationGeographique.Text:=FSGenerateurLocalisationGeographique.Wilaya.Caption;
     FSGenerateurLocalisationGeographique.EditCodeSource.Text:=FSGenerateurLocalisationGeographique.TableauPays.Cells[1,FSGenerateurLocalisationGeographique.TableauPays.Row];
     FSGenerateurLocalisationGeographique.AfficheOperationLocalisation.Visible:=false;
     FSGenerateurLocalisationGeographique.AfficheParametreTaxeAjoute.Visible:=false;
     FSGenerateurLocalisationGeographique.AfficheOperationLocalisation.Left:=FSGenerateurLocalisationGeographique.TableauWilaya.Left+4;

     ActiverCouleur(FSGenerateurLocalisationGeographique.EditFichierLocalisationGeographique.Text);
end;

procedure TFSGenerateurLocalisationGeographique.TableauDairaClick(
  Sender: TObject);
begin
     ListeLocalisationGeographique(FSGenerateurLocalisationGeographique.TableauCommune,'FCommune',FSGenerateurLocalisationGeographique.TableauDaira.Cells[1,FSGenerateurLocalisationGeographique.TableauDaira.Row],FSGenerateurLocalisationGeographique.TableauCommune.Row);
     ListeLocalisationGeographique(FSGenerateurLocalisationGeographique.TableauZone,'FZone',FSGenerateurLocalisationGeographique.TableauCommune.Cells[1,FSGenerateurLocalisationGeographique.TableauCommune.Row],FSGenerateurLocalisationGeographique.TableauZone.Row);

     FSGenerateurLocalisationGeographique.TitreEditIntitulleLocalisation.Caption:='Daira';
     FSGenerateurLocalisationGeographique.EditFichierLocalisationGeographique.Text:=FSGenerateurLocalisationGeographique.Daira.Caption;
     FSGenerateurLocalisationGeographique.EditCodeSource.Text:=FSGenerateurLocalisationGeographique.TableauWilaya.Cells[1,FSGenerateurLocalisationGeographique.TableauWilaya.Row];
     FSGenerateurLocalisationGeographique.AfficheOperationLocalisation.Visible:=false;
     FSGenerateurLocalisationGeographique.AfficheParametreTaxeAjoute.Visible:=false;
     FSGenerateurLocalisationGeographique.AfficheOperationLocalisation.Left:=FSGenerateurLocalisationGeographique.TableauDaira.Left+4;

     ActiverCouleur(FSGenerateurLocalisationGeographique.EditFichierLocalisationGeographique.Text);
end;

procedure TFSGenerateurLocalisationGeographique.TableauCommuneClick(
  Sender: TObject);
begin
     ListeLocalisationGeographique(FSGenerateurLocalisationGeographique.TableauZone,'FZone',FSGenerateurLocalisationGeographique.TableauCommune.Cells[1,FSGenerateurLocalisationGeographique.TableauCommune.Row],FSGenerateurLocalisationGeographique.TableauZone.Row);
     
     FSGenerateurLocalisationGeographique.TitreEditIntitulleLocalisation.Caption:='Commune';
     FSGenerateurLocalisationGeographique.EditFichierLocalisationGeographique.Text:=FSGenerateurLocalisationGeographique.Commune.Caption;
     FSGenerateurLocalisationGeographique.EditCodeSource.Text:=FSGenerateurLocalisationGeographique.TableauDaira.Cells[1,FSGenerateurLocalisationGeographique.TableauDaira.Row];
     FSGenerateurLocalisationGeographique.AfficheOperationLocalisation.Visible:=false;
     FSGenerateurLocalisationGeographique.AfficheParametreTaxeAjoute.Visible:=false;
     FSGenerateurLocalisationGeographique.AfficheOperationLocalisation.Left:=FSGenerateurLocalisationGeographique.TableauCommune.Left+4;

     ActiverCouleur(FSGenerateurLocalisationGeographique.EditFichierLocalisationGeographique.Text);
end;

procedure TFSGenerateurLocalisationGeographique.EditCodeLocalisationKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then FSGenerateurLocalisationGeographique.EditIntitulleLocalisation.SetFocus;
end;

procedure TFSGenerateurLocalisationGeographique.EditIntitulleLocalisationKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.SetFocus;
end;

procedure TFSGenerateurLocalisationGeographique.TableauWilayaKeyPress(
  Sender: TObject; var Key: Char);
begin
     if key in['n','N']then
     begin
          FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.Kind:=bkAll;
          FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.Caption:='Valider';
          FSGenerateurLocalisationGeographique.AfficheOperationLocalisation.Visible:=true;
          FSGenerateurLocalisationGeographique.EditCodeLocalisation.Text:='';
          FSGenerateurLocalisationGeographique.EditIntitulleLocalisation.Text:='';

          FSGenerateurLocalisationGeographique.EditIntitulleLocalisation.SetFocus;
     end;

     if key in['m','M','s','S']then
     begin
          FSGenerateurLocalisationGeographique.AfficheOperationLocalisation.Visible:=true;
          FSGenerateurLocalisationGeographique.EditCodeLocalisation.Text:=FSGenerateurLocalisationGeographique.TableauWilaya.Cells[1,FSGenerateurLocalisationGeographique.TableauWilaya.Row];
          FSGenerateurLocalisationGeographique.EditIntitulleLocalisation.Text:=FSGenerateurLocalisationGeographique.TableauWilaya.Cells[2,FSGenerateurLocalisationGeographique.TableauWilaya.Row];

          if key in['m','M']then
          begin
               FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.Kind:=bkAll;
               FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.Caption:='Valider';
               FSGenerateurLocalisationGeographique.EditIntitulleLocalisation.SetFocus;
          end;

          if key in['s','S']then
          begin
               FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.Kind:=bkCancel;
               FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.Caption:='Supprimer';
               FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.SetFocus;
          end;
     end;
end;

procedure TFSGenerateurLocalisationGeographique.TableauDairaKeyPress(
  Sender: TObject; var Key: Char);
begin
     if key in['n','N']then
     begin
          FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.Kind:=bkAll;
          FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.Caption:='Valider';
          FSGenerateurLocalisationGeographique.AfficheOperationLocalisation.Visible:=true;
          FSGenerateurLocalisationGeographique.EditCodeLocalisation.Text:='';
          FSGenerateurLocalisationGeographique.EditIntitulleLocalisation.Text:='';

          FSGenerateurLocalisationGeographique.EditIntitulleLocalisation.SetFocus;
     end;

     if key in['m','M','s','S']then
     begin
          FSGenerateurLocalisationGeographique.AfficheOperationLocalisation.Visible:=true;
          FSGenerateurLocalisationGeographique.EditCodeLocalisation.Text:=FSGenerateurLocalisationGeographique.TableauDaira.Cells[1,FSGenerateurLocalisationGeographique.TableauDaira.Row];
          FSGenerateurLocalisationGeographique.EditIntitulleLocalisation.Text:=FSGenerateurLocalisationGeographique.TableauDaira.Cells[2,FSGenerateurLocalisationGeographique.TableauDaira.Row];

          if key in['m','M']then
          begin
               FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.Kind:=bkAll;
               FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.Caption:='Valider';
               FSGenerateurLocalisationGeographique.EditIntitulleLocalisation.SetFocus;
          end;

          if key in['s','S']then
          begin
               FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.Kind:=bkCancel;
               FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.Caption:='Supprimer';
               FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.SetFocus;
          end;
     end;
end;

procedure TFSGenerateurLocalisationGeographique.TableauCommuneKeyPress(
  Sender: TObject; var Key: Char);
begin
     if key in['n','N']then
     begin
          FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.Kind:=bkAll;
          FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.Caption:='Valider';
          FSGenerateurLocalisationGeographique.AfficheOperationLocalisation.Visible:=true;
          FSGenerateurLocalisationGeographique.EditCodeLocalisation.Text:='';
          FSGenerateurLocalisationGeographique.EditIntitulleLocalisation.Text:='';

          FSGenerateurLocalisationGeographique.EditIntitulleLocalisation.SetFocus;
     end;

     if key in['m','M','s','S']then
     begin
          FSGenerateurLocalisationGeographique.AfficheOperationLocalisation.Visible:=true;
          FSGenerateurLocalisationGeographique.EditCodeLocalisation.Text:=FSGenerateurLocalisationGeographique.TableauCommune.Cells[1,FSGenerateurLocalisationGeographique.TableauCommune.Row];
          FSGenerateurLocalisationGeographique.EditIntitulleLocalisation.Text:=FSGenerateurLocalisationGeographique.TableauCommune.Cells[2,FSGenerateurLocalisationGeographique.TableauCommune.Row];

          if key in['m','M']then
          begin
               FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.Kind:=bkAll;
               FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.Caption:='Valider';
               FSGenerateurLocalisationGeographique.EditIntitulleLocalisation.SetFocus;
          end;

          if key in['s','S']then
          begin
               FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.Kind:=bkCancel;
               FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.Caption:='Supprimer';
               FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.SetFocus;
          end;
     end;
end;

Procedure ActiverCouleur(FichierLocalisationGeographique:string);
begin
     FSGenerateurLocalisationGeographique.Pays.Color:=clBtnFace;    FSGenerateurLocalisationGeographique.TableauPays.FixedColor:=clBtnFace;
     FSGenerateurLocalisationGeographique.Wilaya.Color:=clBtnFace;  FSGenerateurLocalisationGeographique.TableauWilaya.FixedColor:=clBtnFace;
     FSGenerateurLocalisationGeographique.Daira.Color:=clBtnFace;   FSGenerateurLocalisationGeographique.TableauDaira.FixedColor:=clBtnFace;
     FSGenerateurLocalisationGeographique.Commune.Color:=clBtnFace; FSGenerateurLocalisationGeographique.TableauCommune.FixedColor:=clBtnFace;
     FSGenerateurLocalisationGeographique.Zone.Color:=clBtnFace; FSGenerateurLocalisationGeographique.TableauZone.FixedColor:=clBtnFace;

     if(FichierLocalisationGeographique='Pays')then    begin FSGenerateurLocalisationGeographique.Pays.Color:=clLime;     FSGenerateurLocalisationGeographique.TableauPays.FixedColor:=clLime;    end;
     if(FichierLocalisationGeographique='Wilaya')then  begin FSGenerateurLocalisationGeographique.Wilaya.Color:=clLime;   FSGenerateurLocalisationGeographique.TableauWilaya.FixedColor:=clLime;  end;
     if(FichierLocalisationGeographique='Daira')then   begin FSGenerateurLocalisationGeographique.Daira.Color:=clLime;    FSGenerateurLocalisationGeographique.TableauDaira.FixedColor:=clLime;   end;
     if(FichierLocalisationGeographique='Commune')then begin FSGenerateurLocalisationGeographique.Commune.Color:=clLime;  FSGenerateurLocalisationGeographique.TableauCommune.FixedColor:=clLime; end;
     if(FichierLocalisationGeographique='Zone')then begin FSGenerateurLocalisationGeographique.Zone.Color:=clLime;  FSGenerateurLocalisationGeographique.TableauZone.FixedColor:=clLime; end;
end;

procedure TFSGenerateurLocalisationGeographique.TableauPaysClick(
  Sender: TObject);
begin
     ListeLocalisationGeographique(FSGenerateurLocalisationGeographique.TableauWilaya,'FWilaya',FSGenerateurLocalisationGeographique.TableauPays.Cells[1,FSGenerateurLocalisationGeographique.TableauPays.Row],FSGenerateurLocalisationGeographique.TableauWilaya.Row);
     ListeLocalisationGeographique(FSGenerateurLocalisationGeographique.TableauDaira,'FDaira',FSGenerateurLocalisationGeographique.TableauWilaya.Cells[1,FSGenerateurLocalisationGeographique.TableauWilaya.Row],FSGenerateurLocalisationGeographique.TableauDaira.Row);
     ListeLocalisationGeographique(FSGenerateurLocalisationGeographique.TableauCommune,'FCommune',FSGenerateurLocalisationGeographique.TableauDaira.Cells[1,FSGenerateurLocalisationGeographique.TableauDaira.Row],FSGenerateurLocalisationGeographique.TableauCommune.Row);
     ListeLocalisationGeographique(FSGenerateurLocalisationGeographique.TableauZone,'FZone',FSGenerateurLocalisationGeographique.TableauCommune.Cells[1,FSGenerateurLocalisationGeographique.TableauCommune.Row],FSGenerateurLocalisationGeographique.TableauZone.Row);

     FSGenerateurLocalisationGeographique.TitreEditIntitulleLocalisation.Caption:='Pays';
     FSGenerateurLocalisationGeographique.EditFichierLocalisationGeographique.Text:=FSGenerateurLocalisationGeographique.Pays.Caption;
     FSGenerateurLocalisationGeographique.EditCodeSource.Text:='';
     FSGenerateurLocalisationGeographique.AfficheOperationLocalisation.Visible:=false;
     FSGenerateurLocalisationGeographique.AfficheParametreTaxeAjoute.Visible:=false;
     FSGenerateurLocalisationGeographique.AfficheOperationLocalisation.Left:=FSGenerateurLocalisationGeographique.TableauPays.Left+4;

     ActiverCouleur(FSGenerateurLocalisationGeographique.EditFichierLocalisationGeographique.Text);
end;

procedure TFSGenerateurLocalisationGeographique.TableauZoneClick(
  Sender: TObject);
begin
     FSGenerateurLocalisationGeographique.TitreEditIntitulleLocalisation.Caption:='Zone';
     FSGenerateurLocalisationGeographique.EditFichierLocalisationGeographique.Text:=FSGenerateurLocalisationGeographique.Zone.Caption;
     FSGenerateurLocalisationGeographique.EditCodeSource.Text:=FSGenerateurLocalisationGeographique.TableauCommune.Cells[1,FSGenerateurLocalisationGeographique.TableauCommune.Row];
     FSGenerateurLocalisationGeographique.AfficheOperationLocalisation.Visible:=false;
     FSGenerateurLocalisationGeographique.AfficheParametreTaxeAjoute.Visible:=false;
     FSGenerateurLocalisationGeographique.AfficheOperationLocalisation.Left:=FSGenerateurLocalisationGeographique.TableauZone.Left+4;

     ActiverCouleur(FSGenerateurLocalisationGeographique.EditFichierLocalisationGeographique.Text);
end;

procedure TFSGenerateurLocalisationGeographique.TableauZoneKeyPress(
  Sender: TObject; var Key: Char);
begin
      if key in['n','N']then
     begin
          FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.Kind:=bkAll;
          FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.Caption:='Valider';
          FSGenerateurLocalisationGeographique.AfficheOperationLocalisation.Visible:=true;
          FSGenerateurLocalisationGeographique.EditCodeLocalisation.Text:='';
          FSGenerateurLocalisationGeographique.EditIntitulleLocalisation.Text:='';

          FSGenerateurLocalisationGeographique.EditIntitulleLocalisation.SetFocus;
     end;

     if key in['m','M','s','S']then
     begin
          FSGenerateurLocalisationGeographique.AfficheOperationLocalisation.Visible:=true;
          FSGenerateurLocalisationGeographique.EditCodeLocalisation.Text:=FSGenerateurLocalisationGeographique.TableauZone.Cells[1,FSGenerateurLocalisationGeographique.TableauZone.Row];
          FSGenerateurLocalisationGeographique.EditIntitulleLocalisation.Text:=FSGenerateurLocalisationGeographique.TableauZone.Cells[2,FSGenerateurLocalisationGeographique.TableauZone.Row];

          if key in['m','M']then
          begin
               FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.Kind:=bkAll;
               FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.Caption:='Valider';
               FSGenerateurLocalisationGeographique.EditIntitulleLocalisation.SetFocus;
          end;

          if key in['s','S']then
          begin
               FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.Kind:=bkCancel;
               FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.Caption:='Supprimer';
               FSGenerateurLocalisationGeographique.BitValiderOperationLocalisation.SetFocus;
          end;
     end;
end;

procedure TFSGenerateurLocalisationGeographique.BitBtn1Click(
  Sender: TObject);
begin
     FSGenerateurLocalisationGeographique.AfficheParametreTaxeAjoute.Visible:=false;
     FSGenerateurLocalisationGeographique.AfficheTableauSelection.Visible:=false;
     FSGenerateurLocalisationGeographique.AfficheBareme.Visible:=false;
     FSGenerateurLocalisationGeographique.AfficheOperationBareme.Visible:=false;
     FSGenerateurLocalisationGeographique.AfficheTransfertFormuleCalcule.Visible:=false;
end;

procedure TFSGenerateurLocalisationGeographique.BitValiderClick(
  Sender: TObject);
var  i,RExistant,RSupprimer,RSauvgarder:integer;   OKParametreTaxeAjoute:boolean;
begin
     if(FSGenerateurLocalisationGeographique.BitValider.Caption='Valider')then
     begin
          OpenFParc(RParc);
          ChParametreTaxeAjoute:=RParc.Parcours+'\'+Exercice+'FParametreTaxeAjoute';
          assignfile(FParametreTaxeAjoute,ChParametreTaxeAjoute);
          if FileExists(ChParametreTaxeAjoute)then
          Reset(FParametreTaxeAjoute)
          else Rewrite(FParametreTaxeAjoute);
          Seek(FParametreTaxeAjoute,0);
          i:=0;
          OKParametreTaxeAjoute:=false;
          while not eof(FParametreTaxeAjoute)and(OKParametreTaxeAjoute=false)do
          begin
               read(FParametreTaxeAjoute,RParametreTaxeAjoute);
               if(inttostr(RParametreTaxeAjoute.PositionParametreTaxeAjoute)=FSGenerateurLocalisationGeographique.EditPositionParametreTaxeAjoute.Text)then
               begin
                    OKParametreTaxeAjoute:=true;
               end;
          i:=i+1;
          end;
          if(OKParametreTaxeAjoute=true)then i:=i-1;
          Seek(FParametreTaxeAjoute,i);
          RParametreTaxeAjoute.PositionParametreTaxeAjoute:=i;
          RParametreTaxeAjoute.DommaineApplication:=FSGenerateurLocalisationGeographique.EditDommaineApplication.Text;
          RParametreTaxeAjoute.FichierLocalisationGeographique:=FSGenerateurLocalisationGeographique.EditFichierLocalisationGeographiquePTA.Text;
          RParametreTaxeAjoute.CodeLocalisationGeographique:=FSGenerateurLocalisationGeographique.EditCodeLocalisationGeographiquePVA.Text;
          RParametreTaxeAjoute.CodeArticleConcerne:=FSGenerateurLocalisationGeographique.EditCodeArticleConcerne.Text;
          if(FSGenerateurLocalisationGeographique.EditValeurTaxe.Text='Barème')
          then RParametreTaxeAjoute.ValeurTaxe:=FSGenerateurLocalisationGeographique.EditValeurTaxe.Text+' '+inttostr(i)
          else RParametreTaxeAjoute.ValeurTaxe:=FSGenerateurLocalisationGeographique.EditValeurTaxe.Text;
          RParametreTaxeAjoute.RubriqueApplicationTaxeAjouter:=FSGenerateurLocalisationGeographique.EditRubriqueApplicationTaxeAjouter.Text;

          write(FParametreTaxeAjoute,RParametreTaxeAjoute);

          CloseFile(FParametreTaxeAjoute);
     end;

     if(FSGenerateurLocalisationGeographique.BitValider.Caption='Supprimer')then
     begin
          if(SupprimerParametreTaxeAjoute(FSGenerateurLocalisationGeographique.EditPositionParametreTaxeAjoute.Text,RExistant,RSupprimer,RSauvgarder)=true)then
          begin
               if(RSupprimer>0)
               then AfficherMessage('Suppression réussie ! FTotal: '+inttostr(RExistant)+' FSupprimer: '+inttostr(RSupprimer)+' FSauvgarder: '+inttostr(RSauvgarder))
               else AfficherMessage('Aucun Registre Supprimer ! FTotal: '+inttostr(RExistant)+' FSupprimer: '+inttostr(RSupprimer)+' FSauvgarder: '+inttostr(RSauvgarder));
          end;
     end;

     ListeParametreTaxeAjoute(FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute);
     FSGenerateurLocalisationGeographique.AfficheParametreTaxeAjoute.Visible:=false;
     FSGenerateurLocalisationGeographique.AfficheTableauSelection.Visible:=false;
     FSGenerateurLocalisationGeographique.AfficheBareme.Visible:=false;
     FSGenerateurLocalisationGeographique.AfficheOperationBareme.Visible:=false;
     FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.SetFocus;
end;

procedure TFSGenerateurLocalisationGeographique.TableauParametreTaxeAjouteClick(
  Sender: TObject);
var  NotTrieRow:integer;
begin
     FSGenerateurLocalisationGeographique.AfficheTableauFormuleBareme.Visible:=false;
     FSGenerateurLocalisationGeographique.TableauFormuleValeurBareme.Visible:=false;

     if(FSGenerateurLocalisationGeographique.RBIndiceRubriqueTriCol.Checked=true)then
     begin
          FSGenerateurLocalisationGeographique.RBIndiceRubriqueTriCol.Checked:=false;
          FSGenerateurLocalisationGeographique.EditIndiceRubriqueTriCol.Text:=inttostr(FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Col);
          if(FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Col in[7])
          then FSGenerateurLocalisationGeographique.EditTypeDataTrie.Text:='Num'
          else FSGenerateurLocalisationGeographique.EditTypeDataTrie.Text:='';
          NotTrieRow:=1;
          TrierTableauARowSpecial(FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute,1,FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.RowCount-NotTrieRow,0,FSGenerateurLocalisationGeographique.EditIndiceRubriqueTriCol.Text,FSGenerateurLocalisationGeographique.EditTypeDataTrie.Text,FSGenerateurLocalisationGeographique.EditTypeTrie.Text);
     end;

     FSGenerateurLocalisationGeographique.AfficheParametreTaxeAjoute.Visible:=false;
     FSGenerateurLocalisationGeographique.AfficheTableauSelection.Visible:=false;
     FSGenerateurLocalisationGeographique.AfficheBareme.Visible:=false;
     FSGenerateurLocalisationGeographique.AfficheOperationBareme.Visible:=false;
     FSGenerateurLocalisationGeographique.AfficheTransfertFormuleCalcule.Visible:=false;

     if(Firstlaters(FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Cells[7,FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Row],6)='Barème')then
     begin
          FSGenerateurLocalisationGeographique.TableauTitreBaremeTaxeAjouter.Cells[0,0]:=FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Cells[7,FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Row];
          AjusterColWidth(FSGenerateurLocalisationGeographique.TableauTitreBaremeTaxeAjouter,'','');
          ListeBaremeTaxeAjouter(FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouterAfficher,FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Cells[0,FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Row]);
     end
     else
     begin
          FSGenerateurLocalisationGeographique.TableauTitreBaremeTaxeAjouter.Cells[0,0]:='';
          FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouterAfficher.ColCount:=2;
          FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouterAfficher.Cols[0].Text:='';
          FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouterAfficher.Cols[1].Text:='Valeur Taxe Ajoutée !';

          FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouterAfficher.RowCount:=2;
          FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouterAfficher.Rows[1].Text:='';

          FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouterAfficher.Cells[1,1]:=FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Cells[7,FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Row];
          AjusterColWidth(FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouterAfficher,'','');
     end;

     FSGenerateurLocalisationGeographique.AfficheDetailFormuleBareme.Caption:='';
     FSGenerateurLocalisationGeographique.TableauFormuleBareme.RowCount:=2;
     FSGenerateurLocalisationGeographique.TableauFormuleBareme.Rows[1].Text:='';

     FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouterAfficherClick(FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouterAfficher);
end;

procedure TFSGenerateurLocalisationGeographique.TableauParametreTaxeAjouteKeyPress(
  Sender: TObject; var Key: Char);
var  i:integer;
begin
     if key in['n','N']then
     begin
          OpenFParc(RParc);
          ChParametreTaxeAjoute:=RParc.Parcours+'\'+Exercice+'FParametreTaxeAjoute';
          assignfile(FParametreTaxeAjoute,ChParametreTaxeAjoute);
          if FileExists(ChParametreTaxeAjoute)then
          Reset(FParametreTaxeAjoute)
          else Rewrite(FParametreTaxeAjoute);
          Seek(FParametreTaxeAjoute,0);
          i:=0;
          while not eof(FParametreTaxeAjoute)do
          begin
               read(FParametreTaxeAjoute,RParametreTaxeAjoute);
               i:=i+1;
          end;
          CloseFile(FParametreTaxeAjoute);

          FSGenerateurLocalisationGeographique.AfficheParametreTaxeAjoute.Visible:=true;
          FSGenerateurLocalisationGeographique.BitValider.Kind:=bkAll;
          FSGenerateurLocalisationGeographique.BitValider.Caption:='Valider';

          FSGenerateurLocalisationGeographique.EditPositionParametreTaxeAjoute.Text:=inttostr(i);
          FSGenerateurLocalisationGeographique.EditDommaineApplication.ItemIndex:=0;
          FSGenerateurLocalisationGeographique.EditFichierLocalisationGeographiquePTA.ItemIndex:=4;
          FSGenerateurLocalisationGeographique.EditCodeLocalisationGeographiquePVA.Text:='';
          FSGenerateurLocalisationGeographique.EditLocalisationGeographiquePVA.Text:='';
          FSGenerateurLocalisationGeographique.EditCodeArticleConcerne.Text:='';
          FSGenerateurLocalisationGeographique.EditArticleConcerne.Text:='';
          FSGenerateurLocalisationGeographique.EditValeurTaxe.Text:='';
          FSGenerateurLocalisationGeographique.EditRubriqueApplicationTaxeAjouter.ItemIndex:=0;
          FSGenerateurLocalisationGeographique.RBBareme.Checked:=false;
          FSGenerateurLocalisationGeographique.EditDommaineApplication.SetFocus;
     end;

     if key in['m','M']then
     begin
          FSGenerateurLocalisationGeographique.AfficheParametreTaxeAjoute.Visible:=true;
          FSGenerateurLocalisationGeographique.BitValider.Kind:=bkAll;
          FSGenerateurLocalisationGeographique.BitValider.Caption:='Valider';

          FSGenerateurLocalisationGeographique.EditPositionParametreTaxeAjoute.Text:=FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Cells[0,FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Row];
          FSGenerateurLocalisationGeographique.EditDommaineApplication.Text:=FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Cells[1,FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Row];
          FSGenerateurLocalisationGeographique.EditFichierLocalisationGeographiquePTA.Text:=FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Cells[2,FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Row];
          FSGenerateurLocalisationGeographique.EditCodeLocalisationGeographiquePVA.Text:=FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Cells[3,FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Row];
          FSGenerateurLocalisationGeographique.EditLocalisationGeographiquePVA.Text:=FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Cells[4,FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Row];
          FSGenerateurLocalisationGeographique.EditCodeArticleConcerne.Text:=FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Cells[5,FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Row];
          FSGenerateurLocalisationGeographique.EditArticleConcerne.Text:=FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Cells[6,FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Row];
          FSGenerateurLocalisationGeographique.EditValeurTaxe.Text:=FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Cells[7,FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Row];
          FSGenerateurLocalisationGeographique.EditRubriqueApplicationTaxeAjouter.ItemIndex:=IndiquerPositionComboBox(FSGenerateurLocalisationGeographique.EditRubriqueApplicationTaxeAjouter,FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Cells[8,FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Row]);

          if Firstlaters(FSGenerateurLocalisationGeographique.EditValeurTaxe.Text,6)='Barème'
          then FSGenerateurLocalisationGeographique.RBBareme.Checked:=true
          else FSGenerateurLocalisationGeographique.RBBareme.Checked:=false;

          FSGenerateurLocalisationGeographique.EditDommaineApplication.SetFocus;
     end;

     if key in['s','S']then
     begin
          FSGenerateurLocalisationGeographique.AfficheParametreTaxeAjoute.Visible:=true;
          FSGenerateurLocalisationGeographique.BitValider.Kind:=bkCancel;
          FSGenerateurLocalisationGeographique.BitValider.Caption:='Supprimer';

          FSGenerateurLocalisationGeographique.EditPositionParametreTaxeAjoute.Text:=FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Cells[0,FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Row];
          FSGenerateurLocalisationGeographique.EditDommaineApplication.Text:=FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Cells[1,FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Row];
          FSGenerateurLocalisationGeographique.EditFichierLocalisationGeographiquePTA.Text:=FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Cells[2,FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Row];
          FSGenerateurLocalisationGeographique.EditCodeLocalisationGeographiquePVA.Text:=FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Cells[3,FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Row];
          FSGenerateurLocalisationGeographique.EditLocalisationGeographiquePVA.Text:=FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Cells[4,FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Row];
          FSGenerateurLocalisationGeographique.EditCodeArticleConcerne.Text:=FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Cells[5,FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Row];
          FSGenerateurLocalisationGeographique.EditArticleConcerne.Text:=FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Cells[6,FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Row];
          FSGenerateurLocalisationGeographique.EditValeurTaxe.Text:=FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Cells[7,FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Row];
          FSGenerateurLocalisationGeographique.EditRubriqueApplicationTaxeAjouter.ItemIndex:=IndiquerPositionComboBox(FSGenerateurLocalisationGeographique.EditRubriqueApplicationTaxeAjouter,FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Cells[8,FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Row]);
          
          if Firstlaters(FSGenerateurLocalisationGeographique.EditValeurTaxe.Text,6)='Barème'
          then FSGenerateurLocalisationGeographique.RBBareme.Checked:=true
          else FSGenerateurLocalisationGeographique.RBBareme.Checked:=false;
          
          FSGenerateurLocalisationGeographique.BitValider.SetFocus;
     end;

     if(FSGenerateurLocalisationGeographique.RBBareme.Checked=true)then
     begin
          FSGenerateurLocalisationGeographique.EditValeurTaxe.ReadOnly:=true;
          FSGenerateurLocalisationGeographique.AfficheBareme.Visible:=true;
     end
     else
     begin
          FSGenerateurLocalisationGeographique.EditValeurTaxe.ReadOnly:=false;
          FSGenerateurLocalisationGeographique.AfficheBareme.Visible:=false;
     end;
end;

procedure TFSGenerateurLocalisationGeographique.EditCodeArticleConcerneEnter(
  Sender: TObject);
var  ChStockArticle:string;
begin
     FSGenerateurLocalisationGeographique.AfficheTableauSelection.Visible:=true;
     FSGenerateurLocalisationGeographique.AfficheNatureAffichage.Visible:=true;

     if(FSGenerateurLocalisationGeographique.EditNatureAffichage.ItemIndex+1>6)then
     begin
          OpenFParc(RParc);
          ChStockArticle:=RParc.Parcours+'\'+Exercice+'FStockArticle';
          ProcAfficheListeStock(FSGenerateurLocalisationGeographique.TableauSelection,ChStockArticle,'','','',false);
          FSGenerateurLocalisationGeographique.TableauSelection.Cells[0,0]:='Article';
     end
     else
     begin
          ListePlanComptable(FSGenerateurLocalisationGeographique.TableauSelection,FSGenerateurLocalisationGeographique.EditNatureAffichage.ItemIndex+1,'','','PlanComptable');
          FSGenerateurLocalisationGeographique.TableauSelection.Cells[0,0]:='Article';           
     end;
     FSGenerateurLocalisationGeographique.TableauSelection.ColCount:=5;
     FSGenerateurLocalisationGeographique.TableauSelection.FixedCols:=2;
     FSGenerateurLocalisationGeographique.TableauSelection.SetFocus;
end;

procedure TFSGenerateurLocalisationGeographique.EditCodeLocalisationGeographiquePVAEnter(
  Sender: TObject);
begin
     FSGenerateurLocalisationGeographique.AfficheTableauSelection.Visible:=true;
     FSGenerateurLocalisationGeographique.AfficheNatureAffichage.Visible:=false;
     ListeLocalisationGeographique(FSGenerateurLocalisationGeographique.TableauSelection,'F'+FSGenerateurLocalisationGeographique.EditFichierLocalisationGeographiquePTA.Text,'Tous',1);
     FSGenerateurLocalisationGeographique.TableauSelection.Cells[0,0]:='LG';
     FSGenerateurLocalisationGeographique.TableauSelection.FixedCols:=2;
     FSGenerateurLocalisationGeographique.TableauSelection.SetFocus;
end;

procedure TFSGenerateurLocalisationGeographique.TableauSelectionKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in [VK_RETURN]then
     begin
          FSGenerateurLocalisationGeographique.AfficheTableauSelection.Visible:=false;

          if(FSGenerateurLocalisationGeographique.TableauSelection.Cells[0,0]='Article')then
          begin
               FSGenerateurLocalisationGeographique.EditCodeArticleConcerne.Text:=FSGenerateurLocalisationGeographique.TableauSelection.Cells[1,FSGenerateurLocalisationGeographique.TableauSelection.Row];
               FSGenerateurLocalisationGeographique.EditArticleConcerne.Text:=FSGenerateurLocalisationGeographique.TableauSelection.Cells[2,FSGenerateurLocalisationGeographique.TableauSelection.Row];
               FSGenerateurLocalisationGeographique.EditValeurTaxe.SetFocus;
          end;

          if(FSGenerateurLocalisationGeographique.TableauSelection.Cells[0,0]='LG')then
          begin
               FSGenerateurLocalisationGeographique.EditCodeLocalisationGeographiquePVA.Text:=FSGenerateurLocalisationGeographique.TableauSelection.Cells[1,FSGenerateurLocalisationGeographique.TableauSelection.Row];
               FSGenerateurLocalisationGeographique.EditLocalisationGeographiquePVA.Text:=FSGenerateurLocalisationGeographique.TableauSelection.Cells[2,FSGenerateurLocalisationGeographique.TableauSelection.Row];
               FSGenerateurLocalisationGeographique.EditCodeArticleConcerne.SetFocus;
          end;
     end;
end;

Procedure ListeParametreTaxeAjoute(TableauParametreTaxeAjoute:TStringGrid);
var   R,C:integer;   OKParametreTaxeAjoute:boolean;    NotRow,NotCol,RubriqueRecherche:string;
begin
     TableauParametreTaxeAjoute.ColCount:=9;
     TableauParametreTaxeAjoute.Cols[0].Text:='P°';
     TableauParametreTaxeAjoute.Cols[1].Text:='Dommaine';
     TableauParametreTaxeAjoute.Cols[2].Text:='F.L.G';
     TableauParametreTaxeAjoute.Cols[3].Text:='Code L.G';
     TableauParametreTaxeAjoute.Cols[4].Text:='Localisation.G';
     TableauParametreTaxeAjoute.Cols[5].Text:='Code Article';
     TableauParametreTaxeAjoute.Cols[6].Text:='Article';
     TableauParametreTaxeAjoute.Cols[7].Text:='Valeure Taxe';
     TableauParametreTaxeAjoute.Cols[8].Text:='Rubrique d''application';

     TableauParametreTaxeAjoute.RowCount:=2;
     TableauParametreTaxeAjoute.Rows[1].Text:='';


     OpenFParc(RParc);
     ChParametreTaxeAjoute:=RParc.Parcours+'\'+Exercice+'FParametreTaxeAjoute';
     assignfile(FParametreTaxeAjoute,ChParametreTaxeAjoute);
     if FileExists(ChParametreTaxeAjoute)then
     Reset(FParametreTaxeAjoute)
     else Rewrite(FParametreTaxeAjoute);
     Seek(FParametreTaxeAjoute,0);
     R:=0;
     while not eof(FParametreTaxeAjoute)do
     begin
          read(FParametreTaxeAjoute,RParametreTaxeAjoute);
          OKParametreTaxeAjoute:=true;

          if(OKParametreTaxeAjoute=true)then
          begin
               R:=R+1;
               TableauParametreTaxeAjoute.Rows[R].Text:=inttostr(RParametreTaxeAjoute.PositionParametreTaxeAjoute);
               TableauParametreTaxeAjoute.Cells[1,R]:=RParametreTaxeAjoute.DommaineApplication;
               TableauParametreTaxeAjoute.Cells[2,R]:=RParametreTaxeAjoute.FichierLocalisationGeographique;
               TableauParametreTaxeAjoute.Cells[3,R]:=RParametreTaxeAjoute.CodeLocalisationGeographique;
               TableauParametreTaxeAjoute.Cells[4,R]:=ChercherLocalisationGeographique(RParametreTaxeAjoute.CodeLocalisationGeographique,'F'+RParametreTaxeAjoute.FichierLocalisationGeographique).IntitulleLocalisationGeographique;
               TableauParametreTaxeAjoute.Cells[5,R]:=RParametreTaxeAjoute.CodeArticleConcerne;

               if longueur(RParametreTaxeAjoute.CodeArticleConcerne)>6then
               begin
                    RStock:=ChercherStockArticle('Article','',RParametreTaxeAjoute.CodeArticleConcerne,'',OKStockRecherche,RubriqueRecherche);
                    TableauParametreTaxeAjoute.Cells[6,R]:=RStock.Design+' '+RStock.Ref;
               end
               else
               begin
                    if(ChercherCompteComptable(RParametreTaxeAjoute.CodeArticleConcerne,inttostr(longueur(RParametreTaxeAjoute.CodeArticleConcerne)),'PlanComptable',RRegistreCompte))
                    then TableauParametreTaxeAjoute.Cells[6,R]:=RRegistreCompte.Designation
                    else TableauParametreTaxeAjoute.Cells[6,R]:='???';
               end;

               TableauParametreTaxeAjoute.Cells[7,R]:=RParametreTaxeAjoute.ValeurTaxe;
               TableauParametreTaxeAjoute.Cells[8,R]:=RParametreTaxeAjoute.RubriqueApplicationTaxeAjouter;
          end;
     end;
     CloseFile(FParametreTaxeAjoute);

     if(R>0)then TableauParametreTaxeAjoute.RowCount:=R+1
            else TableauParametreTaxeAjoute.RowCount:=2;

     NotRow:='';
     NotCol:='3;5';
     for c:=1 to TableauParametreTaxeAjoute.ColCount-1 do if ExisteNumInTexte(inttostr(C),NotCol)then TableauParametreTaxeAjoute.ColWidths[C]:=0;
     AjusterColWidth(TableauParametreTaxeAjoute,NotRow,NotCol);
end;

Procedure ListeBaremeTaxeAjouter(TableauBaremeTaxeAjouter:TStringGrid;  PositionParametreTaxeAjouter:string);
var   R:integer;   OKBaremeTaxeAjouter:boolean;
begin
     TableauBaremeTaxeAjouter.ColCount:=5;
     TableauBaremeTaxeAjouter.Cols[0].Text:='P°';
     TableauBaremeTaxeAjouter.Cols[1].Text:='P°Parametre';
     TableauBaremeTaxeAjouter.Cols[2].Text:='Qte Min';
     TableauBaremeTaxeAjouter.Cols[3].Text:='Qte Max';
     TableauBaremeTaxeAjouter.Cols[4].Text:='Valeur Taxe';

     TableauBaremeTaxeAjouter.RowCount:=2;
     TableauBaremeTaxeAjouter.Rows[1].Text:='';


     OpenFParc(RParc);
     ChBaremeTaxeAjouter:=RParc.Parcours+'\'+Exercice+'FBaremeTaxeAjouter';
     assignfile(FBaremeTaxeAjouter,ChBaremeTaxeAjouter);
     if FileExists(ChBaremeTaxeAjouter)then
     Reset(FBaremeTaxeAjouter)
     else Rewrite(FBaremeTaxeAjouter);
     Seek(FBaremeTaxeAjouter,0);
     R:=0;
     while not eof(FBaremeTaxeAjouter)do
     begin
          read(FBaremeTaxeAjouter,RBaremeTaxeAjouter);

          if(PositionParametreTaxeAjouter<>'')then
          begin
               if(RBaremeTaxeAjouter.PositionParametreTaxeAjouter=strtointeger(PositionParametreTaxeAjouter))
               then OKBaremeTaxeAjouter:=true
               else OKBaremeTaxeAjouter:=false;
          end
          else OKBaremeTaxeAjouter:=true;

          if(OKBaremeTaxeAjouter=true)then
          begin
               R:=R+1;
               TableauBaremeTaxeAjouter.Rows[R].Text:=inttostr(RBaremeTaxeAjouter.PositionBaremeTaxeAjouter);
               TableauBaremeTaxeAjouter.Cells[1,R]:=inttostr(RBaremeTaxeAjouter.PositionParametreTaxeAjouter);
               TableauBaremeTaxeAjouter.Cells[2,R]:=floattostr(RBaremeTaxeAjouter.QuatiteMin);
               if(RBaremeTaxeAjouter.QuantiteMax=999999999)
               then TableauBaremeTaxeAjouter.Cells[3,R]:='et plus.'
               else TableauBaremeTaxeAjouter.Cells[3,R]:=floattostr(RBaremeTaxeAjouter.QuantiteMax);

               if(Firstlaters(floattostr(RBaremeTaxeAjouter.ValeurTaxeAjouter),7)='9999999')
               then TableauBaremeTaxeAjouter.Cells[4,R]:='Formule '+Lastlaters(floattostr(RBaremeTaxeAjouter.ValeurTaxeAjouter),2)
               else TableauBaremeTaxeAjouter.Cells[4,R]:=floattostr(RBaremeTaxeAjouter.ValeurTaxeAjouter);
          end;
     end;
     CloseFile(FBaremeTaxeAjouter);

     if(R>0)then TableauBaremeTaxeAjouter.RowCount:=R+1
            else TableauBaremeTaxeAjouter.RowCount:=2;

     TableauBaremeTaxeAjouter.FixedCols:=2;
     TableauBaremeTaxeAjouter.ColWidths[1]:=0;
     AjusterColWidth(TableauBaremeTaxeAjouter,'','1');
end;

procedure TFSGenerateurLocalisationGeographique.TabSheet1Show(
  Sender: TObject);
begin
     ListeParametreTaxeAjoute(FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute);

     FSGenerateurLocalisationGeographique.AfficheDetailFormuleBareme.Caption:='';
     FSGenerateurLocalisationGeographique.TableauFormuleBareme.RowCount:=2;
     FSGenerateurLocalisationGeographique.TableauFormuleBareme.Rows[1].Text:='';
end;



procedure TFSGenerateurLocalisationGeographique.EditDommaineApplicationKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in [VK_RETURN]then
     begin
          FSGenerateurLocalisationGeographique.EditFichierLocalisationGeographiquePTA.SetFocus;
     end;
end;

procedure TFSGenerateurLocalisationGeographique.EditFichierLocalisationGeographiquePTAKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in [VK_RETURN]then
     begin
          FSGenerateurLocalisationGeographique.EditCodeLocalisationGeographiquePVA.SetFocus;
     end;
end;

procedure TFSGenerateurLocalisationGeographique.EditCodeLocalisationGeographiquePVAKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in [VK_RETURN]then
     begin
          FSGenerateurLocalisationGeographique.EditCodeArticleConcerne.SetFocus;
     end;
end;

procedure TFSGenerateurLocalisationGeographique.EditLocalisationGeographiquePVAKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in [VK_RETURN]then
     begin
          FSGenerateurLocalisationGeographique.EditCodeArticleConcerne.SetFocus;
     end;
end;

procedure TFSGenerateurLocalisationGeographique.EditCodeArticleConcerneKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in [VK_RETURN]then
     begin
          FSGenerateurLocalisationGeographique.EditValeurTaxe.SetFocus;
     end;
end;

procedure TFSGenerateurLocalisationGeographique.EditArticleConcerneKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in [VK_RETURN]then
     begin
          FSGenerateurLocalisationGeographique.EditValeurTaxe.SetFocus;
     end;
end;

procedure TFSGenerateurLocalisationGeographique.EditValeurTaxeKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
if key in [VK_RETURN]then
     begin
          FSGenerateurLocalisationGeographique.BitValider.SetFocus;
     end;
end;

Function ValeurTaxeAjouter(DommaineApplication,CodeLocalisationGeographique,CodeArticleConcerne:string; var RubriqueApplicationTaxeAjouter:string):string;
var   OKParametreTaxeAjoute:boolean;
begin
     ValeurTaxeAjouter:='';
     RubriqueApplicationTaxeAjouter:='';
     OpenFParc(RParc);
     ChParametreTaxeAjoute:=RParc.Parcours+'\'+Exercice+'FParametreTaxeAjoute';
     assignfile(FParametreTaxeAjoute,ChParametreTaxeAjoute);
     if FileExists(ChParametreTaxeAjoute)then
     Reset(FParametreTaxeAjoute)
     else Rewrite(FParametreTaxeAjoute);
     Seek(FParametreTaxeAjoute,0);
     OKParametreTaxeAjoute:=false;
     while not eof(FParametreTaxeAjoute)and(OKParametreTaxeAjoute=false)do
     begin
          read(FParametreTaxeAjoute,RParametreTaxeAjoute);
          if(RParametreTaxeAjoute.DommaineApplication=DommaineApplication)
          and(RParametreTaxeAjoute.CodeLocalisationGeographique=Firstlaters(CodeLocalisationGeographique,longueur(RParametreTaxeAjoute.CodeLocalisationGeographique)))
          and(RParametreTaxeAjoute.CodeArticleConcerne=Firstlaters(CodeArticleConcerne,longueur(RParametreTaxeAjoute.CodeArticleConcerne)))
          then
          begin
               OKParametreTaxeAjoute:=true;
               ValeurTaxeAjouter:=RParametreTaxeAjoute.ValeurTaxe;
               RubriqueApplicationTaxeAjouter:=RParametreTaxeAjoute.RubriqueApplicationTaxeAjouter;
          end;
     end;
     CloseFile(FParametreTaxeAjoute);
end;

procedure TFSGenerateurLocalisationGeographique.BitBtn4Click(
  Sender: TObject);
begin
     FSGenerateurLocalisationGeographique.AfficheTableauSelection.Visible:=false;
end;

procedure TFSGenerateurLocalisationGeographique.EditNatureAffichageKeyPress(
  Sender: TObject; var Key: Char);
begin
     key:=#0;
end;

procedure TFSGenerateurLocalisationGeographique.EditNatureAffichageChange(
  Sender: TObject);
begin
     if(FSGenerateurLocalisationGeographique.EditNatureAffichage.ItemIndex+1>6)then
     begin
          OpenFParc(RParc);
          ChStockArticle:=RParc.Parcours+'\'+Exercice+'FStockArticle';
          ProcAfficheListeStock(FSGenerateurLocalisationGeographique.TableauSelection,ChStockArticle,'','','',false);
          FSGenerateurLocalisationGeographique.TableauSelection.Cells[0,0]:='Article';
     end
     else
     begin
          ListePlanComptable(FSGenerateurLocalisationGeographique.TableauSelection,FSGenerateurLocalisationGeographique.EditNatureAffichage.ItemIndex+1,'','','PlanComptable');
          FSGenerateurLocalisationGeographique.TableauSelection.Cells[0,0]:='Article';
     end;
end;

procedure TFSGenerateurLocalisationGeographique.RBBaremeClick(
  Sender: TObject);
begin
     if(FSGenerateurLocalisationGeographique.RBBareme.Checked=true)then
     begin
          FSGenerateurLocalisationGeographique.EditValeurTaxe.ReadOnly:=true;
          FSGenerateurLocalisationGeographique.EditValeurTaxe.Text:='Barème '+FSGenerateurLocalisationGeographique.EditPositionParametreTaxeAjoute.Text;
     end
     else
     begin
          FSGenerateurLocalisationGeographique.EditValeurTaxe.ReadOnly:=false;
          FSGenerateurLocalisationGeographique.EditValeurTaxe.Text:='';
     end;

     FSGenerateurLocalisationGeographique.EditValeurTaxe.SetFocus;
end;

procedure TFSGenerateurLocalisationGeographique.EditValeurTaxeEnter(
  Sender: TObject);
begin
     if(FSGenerateurLocalisationGeographique.RBBareme.Checked=true)then
     begin
          FSGenerateurLocalisationGeographique.AfficheBareme.Visible:=true;
          ListeBaremeTaxeAjouter(FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouter,FSGenerateurLocalisationGeographique.EditPositionParametreTaxeAjoute.Text);
          FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouter.SetFocus;
     end
     else FSGenerateurLocalisationGeographique.AfficheBareme.Visible:=false;
end;

procedure TFSGenerateurLocalisationGeographique.BitOperationBaremeClick(
  Sender: TObject);
var  i,iSelect,RExistant,RSupprimer,RSauvgarder:integer;   OKBaremeTaxeAjouter:boolean;
begin
     if(FSGenerateurLocalisationGeographique.BitOperationBareme.Caption='Valider')then
     begin
          OpenFParc(RParc);
          ChBaremeTaxeAjouter:=RParc.Parcours+'\'+Exercice+'FBaremeTaxeAjouter';
          assignfile(FBaremeTaxeAjouter,ChBaremeTaxeAjouter);
          if FileExists(ChBaremeTaxeAjouter)then
          Reset(FBaremeTaxeAjouter)
          else Rewrite(FBaremeTaxeAjouter);
          Seek(FBaremeTaxeAjouter,0);
          i:=0;
          iSelect:=0;
          OKBaremeTaxeAjouter:=false;
          while not eof(FBaremeTaxeAjouter)and(OKBaremeTaxeAjouter=false)do
          begin
               read(FBaremeTaxeAjouter,RBaremeTaxeAjouter);
               if(inttostr(RBaremeTaxeAjouter.PositionBaremeTaxeAjouter)=FSGenerateurLocalisationGeographique.EditPositionBaremeTaxeAjouter.Text)then
               begin
                    OKBaremeTaxeAjouter:=true;
                    iSelect:=i;
               end;
          i:=i+1;
          end;
          if(OKBaremeTaxeAjouter=true)then i:=iSelect;
          RBaremeTaxeAjouter.PositionBaremeTaxeAjouter:=i;
          RBaremeTaxeAjouter.PositionParametreTaxeAjouter:=strtointeger(FSGenerateurLocalisationGeographique.EditPositionParametreTaxeAjoute.Text);
          RBaremeTaxeAjouter.QuatiteMin:=strtoreal(FSGenerateurLocalisationGeographique.EditQteMin.Text);
          if(FSGenerateurLocalisationGeographique.EditQteMax.Text='et plus.')
          then RBaremeTaxeAjouter.QuantiteMax:=999999999
          else RBaremeTaxeAjouter.QuantiteMax:=strtoreal(FSGenerateurLocalisationGeographique.EditQteMax.Text);

          if(Firstlaters(FSGenerateurLocalisationGeographique.EditValeurTaxeBareme.Text,7)='Formule')
          then RBaremeTaxeAjouter.ValeurTaxeAjouter:=strtointeger(floattostr(9999999)+Lastlaters(FSGenerateurLocalisationGeographique.EditValeurTaxeBareme.Text,2))
          else RBaremeTaxeAjouter.ValeurTaxeAjouter:=strtoreal(FSGenerateurLocalisationGeographique.EditValeurTaxeBareme.Text);

          Seek(FBaremeTaxeAjouter,i);
          write(FBaremeTaxeAjouter,RBaremeTaxeAjouter);

          CloseFile(FBaremeTaxeAjouter);
     end;

     if(FSGenerateurLocalisationGeographique.BitOperationBareme.Caption='Supprimer')then
     begin
          if(SupprimerBaremeTaxeAjouter(FSGenerateurLocalisationGeographique.EditPositionBaremeTaxeAjouter.Text,RExistant,RSupprimer,RSauvgarder)=true)then
          begin
               if(RSupprimer>0)
               then AfficherMessage('Suppression réussie ! FTotal: '+inttostr(RExistant)+' FSupprimer: '+inttostr(RSupprimer)+' FSauvgarder: '+inttostr(RSauvgarder))
               else AfficherMessage('Aucun Registre Supprimer ! FTotal: '+inttostr(RExistant)+' FSupprimer: '+inttostr(RSupprimer)+' FSauvgarder: '+inttostr(RSauvgarder));
          end;
     end;

     ListeBaremeTaxeAjouter(FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouter,FSGenerateurLocalisationGeographique.EditPositionParametreTaxeAjoute.Text);
     FSGenerateurLocalisationGeographique.AfficheOperationBareme.Visible:=false;
     FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouter.SetFocus;
end;

procedure TFSGenerateurLocalisationGeographique.BitBtn5Click(
  Sender: TObject);
begin
     FSGenerateurLocalisationGeographique.AfficheOperationBareme.Visible:=false;
     FSGenerateurLocalisationGeographique.AfficheTransfertFormuleCalcule.Visible:=false;
     FSGenerateurLocalisationGeographique.TableauFormuleValeurBareme.Visible:=false;
end;

procedure TFSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouterClick(
  Sender: TObject);
begin
     FSGenerateurLocalisationGeographique.AfficheOperationBareme.Visible:=false;
     FSGenerateurLocalisationGeographique.TableauFormuleValeurBareme.Visible:=false;
end;

procedure TFSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouterKeyPress(
  Sender: TObject; var Key: Char);
var  i:integer;    QuantiteMax:real;
begin
     if key in['n','N']then
     begin
          OpenFParc(RParc);
          ChBaremeTaxeAjouter:=RParc.Parcours+'\'+Exercice+'FBaremeTaxeAjouter';
          assignfile(FBaremeTaxeAjouter,ChBaremeTaxeAjouter);
          if FileExists(ChBaremeTaxeAjouter)then
          Reset(FBaremeTaxeAjouter)
          else Rewrite(FBaremeTaxeAjouter);
          Seek(FBaremeTaxeAjouter,0);
          i:=0;
          QuantiteMax:=0;
          while not eof(FBaremeTaxeAjouter)do
          begin
               read(FBaremeTaxeAjouter,RBaremeTaxeAjouter);
               if(RBaremeTaxeAjouter.PositionParametreTaxeAjouter=strtointeger(FSGenerateurLocalisationGeographique.EditPositionParametreTaxeAjoute.Text))then
               begin
                    if(QuantiteMax<=RBaremeTaxeAjouter.QuantiteMax)then QuantiteMax:=RBaremeTaxeAjouter.QuantiteMax+1;
               end;
               i:=i+1;
          end;
          CloseFile(FBaremeTaxeAjouter);

          FSGenerateurLocalisationGeographique.AfficheOperationBareme.Visible:=true;
          FSGenerateurLocalisationGeographique.BitOperationBareme.Kind:=bkAll;
          FSGenerateurLocalisationGeographique.BitOperationBareme.Caption:='Valider';

          FSGenerateurLocalisationGeographique.EditPositionBaremeTaxeAjouter.Text:=inttostr(i);
          FSGenerateurLocalisationGeographique.EditQteMin.Text:=floattostr(QuantiteMax);
          FSGenerateurLocalisationGeographique.EditQteMax.Text:='';
          FSGenerateurLocalisationGeographique.EditValeurTaxeBareme.Text:='';
          FSGenerateurLocalisationGeographique.EditQteMin.SetFocus;

          FSGenerateurLocalisationGeographique.RBQteMaxPlus.Checked:=false;
     end;

     if key in['m','M']then
     begin
          FSGenerateurLocalisationGeographique.AfficheOperationBareme.Visible:=true;
          FSGenerateurLocalisationGeographique.BitOperationBareme.Kind:=bkAll;
          FSGenerateurLocalisationGeographique.BitOperationBareme.Caption:='Valider';

          if(FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouter.Cells[3,FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouter.Row]='et plus.')
          then FSGenerateurLocalisationGeographique.RBQteMaxPlus.Checked:=true
          else FSGenerateurLocalisationGeographique.RBQteMaxPlus.Checked:=false;

          if(Firstlaters(FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouter.Cells[4,FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouter.Row],7)='Formule')
          then FSGenerateurLocalisationGeographique.RBValeurFormule.Checked:=true
          else FSGenerateurLocalisationGeographique.RBValeurFormule.Checked:=false;

          FSGenerateurLocalisationGeographique.EditPositionBaremeTaxeAjouter.Text:=FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouter.Cells[0,FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouter.Row];
          FSGenerateurLocalisationGeographique.EditQteMin.Text:=FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouter.Cells[2,FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouter.Row];
          FSGenerateurLocalisationGeographique.EditQteMax.Text:=FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouter.Cells[3,FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouter.Row];
          FSGenerateurLocalisationGeographique.EditValeurTaxeBareme.Text:=FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouter.Cells[4,FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouter.Row];
          FSGenerateurLocalisationGeographique.EditQteMin.SetFocus;
     end;

     if key in['s','S']then
     begin
          FSGenerateurLocalisationGeographique.AfficheOperationBareme.Visible:=true;
          FSGenerateurLocalisationGeographique.BitOperationBareme.Kind:=bkCancel;
          FSGenerateurLocalisationGeographique.BitOperationBareme.Caption:='Supprimer';

          if(FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouter.Cells[3,FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouter.Row]='et plus.')
          then FSGenerateurLocalisationGeographique.RBQteMaxPlus.Checked:=true
          else FSGenerateurLocalisationGeographique.RBQteMaxPlus.Checked:=false;

          if(Firstlaters(FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouter.Cells[4,FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouter.Row],7)='Formule')
          then FSGenerateurLocalisationGeographique.RBValeurFormule.Checked:=true
          else FSGenerateurLocalisationGeographique.RBValeurFormule.Checked:=false;
          
          FSGenerateurLocalisationGeographique.EditPositionBaremeTaxeAjouter.Text:=FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouter.Cells[0,FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouter.Row];
          FSGenerateurLocalisationGeographique.EditQteMin.Text:=FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouter.Cells[2,FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouter.Row];
          FSGenerateurLocalisationGeographique.EditQteMax.Text:=FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouter.Cells[3,FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouter.Row];
          FSGenerateurLocalisationGeographique.EditValeurTaxeBareme.Text:=FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouter.Cells[4,FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouter.Row];
          FSGenerateurLocalisationGeographique.BitOperationBareme.SetFocus;
     end;
end;

procedure TFSGenerateurLocalisationGeographique.EditQteMinKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in [VK_RETURN]then
     begin
          FSGenerateurLocalisationGeographique.EditQteMax.SetFocus;
     end;
end;

procedure TFSGenerateurLocalisationGeographique.EditQteMaxKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in [VK_RETURN]then
     begin
          FSGenerateurLocalisationGeographique.EditValeurTaxeBareme.SetFocus;
     end;
end;

procedure TFSGenerateurLocalisationGeographique.EditValeurTaxeBaremeKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in [VK_RETURN]then
     begin
          FSGenerateurLocalisationGeographique.BitOperationBareme.SetFocus;
     end;
end;

Function ValeurBareme(PositionParametreTaxeAjouter:string; Quantite:real):real;
var   OKBaremeTaxeAjouter:boolean; CodeTypeFormule:string;
begin
     ValeurBareme:=0;
     if(PositionParametreTaxeAjouter<>'')then
     begin
          OpenFParc(RParc);
          ChBaremeTaxeAjouter:=RParc.Parcours+'\'+Exercice+'FBaremeTaxeAjouter';
          assignfile(FBaremeTaxeAjouter,ChBaremeTaxeAjouter);
          Try
          if FileExists(ChBaremeTaxeAjouter)then
          Reset(FBaremeTaxeAjouter)
          else Rewrite(FBaremeTaxeAjouter);
          Seek(FBaremeTaxeAjouter,0);
          OKBaremeTaxeAjouter:=false;
          while not eof(FBaremeTaxeAjouter)and(OKBaremeTaxeAjouter=false)do
          begin
               read(FBaremeTaxeAjouter,RBaremeTaxeAjouter);
               if(RBaremeTaxeAjouter.PositionParametreTaxeAjouter=strtointeger(PositionParametreTaxeAjouter))then
               begin
                    if(Quantite>=RBaremeTaxeAjouter.QuatiteMin)
                    and(Quantite<=RBaremeTaxeAjouter.QuantiteMax)
                    then
                    begin
                         OKBaremeTaxeAjouter:=true;
                         if(Firstlaters(floattostr(RBaremeTaxeAjouter.ValeurTaxeAjouter),7)<>'9999999')then
                         begin
                              ValeurBareme:=RBaremeTaxeAjouter.ValeurTaxeAjouter;
                         end
                         else
                         begin
                              CodeTypeFormule:='Formule '+lastlaters(floattostr(RBaremeTaxeAjouter.ValeurTaxeAjouter),2);
                              ValeurBareme:=RrixAppliqerFormuleCalcule(CodeTypeFormule,'',FSFicheSaisie.EditNbrChiffreApresVergulePrix.Text,Quantite);

                         end;
                    end;
               end;
          end;
          Finally
          CloseFile(FBaremeTaxeAjouter);
          end;
     end;
end;

procedure TFSGenerateurLocalisationGeographique.PaysDblClick(
  Sender: TObject);
begin
     ListeLocalisationGeographique(FSGenerateurLocalisationGeographique.TableauPays,'FPays','Tous',FSGenerateurLocalisationGeographique.TableauPays.Row);
end;

procedure TFSGenerateurLocalisationGeographique.WilayaDblClick(
  Sender: TObject);
begin
     ListeLocalisationGeographique(FSGenerateurLocalisationGeographique.TableauWilaya,'FWilaya','Tous',FSGenerateurLocalisationGeographique.TableauWilaya.Row);
end;

procedure TFSGenerateurLocalisationGeographique.DairaDblClick(
  Sender: TObject);
begin
     ListeLocalisationGeographique(FSGenerateurLocalisationGeographique.TableauDaira,'FDaira','Tous',FSGenerateurLocalisationGeographique.TableauDaira.Row);
end;

procedure TFSGenerateurLocalisationGeographique.CommuneDblClick(
  Sender: TObject);
begin
     ListeLocalisationGeographique(FSGenerateurLocalisationGeographique.TableauCommune,'FCommune','Tous',FSGenerateurLocalisationGeographique.TableauCommune.Row);
end;

procedure TFSGenerateurLocalisationGeographique.ZoneDblClick(
  Sender: TObject);
begin
     ListeLocalisationGeographique(FSGenerateurLocalisationGeographique.TableauZone,'FZone','Tous',FSGenerateurLocalisationGeographique.TableauZone.Row);
end;

procedure TFSGenerateurLocalisationGeographique.RBQteMaxPlusClick(
  Sender: TObject);
begin
     if(FSGenerateurLocalisationGeographique.RBQteMaxPlus.Checked=true)then
     begin
          FSGenerateurLocalisationGeographique.EditQteMax.Text:='et plus.';
     end
     else
     begin
          FSGenerateurLocalisationGeographique.EditQteMax.Text:='';
     end;
end;



procedure TFSGenerateurLocalisationGeographique.AfficheOptionPrintClick(
  Sender: TObject);
begin

if(FSGenerateurLocalisationGeographique.AfficheOptionPrint.Height=31)
then FSGenerateurLocalisationGeographique.AfficheOptionPrint.Height:=223
else FSGenerateurLocalisationGeographique.AfficheOptionPrint.Height:=31;

end;

procedure TFSGenerateurLocalisationGeographique.BitBtn20Click(
  Sender: TObject);
var  R,l,C,NbrPrint,EcartTableau:integer;  TitreEtat,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol:string; ImprimeEtat:boolean;
begin
     NbrPrint:=0;
     l:=1;
     while l<=FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.RowCount-1 do
     begin
          if(Firstlaters(FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Cells[7,l],6)='Barème')then
          begin
               NbrPrint:=NbrPrint+1;
          end;
     l:=l+1;
     end;

     FSGenerateurLocalisationGeographique.EditTitreEtat.Lines.Text:='';
     FSGenerateurLocalisationGeographique.EditTitreEtat.Lines.Add('Localisation Géographique');
     TitreEtat:=FSGenerateurLocalisationGeographique.EditTitreEtat.Text;
     GrasARow:='0';
     GrasACol:='0';
     CenterARow:='0';
     CenterACol:='0';
     RightARow:='';
     RightACol:='7';
     R:=0;
     EcartTableau:=2;
     if(NbrPrint>=0)then ImprimeEtat:=false else ImprimeEtat:=true;
     OptionsImpression(FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute,'Center',R,1,TitreEtat,FSGenerateurLocalisationGeographique.RBAjustement.Checked,FSGenerateurLocalisationGeographique.RBOrientationPapier.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,ImprimeEtat,EcartTableau,FSMenuPrincipal.ImageCodebarre,true,R);

     l:=1;
     while l<=FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.RowCount-1 do
     begin
          if(Firstlaters(FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Cells[7,l],6)='Barème')then
          begin
               FSGenerateurLocalisationGeographique.TableauTitreBaremeTaxeAjouter.Cells[0,0]:=FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Cells[7,l];
               AjusterColWidth(FSGenerateurLocalisationGeographique.TableauTitreBaremeTaxeAjouter,'','');
               ListeBaremeTaxeAjouter(FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouterAfficher,FSGenerateurLocalisationGeographique.TableauParametreTaxeAjoute.Cells[0,l]);

               NbrPrint:=NbrPrint-1;
               ImprimeEtat:=false;
               GrasARow:='0';
               GrasACol:='0';
               CenterARow:='0';
               CenterACol:='0';
               RightARow:='';
               RightACol:='';
               EcartTableau:=0;
               OptionsImpression(FSGenerateurLocalisationGeographique.TableauTitreBaremeTaxeAjouter,'Center',0,1,TitreEtat,FSGenerateurLocalisationGeographique.RBAjustement.Checked,FSGenerateurLocalisationGeographique.RBOrientationPapier.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,false,EcartTableau,FSMenuPrincipal.ImageCodebarre,true,R);

               if(NbrPrint>=0)then ImprimeEtat:=false else ImprimeEtat:=true;
               GrasARow:='0';
               GrasACol:='0';
               CenterARow:='0';
               CenterACol:='0';
               RightARow:='';
               RightACol:='';
               EcartTableau:=2;
               OptionsImpression(FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouterAfficher,'Center',R,1,TitreEtat,FSGenerateurLocalisationGeographique.RBAjustement.Checked,FSGenerateurLocalisationGeographique.RBOrientationPapier.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,ImprimeEtat,EcartTableau,FSMenuPrincipal.ImageCodebarre,true,R);
          end
          else FSGenerateurLocalisationGeographique.TableauTitreBaremeTaxeAjouter.Cells[0,0]:='';
     l:=l+1;
     end;
     FSGenerateurLocalisationGeographique.AfficheOptionPrint.Height:=31;
end;

procedure TFSGenerateurLocalisationGeographique.RBIndiceRubriqueTriColClick(
  Sender: TObject);
begin
     FSGenerateurLocalisationGeographique.EditIndiceRubriqueTriCol.Text:='';
end;

procedure TFSGenerateurLocalisationGeographique.EditValeurTaxeContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
     FSGenerateurLocalisationGeographique.AfficheTransfertFormuleCalcule.Visible:=true;
     FSGenerateurLocalisationGeographique.TableauTypeFormule.Left:=8;
     FSGenerateurLocalisationGeographique.TableauTypeFormule.Top:=8;
     FSGenerateurLocalisationGeographique.TableauTypeFormule.Visible:=true;
     ListeTypeFormule(FSGenerateurLocalisationGeographique.TableauTypeFormule);
     FSGenerateurLocalisationGeographique.EditValeurePrincipale.Text:=FSGenerateurLocalisationGeographique.EditValeurTaxe.Text;
     FSGenerateurLocalisationGeographique.EditAutorisationTransfertFormuleCalcule.Text:='';
     FSGenerateurLocalisationGeographique.EditSource.Text:='Taxe';
end;

procedure TFSGenerateurLocalisationGeographique.TableauTypeFormuleKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

     if key in[VK_RETURN]then
     begin
          FSGenerateurLocalisationGeographique.EditCodeTypeFormule.Text:=FSGenerateurLocalisationGeographique.TableauTypeFormule.Cells[2,FSGenerateurLocalisationGeographique.TableauTypeFormule.Row];
          FSGenerateurLocalisationGeographique.TitreAfficheTransfertFormuleCalcule.Caption:='Transfert avec la formule: {'+FSGenerateurLocalisationGeographique.TableauTypeFormule.Cells[2,FSGenerateurLocalisationGeographique.TableauTypeFormule.Row]+'} '+FSGenerateurLocalisationGeographique.TableauTypeFormule.Cells[3,FSGenerateurLocalisationGeographique.TableauTypeFormule.Row];
          TransfertFormuleCalcule(FSGenerateurLocalisationGeographique.TableauTypeFormule.Cells[2,FSGenerateurLocalisationGeographique.TableauTypeFormule.Row],FSGenerateurLocalisationGeographique.EditValeurePrincipale,FSGenerateurLocalisationGeographique.EditValeurFinale);
          FSGenerateurLocalisationGeographique.EditValeurFinale.SetFocus;
          FSGenerateurLocalisationGeographique.TableauTypeFormule.Visible:=false;
     end;

end;

procedure TFSGenerateurLocalisationGeographique.BitBtn8Click(
  Sender: TObject);
begin
     if(FSGenerateurLocalisationGeographique.EditSource.Text='Taxe')then
     begin
          FSGenerateurLocalisationGeographique.EditValeurTaxe.Text:=FSGenerateurLocalisationGeographique.EditValeurFinale.Text;
     end;

     if(FSGenerateurLocalisationGeographique.EditSource.Text='TaxeBarême')then
     begin
          FSGenerateurLocalisationGeographique.EditValeurTaxeBareme.Text:=FSGenerateurLocalisationGeographique.EditValeurFinale.Text;
     end;

     FSGenerateurLocalisationGeographique.AfficheTransfertFormuleCalcule.Visible:=false;
end;

procedure TFSGenerateurLocalisationGeographique.BitBtn7Click(
  Sender: TObject);
begin
     FSGenerateurLocalisationGeographique.AfficheTransfertFormuleCalcule.Visible:=false;
end;

procedure TFSGenerateurLocalisationGeographique.EditValeurTaxeBaremeContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
     FSGenerateurLocalisationGeographique.AfficheTransfertFormuleCalcule.Visible:=true;
     FSGenerateurLocalisationGeographique.TableauTypeFormule.Left:=8;
     FSGenerateurLocalisationGeographique.TableauTypeFormule.Top:=8;
     FSGenerateurLocalisationGeographique.TableauTypeFormule.Visible:=true;
     ListeTypeFormule(FSGenerateurLocalisationGeographique.TableauTypeFormule);
     FSGenerateurLocalisationGeographique.EditValeurePrincipale.Text:=FSGenerateurLocalisationGeographique.EditValeurTaxeBareme.Text;
     FSGenerateurLocalisationGeographique.EditAutorisationTransfertFormuleCalcule.Text:='';
     FSGenerateurLocalisationGeographique.EditSource.Text:='TaxeBarême';
end;

procedure TFSGenerateurLocalisationGeographique.BitBtn3Click(
  Sender: TObject);
begin
     FSModuleCalculeFormules.Show;
end;

procedure TFSGenerateurLocalisationGeographique.BitBtn6Click(
  Sender: TObject);
var  i,R:integer;     NomFichier,RubriqueRecherche:string;
begin
     FSModuleCalculeFormules.TableauTransfertValeurTaxe.ColCount:=6;
     FSModuleCalculeFormules.TableauTransfertValeurTaxe.Cols[0].Text:='N°';
     FSModuleCalculeFormules.TableauTransfertValeurTaxe.Cols[1].Text:='Code';
     FSModuleCalculeFormules.TableauTransfertValeurTaxe.Cols[2].Text:='Désignation';
     FSModuleCalculeFormules.TableauTransfertValeurTaxe.Cols[3].Text:='Valeur Principale';
     FSModuleCalculeFormules.TableauTransfertValeurTaxe.Cols[4].Text:='Valleur Finale';
     FSModuleCalculeFormules.TableauTransfertValeurTaxe.Cols[5].Text:='Formule';
     FSModuleCalculeFormules.TableauTransfertValeurTaxe.RowCount:=2;
     FSModuleCalculeFormules.TableauTransfertValeurTaxe.Rows[1].Text:='';

     if(FSGenerateurLocalisationGeographique.EditAutorisationTransfertFormuleCalcule.Text='000')then
     begin
          if(FSGenerateurLocalisationGeographique.EditSource.Text='Taxe')then
          begin
               OpenFParc(RParc);
               ChParametreTaxeAjoute:=RParc.Parcours+'\'+Exercice+'FParametreTaxeAjoute';
               assignfile(FParametreTaxeAjoute,ChParametreTaxeAjoute);
               if FileExists(ChParametreTaxeAjoute)then
               Reset(FParametreTaxeAjoute)
               else Rewrite(FParametreTaxeAjoute);
               Seek(FParametreTaxeAjoute,0);
               i:=0;
               R:=0;
               while not eof(FParametreTaxeAjoute)do
               begin
                    read(FParametreTaxeAjoute,RParametreTaxeAjoute);
                    if(strtoreal(RParametreTaxeAjoute.ValeurTaxe)>0)then
                    begin
                         FSGenerateurLocalisationGeographique.EditValeurePrincipale.Text:=RParametreTaxeAjoute.ValeurTaxe;
                         TransfertFormuleCalcule(FSGenerateurLocalisationGeographique.EditCodeTypeFormule.Text,FSGenerateurLocalisationGeographique.EditValeurePrincipale,FSGenerateurLocalisationGeographique.EditValeurFinale);
                         RParametreTaxeAjoute.ValeurTaxe:=FSGenerateurLocalisationGeographique.EditValeurFinale.Text;
                         Seek(FParametreTaxeAjoute,i);
                         write(FParametreTaxeAjoute,RParametreTaxeAjoute);
                         R:=R+1;
                         FSModuleCalculeFormules.TableauTransfertValeurTaxe.Rows[R].Text:=inttostr(R);
                         FSModuleCalculeFormules.TableauTransfertValeurTaxe.Cells[1,R]:=RParametreTaxeAjoute.CodeArticleConcerne;

                         if longueur(RParametreTaxeAjoute.CodeArticleConcerne)>6then
                         begin
                              RStock:=ChercherStockArticle('Article','',RParametreTaxeAjoute.CodeArticleConcerne,'',OKStockRecherche,RubriqueRecherche);
                              FSModuleCalculeFormules.TableauTransfertValeurTaxe.Cells[2,R]:=RStock.Design+' '+RStock.Ref;
                         end
                         else
                         begin
                              if(ChercherCompteComptable(RParametreTaxeAjoute.CodeArticleConcerne,inttostr(longueur(RParametreTaxeAjoute.CodeArticleConcerne)),'PlanComptable',RRegistreCompte))
                              then FSModuleCalculeFormules.TableauTransfertValeurTaxe.Cells[2,R]:=RRegistreCompte.Designation
                              else FSModuleCalculeFormules.TableauTransfertValeurTaxe.Cells[2,R]:='???';
                         end;

                         FSModuleCalculeFormules.TableauTransfertValeurTaxe.Cells[3,R]:=Vergule(FSGenerateurLocalisationGeographique.EditValeurePrincipale.Text,'2','C','');
                         FSModuleCalculeFormules.TableauTransfertValeurTaxe.Cells[4,R]:=Vergule(FSGenerateurLocalisationGeographique.EditValeurFinale.Text,'2','C','');;
                         FSModuleCalculeFormules.TableauTransfertValeurTaxe.Cells[5,R]:='{'+FSGenerateurLocalisationGeographique.EditCodeTypeFormule.Text+'} '+ChercherTypeFormule(FSGenerateurLocalisationGeographique.EditCodeTypeFormule.Text,'').DesignationTypeFormule;
                    end;
               i:=i+1;
               end;
               if(R>0)then FSModuleCalculeFormules.TableauTransfertValeurTaxe.RowCount:=R+1
                      else FSModuleCalculeFormules.TableauTransfertValeurTaxe.RowCount:=2;
               NomFichier:='Rapport de transfert valeure Taxe localisation géographique {'+FSGenerateurLocalisationGeographique.EditCodeTypeFormule.Text+'}'+'{'+WithoutChar(WithoutChar(FSModuleCalculeFormules.EditTime.Text,'/'),':')+'}'+'.txt';
               TableauInFileTexte(FSModuleCalculeFormules.TableauTransfertValeurTaxe,NomFichier,FSCreateFichierTexte.RBCodificationRubriqes,FSCreateFichierTexte.RBLibelleRubriques,FSCreateFichierTexte.RBSignatureEntrepeise);
          end;

          if(FSGenerateurLocalisationGeographique.EditSource.Text='TaxeBarême')then
          begin
               OpenFParc(RParc);
               ChParametreTaxeAjoute:=RParc.Parcours+'\'+Exercice+'FParametreTaxeAjoute';
               assignfile(FParametreTaxeAjoute,ChParametreTaxeAjoute);
               if FileExists(ChParametreTaxeAjoute)then
               Reset(FParametreTaxeAjoute)
               else Rewrite(FParametreTaxeAjoute);
               
               OpenFParc(RParc);
               ChBaremeTaxeAjouter:=RParc.Parcours+'\'+Exercice+'FBaremeTaxeAjouter';
               assignfile(FBaremeTaxeAjouter,ChBaremeTaxeAjouter);
               if FileExists(ChBaremeTaxeAjouter)then
               Reset(FBaremeTaxeAjouter)
               else Rewrite(FBaremeTaxeAjouter);
               Seek(FBaremeTaxeAjouter,0);
               i:=0;
               R:=0;
               while not eof(FBaremeTaxeAjouter)do
               begin
                    read(FBaremeTaxeAjouter,RBaremeTaxeAjouter);
                    if(RBaremeTaxeAjouter.ValeurTaxeAjouter>0)then
                    begin
                         Seek(FParametreTaxeAjoute,RBaremeTaxeAjouter.PositionParametreTaxeAjouter);
                         read(FParametreTaxeAjoute,RParametreTaxeAjoute);

                         FSGenerateurLocalisationGeographique.EditValeurePrincipale.Text:=floattostr(RBaremeTaxeAjouter.ValeurTaxeAjouter);
                         TransfertFormuleCalcule(FSGenerateurLocalisationGeographique.EditCodeTypeFormule.Text,FSGenerateurLocalisationGeographique.EditValeurePrincipale,FSGenerateurLocalisationGeographique.EditValeurFinale);
                         RBaremeTaxeAjouter.ValeurTaxeAjouter:=strtoreal(FSGenerateurLocalisationGeographique.EditValeurFinale.Text);
                         Seek(FBaremeTaxeAjouter,i);
                         write(FBaremeTaxeAjouter,RBaremeTaxeAjouter);
                         R:=R+1;
                         FSModuleCalculeFormules.TableauTransfertValeurTaxe.Rows[R].Text:=inttostr(R);
                         FSModuleCalculeFormules.TableauTransfertValeurTaxe.Cells[1,R]:=RParametreTaxeAjoute.CodeArticleConcerne;

                         if longueur(RParametreTaxeAjoute.CodeArticleConcerne)>6then
                         begin
                              RStock:=ChercherStockArticle('Article','',RParametreTaxeAjoute.CodeArticleConcerne,'',OKStockRecherche,RubriqueRecherche);
                              FSModuleCalculeFormules.TableauTransfertValeurTaxe.Cells[2,R]:=RStock.Design+' '+RStock.Ref;
                         end
                         else
                         begin
                              if(ChercherCompteComptable(RParametreTaxeAjoute.CodeArticleConcerne,inttostr(longueur(RParametreTaxeAjoute.CodeArticleConcerne)),'PlanComptable',RRegistreCompte))
                              then FSModuleCalculeFormules.TableauTransfertValeurTaxe.Cells[2,R]:=RRegistreCompte.Designation
                              else FSModuleCalculeFormules.TableauTransfertValeurTaxe.Cells[2,R]:='???';
                         end;

                         FSModuleCalculeFormules.TableauTransfertValeurTaxe.Cells[3,R]:=Vergule(FSGenerateurLocalisationGeographique.EditValeurePrincipale.Text,'2','C','');
                         FSModuleCalculeFormules.TableauTransfertValeurTaxe.Cells[4,R]:=Vergule(FSGenerateurLocalisationGeographique.EditValeurFinale.Text,'2','C','');
                         FSModuleCalculeFormules.TableauTransfertValeurTaxe.Cells[5,R]:='{'+FSGenerateurLocalisationGeographique.EditCodeTypeFormule.Text+'} '+ChercherTypeFormule(FSGenerateurLocalisationGeographique.EditCodeTypeFormule.Text,'').DesignationTypeFormule;
                    end;
               i:=i+1;
               end;
               if(R>0)then FSModuleCalculeFormules.TableauTransfertValeurTaxe.RowCount:=R+1
                      else FSModuleCalculeFormules.TableauTransfertValeurTaxe.RowCount:=2;
               NomFichier:='Rapport de transfert Barême Taxe localisation géographique {'+FSGenerateurLocalisationGeographique.EditCodeTypeFormule.Text+'}'+'{'+WithoutChar(WithoutChar(FSModuleCalculeFormules.EditTime.Text,'/'),':')+'}'+'.txt';
               TableauInFileTexte(FSModuleCalculeFormules.TableauTransfertValeurTaxe,NomFichier,FSCreateFichierTexte.RBCodificationRubriqes,FSCreateFichierTexte.RBLibelleRubriques,FSCreateFichierTexte.RBSignatureEntrepeise);
          end;

          FSGenerateurLocalisationGeographique.EditAutorisationTransfertFormuleCalcule.Text:='';
     end
     else
     begin
          showmessage('Veuillez saisire le code SVP !');
          FSGenerateurLocalisationGeographique.EditAutorisationTransfertFormuleCalcule.Text:='';
          FSGenerateurLocalisationGeographique.EditAutorisationTransfertFormuleCalcule.SetFocus;
     end;
end;

procedure TFSGenerateurLocalisationGeographique.AfficheTransfertFormuleCalculeEnter(
  Sender: TObject);
begin
     FSModuleCalculeFormules.TimerEvolution.Enabled:=true;
end;

procedure TFSGenerateurLocalisationGeographique.AfficheTransfertFormuleCalculeExit(
  Sender: TObject);
begin
     FSModuleCalculeFormules.TimerEvolution.Enabled:=false;
end;

procedure TFSGenerateurLocalisationGeographique.FormShow(Sender: TObject);
begin
ActiverNomForm(1,(Sender as TComponent).Name);
     FSGenerateurLocalisationGeographique.Caption:=RRegistre.Repertoire+' - Exercice '+RRegistre.Exercice+' - Générateur de localisation géographique';
end;

procedure TFSGenerateurLocalisationGeographique.EditValeurTaxeKeyPress(
  Sender: TObject; var Key: Char);
begin
     if key in['?','.',';',':','/']then key:=',';

     if (key in['A'..'z'])
     or((key=',')and(ExisteCharInString(',',FSGenerateurLocalisationGeographique.EditValeurTaxe.Text)))
     then key:=#0;
end;

procedure TFSGenerateurLocalisationGeographique.EditValeurTaxeBaremeKeyPress(
  Sender: TObject; var Key: Char);
begin
     if key in['?','.',';',':','/']then key:=',';

     if (key in['A'..'z'])
     or((key=',')and(ExisteCharInString(',',FSGenerateurLocalisationGeographique.EditValeurTaxe.Text)))
     then key:=#0;
end;

procedure TFSGenerateurLocalisationGeographique.RBValeurFormuleClick(
  Sender: TObject);
begin
     if(FSGenerateurLocalisationGeographique.RBValeurFormule.Checked=true)then
     begin
          if(Firstlaters(FSGenerateurLocalisationGeographique.EditValeurTaxeBareme.Text,7)<>'Formule')then FSGenerateurLocalisationGeographique.EditValeurTaxeBareme.Text:='';
          FSGenerateurLocalisationGeographique.EditValeurTaxeBareme.SetFocus;
     end
     else
     begin
          FSGenerateurLocalisationGeographique.EditValeurTaxeBareme.Text:='';
          FSGenerateurLocalisationGeographique.EditValeurTaxeBareme.SetFocus;
     end;
end;

procedure TFSGenerateurLocalisationGeographique.EditValeurTaxeBaremeEnter(
  Sender: TObject);
begin
     if(FSGenerateurLocalisationGeographique.RBValeurFormule.Checked=true)then
     begin
           FSGenerateurLocalisationGeographique.TableauFormuleValeurBareme.Visible:=true;
           ListeTypeFormule(FSGenerateurLocalisationGeographique.TableauFormuleValeurBareme);
     end;
end;

procedure TFSGenerateurLocalisationGeographique.TableauFormuleValeurBaremeDblClick(
  Sender: TObject);
begin
     FSGenerateurLocalisationGeographique.EditValeurTaxeBareme.Text:=FSGenerateurLocalisationGeographique.TableauFormuleValeurBareme.Cells[2,FSGenerateurLocalisationGeographique.TableauFormuleValeurBareme.Row];
     FSGenerateurLocalisationGeographique.TableauFormuleValeurBareme.Visible:=false;
end;

procedure TFSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouterAfficherClick(
  Sender: TObject);
var C:integer; NotCol:string;
begin
     FSGenerateurLocalisationGeographique.AfficheTableauFormuleBareme.Visible:=false;

     if(Firstlaters(FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouterAfficher.Cells[4,FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouterAfficher.Row],7)='Formule')then
     begin
          RTypeFormuleCopie:=ChercherTypeFormule(FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouterAfficher.Cells[4,FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouterAfficher.Row],'');
          FSGenerateurLocalisationGeographique.AfficheDetailFormuleBareme.Caption:='Détail: '+RTypeFormuleCopie.CodeTypeFormule+'  '+RTypeFormuleCopie.DesignationTypeFormule;
          ProcAfficheFormule(FSGenerateurLocalisationGeographique.TableauFormuleBareme,RTypeFormuleCopie.CodeTypeFormule);

          NotCol:='1;5-13';
          for C:=1 to FSGenerateurLocalisationGeographique.TableauFormuleBareme.ColCount-1 do if existenumintexte(inttostr(C),NotCol)then FSGenerateurLocalisationGeographique.TableauFormuleBareme.ColWidths[C]:=0;
          AjusterColWidth(FSGenerateurLocalisationGeographique.TableauFormuleBareme,'',NotCol);
     end
     else
     begin
          FSGenerateurLocalisationGeographique.AfficheDetailFormuleBareme.Caption:='';
          FSGenerateurLocalisationGeographique.TableauFormuleBareme.RowCount:=2;
          FSGenerateurLocalisationGeographique.TableauFormuleBareme.Rows[1].Text:='';
     end;
end;

procedure TFSGenerateurLocalisationGeographique.TableauFormuleBaremeClick(
  Sender: TObject);
begin
     FSGenerateurLocalisationGeographique.AfficheTableauFormuleBareme.Visible:=false;
end;

procedure TFSGenerateurLocalisationGeographique.BitBtn9Click(
  Sender: TObject);
begin
     FSGenerateurLocalisationGeographique.AfficheTableauFormuleBareme.Visible:=false;
end;

procedure TFSGenerateurLocalisationGeographique.TableauFormuleBaremeKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          if(strtointeger(FSGenerateurLocalisationGeographique.TableauFormuleBareme.Cells[4,FSGenerateurLocalisationGeographique.TableauFormuleBareme.Row])>0)then
          begin
               FSGenerateurLocalisationGeographique.AfficheTableauFormuleBareme.Visible:=true;
               FSGenerateurLocalisationGeographique.EditValeurFormule.Text:=FSGenerateurLocalisationGeographique.TableauFormuleBareme.Cells[4,FSGenerateurLocalisationGeographique.TableauFormuleBareme.Row];
               FSGenerateurLocalisationGeographique.LabelFormule.Caption:=FSGenerateurLocalisationGeographique.TableauFormuleBareme.Cells[3,FSGenerateurLocalisationGeographique.TableauFormuleBareme.Row];

               FSGenerateurLocalisationGeographique.EditValeurFormule.SetFocus;
          end;           
     end;
end;

procedure TFSGenerateurLocalisationGeographique.EditValeurFormuleKeyPress(
  Sender: TObject; var Key: Char);
begin
     if not (key in['0'..'9',','])then key:=#0;
end;

procedure TFSGenerateurLocalisationGeographique.EditValeurFormuleKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
var  i,C:integer;  TypeProces,FichierConcerner,Adresse,NotCol:string;  OKFormule:boolean;
begin
     if(key in[VK_RETURN])then
     begin
           TypeProces:='Business';
           FichierConcerner:=FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouterAfficher.Cells[4,FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouterAfficher.Row];
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
           OKFormule:=false;
           while not eof(FFormule)and(OKFormule=false)do
           begin
                Read(FFormule,RFormule);
                if(RFormule.CodeFormule=FSGenerateurLocalisationGeographique.TableauFormuleBareme.Cells[2,FSGenerateurLocalisationGeographique.TableauFormuleBareme.Row])then
                begin
                     OKFormule:=true;
                     seek(FFormule,i);
                     RFormule.FormuleTexte:=FSGenerateurLocalisationGeographique.EditValeurFormule.Text;
                     write(FFormule,RFormule);
                end;
           i:=i+1;
           end;
           CloseFile(FFormule);

           RTypeFormuleCopie:=ChercherTypeFormule(FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouterAfficher.Cells[4,FSGenerateurLocalisationGeographique.TableauBaremeTaxeAjouterAfficher.Row],'');
           FSGenerateurLocalisationGeographique.AfficheDetailFormuleBareme.Caption:='Détail: '+RTypeFormuleCopie.CodeTypeFormule+'  '+RTypeFormuleCopie.DesignationTypeFormule;
           ProcAfficheFormule(FSGenerateurLocalisationGeographique.TableauFormuleBareme,RTypeFormuleCopie.CodeTypeFormule);
           NotCol:='1;5-13';
           for C:=1 to FSGenerateurLocalisationGeographique.TableauFormuleBareme.ColCount-1 do if existenumintexte(inttostr(C),NotCol)then FSGenerateurLocalisationGeographique.TableauFormuleBareme.ColWidths[C]:=0;
           AjusterColWidth(FSGenerateurLocalisationGeographique.TableauFormuleBareme,'',NotCol);
           FSGenerateurLocalisationGeographique.TableauFormuleBareme.SetFocus;
           FSGenerateurLocalisationGeographique.AfficheTableauFormuleBareme.Visible:=false;
     end;
end;

procedure TFSGenerateurLocalisationGeographique.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ActiverNomForm(0,(Sender as TComponent).Name);
end;

procedure TFSGenerateurLocalisationGeographique.TableauZoneContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
     AjusterColWidth(FSGenerateurLocalisationGeographique.TableauZone,'','');
end;

procedure TFSGenerateurLocalisationGeographique.TableauPaysContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
     AjusterColWidth(FSGenerateurLocalisationGeographique.TableauPays,'','');
end;

procedure TFSGenerateurLocalisationGeographique.TableauWilayaContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
     AjusterColWidth(FSGenerateurLocalisationGeographique.TableauWilaya,'','');
end;

procedure TFSGenerateurLocalisationGeographique.TableauDairaContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
     AjusterColWidth(FSGenerateurLocalisationGeographique.TableauDaira,'','');
end;

procedure TFSGenerateurLocalisationGeographique.TableauCommuneContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
     AjusterColWidth(FSGenerateurLocalisationGeographique.TableauCommune,'','');
end;

Function CodeLocalisationGeographiqueReduit(CodeLocalisationGeographique:string):integer;
var  CodeReduit:integer;
begin
     if(CodeLocalisationGeographique<>'')then
     begin
          CodeReduit:=strtointeger(inttostr(strtointeger(MidelLaters(CodeLocalisationGeographique,1,3)))+
                                   inttostr(strtointeger(MidelLaters(CodeLocalisationGeographique,4,6)))+
                                   inttostr(strtointeger(MidelLaters(CodeLocalisationGeographique,7,9)))+
                                   inttostr(strtointeger(MidelLaters(CodeLocalisationGeographique,10,12)))+
                                   inttostr(strtointeger(MidelLaters(CodeLocalisationGeographique,13,15))));
     end
     else CodeReduit:=-1;

     CodeLocalisationGeographiqueReduit:=CodeReduit;
end;

procedure TFSGenerateurLocalisationGeographique.EditRubriqueApplicationTaxeAjouterKeyPress(
  Sender: TObject; var Key: Char);
begin
     key:=#0;
end;

end.
