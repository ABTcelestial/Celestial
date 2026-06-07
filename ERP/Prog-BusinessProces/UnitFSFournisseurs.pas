unit UnitFSFournisseurs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Mask, ComCtrls;

type
  TFSFournisseurs = class(TForm)
    TableauFournisseur: TStringGrid;
    AfficheOperationFournisseur: TPanel;
    BitBtn1: TBitBtn;
    BitOperationFournisseur: TBitBtn;
    Bevel2: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel3: TBevel;
    EditNom: TEdit;
    EditCodeFournisseur: TEdit;
    EditPrenom: TEdit;
    Bevel1: TBevel;
    AfficheSFamille: TPanel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    EditRequette: TEdit;
    TableauSFamille: TStringGrid;
    BitBtn39: TBitBtn;
    EditRechercheCodeSFamille: TEdit;
    EditRechercheDesigSFamille: TEdit;
    EditCodeOperation: TEdit;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    PageControl1: TPageControl;
    PageCivil: TTabSheet;
    Bevel7: TBevel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    EditLieuNaissance: TEdit;
    EditDateNaissance: TMaskEdit;
    EditNaturePieceIdentite: TComboBox;
    EditNumPieceIdentite: TEdit;
    EditFonction: TComboBox;
    EditMaskTelephone: TComboBox;
    PageAutre: TTabSheet;
    Bevel8: TBevel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    EditRIB: TEdit;
    EditAutre1: TEdit;
    EditAutre2: TEdit;
    EditAutre3: TEdit;
    EditAutre4: TEdit;
    EditAutre5: TEdit;
    EditAutre6: TEdit;
    EditNumTelephone: TMaskEdit;
    EditAdresse: TEdit;
    TableauAgenceBanque: TStringGrid;
    Label82: TLabel;
    EditLibelleAgence: TEdit;
    Label4: TLabel;
    EditCodeAgenceBanque: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure TableauFournisseurClick(Sender: TObject);
    procedure BitOperationFournisseurClick(Sender: TObject);
    procedure TableauFournisseurKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn39Click(Sender: TObject);
    procedure TableauSFamilleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditRechercheCodeSFamilleKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditRechercheCodeSFamilleKeyPress(Sender: TObject;
      var Key: Char);
    procedure EditRechercheCodeSFamilleKeyUp(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditRechercheDesigSFamilleKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditRechercheDesigSFamilleKeyPress(Sender: TObject;
      var Key: Char);
    procedure EditRechercheDesigSFamilleKeyUp(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditCodeFournisseurEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditNomKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditPrenomKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditAdresseKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNumTelephoneKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditAutre1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditAutre2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditAutre3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditAutre4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditAutre5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditAutre6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditCodeFournisseurKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNomEnter(Sender: TObject);
    procedure EditPrenomEnter(Sender: TObject);
    procedure EditAdresseEnter(Sender: TObject);
    procedure EditNumTelephoneEnter(Sender: TObject);
    procedure EditAutre1Enter(Sender: TObject);
    procedure EditAutre2Enter(Sender: TObject);
    procedure EditAutre3Enter(Sender: TObject);
    procedure EditAutre4Enter(Sender: TObject);
    procedure EditAutre5Enter(Sender: TObject);
    procedure EditAutre6Enter(Sender: TObject);
    procedure EditDateNaissanceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditLieuNaissanceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNaturePieceIdentiteKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditNumPieceIdentiteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditFonctionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditRIBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditRIBKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditRIBExit(Sender: TObject);
    procedure EditCodeAgenceBanqueKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditCodeAgenceBanqueKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSFournisseurs: TFSFournisseurs;

Procedure ListeFournisseurs(TableauFournisseur:TStringGrid; SFamille,CodeFournisseur:string);

implementation

Uses UnitInitialisation, UnitFSClients;

var

   RParc:RInstalle;
   FParc:FInstalle;
   ParcInstalle:string100;

   TFournisseur:TTierss;
   RFournisseur,RFournisseurCopie:RTierss;
   FFournisseur,FFournisseurCopie:FTierss;
   ChFournisseur,ChFournisseurCopie:string250;

{$R *.dfm}

Procedure ListeFournisseurs(TableauFournisseur:TStringGrid; SFamille,CodeFournisseur:string);
var   iFournisseur:integer;  TypeProces,FichierConcerne,Adresse:string;   OKFournisseur:boolean;
begin
     TableauFournisseur.ColCount:=18;
     TableauFournisseur.Cols[0].Text:='Ordre';
     TableauFournisseur.Cols[1].Text:='Code Fournisseur';
     TableauFournisseur.Cols[2].Text:='Nom et Prénom';
     TableauFournisseur.Cols[3].Text:='Date Nais.';
     TableauFournisseur.Cols[4].Text:='Lieu Nais';
     TableauFournisseur.Cols[5].Text:='Nature P.I.';
     TableauFournisseur.Cols[6].Text:='Num.P.I.';
     TableauFournisseur.Cols[7].Text:='Fonction';
     TableauFournisseur.Cols[8].Text:='Adresse';
     TableauFournisseur.Cols[9].Text:='Num.Tél.';
     TableauFournisseur.Cols[10].Text:='Code Agence';
     TableauFournisseur.Cols[11].Text:='RIB';
     TableauFournisseur.Cols[12].Text:='Data 1';
     TableauFournisseur.Cols[13].Text:='Data 2';
     TableauFournisseur.Cols[14].Text:='Data 3';
     TableauFournisseur.Cols[15].Text:='Data 4';
     TableauFournisseur.Cols[16].Text:='Data 5';
     TableauFournisseur.Cols[17].Text:='Data 6';
     TableauFournisseur.RowCount:=2;
     TableauFournisseur.Rows[1].Text:='';

     TypeProces:='Commercial';
     FichierConcerne:='FFournisseur';
     Adresse:='';
     FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut);

     ChFournisseur:=Adresse;
     assignfile(FFournisseur,ChFournisseur);
     if FileExists(ChFournisseur)then
     Reset(FFournisseur)
     else Rewrite(FFournisseur);
     Seek(FFournisseur,0);
     iFournisseur:=0;
     while not eof(FFournisseur)do
     begin
          read(FFournisseur,RFournisseur);

          OKFournisseur:=true;

          if(OKFournisseur=true)
          and(SFamille<>'')then
          begin
               if(Firstlaters(RFournisseur.CodeTiers,6)=SFamille)
               then OKFournisseur:=true
               else OKFournisseur:=false;
          end
          else OKFournisseur:=true;

          if(OKFournisseur=true)
          and(CodeFournisseur<>'')then
          begin
               if(RFournisseur.CodeTiers=CodeFournisseur)
               then OKFournisseur:=true
               else OKFournisseur:=false;
          end
          else OKFournisseur:=true;

          if(OKFournisseur=true)then
          begin
               iFournisseur:=iFournisseur+1;
               TableauFournisseur.Rows[iFournisseur].Text:=inttostr(iFournisseur);
               TableauFournisseur.Cells[1,iFournisseur]:=RFournisseur.CodeTiers;
               TableauFournisseur.Cells[2,iFournisseur]:=RFournisseur.NomTiers+' '+RFournisseur.PrenomTiers;
               TableauFournisseur.Cells[3,iFournisseur]:=RFournisseur.DateNaisTiers;
               TableauFournisseur.Cells[4,iFournisseur]:=RFournisseur.LieuNaisTiers;
               TableauFournisseur.Cells[5,iFournisseur]:=RFournisseur.NaturePieceIdentiteTiers;
               TableauFournisseur.Cells[6,iFournisseur]:=RFournisseur.NumPieceIdentiteTiers;
               TableauFournisseur.Cells[7,iFournisseur]:=RFournisseur.FonctionTiers;
               TableauFournisseur.Cells[8,iFournisseur]:=RFournisseur.AdresseTiers;
               TableauFournisseur.Cells[9,iFournisseur]:=RFournisseur.NumTelephoneTiers;
               TableauFournisseur.Cells[10,iFournisseur]:=RFournisseur.CodeAgenceBanqueTiers;
               TableauFournisseur.Cells[11,iFournisseur]:=RFournisseur.RIBBanqueTiers;
               TableauFournisseur.Cells[12,iFournisseur]:=RFournisseur.Data1;
               TableauFournisseur.Cells[13,iFournisseur]:=RFournisseur.Data2;
               TableauFournisseur.Cells[14,iFournisseur]:=RFournisseur.Data3;
               TableauFournisseur.Cells[15,iFournisseur]:=RFournisseur.Data4;
               TableauFournisseur.Cells[16,iFournisseur]:=RFournisseur.Data5;
               TableauFournisseur.Cells[17,iFournisseur]:=RFournisseur.Data6;
          end;
     end;
     Closefile(FFournisseur);

     if(iFournisseur>0)then TableauFournisseur.RowCount:=iFournisseur+1
                  else TableauFournisseur.RowCount:=2;

     AjusterColWidth(TableauFournisseur,'','');

     TableauFournisseur.SetFocus;
end;

procedure TFSFournisseurs.BitBtn1Click(Sender: TObject);
begin
FSFournisseurs.AfficheOperationFournisseur.Visible:=false;
FSFournisseurs.AfficheSFamille.Visible:=false;
end;

procedure TFSFournisseurs.TableauFournisseurClick(Sender: TObject);
begin
FSFournisseurs.AfficheOperationFournisseur.Visible:=false;
FSFournisseurs.AfficheSFamille.Visible:=false;
end;

procedure TFSFournisseurs.BitOperationFournisseurClick(Sender: TObject);
var  i:integer;  TypeProces,FichierConcerne,Adresse:string;   OKFournisseur,Confirme:boolean;
begin

if(FSFournisseurs.BitOperationFournisseur.Caption='Valider')then
begin
     TypeProces:='Commercial';
     FichierConcerne:='FFournisseur';
     Adresse:='';
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          //AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
     end;

     ChFournisseur:=Adresse;
     assignfile(FFournisseur,ChFournisseur);
     if FileExists(ChFournisseur)then
     Reset(FFournisseur)
     else Rewrite(FFournisseur);
     Seek(FFournisseur,0);
     OKFournisseur:=false;
     i:=0;
     while not eof(FFournisseur)and(OKFournisseur=false)do
     begin
          read(FFournisseur,RFournisseur);
          if(RFournisseur.CodeTiers=FSFournisseurs.EditCodeOperation.Text)then
          begin
               OKFournisseur:=true;
          end
          else i:=i+1;
     end;

     Seek(FFournisseur,i);
     RFournisseur.CodeTiers:=FSFournisseurs.EditCodeFournisseur.Text;
     RFournisseur.NomTiers:=FSFournisseurs.EditNom.Text;
     RFournisseur.PrenomTiers:=FSFournisseurs.EditPrenom.Text;
     RFournisseur.DateNaisTiers:=FSFournisseurs.EditDateNaissance.Text;
     RFournisseur.LieuNaisTiers:=FSFournisseurs.EditLieuNaissance.Text;
     RFournisseur.NaturePieceIdentiteTiers:=FSFournisseurs.EditNaturePieceIdentite.Text;
     RFournisseur.NumPieceIdentiteTiers:=FSFournisseurs.EditNumPieceIdentite.Text;
     RFournisseur.FonctionTiers:=FSFournisseurs.EditFonction.Text;
     RFournisseur.AdresseTiers:=FSFournisseurs.EditAdresse.Text;
     RFournisseur.NumTelephoneTiers:=FSFournisseurs.EditNumTelephone.Text;
     RFournisseur.CodeAgenceBanqueTiers:=FSFournisseurs.EditCodeAgenceBanque.Text;
     RFournisseur.RIBBanqueTiers:=FSFournisseurs.EditRIB.Text;
     RFournisseur.Data1:=FSFournisseurs.EditAutre1.Text;
     RFournisseur.Data2:=FSFournisseurs.EditAutre2.Text;
     RFournisseur.Data3:=FSFournisseurs.EditAutre3.Text;
     RFournisseur.Data4:=FSFournisseurs.EditAutre4.Text;
     RFournisseur.Data5:=FSFournisseurs.EditAutre5.Text;
     RFournisseur.Data6:=FSFournisseurs.EditAutre6.Text;
     write(FFournisseur,RFournisseur);
     Closefile(FFournisseur);
end;

if(FSFournisseurs.BitOperationFournisseur.Caption='Supprimer')then
begin
     DeleteFFournisseur(FSFournisseurs.EditCodeFournisseur.Text,Confirme);
end;

ListeFournisseurs(FSFournisseurs.TableauFournisseur,'','');
FSFournisseurs.AfficheOperationFournisseur.Visible:=false;
end;

procedure TFSFournisseurs.TableauFournisseurKeyPress(Sender: TObject; var Key: Char);
var  i,Code:integer;   TypeProces,FichierConcerne,Adresse,Extension:string;  OKFournisseur:boolean;
begin

if key in['n','N']then
begin
     FSFournisseurs.AfficheOperationFournisseur.Visible:=true;
     FSFournisseurs.BitOperationFournisseur.Kind:=bkAll;
     FSFournisseurs.BitOperationFournisseur.Caption:='Valider';
     FSFournisseurs.EditCodeOperation.Text:='';
     FSFournisseurs.EditCodeFournisseur.Text:='';
     FSFournisseurs.EditNom.Text:='';
     FSFournisseurs.EditPrenom.Text:='';
     FSFournisseurs.EditDateNaissance.Text:='';
     FSFournisseurs.EditLieuNaissance.Text:='';
     FSFournisseurs.EditNaturePieceIdentite.Text:='';
     FSFournisseurs.EditNumPieceIdentite.Text:='';
     FSFournisseurs.EditFonction.Text:='';
     FSFournisseurs.EditAdresse.Text:='';
     FSFournisseurs.EditNumTelephone.Text:='';
     FSFournisseurs.EditNumTelephone.Text:='';
     FSFournisseurs.EditCodeAgenceBanque.Text:='';
     FSFournisseurs.EditRIB.Text:='';
     FSFournisseurs.EditLibelleAgence.Text:='';
     FSFournisseurs.EditAutre1.Text:='';
     FSFournisseurs.EditAutre2.Text:='';
     FSFournisseurs.EditAutre3.Text:='';
     FSFournisseurs.EditAutre4.Text:='';
     FSFournisseurs.EditAutre5.Text:='';
     FSFournisseurs.EditAutre6.Text:='';
     FSFournisseurs.EditMaskTelephone.Text:='999-99-99-99';
     FSFournisseurs.EditCodeFournisseur.SetFocus;
end;

if key in['m','M','s','S']then
begin
     if key in['m','M']then
     begin
          FSFournisseurs.AfficheOperationFournisseur.Visible:=true;
          FSFournisseurs.BitOperationFournisseur.Kind:=bkRetry;
          FSFournisseurs.BitOperationFournisseur.Caption:='Valider';
          FSFournisseurs.EditCodeOperation.Text:='';
          FSFournisseurs.EditNom.SetFocus;
     end;

     if key in['s','S']then
     begin
          FSFournisseurs.AfficheOperationFournisseur.Visible:=true;
          FSFournisseurs.BitOperationFournisseur.Kind:=bkCancel;
          FSFournisseurs.BitOperationFournisseur.Caption:='Supprimer';
          FSFournisseurs.EditCodeOperation.Text:='';
          FSFournisseurs.BitOperationFournisseur.SetFocus;
     end;

     TypeProces:='Commercial';
     FichierConcerne:='FFournisseur';
     Adresse:='';
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          //AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
     end;

     ChFournisseur:=Adresse;
     assignfile(FFournisseur,ChFournisseur);
     if FileExists(ChFournisseur)then
     Reset(FFournisseur)
     else Rewrite(FFournisseur);
     Seek(FFournisseur,0);
     OKFournisseur:=false;
     while not eof(FFournisseur)and(OKFournisseur=false)do
     begin
          read(FFournisseur,RFournisseur);
          if(RFournisseur.CodeTiers=FSFournisseurs.TableauFournisseur.Cells[1,FSFournisseurs.TableauFournisseur.Row])then
          begin
               OKFournisseur:=true;
               FSFournisseurs.EditCodeOperation.Text:=RFournisseur.CodeTiers;
               FSFournisseurs.EditCodeFournisseur.Text:=RFournisseur.CodeTiers;
               FSFournisseurs.EditNom.Text:=RFournisseur.NomTiers;
               FSFournisseurs.EditPrenom.Text:=RFournisseur.PrenomTiers;
               FSFournisseurs.EditDateNaissance.Text:=RFournisseur.DateNaisTiers;
               FSFournisseurs.EditLieuNaissance.Text:=RFournisseur.LieuNaisTiers;
               FSFournisseurs.EditNaturePieceIdentite.Text:=RFournisseur.NaturePieceIdentiteTiers;
               FSFournisseurs.EditNumPieceIdentite.Text:=RFournisseur.NumPieceIdentiteTiers;
               FSFournisseurs.EditFonction.Text:=RFournisseur.FonctionTiers;
               FSFournisseurs.EditAdresse.Text:=RFournisseur.AdresseTiers;
               FSFournisseurs.EditMaskTelephone.Text:=MaskTelephone(RFournisseur.NumTelephoneTiers);
               FSFournisseurs.EditNumTelephone.EditMask:=FSFournisseurs.EditMaskTelephone.Text;
               FSFournisseurs.EditNumTelephone.Text:=RFournisseur.NumTelephoneTiers;
               FSFournisseurs.EditCodeAgenceBanque.Text:=RFournisseur.CodeAgenceBanqueTiers;
               FSFournisseurs.EditRIB.Text:=RFournisseur.RIBBanqueTiers;
               if RechercheAgenceBanque(FSFournisseurs.TableauAgenceBanque,RFournisseur.CodeAgenceBanqueTiers,'',RAgenceCopie)
               then FSFournisseurs.EditLibelleAgence.Text:=RAgenceCopie.LibelleAgence;
               FSFournisseurs.EditAutre1.Text:=RFournisseur.Data1;
               FSFournisseurs.EditAutre2.Text:=RFournisseur.Data2;
               FSFournisseurs.EditAutre3.Text:=RFournisseur.Data3;
               FSFournisseurs.EditAutre4.Text:=RFournisseur.Data4;
               FSFournisseurs.EditAutre5.Text:=RFournisseur.Data5;
               FSFournisseurs.EditAutre6.Text:=RFournisseur.Data6;
          end;
     end;
     Closefile(FFournisseur);
end;

FSFournisseurs.BitOperationFournisseur.Cancel:=false;
end;

procedure TFSFournisseurs.BitBtn39Click(Sender: TObject);
begin
FSFournisseurs.AfficheSFamille.Visible:=false;
end;

procedure TFSFournisseurs.TableauSFamilleKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var  OrdreFournisseur:integer; TypeProces,FichierConcerne,Adresse:string;
begin

if key in[VK_RETURN]then
begin
     TypeProces:='Commercial';
     FichierConcerne:='FFournisseur';
     Adresse:='';
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          //AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
     end;

     ChFournisseur:=Adresse;
     assignfile(FFournisseur,ChFournisseur);
     if FileExists(ChFournisseur)then
     Reset(FFournisseur)
     else Rewrite(FFournisseur);
     Seek(FFournisseur,0);
     OrdreFournisseur:=1;
     while not eof(FFournisseur)do
     begin
          read(FFournisseur,RFournisseur);
          if(FSFournisseurs.TableauSFamille.Cells[1,FSFournisseurs.TableauSFamille.Row]<>'')then
          begin
               if(Firstlaters(RFournisseur.CodeTiers,6)=FSFournisseurs.TableauSFamille.Cells[1,FSFournisseurs.TableauSFamille.Row])then
               begin
                    if(strtointeger(lastlaters(RFournisseur.CodeTiers,4))>=OrdreFournisseur)then OrdreFournisseur:=strtointeger(lastlaters(RFournisseur.CodeTiers,4))+1;
               end;
          end
          else
          begin
               if(strtointeger(lastlaters(RFournisseur.CodeTiers,4))>=OrdreFournisseur)then OrdreFournisseur:=strtointeger(lastlaters(RFournisseur.CodeTiers,4))+1;
          end;
     end;
     Closefile(FFournisseur);

     FSFournisseurs.EditCodeFournisseur.Text:=FSFournisseurs.TableauSFamille.Cells[1,FSFournisseurs.TableauSFamille.Row]+Completezerogauche(inttostr(OrdreFournisseur),'4');
     FSFournisseurs.EditNom.SetFocus;
     FSFournisseurs.AfficheSFamille.Visible:=false;
end;

end;

procedure TFSFournisseurs.EditRechercheCodeSFamilleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key=VK_RETURN then
begin
     if(FSFournisseurs.EditRechercheCodeSFamille.Text<>'')then
     begin
          FSFournisseurs.TableauSFamille.SetFocus;
     end
     else
     begin
          FSFournisseurs.EditRechercheDesigSFamille.SetFocus;
     end;
end;

end;

procedure TFSFournisseurs.EditRechercheCodeSFamilleKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then key:=#0;
end;

procedure TFSFournisseurs.EditRechercheCodeSFamilleKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var m,l:integer;  OK:boolean;  TypeProces,FichierConcerne,Adresse:string;
begin {D1}
FSFournisseurs.TableauSFamille.RowCount:=2;
FSFournisseurs.TableauSFamille.Rows[1].Text:='';
if FSFournisseurs.EditRechercheCodeSFamille.Text<>''then
begin{D2}

TypeProces:='Commercial';
FichierConcerne:='FSousFamille';
Adresse:='';
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     OpenFParc(RParc);
     Adresse:=RParc.Parcours+'\'+Exercice+'FSousFamille';
end;

end;{F2}
end;{F1}

procedure TFSFournisseurs.EditRechercheDesigSFamilleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var m:integer;    TypeProces,FichierConcerne,Adresse:string;
begin
if key=VK_RETURN then
begin
     if(FSFournisseurs.EditRechercheDesigSFamille.Text<>'')then
     begin
          FSFournisseurs.TableauSFamille.SetFocus;
     end
     else
     begin
     TypeProces:='Commercial';
     FichierConcerne:='FSousFamille';
     Adresse:='';
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          OpenFParc(RParc);
          Adresse:=RParc.Parcours+'\'+Exercice+'FSousFamille';
     end;
         FSFournisseurs.TableauSFamille.SetFocus;
     end;
end;

end;

procedure TFSFournisseurs.EditRechercheDesigSFamilleKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then key:=#0;
end;

procedure TFSFournisseurs.EditRechercheDesigSFamilleKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var m,l:integer;  OK:boolean; TypeProces,FichierConcerne,Adresse:string;
begin {D1}
FSFournisseurs.TableauSFamille.RowCount:=2;
FSFournisseurs.TableauSFamille.Rows[1].Text:='';
if FSFournisseurs.EditRechercheDesigSFamille.Text<>''then
begin{D2}

TypeProces:='Commercial';
FichierConcerne:='FSousFamille';
Adresse:='';
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     OpenFParc(RParc);
     Adresse:=RParc.Parcours+'\'+Exercice+'FSousFamille';
end;


end;{F2}
end;{F1}

procedure TFSFournisseurs.EditCodeFournisseurEnter(Sender: TObject);
begin

if(FSFournisseurs.BitOperationFournisseur.Caption<>'Supprimer')then
begin
     FSFournisseurs.AfficheSFamille.Visible:=true;
     FSFournisseurs.EditRechercheCodeSFamille.SetFocus;
end;

if(FSFournisseurs.BitOperationFournisseur.Caption='Supprimer')then FSFournisseurs.BitOperationFournisseur.SetFocus;

end;

procedure TFSFournisseurs.FormShow(Sender: TObject);
begin
ActiverNomForm(1,(Sender as TComponent).Name);
     FSFournisseurs.Caption:=RRegistre.Repertoire+' - Exercice '+RRegistre.Exercice+' - Fiche Fournisseurs';

     ListeFournisseurs(FSFournisseurs.TableauFournisseur,'','');
     FSFournisseurs.AfficheSFamille.Left:=16;
     FSFournisseurs.AfficheSFamille.Top:=16;
end;

procedure TFSFournisseurs.EditNomKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFournisseurs.EditPrenom.SetFocus;
end;

end;

procedure TFSFournisseurs.EditPrenomKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFournisseurs.PageCivil.Show;
     FSFournisseurs.EditDateNaissance.SetFocus;
end;

end;

procedure TFSFournisseurs.EditAdresseKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFournisseurs.EditNumTelephone.SetFocus;
end;

end;

procedure TFSFournisseurs.EditNumTelephoneKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFournisseurs.PageAutre.Show;
     FSFournisseurs.EditRIB.SetFocus;
end;

end;

procedure TFSFournisseurs.EditAutre1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFournisseurs.EditAutre2.SetFocus;
end;

end;

procedure TFSFournisseurs.EditAutre2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFournisseurs.EditAutre3.SetFocus;
end;

end;

procedure TFSFournisseurs.EditAutre3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFournisseurs.EditAutre4.SetFocus;
end;

end;

procedure TFSFournisseurs.EditAutre4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFournisseurs.EditAutre5.SetFocus;
end;

end;

procedure TFSFournisseurs.EditAutre5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFournisseurs.EditAutre6.SetFocus;
end;

end;

procedure TFSFournisseurs.EditAutre6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFournisseurs.BitOperationFournisseur.SetFocus;
end;

end;

procedure TFSFournisseurs.EditCodeFournisseurKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFournisseurs.EditNom.SetFocus;
end;

end;

procedure TFSFournisseurs.EditNomEnter(Sender: TObject);
begin
if(FSFournisseurs.BitOperationFournisseur.Caption='Supprimer')then FSFournisseurs.BitOperationFournisseur.SetFocus;
end;

procedure TFSFournisseurs.EditPrenomEnter(Sender: TObject);
begin
if(FSFournisseurs.BitOperationFournisseur.Caption='Supprimer')then FSFournisseurs.BitOperationFournisseur.SetFocus;
end;

procedure TFSFournisseurs.EditAdresseEnter(Sender: TObject);
begin
if(FSFournisseurs.BitOperationFournisseur.Caption='Supprimer')then FSFournisseurs.BitOperationFournisseur.SetFocus;
end;

procedure TFSFournisseurs.EditNumTelephoneEnter(Sender: TObject);
begin
if(FSFournisseurs.BitOperationFournisseur.Caption='Supprimer')then FSFournisseurs.BitOperationFournisseur.SetFocus;
end;

procedure TFSFournisseurs.EditAutre1Enter(Sender: TObject);
begin
if(FSFournisseurs.BitOperationFournisseur.Caption='Supprimer')then FSFournisseurs.BitOperationFournisseur.SetFocus;
end;

procedure TFSFournisseurs.EditAutre2Enter(Sender: TObject);
begin
if(FSFournisseurs.BitOperationFournisseur.Caption='Supprimer')then FSFournisseurs.BitOperationFournisseur.SetFocus;
end;

procedure TFSFournisseurs.EditAutre3Enter(Sender: TObject);
begin
if(FSFournisseurs.BitOperationFournisseur.Caption='Supprimer')then FSFournisseurs.BitOperationFournisseur.SetFocus;
end;

procedure TFSFournisseurs.EditAutre4Enter(Sender: TObject);
begin
if(FSFournisseurs.BitOperationFournisseur.Caption='Supprimer')then FSFournisseurs.BitOperationFournisseur.SetFocus;
end;

procedure TFSFournisseurs.EditAutre5Enter(Sender: TObject);
begin
if(FSFournisseurs.BitOperationFournisseur.Caption='Supprimer')then FSFournisseurs.BitOperationFournisseur.SetFocus;
end;

procedure TFSFournisseurs.EditAutre6Enter(Sender: TObject);
begin
if(FSFournisseurs.BitOperationFournisseur.Caption='Supprimer')then FSFournisseurs.BitOperationFournisseur.SetFocus;
end;

procedure TFSFournisseurs.EditDateNaissanceKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFournisseurs.EditLieuNaissance.SetFocus;
end;

end;

procedure TFSFournisseurs.EditLieuNaissanceKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFournisseurs.EditNaturePieceIdentite.SetFocus;
end;

end;

procedure TFSFournisseurs.EditNaturePieceIdentiteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFournisseurs.EditNumPieceIdentite.SetFocus;
end;

end;

procedure TFSFournisseurs.EditNumPieceIdentiteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFournisseurs.EditFonction.SetFocus;
end;

end;

procedure TFSFournisseurs.EditFonctionKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFournisseurs.EditAdresse.SetFocus;
end;

end;

procedure TFSFournisseurs.EditRIBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     if(longueur(FSFournisseurs.EditRIB.Text)<20)then
     begin
          FSFournisseurs.EditCodeAgenceBanque.SetFocus;
          FSFournisseurs.TableauAgenceBanque.Visible:=false;
     end
     else FSFournisseurs.EditAutre1.SetFocus;
end;

end;

procedure TFSFournisseurs.EditRIBKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if RechercheAgenceBanque(FSFournisseurs.TableauAgenceBanque,FSFournisseurs.EditRIB.Text,'',RAgenceCopie)
     then FSFournisseurs.EditLibelleAgence.Text:=RAgenceCopie.LibelleAgence;
end;

procedure TFSFournisseurs.EditRIBExit(Sender: TObject);
begin
      if(longueur(FSFournisseurs.EditRIB.Text)<20)then
     begin
          FSFournisseurs.EditCodeAgenceBanque.Text:='';
          FSFournisseurs.EditCodeAgenceBanque.ReadOnly:=false;
          FSFournisseurs.EditCodeAgenceBanque.Color:=clWindow;
          FSFournisseurs.EditCodeAgenceBanque.SetFocus;
     end
     else
     begin
          FSFournisseurs.EditCodeAgenceBanque.Text:=firstlaters(FSFournisseurs.EditRIB.Text,8);
          FSFournisseurs.EditCodeAgenceBanque.ReadOnly:=true;
          FSFournisseurs.EditCodeAgenceBanque.Color:=$00EBEBEB;
     end;
end;

procedure TFSFournisseurs.EditCodeAgenceBanqueKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFournisseurs.EditAutre1.SetFocus;
end;

end;

procedure TFSFournisseurs.EditCodeAgenceBanqueKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if RechercheAgenceBanque(FSFournisseurs.TableauAgenceBanque,FSFournisseurs.EditCodeAgenceBanque.Text,'',RAgenceCopie)
     then FSFournisseurs.EditLibelleAgence.Text:=RAgenceCopie.LibelleAgence;
end;

procedure TFSFournisseurs.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ActiverNomForm(0,(Sender as TComponent).Name);
end;

end.
