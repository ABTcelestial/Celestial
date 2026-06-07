unit UnitFSCodeUtilisateurs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TFSCodeUtilisateurs = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    EditCDL: TEdit;
    EditCodeAcces: TEdit;
    BitBtn1: TBitBtn;
    AfficheModifierCodeAcces: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Bevel4: TBevel;
    Label3: TLabel;
    EditNouveauCodeAcces: TEdit;
    EdiConfirmerCodeAcces: TEdit;
    BitOKConfirmerCodeAcces: TBitBtn;
    BitBtn2: TBitBtn;
    EditCodeUtilisateur: TEdit;
    RBActivateFiche: TCheckBox;
    BitConsulterAutreExercice: TBitBtn;
    BitBtn3: TBitBtn;
    procedure EditCodeAccesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNouveauCodeAccesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdiConfirmerCodeAccesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitOKConfirmerCodeAccesClick(Sender: TObject);
    procedure EditCodeUtilisateurKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure EditCodeAccesKeyPress(Sender: TObject; var Key: Char);
    procedure FormDeactivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitConsulterAutreExerciceClick(Sender: TObject);
    procedure EditCodeAccesEnter(Sender: TObject);
    procedure EditCodeAccesExit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSCodeUtilisateurs: TFSCodeUtilisateurs;

  Procedure VerificationCodeAcces;

implementation

Uses UnitInitialisation, UnitFSAccueilUtilisateurs,
     UnitFSGenerateurAccesPrivilegies, UnitFSMenuPrincipal, UnitShowmessage,
     UnitFSConsultationExercice, UnitFSFicheSaisie, UnitFSTravauxFinAnnee;

var

   RParc:RInstalle;
   FParc:FInstalle;
   ParcInstalle:string100;

   TUtilisateur:TUtilisateurs;
   RUtilisateur:RUtilisateurs;
   FUtilisateur:FUtilisateurs;
   ChUtilisateur:string250;

   TPosteMenu:TPosteMenus;
   RPosteMenu:RPosteMenus;
   FPosteMenu:FPosteMenus;
   ChPosteMenu:string250;

   TAccesPrivilegie:TAccesPrivilegies;
   RAccesPrivilegie:RAccesPrivilegies;
   FAccesPrivilegie:FAccesPrivilegies;
   ChAccesPrivilegie:string250;

   TPrelevementCompteur,TArchivePrelevementCompteur:TRegistrePrelevementCompteurs;
   RPrelevementCompteur,RArchivePrelevementCompteur:RRegistrePrelevementCompteurs;
   FPrelevementCompteur,FArchivePrelevementCompteur:FRegistrePrelevementCompteurs;
   ChPrelevementCompteur,ChArchivePrelevementCompteur:string250;

   TCompteur:TCompteurs;
   RCompteur:RCompteurs;
   FCompteur:FCompteurs;
   ChCompteur:string250;

   TStock,TStockArticle:TStocks;
   RStock,RStockArticle:RStocks;
   FStock,FStockArticle:FStocks;
   ChStock,ChStockArticle:string250;

   TAvis:TAviss;
   RAvis:RAviss;
   FAvis:FAviss;
   ChAvis:string250;

{$R *.dfm}

procedure TFSCodeUtilisateurs.EditCodeAccesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          VerificationCodeAcces;
     end;
end;

Procedure VerificationCodeAcces;
var   CodeUtilisateur,Utilisateur,Fonction,Cause,Adresse:string; OK:boolean;
      NbrAcces:integer; i:integer;
begin
     //MessageBeep(MB_ICONEXCLAMATION);
     MessageBeep(MB_ICONASTERISK);

     if(FSCodeUtilisateurs.EditCDL.Text='Acces')
     and(AnsiUpperCase(FSCodeUtilisateurs.EditCodeAcces.Text)=AnsiUpperCase(FSMenuPrincipal.EditCodeFondateurParDefaut.Text))
     then
     begin
          FSCodeUtilisateurs.EditCDL.Text:='';
          FSCodeUtilisateurs.EditCodeAcces.Text:='';
          FSCodeUtilisateurs.EditCDL.MaxLength:=10;
          FSCodeUtilisateurs.Close;
          FSAccueilUtilisateurs.Close;
          FSGenerateurAccesPrivilegies.Show;
     end
     else
     begin
          if(AnsiUpperCase(FSCodeUtilisateurs.EditCodeAcces.Text)=AnsiUpperCase(FSMenuPrincipal.EditCodeFondateurParDefaut.Text))then
          begin
               OK:=true;
               CodeUtilisateur:=FSMenuPrincipal.EditCodeFondateurParDefaut.Text;
               Utilisateur:='AIT BESSAI Toufik';
               Fonction:='Fondateur';
               NbrAcces:=100;
               FSFicheSaisie.RBReaffichageListeMouvementDejasEffectue.Checked:=false;
          end
          else
          begin
               TypeProces:='Business';   FichierConcerne:='FUtilisateur';
               if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
               begin
                    AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
               end;
               ChUtilisateur:=Adresse;
               assignfile(FUtilisateur,ChUtilisateur);
               try
               if FileExists(ChUtilisateur)then
               Reset(FUtilisateur)
               else Rewrite(FUtilisateur);
               Seek(FUtilisateur,0);
               OK:=false;
               while(not eof(FUtilisateur)and(OK=false))do
               begin
                    Read(FUtilisateur,RUtilisateur);
                    if(AnsiUpperCase(RUtilisateur.CodeAcces)=AnsiUpperCase(FSCodeUtilisateurs.EditCodeAcces.Text))
                    or(Lastlaters(RUtilisateur.CodeAcces,longueur(RUtilisateur.CodeAcces)-1)=FSCodeUtilisateurs.EditCodeAcces.Text)
                    then
                    begin
                         OK:=true;
                         CodeUtilisateur:=RUtilisateur.CodeUtilisateur;
                         Utilisateur:=RUtilisateur.Nom+' '+RUtilisateur.Prenom;
                         Fonction:=RUtilisateur.Fonction;
                    end;
               end;
               finally
               CloseFile(FUtilisateur);
               end;
          end;

           if(OK=false)then
           begin
                showmessage('Code d''accès invalide!');
                FSCodeUtilisateurs.EditCodeAcces.Text:='';
                FSCodeUtilisateurs.EditCodeAcces.SetFocus;
                FSMenuPrincipal.EditCodeUtilisateur.Text:='';
           end
           else
           begin
                if(AnsiUpperCase(FSCodeUtilisateurs.EditCodeAcces.Text)<>AnsiUpperCase(FSMenuPrincipal.EditCodeFondateurParDefaut.Text))then
                begin
                OpenFParc(RParc);
                ChAccesPrivilegie:=RParc.Parcours+'\'+Exercice+'FAccesPrivilegie';
                assignfile(FAccesPrivilegie,ChAccesPrivilegie);
                try
                if FileExists(ChAccesPrivilegie)then
                Reset(FAccesPrivilegie)
                else Rewrite(FAccesPrivilegie);
                Seek(FAccesPrivilegie,0);
                OK:=false;
                NbrAcces:=0;
                Cause:='';
                while(not eof(FAccesPrivilegie)and(OK=false))do
                begin
                     Read(FAccesPrivilegie,RAccesPrivilegie);
                     if(AnsiUpperCase(RAccesPrivilegie.CodeUtilisateur)=AnsiUpperCase(CodeUtilisateur))then
                     begin
                          if(RAccesPrivilegie.ModeConsultation=true)then
                          begin
                               Cause:='';
                               if(RAccesPrivilegie.DateDebutConsultation='  /  /    ')then RAccesPrivilegie.DateDebutConsultation:='01/01/0001';
                               if(RAccesPrivilegie.DateFinConsultation='  /  /    ')then RAccesPrivilegie.DateFinConsultation:='01/01/9999';

                               if(strtodate(RAccesPrivilegie.DateDebutConsultation)<=date)
                               and(strtodate(RAccesPrivilegie.DateFinConsultation)>=date)
                               then
                               begin
                                    NbrAcces:=NbrAcces+1;
                               end
                               else Cause:=Cause+' Consultation non autorisé, période non valide! ';
                          end
                          else Cause:=Cause+' Consultation non autorisé! ';

                          if(RAccesPrivilegie.ModeAjouter=true)then
                          begin
                               Cause:='';
                               if(RAccesPrivilegie.DateDebutAjouter='  /  /    ')then RAccesPrivilegie.DateDebutAjouter:='01/01/0001';
                               if(RAccesPrivilegie.DateFinAjouter='  /  /    ')then RAccesPrivilegie.DateFinAjouter:='01/01/9999';

                               if(strtodate(RAccesPrivilegie.DateDebutAjouter)<=date)
                               and(strtodate(RAccesPrivilegie.DateFinAjouter)>=date)
                               then
                               begin
                                    NbrAcces:=NbrAcces+1;
                               end
                               else Cause:=Cause+' Ajout non autorisé, période non valide! ';
                          end
                          else Cause:=Cause+' Ajout non autorisé! ';

                          if(RAccesPrivilegie.ModeModifier=true)then
                          begin
                               Cause:='';
                               if(RAccesPrivilegie.DateDebutModifier='  /  /    ')then RAccesPrivilegie.DateDebutModifier:='01/01/0001';
                               if(RAccesPrivilegie.DateFinModifier='  /  /    ')then RAccesPrivilegie.DateFinModifier:='01/01/9999';

                               if(strtodate(RAccesPrivilegie.DateDebutModifier)<=date)
                               and(strtodate(RAccesPrivilegie.DateFinModifier)>=date)
                               then
                               begin
                                    NbrAcces:=NbrAcces+1;
                               end
                               else Cause:=Cause+' Modification non autorisé, période non valide! ';
                          end
                          else Cause:=Cause+' Modification non autorisé! ';

                          if(RAccesPrivilegie.ModeSupprimer=true)then
                          begin
                               Cause:='';
                              if(RAccesPrivilegie.DateDebutSupprimer='  /  /    ')then RAccesPrivilegie.DateDebutSupprimer:='01/01/0001';
                              if(RAccesPrivilegie.DateFinSupprimer='  /  /    ')then RAccesPrivilegie.DateFinSupprimer:='01/01/9999';

                               if(strtodate(RAccesPrivilegie.DateDebutSupprimer)<=date)
                               and(strtodate(RAccesPrivilegie.DateFinSupprimer)>=date)
                               then
                               begin
                                   NbrAcces:=NbrAcces+1;
                               end
                               else Cause:=Cause+' Suppression non autorisé, période non valide! ';
                          end
                          else Cause:=Cause+' Suppression non autorisé! ';

                          if(RAccesPrivilegie.ModeImprimer=true)then
                          begin
                               Cause:='';
                               if(RAccesPrivilegie.DateDebutImprimer='  /  /    ')then RAccesPrivilegie.DateDebutImprimer:='01/01/0001';
                               if(RAccesPrivilegie.DateFinImprimer='  /  /    ')then RAccesPrivilegie.DateFinImprimer:='01/01/9999';

                               if(strtodate(RAccesPrivilegie.DateDebutImprimer)<=date)
                               and(strtodate(RAccesPrivilegie.DateFinImprimer)>=date)
                               then
                               begin
                                    NbrAcces:=NbrAcces+1;
                               end
                               else Cause:=Cause+' Impression non autorisé, période non valide! ';
                          end
                          else Cause:=Cause+' Impression non autorisé! ';
                     end;
                end;
                finally
                CloseFile(FAccesPrivilegie);
                end;
                end;

                if(NbrAcces>0)then
                begin
                     FSCodeUtilisateurs.EditCodeAcces.Text:='';
                     FSCodeUtilisateurs.Close;
                     FSAccueilUtilisateurs.Show;
                     FSAccueilUtilisateurs.BitOK.Caption:='Démarrer';
                     FSAccueilUtilisateurs.AfficheUtilisateur.Caption:='Bienvenus '+Utilisateur+' ( '+inttostr(NbrAcces)+' accés)';
                     FSAccueilUtilisateurs.AfficheFonction.Caption:='  Domaines d''activité: '+Fonction;
                     FSMenuPrincipal.EditCodeUtilisateur.Text:=CodeUtilisateur;
                     FSAccueilUtilisateurs.BitOK.SetFocus;
                     FSMenuPrincipal.RBActiveAfficheMessage.Checked:=true;
                     FSFicheSaisie.RBReaffichageListeMouvementDejasEffectue.Checked:=false;

                     if(VKCAPITAL=1)then VKCAPITAL:=0;
                     GetKeyboardState(KeyState);
                     KeyState[VK_CAPITAL ] := VKCAPITAL;
                     SetKeyboardState(KeyState);

                     if(FindAllDataOptionsFicheSaisie(FSFicheSaisie.RBChercheArticleParCodeBarre.Name,'Oui')=true)
                     or(FindAllDataOptionsFicheSaisie(FSFicheSaisie.RBChercheArticleParPontBascule.Name,'Oui')=true)
                     then
                     begin
                          FSAccueilUtilisateurs.BitOKClick(FSAccueilUtilisateurs.BitOK);
                          FSMenuPrincipal.FicheMouvement1Click(FSMenuPrincipal.FicheMouvement1);
                     end
                     else
                     if(FuncCodeAccesLibre=true)then FSAccueilUtilisateurs.BitOKClick(FSAccueilUtilisateurs.BitOK);
                end
                else
                begin
                      FSCodeUtilisateurs.EditCodeAcces.Text:='';
                      FSCodeUtilisateurs.Close;
                      FSAccueilUtilisateurs.Show;
                      FSAccueilUtilisateurs.BitOK.Caption:='Code d''Accès';
                      FSAccueilUtilisateurs.AfficheUtilisateur.Caption:='Bienvenus '+Utilisateur+'.';
                      if(Cause='')then FSAccueilUtilisateurs.AfficheFonction.Caption:='  Votre code n''est pas enregistré dans le module des accès privilégiés'
                                  else FSAccueilUtilisateurs.AfficheFonction.Caption:='  '+Cause;
                      FSAccueilUtilisateurs.BitOK.SetFocus;
                      FSMenuPrincipal.EditCodeUtilisateur.Text:='';

                      if(VKCAPITAL=1)then VKCAPITAL:=0;
                      GetKeyboardState(KeyState);
                      KeyState[VK_CAPITAL ] := VKCAPITAL;
                      SetKeyboardState(KeyState);
                end;
           end;
     end;
end;

procedure TFSCodeUtilisateurs.EditNouveauCodeAccesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSCodeUtilisateurs.EdiConfirmerCodeAcces.SetFocus;
end;

end;

procedure TFSCodeUtilisateurs.EdiConfirmerCodeAccesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSCodeUtilisateurs.BitOKConfirmerCodeAcces.SetFocus;
end;

end;

procedure TFSCodeUtilisateurs.BitBtn1Click(Sender: TObject);
var   OK:boolean;
begin
     TypeProces:='Business';   FichierConcerne:='FUtilisateur';
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
     end;
     ChUtilisateur:=Adresse;
     assignfile(FUtilisateur,ChUtilisateur);
     try
     if FileExists(ChUtilisateur)then
     Reset(FUtilisateur)
     else Rewrite(FUtilisateur);
     Seek(FUtilisateur,0);
     OK:=false;
     while(not eof(FUtilisateur)and(OK=false))do
     begin
          Read(FUtilisateur,RUtilisateur);
          if(RUtilisateur.CodeAcces=FSCodeUtilisateurs.EditCodeAcces.Text)then
          begin
               OK:=true;
               FSCodeUtilisateurs.AfficheModifierCodeAcces.Visible:=true;
               FSCodeUtilisateurs.EditCodeUtilisateur.Text:='';
               FSCodeUtilisateurs.EditNouveauCodeAcces.Text:='';
               FSCodeUtilisateurs.EdiConfirmerCodeAcces.Text:='';
               FSCodeUtilisateurs.EditCodeUtilisateur.SetFocus;
          end;
     end;
     finally
     CloseFile(FUtilisateur);
     end;

if(OK=false)then FSCodeUtilisateurs.EditCodeAcces.SetFocus;
end;

procedure TFSCodeUtilisateurs.BitBtn2Click(Sender: TObject);
begin
FSCodeUtilisateurs.AfficheModifierCodeAcces.Visible:=false;
end;

procedure TFSCodeUtilisateurs.BitOKConfirmerCodeAccesClick(
  Sender: TObject);
var  i:integer;  OK:boolean;
begin

if(FSCodeUtilisateurs.EditCodeUtilisateur.Text<>'')
and(FSCodeUtilisateurs.EditNouveauCodeAcces.Text<>'')
and(FSCodeUtilisateurs.EdiConfirmerCodeAcces.Text<>'')
and(FSCodeUtilisateurs.EditNouveauCodeAcces.Text=FSCodeUtilisateurs.EdiConfirmerCodeAcces.Text)then
begin
     TypeProces:='Business';   FichierConcerne:='FUtilisateur';
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
     end;
     ChUtilisateur:=Adresse;
     assignfile(FUtilisateur,ChUtilisateur);
     try
     if FileExists(ChUtilisateur)then
     Reset(FUtilisateur)
     else Rewrite(FUtilisateur);
     Seek(FUtilisateur,0);
     i:=0;
     OK:=false;
     while(not eof(FUtilisateur)and(OK=false))do
     begin
          Read(FUtilisateur,RUtilisateur);
          if(RUtilisateur.CodeUtilisateur=FSCodeUtilisateurs.EditCodeUtilisateur.Text)
          and(RUtilisateur.CodeAcces=FSCodeUtilisateurs.EditCodeAcces.Text)
          then
          begin
               OK:=true;
               Seek(FUtilisateur,i);
               RUtilisateur.CodeAcces:=FSCodeUtilisateurs.EditNouveauCodeAcces.Text;
               Write(FUtilisateur,RUtilisateur);
               FSCodeUtilisateurs.AfficheModifierCodeAcces.Visible:=false;
               FSCodeUtilisateurs.EditCodeAcces.Text:='';
               FSCodeUtilisateurs.EditCodeAcces.SetFocus;
          end;
     i:=i+1;
     end;
     finally
     CloseFile(FUtilisateur);
     end;
end
else
begin
     showmessage('Verifier les codes SVP!');
     FSCodeUtilisateurs.EditCodeUtilisateur.SetFocus;
end;
end;

procedure TFSCodeUtilisateurs.EditCodeUtilisateurKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSCodeUtilisateurs.EditNouveauCodeAcces.SetFocus;
end;

end;

procedure TFSCodeUtilisateurs.FormShow(Sender: TObject);
begin
     FSCodeUtilisateurs.AfficheModifierCodeAcces.Left:=8;
     FSCodeUtilisateurs.AfficheModifierCodeAcces.Top:=8;

     FSCodeUtilisateurs.RBActivateFiche.Checked:=true;

     TypeProces:='Business';   FichierConcerne:='FUtilisateur';
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
     end;
     ChUtilisateur:=Adresse;
     assignfile(FUtilisateur,ChUtilisateur);
     if not FileExists(ChUtilisateur)then
     begin
          FSCodeUtilisateurs.BitConsulterAutreExercice.Visible:=true;
     end
     else
     begin
          try
          Reset(FUtilisateur);
          if(filesize(FUtilisateur)=0)
          then FSCodeUtilisateurs.BitConsulterAutreExercice.Visible:=true
          else FSCodeUtilisateurs.BitConsulterAutreExercice.Visible:=false;
          finally
          closefile(FUtilisateur);
          end;
     end;
end;

procedure TFSCodeUtilisateurs.EditCodeAccesKeyPress(Sender: TObject;
  var Key: Char);
begin     
     if key=#13 then key:=#0;
end;

procedure TFSCodeUtilisateurs.FormDeactivate(Sender: TObject);
begin
     if(FSCodeUtilisateurs.RBActivateFiche.Checked=true)then FSCodeUtilisateurs.EditCodeAcces.SetFocus;
end;

procedure TFSCodeUtilisateurs.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     FSCodeUtilisateurs.RBActivateFiche.Checked:=false;
end;

procedure TFSCodeUtilisateurs.BitConsulterAutreExerciceClick(
  Sender: TObject);
begin
     FSCodeUtilisateurs.Close;
     FSConsultationExercice.Show;
     FSConsultationExercice.EditExercice.Text:=Exercice;
     FSConsultationExercice.EditExercice.SetFocus;
end;

procedure TFSCodeUtilisateurs.EditCodeAccesEnter(Sender: TObject);
Var  KeyState  :  TKeyboardState;
begin
     GetKeyboardState(KeyState);
     VKCAPITAL:=KeyState[VK_CAPITAL];
     KeyState[VK_CAPITAL ] := 1;
     SetKeyboardState(KeyState);
end;

procedure TFSCodeUtilisateurs.EditCodeAccesExit(Sender: TObject);
begin
     if(VKCAPITAL=1)then VKCAPITAL:=0;
     GetKeyboardState(KeyState);
     KeyState[VK_CAPITAL ] := VKCAPITAL;
     SetKeyboardState(KeyState);
end;

procedure TFSCodeUtilisateurs.BitBtn3Click(Sender: TObject);
begin
     Application.Terminate;
end;

end.
