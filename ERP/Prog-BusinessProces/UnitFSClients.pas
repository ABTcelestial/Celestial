unit UnitFSClients;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Mask, ComCtrls;

type
  TFSClients = class(TForm)
    TableauClient: TStringGrid;
    AfficheOperationClient: TPanel;
    BitBtn1: TBitBtn;
    BitOperationClient: TBitBtn;
    Bevel2: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel3: TBevel;
    EditNom: TEdit;
    EditCodeClient: TEdit;
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
    PageAutre: TTabSheet;
    Label5: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    EditAutre6: TEdit;
    EditAutre5: TEdit;
    EditAutre4: TEdit;
    EditAutre3: TEdit;
    EditAutre2: TEdit;
    EditAutre1: TEdit;
    EditLieuNaissance: TEdit;
    EditDateNaissance: TMaskEdit;
    Label7: TLabel;
    Label8: TLabel;
    EditNaturePieceIdentite: TComboBox;
    Label9: TLabel;
    EditNumPieceIdentite: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    EditFonction: TComboBox;
    Label4: TLabel;
    EditAdresse: TEdit;
    EditNumTelephone: TMaskEdit;
    Label6: TLabel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    EditMaskTelephone: TComboBox;
    Label12: TLabel;
    EditRIB: TEdit;
    TableauAgenceBanque: TStringGrid;
    EditLibelleAgence: TEdit;
    Label82: TLabel;
    EditCodeAgenceBanque: TEdit;
    Label13: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure TableauClientClick(Sender: TObject);
    procedure BitOperationClientClick(Sender: TObject);
    procedure TableauClientKeyPress(Sender: TObject; var Key: Char);
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
    procedure EditCodeClientEnter(Sender: TObject);
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
    procedure EditCodeClientKeyDown(Sender: TObject; var Key: Word;
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
    procedure EditMaskTelephoneSelect(Sender: TObject);
    procedure EditRIBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditRIBKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditRIBExit(Sender: TObject);
    procedure EditCodeAgenceBanqueKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditCodeAgenceBanqueKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauAgenceBanqueKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditRIBEnter(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSClients: TFSClients;

Procedure ListeClients(TableauClient:TStringGrid; SFamille,CodeClient:string);
Function MaskTelephone(NumTelephone:string):string;

implementation

Uses UnitInitialisation;

var

   RParc:RInstalle;
   FParc:FInstalle;
   ParcInstalle:string100;

   TClient:TTierss;
   RClient,RClientCopie:RTierss;
   FClient,FClientCopie:FTierss;
   ChClient,ChClientCopie:string250;

{$R *.dfm}

Function MaskTelephone(NumTelephone:string):string;
var  T:integer;  Mask:string;
begin
     T:=1;
     Mask:='';
     While(T<=longueur(NumTelephone))do
     begin
          if(NumTelephone[T]<>'-')then
          begin
               Mask:=Mask+'9';
          end
          else
          begin
               Mask:=Mask+'-';
          end;
     T:=T+1;
     end;
     if(mask='')then Mask:='999-99-99-99';
     MaskTelephone:=Mask+';1;';
end;

Procedure ListeClients(TableauClient:TStringGrid; SFamille,CodeClient:string);
var   iClient:integer;  TypeProces,FichierConcerne,Adresse:string;   OKClient:boolean;
begin
     TableauClient.ColCount:=18;
     TableauClient.Cols[0].Text:='Ordre';
     TableauClient.Cols[1].Text:='Code Client';
     TableauClient.Cols[2].Text:='Nom et Prénom';
     TableauClient.Cols[3].Text:='Date Nais.';
     TableauClient.Cols[4].Text:='Lieu Nais';
     TableauClient.Cols[5].Text:='Nature P.I.';
     TableauClient.Cols[6].Text:='Num.P.I.';
     TableauClient.Cols[7].Text:='Fonction';
     TableauClient.Cols[8].Text:='Adresse';
     TableauClient.Cols[9].Text:='Num.Tél.';
     TableauClient.Cols[10].Text:='Code Agence';
     TableauClient.Cols[11].Text:='RIB';
     TableauClient.Cols[12].Text:='Data 1';
     TableauClient.Cols[13].Text:='Data 2';
     TableauClient.Cols[14].Text:='Data 3';
     TableauClient.Cols[15].Text:='Data 4';
     TableauClient.Cols[16].Text:='Data 5';
     TableauClient.Cols[17].Text:='Data 6';
     TableauClient.RowCount:=2;
     TableauClient.Rows[1].Text:='';

     TypeProces:='Commercial';
     FichierConcerne:='FClient';
     Adresse:='';
     FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut);

     ChClient:=Adresse;
     assignfile(FClient,ChClient);
     if FileExists(ChClient)then
     Reset(FClient)
     else Rewrite(FClient);
     Seek(FClient,0);
     iClient:=0;
     while not eof(FClient)do
     begin
          read(FClient,RClient);

          OKClient:=true;

          if(OKClient=true)
          and(SFamille<>'')then
          begin
               if(Firstlaters(RClient.CodeTiers,6)=SFamille)
               then OKClient:=true
               else OKClient:=false;
          end
          else OKClient:=true;

          if(OKClient=true)
          and(CodeClient<>'')then
          begin
               if(RClient.CodeTiers=CodeClient)
               then OKClient:=true
               else OKClient:=false;
          end
          else OKClient:=true;

          if(OKClient=true)then
          begin
               iClient:=iClient+1;
               TableauClient.Rows[iClient].Text:=inttostr(iClient);
               TableauClient.Cells[1,iClient]:=RClient.CodeTiers;
               TableauClient.Cells[2,iClient]:=RClient.NomTiers+' '+RClient.PrenomTiers;
               TableauClient.Cells[3,iClient]:=RClient.DateNaisTiers;
               TableauClient.Cells[4,iClient]:=RClient.LieuNaisTiers;
               TableauClient.Cells[5,iClient]:=RClient.NaturePieceIdentiteTiers;
               TableauClient.Cells[6,iClient]:=RClient.NumPieceIdentiteTiers;
               TableauClient.Cells[7,iClient]:=RClient.FonctionTiers;
               TableauClient.Cells[8,iClient]:=RClient.AdresseTiers;
               TableauClient.Cells[9,iClient]:=RClient.NumTelephoneTiers;
               TableauClient.Cells[10,iClient]:=RClient.CodeAgenceBanqueTiers;
               TableauClient.Cells[11,iClient]:=RClient.RIBBanqueTiers;
               TableauClient.Cells[12,iClient]:=RClient.Data1;
               TableauClient.Cells[13,iClient]:=RClient.Data2;
               TableauClient.Cells[14,iClient]:=RClient.Data3;
               TableauClient.Cells[15,iClient]:=RClient.Data4;
               TableauClient.Cells[16,iClient]:=RClient.Data5;
               TableauClient.Cells[17,iClient]:=RClient.Data6;
          end;
     end;
     Closefile(FClient);

     if(iClient>0)then TableauClient.RowCount:=iClient+1
                  else TableauClient.RowCount:=2;

     AjusterColWidth(TableauClient,'','');

     TableauClient.SetFocus;
end;

{Procedure ListeClients(TableauClient:TStringGrid; SFamille,CodeClient:string);
var   iClient:integer;  TypeProces,FichierConcerne,Adresse:string;   OKClient:boolean;
begin
     TableauClient.ColCount:=18;
     TableauClient.Cols[0].Text:='Ordre';
     TableauClient.Cols[1].Text:='Code Client';
     TableauClient.Cols[2].Text:='Nom et Prénom';
     TableauClient.Cols[3].Text:='Date Nais.';
     TableauClient.Cols[4].Text:='Lieu Nais';
     TableauClient.Cols[5].Text:='Nature P.I.';
     TableauClient.Cols[6].Text:='Num.P.I.';
     TableauClient.Cols[7].Text:='Fonction';
     TableauClient.Cols[8].Text:='Adresse';
     TableauClient.Cols[9].Text:='Num.Tél.';
     TableauClient.Cols[10].Text:='Code Agence';
     TableauClient.Cols[11].Text:='RIB';
     TableauClient.Cols[12].Text:='Data 1';
     TableauClient.Cols[13].Text:='Data 2';
     TableauClient.Cols[14].Text:='Data 3';
     TableauClient.Cols[15].Text:='Data 4';
     TableauClient.Cols[16].Text:='Data 5';
     TableauClient.Cols[17].Text:='Data 6';
     TableauClient.RowCount:=2;
     TableauClient.Rows[1].Text:='';

     TypeProces:='Commercial';
     FichierConcerne:='FClient';
     Adresse:='';
     FunctionAdresseProces(TypeProces,FichierConcerne,Adresse);

     ChClientX:=Adresse;
     assignfile(FClientX,ChClientX);
     if FileExists(ChClientX)then
     Reset(FClientX)
     else Rewrite(FClientX);
     Seek(FClientX,0);
     iClient:=0;
     while not eof(FClientX)do
     begin
          read(FClientX,RClientX);

          OKClient:=true;

          if(OKClient=true)
          and(SFamille<>'')then
          begin
               if(Firstlaters(RClientX.CodeTier,6)=SFamille)
               then OKClient:=true
               else OKClient:=false;
          end
          else OKClient:=true;

          if(OKClient=true)
          and(CodeClient<>'')then
          begin
               if(RClientX.CodeTier=CodeClient)
               then OKClient:=true
               else OKClient:=false;
          end
          else OKClient:=true;

          if(OKClient=true)then
          begin
               iClient:=iClient+1;
               TableauClient.Rows[iClient].Text:=inttostr(iClient);
               TableauClient.Cells[1,iClient]:=RClientX.CodeTier;
               TableauClient.Cells[2,iClient]:=RClientX.Nom+' '+RClientX.Prenom;
               TableauClient.Cells[3,iClient]:=RClientX.DateNais;
               TableauClient.Cells[4,iClient]:=RClientX.LieuNais;
               TableauClient.Cells[5,iClient]:=RClientX.NaturePieceIdentite;
               TableauClient.Cells[6,iClient]:=RClientX.NumPieceIdentite;
               TableauClient.Cells[7,iClient]:=RClientX.Fonction;
               TableauClient.Cells[8,iClient]:=RClientX.Adresse;
               TableauClient.Cells[9,iClient]:=RClientX.NumTelephone;
               TableauClient.Cells[10,iClient]:=RClientX.RIBBanque;
               TableauClient.Cells[11,iClient]:='';
               TableauClient.Cells[12,iClient]:=RClientX.Autre1;
               TableauClient.Cells[13,iClient]:=RClientX.Autre2;
               TableauClient.Cells[14,iClient]:=RClientX.Autre3;
               TableauClient.Cells[15,iClient]:=RClientX.Autre4;
               TableauClient.Cells[16,iClient]:=RClientX.Autre5;
               TableauClient.Cells[17,iClient]:=RClientX.Autre6;
          end;
     end;
     Closefile(FClientX);

     if(iClient>0)then TableauClient.RowCount:=iClient+1
                  else TableauClient.RowCount:=2;

     AjusterColWidth(TableauClient,'','');

     TableauClient.SetFocus;
end;}

{Procedure ListeClients(TableauClient:TStringGrid; SFamille,CodeClient:string);
var   iClient:integer;  TypeProces,FichierConcerne,Adresse:string;   OKClient:boolean;
begin
     TableauClient.ColCount:=18;
     TableauClient.Cols[0].Text:='Ordre';
     TableauClient.Cols[1].Text:='Code Client';
     TableauClient.Cols[2].Text:='Nom et Prénom';
     TableauClient.Cols[3].Text:='Date Nais.';
     TableauClient.Cols[4].Text:='Lieu Nais';
     TableauClient.Cols[5].Text:='Nature P.I.';
     TableauClient.Cols[6].Text:='Num.P.I.';
     TableauClient.Cols[7].Text:='Fonction';
     TableauClient.Cols[8].Text:='Adresse';
     TableauClient.Cols[9].Text:='Num.Tél.';
     TableauClient.Cols[10].Text:='Code Agence';
     TableauClient.Cols[11].Text:='RIB';
     TableauClient.Cols[12].Text:='Data 1';
     TableauClient.Cols[13].Text:='Data 2';
     TableauClient.Cols[14].Text:='Data 3';
     TableauClient.Cols[15].Text:='Data 4';
     TableauClient.Cols[16].Text:='Data 5';
     TableauClient.Cols[17].Text:='Data 6';
     TableauClient.RowCount:=2;
     TableauClient.Rows[1].Text:='';

     TypeProces:='Commercial';
     FichierConcerne:='FClient';
     Adresse:='';
     FunctionAdresseProces(TypeProces,FichierConcerne,Adresse);

     ChClientXX:=Adresse;
     assignfile(FClientXX,ChClientXX);
     if FileExists(ChClientXX)then
     Reset(FClientXX)
     else Rewrite(FClientXX);
     Seek(FClientXX,0);
     iClient:=0;
     while not eof(FClientXX)do
     begin
          read(FClientXX,RClientXX);

          OKClient:=true;

          if(OKClient=true)
          and(SFamille<>'')then
          begin
               if(Firstlaters(RClientXX.CodeTier,6)=SFamille)
               then OKClient:=true
               else OKClient:=false;
          end
          else OKClient:=true;

          if(OKClient=true)
          and(CodeClient<>'')then
          begin
               if(RClientXX.CodeTier=CodeClient)
               then OKClient:=true
               else OKClient:=false;
          end
          else OKClient:=true;

          if(OKClient=true)then
          begin
               iClient:=iClient+1;
               TableauClient.Rows[iClient].Text:=inttostr(iClient);
               TableauClient.Cells[1,iClient]:=RClientXX.CodeTier;
               TableauClient.Cells[2,iClient]:=RClientXX.Nom+' '+RClientXX.Prenom;
               TableauClient.Cells[3,iClient]:=RClientXX.DateNais;
               TableauClient.Cells[4,iClient]:=RClientXX.LieuNais;
               TableauClient.Cells[5,iClient]:=RClientXX.NaturePieceIdentite;
               TableauClient.Cells[6,iClient]:=RClientXX.NumPieceIdentite;
               TableauClient.Cells[7,iClient]:=RClientXX.Fonction;
               TableauClient.Cells[8,iClient]:=RClientXX.Adresse;
               TableauClient.Cells[9,iClient]:=RClientXX.NumTelephone;
               TableauClient.Cells[10,iClient]:='';
               TableauClient.Cells[11,iClient]:='';
               TableauClient.Cells[12,iClient]:=RClientXX.Autre1;
               TableauClient.Cells[13,iClient]:=RClientXX.Autre2;
               TableauClient.Cells[14,iClient]:=RClientXX.Autre3;
               TableauClient.Cells[15,iClient]:=RClientXX.Autre4;
               TableauClient.Cells[16,iClient]:=RClientXX.Autre5;
               TableauClient.Cells[17,iClient]:=RClientXX.Autre6;
          end;
     end;
     Closefile(FClientXX);

     if(iClient>0)then TableauClient.RowCount:=iClient+1
                  else TableauClient.RowCount:=2;

     AjusterColWidth(TableauClient,'','');

     TableauClient.SetFocus;
end;}

procedure TFSClients.BitBtn1Click(Sender: TObject);
begin
FSClients.AfficheOperationClient.Visible:=false;
FSClients.AfficheSFamille.Visible:=false;
end;

procedure TFSClients.TableauClientClick(Sender: TObject);
begin
FSClients.AfficheOperationClient.Visible:=false;
FSClients.AfficheSFamille.Visible:=false;
end;

procedure TFSClients.BitOperationClientClick(Sender: TObject);
var  i:integer;  TypeProces,FichierConcerne,Adresse:string;   OKClient,Confirme:boolean;
begin

if(FSClients.BitOperationClient.Caption='Valider')then
begin
     TypeProces:='Commercial';
     FichierConcerne:='FClient';
     Adresse:='';
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          //AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
     end;

     ChClient:=Adresse;
     assignfile(FClient,ChClient);
     if FileExists(ChClient)then
     Reset(FClient)
     else Rewrite(FClient);
     Seek(FClient,0);
     OKClient:=false;
     i:=0;
     while not eof(FClient)and(OKClient=false)do
     begin
          read(FClient,RClient);
          if(RClient.CodeTiers=FSClients.EditCodeOperation.Text)then
          begin
               OKClient:=true;
          end
          else i:=i+1;
     end;

     Seek(FClient,i);
     RClient.CodeTiers:=FSClients.EditCodeClient.Text;
     RClient.NomTiers:=FSClients.EditNom.Text;
     RClient.PrenomTiers:=FSClients.EditPrenom.Text;
     RClient.DateNaisTiers:=FSClients.EditDateNaissance.Text;
     RClient.LieuNaisTiers:=FSClients.EditLieuNaissance.Text;
     RClient.NaturePieceIdentiteTiers:=FSClients.EditNaturePieceIdentite.Text;
     RClient.NumPieceIdentiteTiers:=FSClients.EditNumPieceIdentite.Text;
     RClient.FonctionTiers:=FSClients.EditFonction.Text;
     RClient.AdresseTiers:=FSClients.EditAdresse.Text;
     RClient.NumTelephoneTiers:=FSClients.EditNumTelephone.Text;
     RClient.CodeAgenceBanqueTiers:=FSClients.EditCodeAgenceBanque.Text;
     RClient.RIBBanqueTiers:=FSClients.EditRIB.Text;
     RClient.Data1:=FSClients.EditAutre1.Text;
     RClient.Data2:=FSClients.EditAutre2.Text;
     RClient.Data3:=FSClients.EditAutre3.Text;
     RClient.Data4:=FSClients.EditAutre4.Text;
     RClient.Data5:=FSClients.EditAutre5.Text;
     RClient.Data6:=FSClients.EditAutre6.Text;
     write(FClient,RClient);
     Closefile(FClient);
end;

if(FSClients.BitOperationClient.Caption='Supprimer')then
begin
     DeleteFClient(FSClients.EditCodeClient.Text,Confirme);
end;

ListeClients(FSClients.TableauClient,'','');
FSClients.AfficheOperationClient.Visible:=false;
end;

procedure TFSClients.TableauClientKeyPress(Sender: TObject; var Key: Char);
var  i,Code:integer;   TypeProces,FichierConcerne,Adresse,Extension:string;  OKClient:boolean;
begin

if key in['n','N']then
begin
     FSClients.AfficheOperationClient.Visible:=true;
     FSClients.BitOperationClient.Kind:=bkAll;
     FSClients.BitOperationClient.Caption:='Valider';
     FSClients.EditCodeOperation.Text:='';
     FSClients.EditCodeClient.Text:='';
     FSClients.EditNom.Text:='';
     FSClients.EditPrenom.Text:='';
     FSClients.EditDateNaissance.Text:='';
     FSClients.EditLieuNaissance.Text:='';
     FSClients.EditNaturePieceIdentite.Text:='';
     FSClients.EditNumPieceIdentite.Text:='';
     FSClients.EditFonction.Text:='';
     FSClients.EditAdresse.Text:='';
     FSClients.EditNumTelephone.Text:='';
     FSClients.EditNumTelephone.Text:='';
     FSClients.EditCodeAgenceBanque.Text:='';
     FSClients.EditRIB.Text:='';
     FSClients.EditLibelleAgence.Text:='';
     FSClients.EditAutre1.Text:='';
     FSClients.EditAutre2.Text:='';
     FSClients.EditAutre3.Text:='';
     FSClients.EditAutre4.Text:='';
     FSClients.EditAutre5.Text:='';
     FSClients.EditAutre6.Text:='';
     FSClients.EditMaskTelephone.Text:='999-99-99-99';
     FSClients.EditCodeClient.SetFocus;
end;

if key in['m','M','s','S']then
begin
     if key in['m','M']then
     begin
          FSClients.AfficheOperationClient.Visible:=true;
          FSClients.BitOperationClient.Kind:=bkRetry;
          FSClients.BitOperationClient.Caption:='Valider';
          FSClients.EditCodeOperation.Text:='';
          FSClients.EditNom.SetFocus;
     end;

     if key in['s','S']then
     begin
          FSClients.AfficheOperationClient.Visible:=true;
          FSClients.BitOperationClient.Kind:=bkCancel;
          FSClients.BitOperationClient.Caption:='Supprimer';
          FSClients.EditCodeOperation.Text:='';
          FSClients.BitOperationClient.SetFocus;
     end;

     TypeProces:='Commercial';
     FichierConcerne:='FClient';
     Adresse:='';
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          //AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
     end;

     ChClient:=Adresse;
     assignfile(FClient,ChClient);
     if FileExists(ChClient)then
     Reset(FClient)
     else Rewrite(FClient);
     Seek(FClient,0);
     OKClient:=false;
     while not eof(FClient)and(OKClient=false)do
     begin
          read(FClient,RClient);
          if(RClient.CodeTiers=FSClients.TableauClient.Cells[1,FSClients.TableauClient.Row])then
          begin
               OKClient:=true;
               FSClients.EditCodeOperation.Text:=RClient.CodeTiers;
               FSClients.EditCodeClient.Text:=RClient.CodeTiers;
               FSClients.EditNom.Text:=RClient.NomTiers;
               FSClients.EditPrenom.Text:=RClient.PrenomTiers;
               FSClients.EditDateNaissance.Text:=RClient.DateNaisTiers;
               FSClients.EditLieuNaissance.Text:=RClient.LieuNaisTiers;
               FSClients.EditNaturePieceIdentite.Text:=RClient.NaturePieceIdentiteTiers;
               FSClients.EditNumPieceIdentite.Text:=RClient.NumPieceIdentiteTiers;
               FSClients.EditFonction.Text:=RClient.FonctionTiers;
               FSClients.EditAdresse.Text:=RClient.AdresseTiers;
               FSClients.EditMaskTelephone.Text:=MaskTelephone(RClient.NumTelephoneTiers);
               FSClients.EditNumTelephone.EditMask:=FSClients.EditMaskTelephone.Text;
               FSClients.EditNumTelephone.Text:=RClient.NumTelephoneTiers;
               FSClients.EditCodeAgenceBanque.Text:=RClient.CodeAgenceBanqueTiers;
               FSClients.EditRIB.Text:=RClient.RIBBanqueTiers;
               if RechercheAgenceBanque(FSClients.TableauAgenceBanque,RClient.CodeAgenceBanqueTiers,'',RAgenceCopie)
               then FSClients.EditLibelleAgence.Text:=RAgenceCopie.LibelleAgence
               else FSClients.EditLibelleAgence.Text:='';
               FSClients.EditAutre1.Text:=RClient.Data1;
               FSClients.EditAutre2.Text:=RClient.Data2;
               FSClients.EditAutre3.Text:=RClient.Data3;
               FSClients.EditAutre4.Text:=RClient.Data4;
               FSClients.EditAutre5.Text:=RClient.Data5;
               FSClients.EditAutre6.Text:=RClient.Data6;
          end;
     end;
     Closefile(FClient);
end;

FSClients.BitOperationClient.Cancel:=false;
end;

procedure TFSClients.BitBtn39Click(Sender: TObject);
begin
FSClients.AfficheSFamille.Visible:=false;
end;

procedure TFSClients.TableauSFamilleKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var  OrdreClient:integer; TypeProces,FichierConcerne,Adresse:string;
begin

if key in[VK_RETURN]then
begin
     TypeProces:='Commercial';
     FichierConcerne:='FClient';
     Adresse:='';
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          //AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
     end;

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
          if(FSClients.TableauSFamille.Cells[1,FSClients.TableauSFamille.Row]<>'')then
          begin
               if(Firstlaters(RClient.CodeTiers,6)=FSClients.TableauSFamille.Cells[1,FSClients.TableauSFamille.Row])then
               begin
                    if(strtointeger(lastlaters(RClient.CodeTiers,4))>=OrdreClient)then OrdreClient:=strtointeger(lastlaters(RClient.CodeTiers,4))+1;
               end;
          end
          else
          begin
               if(strtointeger(lastlaters(RClient.CodeTiers,4))>=OrdreClient)then OrdreClient:=strtointeger(lastlaters(RClient.CodeTiers,4))+1;
          end;
     end;
     Closefile(FClient);

     FSClients.EditCodeClient.Text:=FSClients.TableauSFamille.Cells[1,FSClients.TableauSFamille.Row]+Completezerogauche(inttostr(OrdreClient),'4');
     FSClients.EditNom.SetFocus;
     FSClients.AfficheSFamille.Visible:=false;
end;

end;

procedure TFSClients.EditRechercheCodeSFamilleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key=VK_RETURN then
begin
     if(FSClients.EditRechercheCodeSFamille.Text<>'')then
     begin
          FSClients.TableauSFamille.SetFocus;
     end
     else
     begin
          FSClients.EditRechercheDesigSFamille.SetFocus;
     end;
end;

end;

procedure TFSClients.EditRechercheCodeSFamilleKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then key:=#0;
end;

procedure TFSClients.EditRechercheCodeSFamilleKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var m,l:integer;  OK:boolean;  TypeProces,FichierConcerne,Adresse:string;
begin {D1}
FSClients.TableauSFamille.RowCount:=2;
FSClients.TableauSFamille.Rows[1].Text:='';
if FSClients.EditRechercheCodeSFamille.Text<>''then
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

procedure TFSClients.EditRechercheDesigSFamilleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var m:integer;    TypeProces,FichierConcerne,Adresse:string;
begin
if key=VK_RETURN then
begin
     if(FSClients.EditRechercheDesigSFamille.Text<>'')then
     begin
          FSClients.TableauSFamille.SetFocus;
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
         FSClients.TableauSFamille.SetFocus;
     end;
end;

end;

procedure TFSClients.EditRechercheDesigSFamilleKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then key:=#0;
end;

procedure TFSClients.EditRechercheDesigSFamilleKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var m,l:integer;  OK:boolean; TypeProces,FichierConcerne,Adresse:string;
begin {D1}
FSClients.TableauSFamille.RowCount:=2;
FSClients.TableauSFamille.Rows[1].Text:='';
if FSClients.EditRechercheDesigSFamille.Text<>''then
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

procedure TFSClients.EditCodeClientEnter(Sender: TObject);
begin

if(FSClients.BitOperationClient.Caption<>'Supprimer')then
begin
     FSClients.AfficheSFamille.Visible:=true;
     FSClients.EditRechercheCodeSFamille.SetFocus;
end;

if(FSClients.BitOperationClient.Caption='Supprimer')then FSClients.BitOperationClient.SetFocus;

end;

procedure TFSClients.FormShow(Sender: TObject);
begin
ListeClients(FSClients.TableauClient,'','');
FSClients.AfficheSFamille.Left:=16;
FSClients.AfficheSFamille.Top:=16;
end;

procedure TFSClients.EditNomKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSClients.EditPrenom.SetFocus;
end;

end;

procedure TFSClients.EditPrenomKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSClients.PageCivil.Show;
     FSClients.EditDateNaissance.SetFocus;
end;

end;

procedure TFSClients.EditAdresseKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSClients.EditNumTelephone.SetFocus;
end;

end;

procedure TFSClients.EditNumTelephoneKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSClients.PageAutre.Show;
     FSClients.EditRIB.SetFocus;
end;

end;

procedure TFSClients.EditAutre1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSClients.EditAutre2.SetFocus;
end;

end;

procedure TFSClients.EditAutre2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSClients.EditAutre3.SetFocus;
end;

end;

procedure TFSClients.EditAutre3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSClients.EditAutre4.SetFocus;
end;

end;

procedure TFSClients.EditAutre4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSClients.EditAutre5.SetFocus;
end;

end;

procedure TFSClients.EditAutre5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSClients.EditAutre6.SetFocus;
end;

end;

procedure TFSClients.EditAutre6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSClients.BitOperationClient.SetFocus;
end;

end;

procedure TFSClients.EditCodeClientKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSClients.EditNom.SetFocus;
end;

end;

procedure TFSClients.EditNomEnter(Sender: TObject);
begin
if(FSClients.BitOperationClient.Caption='Supprimer')then FSClients.BitOperationClient.SetFocus;
end;

procedure TFSClients.EditPrenomEnter(Sender: TObject);
begin
if(FSClients.BitOperationClient.Caption='Supprimer')then FSClients.BitOperationClient.SetFocus;
end;

procedure TFSClients.EditAdresseEnter(Sender: TObject);
begin
if(FSClients.BitOperationClient.Caption='Supprimer')then FSClients.BitOperationClient.SetFocus;
end;

procedure TFSClients.EditNumTelephoneEnter(Sender: TObject);
begin
if(FSClients.BitOperationClient.Caption='Supprimer')then FSClients.BitOperationClient.SetFocus;
end;

procedure TFSClients.EditAutre1Enter(Sender: TObject);
begin
if(FSClients.BitOperationClient.Caption='Supprimer')then FSClients.BitOperationClient.SetFocus;
end;

procedure TFSClients.EditAutre2Enter(Sender: TObject);
begin
if(FSClients.BitOperationClient.Caption='Supprimer')then FSClients.BitOperationClient.SetFocus;
end;

procedure TFSClients.EditAutre3Enter(Sender: TObject);
begin
if(FSClients.BitOperationClient.Caption='Supprimer')then FSClients.BitOperationClient.SetFocus;
end;

procedure TFSClients.EditAutre4Enter(Sender: TObject);
begin
if(FSClients.BitOperationClient.Caption='Supprimer')then FSClients.BitOperationClient.SetFocus;
end;

procedure TFSClients.EditAutre5Enter(Sender: TObject);
begin
if(FSClients.BitOperationClient.Caption='Supprimer')then FSClients.BitOperationClient.SetFocus;
end;

procedure TFSClients.EditAutre6Enter(Sender: TObject);
begin
if(FSClients.BitOperationClient.Caption='Supprimer')then FSClients.BitOperationClient.SetFocus;
end;

procedure TFSClients.EditDateNaissanceKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSClients.EditLieuNaissance.SetFocus;
end;

end;

procedure TFSClients.EditLieuNaissanceKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSClients.EditNaturePieceIdentite.SetFocus;
end;

end;

procedure TFSClients.EditNaturePieceIdentiteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSClients.EditNumPieceIdentite.SetFocus;
end;

end;

procedure TFSClients.EditNumPieceIdentiteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSClients.EditFonction.SetFocus;
end;

end;

procedure TFSClients.EditFonctionKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSClients.EditAdresse.SetFocus;
end;

end;

procedure TFSClients.EditMaskTelephoneSelect(Sender: TObject);
begin
FSClients.EditNumTelephone.EditMask:=FSClients.EditMaskTelephone.Text;
end;

procedure TFSClients.EditRIBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     if(longueur(FSClients.EditRIB.Text)<20)then
     begin
          FSClients.EditCodeAgenceBanque.SetFocus;
          FSClients.TableauAgenceBanque.Visible:=false;
     end
     else FSClients.EditAutre1.SetFocus;
end;

end;

procedure TFSClients.EditRIBKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if RechercheAgenceBanque(FSClients.TableauAgenceBanque,FSClients.EditRIB.Text,'',RAgenceCopie)
     then FSClients.EditLibelleAgence.Text:=RAgenceCopie.LibelleAgence;
end;

procedure TFSClients.EditRIBExit(Sender: TObject);
begin
     if(longueur(FSClients.EditRIB.Text)<20)then
     begin
          FSClients.EditCodeAgenceBanque.Text:='';
          FSClients.EditCodeAgenceBanque.ReadOnly:=false;
          FSClients.EditCodeAgenceBanque.Color:=clWindow;
          FSClients.EditCodeAgenceBanque.SetFocus;
     end
     else
     begin
          FSClients.EditCodeAgenceBanque.Text:=firstlaters(FSClients.EditRIB.Text,8);
          FSClients.EditCodeAgenceBanque.ReadOnly:=true;
          FSClients.EditCodeAgenceBanque.Color:=$00EBEBEB;
     end;
end;

procedure TFSClients.EditCodeAgenceBanqueKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if RechercheAgenceBanque(FSClients.TableauAgenceBanque,FSClients.EditCodeAgenceBanque.Text,'',RAgenceCopie)
     then FSClients.EditLibelleAgence.Text:=RAgenceCopie.LibelleAgence;
end;

procedure TFSClients.EditCodeAgenceBanqueKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSClients.EditAutre1.SetFocus;
     FSClients.TableauAgenceBanque.Visible:=false;
end;

end;

procedure TFSClients.TableauAgenceBanqueKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSClients.TableauAgenceBanque.Visible:=false;
          FSClients.EditAutre1.SetFocus;
     end;
end;

procedure TFSClients.EditRIBEnter(Sender: TObject);
begin
     FSClients.TableauAgenceBanque.Visible:=true;
end;

end.
