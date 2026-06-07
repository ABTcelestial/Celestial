unit UnitPointeurs;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, ComObj,
    Dialogs, Menus, Grids, StdCtrls, Buttons, ExtCtrls, ComCtrls, Mask, QuickRpt, QRCtrls, Clipbrd, winsock;

type

    TPointeurAutorisationPartageRegistre=class
                                         PositionAPR:integer;
                                         TypeProces:string[20];
                                         FichierConcerneRegistre:string[20];
                                         TypeCodification:string[50];
                                         CodeRegistre:string[20];
                                         NomDossierPartageReseaux:string[250];
                                         RegistreInvisibleReseaux:boolean;
                                         ValeurInvisibleReseaux:boolean;
                                         end;

    TRegistreTableauPointeur=class
                             Cells0:string[255];
                             Cells1:string[255];
                             Cells2:string[255];
                             Cells3:string[255];
                             Cells4:string[255];
                             Cells5:string[255];
                             Cells6:string[255];
                             Cells7:string[255];
                             Cells8:string[255];
                             Cells9:string[255];
                             Cells10:string[255];
                             Cells11:string[255];
                             Cells12:string[255];
                             Cells13:string[255];
                             Cells14:string[255];
                             Cells15:string[255];
                             Cells16:string[255];
                             Cells17:string[255];
                             Cells18:string[255];
                             Cells19:string[255];
                             Cells20:string[255];
                             Cells21:string[255];
                             Cells22:string[255];
                             Cells23:string[255];
                             Cells24:string[255];
                             Cells25:string[255];
                             Cells26:string[255];
                             Cells27:string[255];
                             Cells28:string[255];
                             Cells29:string[255];
                             Cells30:string[255];
                             Cells31:string[255];
                             Cells32:string[255];
                             Cells33:string[255];
                             Cells34:string[255];
                             Cells35:string[255];
                             Cells36:string[255];
                             Cells37:string[255];
                             Cells38:string[255];
                             Cells39:string[255];
                             Cells40:string[255];
                             Cells41:string[255];
                             Cells42:string[255];
                             Cells43:string[255];
                             Cells44:string[255];
                             Cells45:string[255];
                             Cells46:string[255];
                             Cells47:string[255];
                             Cells48:string[255];
                             Cells49:string[255];
                             Cells50:string[255];
                             Cells51:string[255];
                             Cells52:string[255];
                             Cells53:string[255];
                             Cells54:string[255];
                             Cells55:string[255];
                             Cells56:string[255];
                             Cells57:string[255];
                             Cells58:string[255];
                             Cells59:string[255];
                             Cells60:string[255];
                             end;

    TRegistreSoldeTier=class
                       MontantDebit:Real;
                       MontantCredit:Real;
                       end;

    TPointeurTypeFichierTiers=class
                              OrdreTypeFichierTiers:integer;
                              TypeProces:string[20];
                              FichierConcerne:string[20];
                              BaseAvis:string[50];
                              end;

    TRegistreAvisPointeur=class
                           NumAvis:integer;
                           DateAvis,DateExecute:string[10];
                           PositionTypeAvis:integer;
                           DesignationTypeAvis:string[255];
                           ModePaiement:string[30];
                           NumPiece:string[30];
                           NumDomiciliationAvis:string[10];
                           DomiciliationAvis:string[255];
                           EtatSoldeDomiciliationAvisDebitCredit:string[11];
                           NumDomiciliationPiece:string[10];
                           DomiciliationPiece:string[255];
                           Montant:real;
                           TypeProces:string[100];
                           CodeTiers:string[10];
                           NatureDepense:string[255];
                           CompteImputation:string[10];
                           DebitCredit:string[10];
                           SigneDebitCredit:integer;
                           Signataire:string[100];
                           ValiditeAvis:boolean;
                           Origine:string[255];
                           AvisConcerneTiers:string[50];
                           PositionProjetFinance:string[9];
                           NumProjetFinance:string[255];
                           NumRubrique:string[10];
                           NumPlanificateur:string[10];
                           DesignationDocumentBase:string[100];
                           NumeroDocumentBase:string[20];
                           DateDocumentBase:string[10];
                           IntituleOperationBase:string[120];
                           PositionAvis:string[9];
                          end;

    TRegistreListeMouvementPointeur=class
                                     OrdreListeMouvement:integer;
                                     NumListeMouvement:integer;
                                     PositionTypeMouvement:integer;
                                     PositionMouvement:integer;
                                     ReferenceSourceListeMouvement:string[255];
                                     DateMouvement:string[10];
                                     CodeTypeFormule:string[15];
                                     TypeProces:string[100];
                                     FichierTiersConserne:string[50];
                                     CodeTiers:string[10];
                                     DataTiersSupplementaire:string[100];
                                     DebitCredit:string[10];
                                     MontantMouvement:real;
                                     PositionProjetFinance:integer;
                                     NumProjetFinance:string[255];
                                     NumDomiciliation:string[10];
                                     Domiciliation:string[255];
                                     ModePaiement:string[255];
                                     NumPiece:string[255];
                                     DateExecutionMouvement:string[10];
                                     CodePaysExecutionMouvement:string[15];
                                     CodeWilayaExecutionMouvement:string[15];
                                     CodeDairaExecutionMouvement:string[15];
                                     CodeCommuneExecutionMouvement:string[15];
                                     CodeZoneExecutionMouvement:string[15];
                                     AdresseExecutionMouvement:string[255];
                                     OKExecution:boolean;
                                     OrdreListeMouvementAppartenant:string[255];
                                     ListeNumAvis:string[255];
                                     SourceName:string[50];
                                     DataSourceName:string[100];
                                     ValidationListeMouvement:boolean;
                                     PositionDetailMouvementBegin:integer;
                                     PositionDetailMouvementEnd:integer;
                                     PositionListeMouvement:string[9];
                                     CodeUtilisateur:string[10];
                                     MatriculeResponsablePrelevement:string[20];
                                     TypeVehiculePrelevement:string[50];
                                     TonageVehiculePrelevement:string[10];
                                     CodeResponsablePrelevement:string[10];
                                     NomResponsablePrelevement:string[50];
                                     PrenomResponsablePrelevement:string[50];
                                     IndiceInialPontBascule:real;
                                     IndiceFinalPontBascule:real;
                                     DateIndiceInial:string[10];
                                     HeureIndiceInial:string[8];
                                     DateIndiceFinal:string[10];
                                     HeureIndiceFinal:string[8];
                                     NumeroPont:string[10];
                                    end;

    TRegistreDetailArticlePrelevementUniteFondsPointeur=class
                                                         PositionDetailArticlePrelevementUniteFonds:integer;
                                                         NumPrelevementUniteFonds:integer;
                                                         NumPrelevement:integer;
                                                         NumEquipe:integer;
                                                         Matricule:string[5];
                                                         DatePrelevement:string[10];
                                                         HeurePrelevement:string[10];
                                                         TypeProces,FichierConcerne:string[100];
                                                         CodeTiers:string[10];
                                                         CodeArticle:string[10];
                                                         QuantiteJustifier,PrixUnitaire,CoutUnitaire:real;
                                                        end;

    TRegistrePrelevementUniteFondsPointeur=class
                                            NumPrelevementUniteFonds:integer;
                                            NumPrelevement:integer;
                                            CodeUtilisateur:string[10];
                                            NumEquipe:integer;
                                            Matricule:string[5];
                                            NumUniteFonds:integer;
                                            DatePrelevement:string[10];
                                            HeurePrelevement:string[10];
                                            ValeurPrecise:boolean;
                                            TypeProces,FichierConcerne:string[100];
                                            CodeTiers:string[10];
                                            ModePaiement:string[100];
                                            NumPiece:string[100];
                                            Domiciliation:string[255];
                                            DebitCredit:string[10];
                                            ValeurPrelevement:real;
                                            PositionPrelevementUniteFonds:string[9];
                                           end;

var
    PointeurAutorisationPartageRegistre:TPointeurAutorisationPartageRegistre;
    ListePointeurAutorisationPartageRegistre:TList;

    PointeurTypeFichierTiers:TPointeurTypeFichierTiers;
    ListePointeurTypeFichierTiers:TList;

    ListeRegistreAvisPointeur:Tlist;
    RegistreAvisPointeur:TRegistreAvisPointeur;

    ListeRegistreListeMouvementPointeur:Tlist;
    RegistreListeMouvementPointeur:TRegistreListeMouvementPointeur;

    ListeRegistrePrelevementUniteFondsPointeur:Tlist;
    RegistrePrelevementUniteFondsPointeur:TRegistrePrelevementUniteFondsPointeur;

    ListeRegistreTableauPointeur:Tlist;
    RegistreTableauPointeur:TRegistreTableauPointeur;

    ListeRegistreSoldeTier:Tlist;
    RegistreSoldeTier:TRegistreSoldeTier;

    Procedure ActivePointeurAutorisationPartageRegistre(TypeProcesRegistre,FichierConcerneRegistre,NomDossierPartageReseaux,AdresseAutorisation:string; OKInitialisePointeur:boolean);
    Procedure ActivePointeurAutorisationPartageRegistreMultiple(TypeProcesRegistre,ListeFichierConcerneRegistre:string);
    Procedure ActivePointeurTypeFichierTiers;
    Procedure ChargerPointeurAvis(TypeProcesAvis,FichierConserneAvis,TypeProcesControleReseaux,DateDebut,DateFin,Domiciliation,TypeProces,AvisConcerneTiers,CodeTiers,TypeTraitement:string; AfficherAvisExecutesNonExecutes,AfficherAvisExecutes,AfficherAvisNonExecutes,AfficherValeurNulle:boolean; var OKCreatePointeur:boolean);
    Function TriePointeurAvisPointeurCodeTiers(Item1,Item2:Pointer):integer;
    Function TriePointeurListeMouvementCodeTiers(Item1,Item2:Pointer):integer;
    Function TriePointeurPrelevementUniteFondsPointeurCodeTiers(Item1,Item2:Pointer):integer;
    Procedure ChargerPointeurListeMouvement(AdresseListeMouvement,PLMBegin,PLMEnd,DateDebut,DateFin,Domiciliation,TypeProces,AvisConcerneTiers,CodeTiers,TypeTraitement:string; OKMouvementeFinance,OKSuspendreTraitement,AfficherValeurNulle:boolean; var OKCreatePointeur:boolean);
    Procedure ChargerPointeurPrelevementUniteFonds(DateDebut,DateFin,Domiciliation,TypeProces,AvisConcerneTiers,CodeTiers,TypeTraitement:string; AfficherValeurNulle:boolean; var OKCreatePointeur:boolean);

    Procedure ListeAvisPointeur(Tableau:TStringGrid; DesignationTypeAvis,ModePaiement,Domiciliation,DateDebut,DateFin,NumProjetFinance,NumFiche,NumRubrique,NumPlanificateur,TypeProces,AvisConcerneTiers,CodeTiers:string; IndiceRubriqueTrieCol:integer; AfficheAvisAnnuler,AfficherAvisExecutesNonExecutes,AfficherAvisExecutes,AfficherAvisNonExecutes,AfficherPartieCommune,PartieCommuneDetaille,RBJustifierAvisNonJustifieAvis,RBJustifierAvis,RBNonJustifieAvis,AfficherValeurNulle:boolean);
    Procedure ListeAvisPointeurSpeciale(Tableau:TStringGrid; DesignationTypeAvis,ModePaiement,Domiciliation,DateDebut,DateFin,NumProjetFinance,NumFiche,NumRubrique,NumPlanificateur,TypeProces,AvisConcerneTiers,CodeTiers,TiersSupplementaire:string; IndiceRubriqueTrieCol:integer; AfficheAvisAnnuler,AfficherAvisExecutesNonExecutes,AfficherAvisExecutes,AfficherAvisNonExecutes,AfficherPartieCommune,PartieCommuneDetaille,RBJustifierAvisNonJustifieAvis,RBJustifierAvis,RBNonJustifieAvis,AfficherValeurNulle,AfficherInfoTiersSupplementaire:boolean);
    Procedure ProcAfficheListeMouvementPointeur(TableauListeMouvement:TStringGrid; PositionTypeMouvement,PositionMouvement,PLMBegin,PLMEnd,DateMouvementDebut,DateMouvementFin,DateLimiteExecution,CodePays,CodeWilaya,CodeDaira,CodeCommune,OKExecution,CodeTiers,AvisEtablis:string; AfficherValeursMonetaires,AfficherTotal,ChargerPointeur,AfficherValeurNulle,AfficherInfiTiersSupplementaire,OKUtiliserIndexation:boolean; NumLiseMouvementSelect:string);
    Procedure  ListeDetailArticlePrelevementUniteFondsPointeur(TableauDetailArticlePrelevementUniteFonds:TStringGrid; ListeNumPrelevement,ListeNumPrelevementUniteFonds,Matricule,CodeTiers,DateDebut,DateFin:string; AccepteInfoVideNP,AccepteInfoVideNPUF,AccepteInfoVideMatricule,AccepteInfoVideCodeTiers,CumulerArticle:boolean; NbrRowIn:integer; NumStructure:string; var NbrRowOut:integer);

    Procedure LibererRegistreAvisPointeur;
    Procedure LibererRegistreListeMouvementPointeur;
    Procedure LibererRegistreDetailMouvementPointeur;
    Procedure LibererRegistrePrelevementUniteFondsPointeur;
    Procedure LibererRegistreDetailArticlePrelevementUniteFondsPointeur;
    Procedure LibererRegistreTableauPointeur;
    Function FuncNbrDecimale(Chiffre:string):string;
    Procedure IndiquerNomPrenomTiers(TableauARemplire:TstringGrid; TypeProces,FichierConcerne,ColCodeTiers,ColNomTiers,ColPrenomTiers:string);
    Procedure IndiquerNomPrenomMultiTiers(TableauARemplire:TstringGrid; ColTypeProces,ColFichierConcerne,ColCodeTiers:integer; ColNomTiers,ColPrenomTiers,ColData1,ColData2,ColData3,ColData4,ColData5,ColData6:string);
    Procedure IndiquerInfoListeAvis(TableauARemplire:TStringGrid; ColListeNumAvis,ColinfoAvis,ColMontantAvis,ColMontantMouvement:integer);

    Procedure ProcChargerListeMouvementDansDetailMouvement;

    Procedure ProceAfficheDetailMouvementPointeur(TableauFormules,TableauVariable,TableauDetaiMouvement:TStringGrid; OrdreListeMouvement,PositionDetailMouvementBegin,PositionDetailMouvementEnd:integer; ValidationDetailMouvement,RBDetailMouvementAfficher,ChargerPointeur:boolean);
    Procedure ChargerPointeurDetailMouvement(DesignationTypeMouvement,PDMBegin,PDMEnd:string;  var OKCreatePointeur:boolean);
    Function NatureOperationMouvementPointeur(DesignationTypeMouvement,OrdreListeMouvement:string; InclureQuantite:boolean):string;
    Procedure ChargerPointeurDetailArticlePrelevementUniteFonds(NumPrelevement,Matricule,DateDebut,DateFin:string;  var OKCreatePointeur:boolean);
    Function NatureOperationPrelevementPointeur(NumPrelevement,Matricule,NumPrelevementUniteFonds:string; RapportTraitement:TMemo; InclureQuantite:boolean):string;
    Procedure RemplireTableauDetailArticlePrelevementUniteFonds(Tableau:TStringGrid; NumStructure,DateDebut,DateFin:string; InclureQuantite:boolean; RapportTraitement:TMemo);
    Procedure RemplireTableauDetailArticleMouvement(Tableau:TStringGrid; DesignationTypeMouvement:string; InclureQuantite:boolean; RapportTraitement:TMemo);

implementation

Uses  UnitInitialisation, UnitFSMoyenTransport, API_LiberationProcessus, UnitFSMenuPrincipal, UnitFSAvis, UnitPrintEtatTraitementDonnees, UnitPrintEtatTraitementDonneesPortrait, UnitFSDetailMarche,
      UnitFSAccueilUtilisateurs, UnitFSFicheSaisie, UnitFSFormules, UnitPrintBonQuantitatif, UnitPrintBonValorise,
      UnitPrintFacture, UnitPrintFactureSimple, UnitShowmessage, UnitFSComptabiliteTransitoire, UnitPrintFactureDinamique,
      UnitFSGenerateurEtats, UnitPrintEtatRecapitulatif, UnitPrintEtatDynamique, UnitPrintEtatPortraitDynamique, UnitFSCreateFichierTexte,
      UnitFSApprovisionnement, UnitPrintFactureSimple1, UnitPrintFactureAutre,UnitFSAttachements, UnitFSSairiePiecesDomiciliation,
      UnitFSListeValeurs, UnitFSPrelevement, UnitPrintFactureAutre1, UnitFSParametresAvances, UnitPrintBonQuantitatifPaysage,
      UnitFSAuthentificationreseaux, UnitFSGenerateurBase, UnitFSGenerateurMouvement, UnitFSPhotoPleinEcran, UnitFSRechercheBaseDonnees,
      UnitFSGenerationGroupeTiers, UnitFSAffichage, UnitFSUtilitaires, UnitFSTraitementDonnees, UnitFSTiers, UnitFSNowPrelevement, UnitFSGenerateurLocalisationGeographique;

var

    ListeRegistreDetailMouvementPointeur:Tlist;
    RegistreDetailMouvementPointeur:TRegistreDetailMouvementPointeur;

    ListeRegistreDetailArticlePrelevementUniteFondsPointeur:Tlist;
    RegistreDetailArticlePrelevementUniteFondsPointeur:TRegistreDetailArticlePrelevementUniteFondsPointeur;

Procedure ActivePointeurAutorisationPartageRegistre(TypeProcesRegistre,FichierConcerneRegistre,NomDossierPartageReseaux,AdresseAutorisation:string; OKInitialisePointeur:boolean);
var TypeProces,FichierConserne,EmlacementLocalOuReseauxOut,EmlacementLocalOuReseauxSource:string;
begin
     if(TypeProcesRegistre='')or(FichierConcerneRegistre='')then Exit;

     if(OKInitialisePointeur=true)then ListePointeurAutorisationPartageRegistre:=TList.Create;

     if(NomDossierPartageReseaux='')then
     begin
          if not(FunctionAdresseProces(TypeProcesRegistre,FichierConcerneRegistre,'',AdresseAutorisation,TypeProcesReseaux,EmlacementLocalOuReseauxSource))then
          begin
               AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerneRegistre+' recherché !');
          end;
          ProcAdresseDossierPartageReseaux('','Local',NomDossierPartageReseaux,EmlacementLocalOuReseauxOut);
          AdresseAutorisation:=Firstlaters(AdresseAutorisation,longueur(AdresseAutorisation)-longueur(FichierConcerneRegistre+' '+EmlacementLocalOuReseauxSource))+'FAutorisationPartageRegistre'+' '+EmlacementLocalOuReseauxSource;
     end
     else
     begin
          TypeProces:='Business';   FichierConserne:='FAutorisationPartageRegistre';
          if not(FunctionAdresseProces(TypeProces,FichierConserne,'',AdresseAutorisation,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
               AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
          end;
     end;

     PointeurAutorisationPartageRegistre:=TPointeurAutorisationPartageRegistre.Create;
     PointeurAutorisationPartageRegistre.PositionAPR:=0;
     PointeurAutorisationPartageRegistre.TypeProces:='Business';
     PointeurAutorisationPartageRegistre.FichierConcerneRegistre:='FFournisseur';
     PointeurAutorisationPartageRegistre.TypeCodification:='';
     PointeurAutorisationPartageRegistre.CodeRegistre:='';
     PointeurAutorisationPartageRegistre.NomDossierPartageReseaux:='';
     PointeurAutorisationPartageRegistre.RegistreInvisibleReseaux:=false;
     PointeurAutorisationPartageRegistre.ValeurInvisibleReseaux:=false;
     ListePointeurAutorisationPartageRegistre.Add(PointeurAutorisationPartageRegistre);

     ChAutorisationPartageRegistre:=AdresseAutorisation; 
     assignfile(FAutorisationPartageRegistre,ChAutorisationPartageRegistre);
     try
     if FileExists(ChAutorisationPartageRegistre)then
     Reset(FAutorisationPartageRegistre)
     else Rewrite(FAutorisationPartageRegistre);
     Seek(FAutorisationPartageRegistre,0);
     while not eof(FAutorisationPartageRegistre)do
     begin
          read(FAutorisationPartageRegistre,RAutorisationPartageRegistre);   Application.ProcessMessages;

          PointeurAutorisationPartageRegistre:=TPointeurAutorisationPartageRegistre.Create;
          PointeurAutorisationPartageRegistre.PositionAPR:=RAutorisationPartageRegistre.PositionAPR;
          PointeurAutorisationPartageRegistre.TypeProces:=RAutorisationPartageRegistre.TypeProces;
          PointeurAutorisationPartageRegistre.FichierConcerneRegistre:=RAutorisationPartageRegistre.FichierConcerneRegistre;
          PointeurAutorisationPartageRegistre.TypeCodification:=RAutorisationPartageRegistre.TypeCodification;
          PointeurAutorisationPartageRegistre.CodeRegistre:=RAutorisationPartageRegistre.CodeRegistre;
          PointeurAutorisationPartageRegistre.NomDossierPartageReseaux:=RAutorisationPartageRegistre.NomDossierPartageReseaux;
          PointeurAutorisationPartageRegistre.RegistreInvisibleReseaux:=RAutorisationPartageRegistre.RegistreInvisibleReseaux;
          PointeurAutorisationPartageRegistre.ValeurInvisibleReseaux:=RAutorisationPartageRegistre.ValeurInvisibleReseaux;
          ListePointeurAutorisationPartageRegistre.Add(PointeurAutorisationPartageRegistre);
     end;
     finally
     CloseFile(FAutorisationPartageRegistre);
     end;
end;

Procedure ActivePointeurAutorisationPartageRegistreMultiple(TypeProcesRegistre,ListeFichierConcerneRegistre:string);
var   i:integer; TypeProces,FichierConserne,Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut:string;
begin
     ActivePointeurTypeFichierTiers;
     
     ListePointeurAutorisationPartageRegistre:=TList.Create;
     PointeurAutorisationPartageRegistre:=TPointeurAutorisationPartageRegistre.Create;
     PointeurAutorisationPartageRegistre.PositionAPR:=0;
     PointeurAutorisationPartageRegistre.TypeProces:='Business';
     PointeurAutorisationPartageRegistre.FichierConcerneRegistre:='FFournisseur';
     PointeurAutorisationPartageRegistre.TypeCodification:='';
     PointeurAutorisationPartageRegistre.CodeRegistre:='';
     PointeurAutorisationPartageRegistre.NomDossierPartageReseaux:='';
     PointeurAutorisationPartageRegistre.RegistreInvisibleReseaux:=false;
     PointeurAutorisationPartageRegistre.ValeurInvisibleReseaux:=false;
     ListePointeurAutorisationPartageRegistre.Add(PointeurAutorisationPartageRegistre);

     for i:=0 to ListePointeurTypeFichierTiers.Count-1 do
     begin
          if(TPointeurTypeFichierTiers(ListePointeurTypeFichierTiers[i]).TypeProces=TypeProcesRegistre)
          and(FunctionFichierInclu(TPointeurTypeFichierTiers(ListePointeurTypeFichierTiers[i]).FichierConcerne,ListeFichierConcerneRegistre))then
          begin
               ActivePointeurAutorisationPartageRegistre(RTypeFichierTiers.TypeProces,RTypeFichierTiers.FichierConcerne,'','',false);
          end;
     end;
end;

Procedure ActivePointeurTypeFichierTiers;
var TypeProces,FichierConserne,Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut:string;
begin
     ListePointeurTypeFichierTiers:=TList.Create;
     PointeurTypeFichierTiers:=TPointeurTypeFichierTiers.Create;
     PointeurTypeFichierTiers.OrdreTypeFichierTiers:=0;
     PointeurTypeFichierTiers.TypeProces:='';
     PointeurTypeFichierTiers.FichierConcerne:='';
     PointeurTypeFichierTiers.BaseAvis:='';
     ListePointeurTypeFichierTiers.Add(PointeurTypeFichierTiers);

     TypeProces:='Business';   FichierConserne:='FTypeFichierTiers';
     if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
     end;

     ChTypeFichierTiers:=Adresse;
     assignfile(FTypeFichierTiers,ChTypeFichierTiers);
     if FileExists(ChTypeFichierTiers)then
     begin
          try
          Reset(FTypeFichierTiers);
          Seek(FTypeFichierTiers,0);
          while not eof(FTypeFichierTiers)do
          begin
               read(FTypeFichierTiers,RTypeFichierTiers);
               //ListePointeurTypeFichierTiers:=TList.Create;
               PointeurTypeFichierTiers:=TPointeurTypeFichierTiers.Create;
               PointeurTypeFichierTiers.OrdreTypeFichierTiers:=RTypeFichierTiers.OrdreTypeFichierTiers;
               PointeurTypeFichierTiers.TypeProces:=RTypeFichierTiers.TypeProces;
               PointeurTypeFichierTiers.FichierConcerne:=RTypeFichierTiers.FichierConcerne;
               PointeurTypeFichierTiers.BaseAvis:=RTypeFichierTiers.BaseAvis;
               ListePointeurTypeFichierTiers.Add(PointeurTypeFichierTiers);
          end;
          finally
          CloseFile(FTypeFichierTiers);
          end;
     end;
end;

Procedure ChargerPointeurAvis(TypeProcesAvis,FichierConserneAvis,TypeProcesControleReseaux,DateDebut,DateFin,Domiciliation,TypeProces,AvisConcerneTiers,CodeTiers,TypeTraitement:string; AfficherAvisExecutesNonExecutes,AfficherAvisExecutes,AfficherAvisNonExecutes,AfficherValeurNulle:boolean;  var OKCreatePointeur:boolean);
var Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut,DesignationGroupe,ListeFichierTiersGroupe,EtatAvisMaintenu,EtatSoldeDebitCredit,NumDomiciliationAvis:string; RapportTraitement:TMemo;
     OKAvisPointeur,Confirmer:boolean;
     iAv,iPt,iAnnee,iMois,IPBegin,iPEnd,PositionTypeAvis,NumTypeAvis,SigneDebitCredit:integer; CompteImputation,DebitCreditAvis,TypeProcesRecherche,FichierconcerneRecherche,JourneauxAuxiliaireUtilise,ListeCodeTiers:string;
     DebitAnterieur,CreditAnterieur:real;
     TTypeAvisChargement:TTypeAviss;
begin
     if(TypeTraitement='Domiciliation')then RapportTraitement:=FSTraitementDonnees.RapportTraitementDomiciliation;
     if(TypeTraitement='Tiers')then RapportTraitement:=FSTraitementDonnees.RapportTraitementTiers;

     ListeRegistreAvisPointeur:=TList.Create;

     if not(FunctionAdresseProces(TypeProcesAvis,FichierConserneAvis,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserneAvis+' recherché !');
     end;

     ListeCodeTiers:=ListeCodeGroupeTiers(CodeTiers,FSTraitementDonnees.RBActiverGroupeTiers.Checked,DesignationGroupe,ListeFichierTiersGroupe);

     if(CodeTiers<>'Tous')and(CodeTiers<>'')then
     begin
           RegistreAvisPointeur:=TRegistreAvisPointeur.Create;
           RegistreAvisPointeur.NumAvis:=0;
           RegistreAvisPointeur.DateAvis:=datetostr(strtodate(DateDebut)-1);
           RegistreAvisPointeur.DateExecute:=datetostr(strtodate(DateDebut)-1);
           RegistreAvisPointeur.PositionTypeAvis:=0;
           RegistreAvisPointeur.DesignationTypeAvis:='';
           RegistreAvisPointeur.ModePaiement:='';
           RegistreAvisPointeur.NumPiece:='';
           RegistreAvisPointeur.NumDomiciliationAvis:='';
           RegistreAvisPointeur.DomiciliationAvis:=Domiciliation;
           RegistreAvisPointeur.EtatSoldeDomiciliationAvisDebitCredit:='';
           RegistreAvisPointeur.NumDomiciliationPiece:='';
           RegistreAvisPointeur.DomiciliationPiece:='';
           RegistreAvisPointeur.Montant:=0;
           RegistreAvisPointeur.TypeProces:=TypeProces;
           RegistreAvisPointeur.CodeTiers:=CodeTiers;
           RegistreAvisPointeur.NatureDepense:='';
           RegistreAvisPointeur.CompteImputation:='';
           RegistreAvisPointeur.DebitCredit:='';
           RegistreAvisPointeur.SigneDebitCredit:=1;
           RegistreAvisPointeur.Signataire:='';
           RegistreAvisPointeur.ValiditeAvis:=true;
           RegistreAvisPointeur.Origine:='';
           RegistreAvisPointeur.AvisConcerneTiers:=AvisConcerneTiers;
           RegistreAvisPointeur.PositionProjetFinance:='';
           RegistreAvisPointeur.NumProjetFinance:='';
           RegistreAvisPointeur.NumRubrique:='';
           RegistreAvisPointeur.NumPlanificateur:='';
           RegistreAvisPointeur.DesignationDocumentBase:='';
           RegistreAvisPointeur.NumeroDocumentBase:='';
           RegistreAvisPointeur.DateDocumentBase:='';
           RegistreAvisPointeur.IntituleOperationBase:='';
           RegistreAvisPointeur.PositionAvis:='';
           ListeRegistreAvisPointeur.Add(RegistreAvisPointeur);

           OKCreatePointeur:=true;
     end;

     if(TypeTraitement='Domiciliation')and(Domiciliation<>'')then
     begin
          RDomiciliationCopie:=ChercherDomiciliation('',Domiciliation,PositionDomiciliationRecherche);
          EtatSoldeDebitCredit:=RDomiciliationCopie.EtatSoldeDebitCredit;
          NumDomiciliationAvis:=RDomiciliationCopie.NumDomiciliation;
     end
     else
     begin
          NumDomiciliationAvis:='';
          EtatSoldeDebitCredit:='';
     end;

     DebitAnterieur:=0;
     CreditAnterieur:=0;

     RBaseAvisCopie:=ChercherBaseAvis('',FichierConserneAvis,Confirmer);

     iAnnee:=strtointeger(Midellaters(DateFin,7,10));
     iMois:=strtointeger(Midellaters(DateFin,4,5));

     IPBegin:=0;
     //iPEnd:=RBaseAvisCopie.RegistrePositionAvisParPeriode[iAnnee,iMois].PositionAvisEnd;
     iPEnd:=IndiquerIEndMax(RBaseAvisCopie,'',DateFin);

     TTypeAvisChargement:=RemplireTableauTypeAvis;

     ChAvis:=Adresse;
     assignfile(FAvis,ChAvis);
     if FileExists(ChAvis)then
     begin
          try
          Reset(FAvis);
          Seek(FAvis,IPBegin);
          iPt:=IPBegin;
          while not eof(FAvis)and(iPt<=iPEnd)do
          begin
               read(FAvis,RAvis);  Application.ProcessMessages;  if(FSTraitementDonnees.RBSuspendreTraitement.Checked)then begin RapportTraitement.Lines.Add('Traitement Suspendu.'); Exit; end;

               if(strtodate(RAvis.DateAvis)<=strtodate(DateFin))
               then OKAvisPointeur:=true
               else OKAvisPointeur:=false;

               if(OKAvisPointeur=true)then
               begin
                    if(AfficherValeurNulle=false)then
                    begin
                         if(RAvis.Montant=0)then OKAvisPointeur:=false;
                    end;
               end;

               if(OKAvisPointeur=true)and(RAvis.DebitCredit<>'Débit')and(RAvis.DebitCredit<>'Crédit')then
               begin
                    NumTypeAvis:=TTypeAvisChargement[RAvis.PositionTypeAvis].NumTypeAvis;
                    SigneDebitCredit:=TTypeAvisChargement[RAvis.PositionTypeAvis].SigneDebitCredit;
                    CompteImputation:=TTypeAvisChargement[RAvis.PositionTypeAvis].CompteImputation;
                    DebitCreditAvis:=TTypeAvisChargement[RAvis.PositionTypeAvis].DebitCredit;
                    TypeProcesRecherche:=TTypeAvisChargement[RAvis.PositionTypeAvis].TypeProces;
                    FichierconcerneRecherche:=TTypeAvisChargement[RAvis.PositionTypeAvis].FichierConserne;
                    JourneauxAuxiliaireUtilise:=TTypeAvisChargement[RAvis.PositionTypeAvis].JourneauxAuxiliaireUtilise;
               end;

               if(OKAvisPointeur=true)then
               begin
                    if(RAvis.DebitCredit<>'Débit')and(RAvis.DebitCredit<>'Crédit')then RAvis.DebitCredit:=DebitCreditAvis;
               end;

               if(OKAvisPointeur=true)then
               begin
                    if(TypeProcesControleReseaux='Réseaux')then
                    begin
                         if(strtodate(RAvis.DateAvis)<strtodate('01/01/'+ExerciceAnnee))
                         then OKAvisPointeur:=FSTraitementDonnees.RBInclureValeurSousReseauxPrecedenteExercice.Checked;

                         if(OKAvisPointeur=true)then
                         begin
                              if(strtodate(RAvis.DateAvis)<strtodate(DateDebut))
                              then OKAvisPointeur:=FSTraitementDonnees.RBInclureValeurSousReseauxPrecedentePeriode.Checked;
                         end;
                    end;
               end;

               if(OKAvisPointeur=true)then
               begin
                     RegistreAvisPointeur:=TRegistreAvisPointeur.Create;
                     RegistreAvisPointeur.NumAvis:=RAvis.NumAvis;
                     RegistreAvisPointeur.DateAvis:=RAvis.DateAvis;
                     RegistreAvisPointeur.DateExecute:=RAvis.DateExecute;
                     RegistreAvisPointeur.PositionTypeAvis:=RAvis.PositionTypeAvis;
                     RegistreAvisPointeur.DesignationTypeAvis:=RAvis.DesignationTypeAvis;
                     RegistreAvisPointeur.ModePaiement:=RAvis.ModePaiement;
                     RegistreAvisPointeur.NumPiece:=RAvis.NumPiece;
                     RegistreAvisPointeur.NumDomiciliationAvis:=RAvis.NumDomiciliationAvis;
                     RegistreAvisPointeur.DomiciliationAvis:=RAvis.DomiciliationAvis;
                     RegistreAvisPointeur.EtatSoldeDomiciliationAvisDebitCredit:=EtatSoldeDebitCredit;
                     RegistreAvisPointeur.NumDomiciliationPiece:=RAvis.NumDomiciliationPiece;
                     RegistreAvisPointeur.DomiciliationPiece:=RAvis.DomiciliationPiece;
                     RegistreAvisPointeur.Montant:=RAvis.Montant;
                     RegistreAvisPointeur.TypeProces:=RAvis.TypeProces;
                     RegistreAvisPointeur.CodeTiers:=RAvis.CodeTiers;
                     RegistreAvisPointeur.NatureDepense:=RAvis.NatureDepense;
                     RegistreAvisPointeur.CompteImputation:=RAvis.CompteImputation;
                     RegistreAvisPointeur.DebitCredit:=RAvis.DebitCredit;//DebitCreditAvis;
                     RegistreAvisPointeur.SigneDebitCredit:=SigneDebitCredit;
                     RegistreAvisPointeur.Signataire:=RAvis.Signataire;
                     RegistreAvisPointeur.ValiditeAvis:=RAvis.ValiditeAvis;
                     RegistreAvisPointeur.Origine:=RAvis.Origine;
                     RegistreAvisPointeur.AvisConcerneTiers:=RAvis.AvisConcerneTiers;
                     RegistreAvisPointeur.PositionProjetFinance:=RAvis.PositionProjetFinance;
                     RegistreAvisPointeur.NumProjetFinance:=RAvis.NumProjetFinance;
                     RegistreAvisPointeur.NumRubrique:=RAvis.NumRubrique;
                     RegistreAvisPointeur.NumPlanificateur:=RAvis.NumPlanificateur;
                     RegistreAvisPointeur.DesignationDocumentBase:=RAvis.DesignationDocumentBase;
                     RegistreAvisPointeur.NumeroDocumentBase:=RAvis.NumeroDocumentBase;
                     RegistreAvisPointeur.DateDocumentBase:=RAvis.DateDocumentBase;
                     RegistreAvisPointeur.IntituleOperationBase:=RAvis.IntituleOperationBase;
                     RegistreAvisPointeur.PositionAvis:=inttostr(iPt);
                     ListeRegistreAvisPointeur.Add(RegistreAvisPointeur);

                     OKCreatePointeur:=true;

                     //RapportTraitement.Lines.Add('Pointeur '+FichierConserneAvis+' N°'+inttostr(RAvis.NumAvis)+' du '+RAvis.DateAvis+' Tiers: '+RAvis.CodeTiers+' Montant '+Vergule(floattostr(RAvis.Montant*SigneDebitCredit),'2','C',''));
               end;
          iPt:=iPt+1;
          end;
          finally
          CloseFile(FAvis);
          end;
     end;

     if(TypeTraitement='Tiers')then
     begin
           //ListeRegistreAvisPointeur.Sort(TriePointeurAvisPointeurCodeTiers);

           iAv:=1;
           while(iAv<=ListeRegistreAvisPointeur.Count-1)do
           begin
                OKAvisPointeur:=true;

                if(OKAvisPointeur=true)then
                begin
                     if(CodeTiers<>'Tous')and(CodeTiers<>'')then
                     begin
                          if(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iAv]).CodeTiers<>'Tous')then
                          begin
                               OKAvisPointeur:=FunctionFichierInclu(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iAv]).CodeTiers,ListeCodeTiers);
                          end
                          else
                          begin
                               if(TypeTraitement<>'Tiers')
                               then OKAvisPointeur:=true
                               else OKAvisPointeur:=false;
                          end;
                     end;
                end;

                if(OKAvisPointeur=false)then
                begin
                     ListeRegistreAvisPointeur.Delete(iAv);
                     iAv:=iAv-1;
                end;
           iAv:=iAv+1;
           end;
     end;


     if(Domiciliation<>'')
     and(Domiciliation<>'Tous')
     then
     begin
          iAv:=1;
          while(iAv<=ListeRegistreAvisPointeur.Count-1)do
          begin
               if(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iAv]).DomiciliationAvis=Domiciliation)
               then OKAvisPointeur:=true
               else OKAvisPointeur:=false;

               if(OKAvisPointeur=false)then
                begin
                     ListeRegistreAvisPointeur.Delete(iAv);
                     iAv:=iAv-1;
                end;
          iAv:=iAv+1;
          end;
     end;
end;

Function TriePointeurAvisPointeurCodeTiers(Item1,Item2:Pointer):integer;
begin
     if(TRegistreAvisPointeur(Item1).CodeTiers>TRegistreAvisPointeur(Item2).CodeTiers)then result:=1;// si "Item1>Item2" notre fonction doit renvoyer un nombre >0
     if(TRegistreAvisPointeur(Item1).CodeTiers=TRegistreAvisPointeur(Item2).CodeTiers)then result:=0; //si "Item1=Item2" notre fonction doit renvoyer 0
     if(TRegistreAvisPointeur(Item1).CodeTiers<TRegistreAvisPointeur(Item2).CodeTiers)then result:=-1; //si "Item1<Item2" notre fonction doit renvoyer un nombre <0
end;

Function TriePointeurPrelevementUniteFondsPointeurCodeTiers(Item1,Item2:Pointer):integer;
begin
     if(TRegistrePrelevementUniteFondsPointeur(Item1).CodeTiers>TRegistrePrelevementUniteFondsPointeur(Item2).CodeTiers)then result:=1;// si "Item1>Item2" notre fonction doit renvoyer un nombre >0
     if(TRegistrePrelevementUniteFondsPointeur(Item1).CodeTiers=TRegistrePrelevementUniteFondsPointeur(Item2).CodeTiers)then result:=0; //si "Item1=Item2" notre fonction doit renvoyer 0
     if(TRegistrePrelevementUniteFondsPointeur(Item1).CodeTiers<TRegistrePrelevementUniteFondsPointeur(Item2).CodeTiers)then result:=-1; //si "Item1<Item2" notre fonction doit renvoyer un nombre <0
end;

Function TriePointeurListeMouvementCodeTiers(Item1,Item2:Pointer):integer;
begin
     if(TRegistreListeMouvementPointeur(Item1).CodeTiers>TRegistreListeMouvementPointeur(Item2).CodeTiers)then result:=1;// si "Item1>Item2" notre fonction doit renvoyer un nombre >0
     if(TRegistreListeMouvementPointeur(Item1).CodeTiers=TRegistreListeMouvementPointeur(Item2).CodeTiers)then result:=0; //si "Item1=Item2" notre fonction doit renvoyer 0
     if(TRegistreListeMouvementPointeur(Item1).CodeTiers<TRegistreListeMouvementPointeur(Item2).CodeTiers)then result:=-1; //si "Item1<Item2" notre fonction doit renvoyer un nombre <0
end;

Procedure ChargerPointeurListeMouvement(AdresseListeMouvement,PLMBegin,PLMEnd,DateDebut,DateFin,Domiciliation,TypeProces,AvisConcerneTiers,CodeTiers,TypeTraitement:string; OKMouvementeFinance,OKSuspendreTraitement,AfficherValeurNulle:boolean;  var OKCreatePointeur:boolean);
var  iPLM:integer;
     Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut,DesignationGroupe,ListeFichierTiersGroupe,DebitCreditTypeMouvement,ListeCodeTiers:string;
     OKMouvementPointeur:boolean;
     RapportTraitement:TMemo;
     DebitAnterieur,CreditAnterieur:real;
     TableauRListeMouvement:array of RListeMouvements;
     NbrALire,NbrRListeMouvementLus,Nbr:integer;
begin
     NbrALire:=NombreOptimaleBufferSize('RListeMouvement');
     SetLength(TableauRListeMouvement,NbrALire);

     if(TypeTraitement='Domiciliation')then RapportTraitement:=FSTraitementDonnees.RapportTraitementDomiciliation;
     if(TypeTraitement='Tiers')then RapportTraitement:=FSTraitementDonnees.RapportTraitementTiers;

     ListeRegistreListeMouvementPointeur:=TList.Create;

     //if(CodeTiers<>'Tous')and(CodeTiers<>'')then
     begin
           RegistreListeMouvementPointeur:=TRegistreListeMouvementPointeur.Create;
           RegistreListeMouvementPointeur.OrdreListeMouvement:=0;
           RegistreListeMouvementPointeur.NumListeMouvement:=0;
           RegistreListeMouvementPointeur.PositionTypeMouvement:=0;
           RegistreListeMouvementPointeur.PositionMouvement:=0;
           RegistreListeMouvementPointeur.ReferenceSourceListeMouvement:='';
           RegistreListeMouvementPointeur.DateMouvement:=datetostr(stringtodate(DateDebut,'ChargerPointeurListeMouvement')-1);
           RegistreListeMouvementPointeur.CodeTypeFormule:='';
           RegistreListeMouvementPointeur.TypeProces:=TypeProces;
           RegistreListeMouvementPointeur.FichierTiersConserne:=AvisConcerneTiers;
           RegistreListeMouvementPointeur.CodeTiers:=CodeTiers;
           RegistreListeMouvementPointeur.DataTiersSupplementaire:='';
           RegistreListeMouvementPointeur.DebitCredit:='';
           RegistreListeMouvementPointeur.MontantMouvement:=0;
           RegistreListeMouvementPointeur.NumProjetFinance:='';
           RegistreListeMouvementPointeur.NumDomiciliation:='';
           RegistreListeMouvementPointeur.Domiciliation:=Domiciliation;
           RegistreListeMouvementPointeur.ModePaiement:='';
           RegistreListeMouvementPointeur.NumPiece:='';
           RegistreListeMouvementPointeur.DateExecutionMouvement:='';
           RegistreListeMouvementPointeur.CodePaysExecutionMouvement:='';
           RegistreListeMouvementPointeur.CodeWilayaExecutionMouvement:='';
           RegistreListeMouvementPointeur.CodeDairaExecutionMouvement:='';
           RegistreListeMouvementPointeur.CodeCommuneExecutionMouvement:='';
           RegistreListeMouvementPointeur.CodeZoneExecutionMouvement:='';
           RegistreListeMouvementPointeur.AdresseExecutionMouvement:='';
           RegistreListeMouvementPointeur.OKExecution:=true;
           RegistreListeMouvementPointeur.OrdreListeMouvementAppartenant:='';
           RegistreListeMouvementPointeur.ListeNumAvis:='';
           RegistreListeMouvementPointeur.SourceName:='';
           RegistreListeMouvementPointeur.DataSourceName:='';
           RegistreListeMouvementPointeur.ValidationListeMouvement:=true;
           RegistreListeMouvementPointeur.PositionDetailMouvementBegin:=0;
           RegistreListeMouvementPointeur.PositionDetailMouvementEnd:=0;
           RegistreListeMouvementPointeur.PositionListeMouvement:='';
           RegistreListeMouvementPointeur.CodeUtilisateur:='';
           RegistreListeMouvementPointeur.MatriculeResponsablePrelevement:='';
           RegistreListeMouvementPointeur.TypeVehiculePrelevement:='';
           RegistreListeMouvementPointeur.TonageVehiculePrelevement:='';
           RegistreListeMouvementPointeur.CodeResponsablePrelevement:='';
           RegistreListeMouvementPointeur.NomResponsablePrelevement:='';
           RegistreListeMouvementPointeur.PrenomResponsablePrelevement:='';
           RegistreListeMouvementPointeur.IndiceInialPontBascule:=0;
           RegistreListeMouvementPointeur.IndiceFinalPontBascule:=0;
           RegistreListeMouvementPointeur.DateIndiceInial:='';
           RegistreListeMouvementPointeur.HeureIndiceInial:='';
           RegistreListeMouvementPointeur.DateIndiceFinal:='';
           RegistreListeMouvementPointeur.HeureIndiceFinal:='';
           RegistreListeMouvementPointeur.NumeroPont:='';

           ListeRegistreListeMouvementPointeur.Add(RegistreListeMouvementPointeur);

           OKCreatePointeur:=true;
     end;

     if(PLMBegin='')or(PLMBegin='999999999')then PLMBegin:='0';
     if(PLMEnd='')or(PLMEnd='0')then   PLMEnd:='999999999';

     if(TypeTraitement='Tiers')then PLMBegin:='0';

     ListeCodeTiers:=ListeCodeGroupeTiers(CodeTiers,FSTraitementDonnees.RBActiverGroupeTiers.Checked,DesignationGroupe,ListeFichierTiersGroupe);

     DebitAnterieur:=0;
     CreditAnterieur:=0;

     ChListeMouvement:=AdresseListeMouvement;
     assignfile(FListeMouvement,ChListeMouvement);
     if FileExists(ChListeMouvement)then
     begin
          try
          Reset(FListeMouvement);
          iPLM:=strtointeger(PLMBegin);
          Seek(FListeMouvement,iPLM);
          while(not eof(FListeMouvement))and(iPLM<=strtointeger(PLMEnd))do
          begin
               //read(FListeMouvement,RListeMouvement);

               BlockRead(FListeMouvement,TableauRListeMouvement[0],NbrALire,NbrRListeMouvementLus);

               Application.ProcessMessages;  if(OKSuspendreTraitement=true)then begin RapportTraitement.Lines.Add('Traitement Suspendu.'); Exit; end;

               Nbr:=0;
               while Nbr<=NbrRListeMouvementLus-1 do
               begin
                    RListeMouvement:=TableauRListeMouvement[Nbr];
               if(stringtodate(RListeMouvement.DateMouvement,'')<=stringtodate(DateFin,''))
               then OKMouvementPointeur:=true
               else OKMouvementPointeur:=false;

               if(OKMouvementPointeur=true)then
               begin
                    if(AfficherValeurNulle=false)then
                    begin
                         if(RListeMouvement.MontantMouvement=0)then OKMouvementPointeur:=false;
                    end;
               end;

               if(OKMouvementPointeur=true)then
               begin
                     RegistreListeMouvementPointeur:=TRegistreListeMouvementPointeur.Create;
                     RegistreListeMouvementPointeur.OrdreListeMouvement:=RListeMouvement.OrdreListeMouvement;
                     RegistreListeMouvementPointeur.NumListeMouvement:=RListeMouvement.NumListeMouvement;
                     RegistreListeMouvementPointeur.PositionTypeMouvement:=RListeMouvement.PositionTypeMouvement;
                     RegistreListeMouvementPointeur.PositionMouvement:=RListeMouvement.PositionMouvement;
                     RegistreListeMouvementPointeur.ReferenceSourceListeMouvement:=RListeMouvement.ReferenceSourceListeMouvement;
                     RegistreListeMouvementPointeur.DateMouvement:=RListeMouvement.DateMouvement;
                     RegistreListeMouvementPointeur.CodeTypeFormule:=RListeMouvement.CodeTypeFormule;
                     RegistreListeMouvementPointeur.TypeProces:=RListeMouvement.TypeProces;
                     RegistreListeMouvementPointeur.FichierTiersConserne:=RListeMouvement.FichierTiersConserne;
                     RegistreListeMouvementPointeur.CodeTiers:=RListeMouvement.CodeTiers;
                     RegistreListeMouvementPointeur.DataTiersSupplementaire:=RListeMouvement.DataTiersSupplementaire;
                     RegistreListeMouvementPointeur.DebitCredit:=DebitCreditTypeMouvement;
                     RegistreListeMouvementPointeur.MontantMouvement:=RListeMouvement.MontantMouvement;
                     RegistreListeMouvementPointeur.NumProjetFinance:=RListeMouvement.NumProjetFinance;
                     RegistreListeMouvementPointeur.NumDomiciliation:=RListeMouvement.NumDomiciliation;
                     RegistreListeMouvementPointeur.Domiciliation:=RListeMouvement.Domiciliation;
                     RegistreListeMouvementPointeur.ModePaiement:=RListeMouvement.ModePaiement;
                     RegistreListeMouvementPointeur.NumPiece:=RListeMouvement.NumPiece;
                     RegistreListeMouvementPointeur.DateExecutionMouvement:=RListeMouvement.DateExecutionMouvement;
                     RegistreListeMouvementPointeur.CodePaysExecutionMouvement:=RListeMouvement.CodePaysExecutionMouvement;
                     RegistreListeMouvementPointeur.CodeWilayaExecutionMouvement:=RListeMouvement.CodeWilayaExecutionMouvement;
                     RegistreListeMouvementPointeur.CodeDairaExecutionMouvement:=RListeMouvement.CodeDairaExecutionMouvement;
                     RegistreListeMouvementPointeur.CodeCommuneExecutionMouvement:=RListeMouvement.CodeCommuneExecutionMouvement;
                     RegistreListeMouvementPointeur.CodeZoneExecutionMouvement:=RListeMouvement.CodeZoneExecutionMouvement;
                     RegistreListeMouvementPointeur.AdresseExecutionMouvement:=RListeMouvement.AdresseExecutionMouvement;
                     RegistreListeMouvementPointeur.OKExecution:=RListeMouvement.OKExecution;
                     RegistreListeMouvementPointeur.OrdreListeMouvementAppartenant:=RListeMouvement.OrdreListeMouvementAppartenant;
                     RegistreListeMouvementPointeur.ListeNumAvis:=RListeMouvement.ListeNumAvis;
                     RegistreListeMouvementPointeur.SourceName:=RListeMouvement.SourceName;
                     RegistreListeMouvementPointeur.DataSourceName:=RListeMouvement.DataSourceName;
                     RegistreListeMouvementPointeur.ValidationListeMouvement:=RListeMouvement.ValidationListeMouvement;
                     RegistreListeMouvementPointeur.PositionDetailMouvementBegin:=RListeMouvement.PositionDetailMouvementBegin;
                     RegistreListeMouvementPointeur.PositionDetailMouvementEnd:=RListeMouvement.PositionDetailMouvementEnd;
                     RegistreListeMouvementPointeur.PositionListeMouvement:=inttostr(iPLM);
                     RegistreListeMouvementPointeur.CodeUtilisateur:=RListeMouvement.CodeUtilisateur;
                     RegistreListeMouvementPointeur.MatriculeResponsablePrelevement:=RListeMouvement.MatriculeResponsablePrelevement;
                     RegistreListeMouvementPointeur.TypeVehiculePrelevement:=RListeMouvement.TypeVehiculePrelevement;
                     RegistreListeMouvementPointeur.TonageVehiculePrelevement:=RListeMouvement.TonageVehiculePrelevement;
                     RegistreListeMouvementPointeur.CodeResponsablePrelevement:=RListeMouvement.CodeResponsablePrelevement;
                     RegistreListeMouvementPointeur.NomResponsablePrelevement:=RListeMouvement.NomResponsablePrelevement;
                     RegistreListeMouvementPointeur.PrenomResponsablePrelevement:=RListeMouvement.PrenomResponsablePrelevement;
                     RegistreListeMouvementPointeur.IndiceInialPontBascule:=RListeMouvement.IndiceInialPontBascule;
                     RegistreListeMouvementPointeur.IndiceFinalPontBascule:=RListeMouvement.IndiceFinalPontBascule;
                     RegistreListeMouvementPointeur.DateIndiceInial:=RListeMouvement.DateIndiceInial;
                     RegistreListeMouvementPointeur.HeureIndiceInial:=RListeMouvement.HeureIndiceInial;
                     RegistreListeMouvementPointeur.DateIndiceFinal:=RListeMouvement.DateIndiceFinal;
                     RegistreListeMouvementPointeur.HeureIndiceFinal:=RListeMouvement.HeureIndiceFinal;
                     RegistreListeMouvementPointeur.NumeroPont:=RListeMouvement.NumeroPont;

                     ListeRegistreListeMouvementPointeur.Add(RegistreListeMouvementPointeur);

                     OKCreatePointeur:=true;
               end;
               Nbr:=Nbr+1;
               end;
          iPLM:=iPLM+1;
          end;
          finally
          CloseFile(FListeMouvement);
          end;
     end
     else begin Showmessage('Attention ! '+ChListeMouvement+' n''existe pas !'); Exit; end;


     if(TypeTraitement='Tiers')then
     begin
           ListeRegistreListeMouvementPointeur.Sort(TriePointeurListeMouvementCodeTiers);

           iPLM:=1;
           while(iPLM<=ListeRegistreListeMouvementPointeur.Count-1)do
           begin
                OKMouvementPointeur:=true;

                if(OKMouvementPointeur=true)then
                begin
                     if(CodeTiers<>'Tous')and(CodeTiers<>'')then
                     begin
                          if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iPLM]).CodeTiers<>'Tous')then
                          begin
                               OKMouvementPointeur:=FunctionFichierInclu(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iPLM]).CodeTiers,ListeCodeTiers);
                          end
                          else
                          begin
                               if(TypeTraitement<>'Tiers')
                               then OKMouvementPointeur:=true
                               else OKMouvementPointeur:=false;
                          end;
                     end;
                end;

                if(OKMouvementPointeur=false)then
                begin
                     ListeRegistreListeMouvementPointeur.Delete(iPLM);
                     iPLM:=iPLM-1;
                end;
           iPLM:=iPLM+1;
           end;
     end;

     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
end;

Procedure ChargerPointeurPrelevementUniteFonds(DateDebut,DateFin,Domiciliation,TypeProces,AvisConcerneTiers,CodeTiers,TypeTraitement:string; AfficherValeurNulle:boolean; var OKCreatePointeur:boolean);
var  iPt,IBegin,IEnd:integer; TypeProcesPrelevement,FichierConsernePrelevement,AdressePrelevement,TypeProcesReseaux,NomDossierPartageReseauxOut,DesignationGroupe,ListeFichierTiersGroupe,ListeCodeTiers:string;
     OKPrelevementUF:boolean; RapportTraitement:TMemo;
     DebitAnterieur,CreditAnterieur:real;
begin
     if(TypeTraitement='Domiciliation')then RapportTraitement:=FSTraitementDonnees.RapportTraitementDomiciliation;
     if(TypeTraitement='Tiers')then RapportTraitement:=FSTraitementDonnees.RapportTraitementTiers;

     ListeRegistrePrelevementUniteFondsPointeur:=TList.Create;
     OKCreatePointeur:=false;

     if(CodeTiers<>'Tous')and(CodeTiers<>'')then
     begin
           RegistrePrelevementUniteFondsPointeur:=TRegistrePrelevementUniteFondsPointeur.Create;
           RegistrePrelevementUniteFondsPointeur.NumPrelevementUniteFonds:=0;
           RegistrePrelevementUniteFondsPointeur.NumPrelevement:=0;
           RegistrePrelevementUniteFondsPointeur.CodeUtilisateur:='';
           RegistrePrelevementUniteFondsPointeur.NumEquipe:=0;
           RegistrePrelevementUniteFondsPointeur.Matricule:='';
           RegistrePrelevementUniteFondsPointeur.NumUniteFonds:=0;
           RegistrePrelevementUniteFondsPointeur.DatePrelevement:=datetostr(stringtodate(DateDebut,'ChargerPointeurPrelevementUniteFonds')-1);
           RegistrePrelevementUniteFondsPointeur.HeurePrelevement:='';
           RegistrePrelevementUniteFondsPointeur.ValeurPrecise:=false;
           RegistrePrelevementUniteFondsPointeur.TypeProces:=TypeProces;
           RegistrePrelevementUniteFondsPointeur.FichierConcerne:=AvisConcerneTiers;
           RegistrePrelevementUniteFondsPointeur.CodeTiers:=CodeTiers;
           RegistrePrelevementUniteFondsPointeur.ModePaiement:='';
           RegistrePrelevementUniteFondsPointeur.NumPiece:='';
           RegistrePrelevementUniteFondsPointeur.Domiciliation:=Domiciliation;
           RegistrePrelevementUniteFondsPointeur.DebitCredit:='';
           RegistrePrelevementUniteFondsPointeur.ValeurPrelevement:=0;
           RegistrePrelevementUniteFondsPointeur.PositionPrelevementUniteFonds:='';
           ListeRegistrePrelevementUniteFondsPointeur.Add(RegistrePrelevementUniteFondsPointeur);

           OKCreatePointeur:=true;
     end;

     TypeProcesPrelevement:='Business';   FichierConsernePrelevement:='FArchivePrelevementUniteFonds';
     if not(FunctionAdresseProces(TypeProcesPrelevement,FichierConsernePrelevement,'',AdressePrelevement,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          //AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
     end;

     if(FSTraitementDonnees.RBAppliquerIndexationArchivePrelevement.Checked=true)then
     begin
          IndiquerPositionPeriodiqueArchivePrelevement(FichierConsernePrelevement,'',DateDebut,DateFin,IBegin,IEnd);
     end
     else
     begin
          IBegin:=0;
          IEnd:=999999999;
     end;

     if(TypeTraitement='Tiers')then IBegin:=0;

     ListeCodeTiers:=ListeCodeGroupeTiers(CodeTiers,FSTraitementDonnees.RBActiverGroupeTiers.Checked,DesignationGroupe,ListeFichierTiersGroupe);

     DebitAnterieur:=0;
     CreditAnterieur:=0;

     ChPrelevementUniteFonds:=AdressePrelevement;
     assignfile(FPrelevementUniteFonds,ChPrelevementUniteFonds);
     if FileExists(ChPrelevementUniteFonds)then
     begin
          try
          Reset(FPrelevementUniteFonds);
          iPt:=IBegin;
          Seek(FPrelevementUniteFonds,iPt);
          while not eof(FPrelevementUniteFonds)and(iPt<=IEnd)do
          begin
               read(FPrelevementUniteFonds,RPrelevementUniteFonds);   Application.ProcessMessages;  if(FSTraitementDonnees.RBSuspendreTraitement.Checked)then begin RapportTraitement.Lines.Add('Traitement Suspendu.'); Exit; end;

               if(datecorrecte(RPrelevementUniteFonds.DatePrelevement)=true)
               and(datecorrecte(DateFin)=true)then
               begin
                    if(strtodate(RPrelevementUniteFonds.DatePrelevement)<=strtodate(DateFin))
                    then OKPrelevementUF:=true
                    else OKPrelevementUF:=false;
               end
               else OKPrelevementUF:=false;

               if(OKPrelevementUF=true)then
               begin
                    if(AfficherValeurNulle=false)then
                    begin
                         if(Valeprecis(RPrelevementUniteFonds.ValeurPrelevement,6)=0)then OKPrelevementUF:=false;
                    end;
               end;

               if(OKPrelevementUF=true)then
               begin
                     RegistrePrelevementUniteFondsPointeur:=TRegistrePrelevementUniteFondsPointeur.Create;
                     RegistrePrelevementUniteFondsPointeur.NumPrelevementUniteFonds:=RPrelevementUniteFonds.NumPrelevementUniteFonds;
                     RegistrePrelevementUniteFondsPointeur.NumPrelevement:=RPrelevementUniteFonds.NumPrelevement;
                     RegistrePrelevementUniteFondsPointeur.CodeUtilisateur:=RPrelevementUniteFonds.CodeUtilisateur;
                     RegistrePrelevementUniteFondsPointeur.NumEquipe:=RPrelevementUniteFonds.NumEquipe;
                     RegistrePrelevementUniteFondsPointeur.Matricule:=RPrelevementUniteFonds.Matricule;
                     RegistrePrelevementUniteFondsPointeur.NumUniteFonds:=RPrelevementUniteFonds.NumUniteFonds;
                     RegistrePrelevementUniteFondsPointeur.DatePrelevement:=RPrelevementUniteFonds.DatePrelevement;
                     RegistrePrelevementUniteFondsPointeur.HeurePrelevement:=RPrelevementUniteFonds.HeurePrelevement;
                     RegistrePrelevementUniteFondsPointeur.ValeurPrecise:=RPrelevementUniteFonds.ValeurPrecise;
                     RegistrePrelevementUniteFondsPointeur.TypeProces:=RPrelevementUniteFonds.TypeProces;
                     RegistrePrelevementUniteFondsPointeur.FichierConcerne:=RPrelevementUniteFonds.FichierConcerne;
                     RegistrePrelevementUniteFondsPointeur.CodeTiers:=RPrelevementUniteFonds.CodeTiers;
                     RegistrePrelevementUniteFondsPointeur.ModePaiement:=RPrelevementUniteFonds.ModePaiement;
                     RegistrePrelevementUniteFondsPointeur.NumPiece:=RPrelevementUniteFonds.NumPiece;
                     RegistrePrelevementUniteFondsPointeur.Domiciliation:=RPrelevementUniteFonds.Domiciliation;
                     RegistrePrelevementUniteFondsPointeur.DebitCredit:='Crédit';
                     RegistrePrelevementUniteFondsPointeur.ValeurPrelevement:=RPrelevementUniteFonds.ValeurPrelevement;
                     RegistrePrelevementUniteFondsPointeur.PositionPrelevementUniteFonds:=inttostr(iPt);
                     ListeRegistrePrelevementUniteFondsPointeur.Add(RegistrePrelevementUniteFondsPointeur);

                     OKCreatePointeur:=true;
               end;
          iPt:=iPt+1;
          end;
          finally
          CloseFile(FPrelevementUniteFonds);
          end;
     end;

     if(TypeTraitement='Tiers')then
     begin
           ListeRegistrePrelevementUniteFondsPointeur.Sort(TriePointeurPrelevementUniteFondsPointeurCodeTiers);

           iPt:=1;
           while(iPt<=ListeRegistrePrelevementUniteFondsPointeur.Count-1)do
           begin
                OKPrelevementUF:=true;

                if(OKPrelevementUF=true)then
                begin
                     if(CodeTiers<>'Tous')and(CodeTiers<>'')then
                     begin
                          if(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iPt]).CodeTiers<>'Tous')then
                          begin
                               OKPrelevementUF:=FunctionFichierInclu(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iPt]).CodeTiers,ListeCodeTiers);
                          end
                          else
                          begin
                               if(TypeTraitement<>'Tiers')
                               then OKPrelevementUF:=true
                               else OKPrelevementUF:=false;
                          end;
                     end;
                end;

                if(OKPrelevementUF=false)then
                begin
                     ListeRegistrePrelevementUniteFondsPointeur.Delete(iPt);
                     iPt:=iPt-1;
                end;
           iPt:=iPt+1;
           end;
     end;
end;

Procedure ListeAvisPointeur(Tableau:TStringGrid; DesignationTypeAvis,ModePaiement,Domiciliation,DateDebut,DateFin,NumProjetFinance,NumFiche,NumRubrique,NumPlanificateur,TypeProces,AvisConcerneTiers,CodeTiers:string; IndiceRubriqueTrieCol:integer; AfficheAvisAnnuler,AfficherAvisExecutesNonExecutes,AfficherAvisExecutes,AfficherAvisNonExecutes,AfficherPartieCommune,PartieCommuneDetaille,RBJustifierAvisNonJustifieAvis,RBJustifierAvis,RBNonJustifieAvis,AfficherValeurNulle:boolean);
var  i,iP,R,P,PCs,PTCs,IBegin,IEnd,iPAP:integer; PourcentagePartCommune,Solde:real;  OKAvis,OKTiers,InclureArchivePrelevementUniteFond,InclureListeMouvement,InclureSituationMarche,OKPieceManquante:boolean; NotRow,NotCol,Adresse,DebitCreditTypeMouvement,ListeOrdreMouvemen:string;  RAvisTrouver:RAviss;
     Document,DetailOperation,Destination,TypeAvis,DesignationGroupe,ListeFichierTiersGroupe,TypeProcesRecherche,FichierconcerneRecherche,EtatAvisMaintenu,TypeProcesAvis,FichierConserneAvis,AdresseAvis,TypeProcesPrelevement,FichierConsernePrelevement,AdressePrelevement,PositionPrelevement,TiersDtat:string;
     PositionTypeAvis,NumTypeAvis,SigneDebitCredit:integer; CompteImputation,DebitCredit,DebitCreditAvis,JourneauxAuxiliaireUtilise,TypeProcesControleReseaux,NSMarcheSelect,TypeTraitement:string;
     RapportTraitement:TMemo;  OKCreatePointeurAvis,OKCreatePointeurLMouvement,OKCreatePointeurPrelevementUF:boolean;
     var A, B: cardinal;
     LeHandle:HWND;
begin
     A:=GetTickCount;
     InclureListeMouvement:=false;
     InclureSituationMarche:=false;
     InclureArchivePrelevementUniteFond:=false;

     if(Tableau=FSTraitementDonnees.TableauAvis)then TypeTraitement:='Domiciliation';
     if(Tableau=FSTraitementDonnees.TableauFinanceTiers)then TypeTraitement:='Tiers' ;

     if(TypeTraitement='Domiciliation')then RapportTraitement:=FSTraitementDonnees.RapportTraitementDomiciliation;
     if(TypeTraitement='Tiers')then RapportTraitement:=FSTraitementDonnees.RapportTraitementTiers;

     RapportTraitement.Lines.Text:='';
     RapportTraitement.Lines.Add('Début de traitement:');

     NSMarcheSelect:='';

     if(FSTraitementDonnees.RBListeMouvement.Checked=true)then InclureListeMouvement:=true;
     if(FSTraitementDonnees.RBInclureSituationMarche.Checked=true)then InclureSituationMarche:=true;
     if(FSTraitementDonnees.RBPrelevement.Checked=true)then InclureArchivePrelevementUniteFond:=true;
     if(FSTraitementDonnees.RBTousMouvementPrelevementSituationMarche.Checked=true)then
     begin
          InclureListeMouvement:=true;
          InclureSituationMarche:=true;
          InclureArchivePrelevementUniteFond:=true;
     end;

     if(CodeTiers='')then
     begin
          InclureListeMouvement:=false;
          InclureSituationMarche:=false;
     end;

     FSTraitementDonnees.TableauNumPiece.ColCount:=3;
     FSTraitementDonnees.TableauNumPiece.Cols[0].Text:='N';
     FSTraitementDonnees.TableauNumPiece.Cols[1].Text:='Date';
     FSTraitementDonnees.TableauNumPiece.Cols[2].Text:='Num Pièce';

     FSTraitementDonnees.TableauNumPiece.RowCount:=2;
     FSTraitementDonnees.TableauNumPiece.Rows[1].Text:='';
     PCs:=0;

     FSTraitementDonnees.TableauToutesNumPiece.ColCount:=6;
     FSTraitementDonnees.TableauToutesNumPiece.Cols[0].Text:='N';
     FSTraitementDonnees.TableauToutesNumPiece.Cols[1].Text:='Date';
     FSTraitementDonnees.TableauToutesNumPiece.Cols[2].Text:='Num Pièce';
     FSTraitementDonnees.TableauToutesNumPiece.Cols[3].Text:='C.Tiers';
     FSTraitementDonnees.TableauToutesNumPiece.Cols[4].Text:='Tiers';
     FSTraitementDonnees.TableauToutesNumPiece.Cols[5].Text:='Source';

     FSTraitementDonnees.TableauToutesNumPiece.RowCount:=2;
     FSTraitementDonnees.TableauToutesNumPiece.Rows[1].Text:='';
     PTCs:=0;

     Tableau.ColCount:=25;
     Tableau.Cols[0].Text:='Or.';
     Tableau.Cols[1].Text:='N°Avis';
     Tableau.Cols[2].Text:='Date Avis';
     Tableau.Cols[3].Text:='Date Exécut°';
     Tableau.Cols[4].Text:='Mode Paiement';
     Tableau.Cols[5].Text:='Domiciliation';
     if(CodeTiers<>'Tous')then Tableau.Cols[6].Text:='Pièce'else Tableau.Cols[6].Text:='Solde au: '+datetostr(strtodate(DateDebut)-1);
     Tableau.Cols[7].Text:='M.Débit';
     Tableau.Cols[8].Text:='M.Crédit';
     Tableau.Cols[9].Text:='Code Tiers';
     Tableau.Cols[10].Text:='Tiers';
     Tableau.Cols[11].Text:='Nature de l''opération';
     Tableau.Cols[12].Text:='Imputation';
     Tableau.Cols[13].Text:='Débit/Crédit';
     Tableau.Cols[14].Text:='Réf.';
     Tableau.Cols[15].Text:='Validitée';
     Tableau.Cols[16].Text:='Origine';
     Tableau.Cols[17].Text:='Tiers';
     Tableau.Cols[18].Text:='Structure';
     Tableau.Cols[19].Text:='Comptabilité';
     Tableau.Cols[20].Text:='Solde';
     Tableau.Cols[21].Text:='Commentaire';
     Tableau.Cols[22].Text:='Matricule';
     Tableau.Cols[23].Text:='P°';
     Tableau.Cols[24].Text:='BaseAvis';

     i:=1;

     Tableau.RowCount:=2;
     Tableau.Rows[i].Text:='';

     Tableau.Rows[1].Text:=inttostr(1);
     Tableau.Cells[1,1]:='Solde au:';
     Tableau.Cells[2,1]:=datetostr(strtodate(DateDebut)-1);
     Tableau.Cells[3,1]:='';
     Tableau.Cells[4,1]:='';
     Tableau.Cells[5,1]:='';
     Tableau.Cells[6,1]:='';
     Tableau.Cells[7,1]:='';
     Tableau.Cells[8,1]:='';
     Tableau.Cells[9,1]:='';
     Tableau.Cells[10,1]:='';
     Tableau.Cells[11,1]:='';
     Tableau.Cells[12,1]:='';
     Tableau.Cells[13,1]:='';
     Tableau.Cells[14,1]:='';
     Tableau.Cells[15,1]:='Maintenu';
     Tableau.Cells[16,1]:='';
     Tableau.Cells[17,1]:='';
     Tableau.Cells[18,1]:='';
     Tableau.Cells[19,1]:='';
     Tableau.Cells[20,1]:='';
     Tableau.Cells[21,1]:='';
     Tableau.Cells[22,1]:='';
     Tableau.Cells[23,1]:='';
     Tableau.Cells[24,1]:='';

     //TStockArrayCopie:=RemplireTStockArticle('Article','',RapportTraitement);

     if(RBNonJustifieAvis=false)then
     begin
           if not(FunctionAdresseProces('Business','FBaseAvis','',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
           begin
                AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+'FBaseAvis '+'recherché !');
           end;

           ChBaseAvisListeAvis:=Adresse;
           assignfile(FBaseAvisListeAvis,ChBaseAvisListeAvis);
           try
           if FileExists(ChBaseAvisListeAvis)then
           Reset(FBaseAvisListeAvis)
           else Rewrite(FBaseAvisListeAvis);
           Seek(FBaseAvisListeAvis,0);
           while not eof(FBaseAvisListeAvis)do
           begin
                read(FBaseAvisListeAvis,RBaseAvisListeAvis);  Application.ProcessMessages;  if(FSTraitementDonnees.RBSuspendreTraitement.Checked)then begin RapportTraitement.Lines.Add('Traitement Suspendu.'); Exit; end;

                FichierConserneAvis:=RBaseAvisListeAvis.DesignationBaseAvis;

                RapportTraitement.Lines.Add('Traitement '+FichierConserneAvis);

                if(FunctionFichierInclu(FichierConserneAvis,FSTraitementDonnees.EditBaseAvisFichierConcerne.Text))then
                begin
                     TypeProcesAvis:='Business';

                     if not(FunctionAdresseProces(TypeProcesAvis,FichierConserneAvis,'',AdresseAvis,TypeProcesReseaux,NomDossierPartageReseauxOut))then
                     begin
                          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché {'+FichierConserneAvis+'} !');
                     end;

                     TypeProcesControleReseaux:=TypeProcesReseaux;

                     ChargerPointeurAvis(TypeProcesAvis,FichierConserneAvis,TypeProcesControleReseaux,DateDebut,DateFin,Domiciliation,TypeProces,AvisConcerneTiers,CodeTiers,TypeTraitement,AfficherAvisExecutesNonExecutes,AfficherAvisExecutes,AfficherAvisNonExecutes,AfficherValeurNulle,OKCreatePointeurAvis);

                     P:=0;
                     for iP:=0 to ListeRegistreAvisPointeur.Count-1 do
                     begin
                          Application.ProcessMessages;  if(FSTraitementDonnees.RBSuspendreTraitement.Checked)then begin RapportTraitement.Lines.Add('Traitement Suspendu.'); Exit; end;
                          PourcentagePartCommune:=1;

                          TiersDtat:=ImporteDataProcesTiers(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).TypeProces,TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).AvisConcerneTiers,TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).CodeTiers,PositionTiersRecherche)+DesignationGroupe;

                          RapportTraitement.Lines.Add(FichierConserneAvis+' N°'+inttostr(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NumAvis)+' Tiers: '+TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).CodeTiers+' '+TiersDtat);

                          EtatAvisMaintenu:='';

                          DebitCreditAvis:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DebitCredit;

                          if(DebitCreditAvis='')then
                          begin
                               IndiqueTypeAvis(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DesignationTypeAvis,PositionTypeAvis,NumTypeAvis,SigneDebitCredit,CompteImputation,DebitCreditAvis,TypeProcesRecherche,FichierconcerneRecherche,JourneauxAuxiliaireUtilise);
                          end;

                          OKAvis:=not RegistreInvisibleReseaux(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).TypeProces,TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).AvisConcerneTiers,TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).CodeTiers,'','',RAutorisationPartageRegistreCopie);

                          if(OKAvis=true)then
                          begin
                               if(TypeProcesControleReseaux='Réseaux')then
                               begin
                                    if(strtodate(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DateAvis)<strtodate('01/01/'+ExerciceAnnee))
                                    then OKAvis:=FSTraitementDonnees.RBInclureValeurSousReseauxPrecedenteExercice.Checked;

                                    if(OKAvis=true)then
                                    begin
                                         if(strtodate(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DateAvis)<strtodate(DateDebut))
                                         then OKAvis:=FSTraitementDonnees.RBInclureValeurSousReseauxPrecedentePeriode.Checked;
                                    end;
                               end;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(AfficheAvisAnnuler=false)then
                               begin
                                    OKAvis:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).ValiditeAvis;
                               end;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(AfficherAvisExecutesNonExecutes=true)then
                               begin
                                    OKAvis:=true
                               end
                               else
                               if(AfficherAvisExecutes=true)then
                               begin
                                    if(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DateExecute<>'')and(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DateExecute<>'  /  /    ')
                                    then OKAvis:=true
                                    else OKAvis:=false;
                               end
                               else
                               if(AfficherAvisNonExecutes=true)then
                               begin
                                    if(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DateExecute='')or(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DateExecute='  /  /    ')
                                    then OKAvis:=true
                                    else OKAvis:=false;
                               end
                               else
                               begin
                                    if(DebitCreditAvis=ChercherDomiciliation(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NumDomiciliationAvis,'',PositionDomiciliationRecherche).EtatSoldeDebitCredit)
                                    and((TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DateExecute='')or(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DateExecute='  /  /    '))
                                    then EtatAvisMaintenu:='En instance';
                               end;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(NumProjetFinance<>'')then
                               begin
                                    if(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NumProjetFinance='')then
                                    begin
                                         if(AfficherPartieCommune=true)then
                                         begin
                                              PourcentagePartCommune:=FunctPourcentagePartieCommune(NumProjetFinance);
                                              if(PourcentagePartCommune>0)then OKAvis:=true else OKAvis:=false;
                                         end
                                         else OKAvis:=false;
                                    end
                                    else
                                    begin
                                         if(Firstlaters(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NumProjetFinance,longueur(NumProjetFinance))=NumProjetFinance)
                                         then OKAvis:=true
                                         else OKAvis:=false;
                                    end;
                               end
                               else OKAvis:=true;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(NumFiche<>'')
                               then
                               begin
                                    RubriqueArborescence('',TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NumRubrique,RRubriqueFicheTechniqueCopie,RFicheTechniqueCopie,RTypeAvisCopie);
                                    if(RFicheTechniqueCopie.NumFicheTechnique=strtointeger(NumFiche))
                                    then OKAvis:=true
                                    else OKAvis:=false;
                               end;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(NumRubrique<>'')
                               then
                               begin
                                    if(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NumRubrique=NumRubrique)
                                    then OKAvis:=true
                                    else OKAvis:=false;
                               end;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(NumPlanificateur<>'')
                               then
                               begin
                                    if(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NumPlanificateur=NumPlanificateur)
                                    then OKAvis:=true
                                    else OKAvis:=false;
                               end;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(DesignationTypeAvis<>'')and(DesignationTypeAvis<>'Tous')
                               then
                               begin
                                    if(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DesignationTypeAvis=DesignationTypeAvis)
                                    then OKAvis:=true
                                    else OKAvis:=false;
                               end
                               else OKAvis:=true;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(ModePaiement<>'')and(ModePaiement<>'Tous')
                               then
                               begin
                                    if(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).ModePaiement=ModePaiement)
                                    then OKAvis:=true
                                    else OKAvis:=false;
                               end
                               else OKAvis:=true;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(Domiciliation<>'')and(Domiciliation<>'Tous')
                               then
                               begin
                                    if(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DomiciliationAvis=Domiciliation)
                                    then OKAvis:=true
                                    else OKAvis:=false;
                               end
                               else OKAvis:=true;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(TypeProces<>'')and(TypeProces<>'Tous')
                               then
                               begin
                                    if(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).TypeProces=TypeProces)
                                    then OKAvis:=true
                                    else OKAvis:=false;
                               end
                               else OKAvis:=true;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(AvisConcerneTiers<>'')and(AvisConcerneTiers<>'Tous')
                               then
                               begin
                                    OKAvis:=FunctionFichierInclu(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).AvisConcerneTiers,AvisConcerneTiers);
                               end
                               else OKAvis:=true;
                          end;

                          if(OKAvis=true)then IndiqueTypeAvis(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DesignationTypeAvis,PositionTypeAvis,NumTypeAvis,SigneDebitCredit,CompteImputation,DebitCredit,TypeProcesRecherche,FichierconcerneRecherche,JourneauxAuxiliaireUtilise);

                          if(OKAvis=true)then
                          begin
                               if(CodeTiers<>'Tous')then
                               begin
                                    if(CodeTiers<>'')then
                                    begin
                                         OKAvis:=TrouverGroupeTiers(CodeTiers,TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).CodeTiers,FSTraitementDonnees.RBActiverGroupeTiers.Checked,DesignationGroupe,ListeFichierTiersGroupe);
                                    end
                                    else OKAvis:=true;
                               end
                               else
                               if(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).ValiditeAvis=true)and(EtatAvisMaintenu<>'En instance')then
                               begin
                                    if(strtodate(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DateAvis)<=strtodate(DateFin))
                                    then
                                    begin
                                         OKTiers:=false;
                                         R:=2;
                                         while(R<=i)and(OKTiers=false)do
                                         begin
                                              if(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).CodeTiers=Tableau.Cells[9,R])then
                                              begin
                                                   OKTiers:=true;
                                                   if(strtodate(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DateAvis)<strtodate(DateDebut))then
                                                   begin
                                                        if(DebitCreditAvis='Débit')then
                                                        begin
                                                             Tableau.Cells[6,R]:=Vergule(floattostr(strtoreal(Tableau.Cells[6,R])+(SigneDebitCredit*TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Montant*PourcentagePartCommune)),'2','C','');
                                                        end;
                                                        if(DebitCreditAvis='Crédit')then
                                                        begin
                                                             Tableau.Cells[6,R]:=Vergule(floattostr(strtoreal(Tableau.Cells[6,R])-(SigneDebitCredit*TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Montant*PourcentagePartCommune)),'2','C','');
                                                        end;
                                                   end
                                                   else
                                                   begin
                                                        if(DebitCreditAvis='Débit')then
                                                        begin
                                                             Tableau.Cells[7,R]:=Vergule(floattostr(strtoreal(Tableau.Cells[7,R])+(SigneDebitCredit*TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Montant*PourcentagePartCommune)),'2','C','');
                                                        end;
                                                        if(DebitCreditAvis='Crédit')then
                                                        begin
                                                             Tableau.Cells[8,R]:=Vergule(floattostr(strtoreal(Tableau.Cells[8,R])+(SigneDebitCredit*TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Montant*PourcentagePartCommune)),'2','C','');
                                                        end;
                                                   end;

                                                   if(Tableau.Cells[23,R]='')
                                                   then Tableau.Cells[23,R]:=inttostr(P)
                                                   else Tableau.Cells[23,R]:=Tableau.Cells[23,R]+';'+inttostr(P);
                                              end;
                                              R:=R+1;
                                         end;
                                         OKAvis:=not OKTiers;
                                    end
                                    else OKAvis:=false;
                               end
                               else OKAvis:=true;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(strtodate(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DateAvis)<strtodate(DateDebut))then
                               begin
                                    if(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).ValiditeAvis=true)and(EtatAvisMaintenu<>'En instance')then
                                    begin
                                         OKAvis:=false;
                                         if(CodeTiers<>'Tous')
                                         then
                                         begin
                                              if(DebitCreditAvis='Débit')then
                                              begin
                                                   Tableau.Cells[7,1]:=Vergule(floattostr(strtoreal(Tableau.Cells[7,1])+(SigneDebitCredit*TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Montant*PourcentagePartCommune)),'2','C','');
                                              end;
                                              if(DebitCreditAvis='Crédit')then
                                              begin
                                                   Tableau.Cells[8,1]:=Vergule(floattostr(strtoreal(Tableau.Cells[8,1])+(SigneDebitCredit*TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Montant*PourcentagePartCommune)),'2','C','');
                                              end;
                                         end
                                         else
                                         begin
                                              i:=i+1;
                                              Tableau.Rows[i].Text:=inttostr(i);
                                              Tableau.Cells[1,i]:=Completezerogauche(inttostr(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NumAvis),'5');
                                              Tableau.Cells[2,i]:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DateAvis;
                                              Tableau.Cells[3,i]:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DateExecute;
                                              Tableau.Cells[4,i]:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).ModePaiement;
                                              Tableau.Cells[5,i]:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DomiciliationPiece;
                                              if(CodeTiers<>'Tous')then Tableau.Cells[6,i]:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NumPiece;

                                              if(DebitCreditAvis='Débit')then
                                              begin
                                                   Tableau.Cells[7,i]:=Vergule(floattostr(SigneDebitCredit*TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Montant*PourcentagePartCommune),'2','C','');
                                              end;
                                              if(DebitCreditAvis='Crédit')then
                                              begin
                                                   Tableau.Cells[8,i]:=Vergule(floattostr(SigneDebitCredit*TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Montant*PourcentagePartCommune),'2','C','');
                                              end;

                                              Tableau.Cells[9,i]:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).CodeTiers;

                                              Tableau.Cells[10,i]:=TiersDtat;

                                              if(FSTraitementDonnees.RBPreciserTypeAvis.Checked=true)
                                              then Tableau.Cells[11,i]:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DesignationTypeAvis
                                              else Tableau.Cells[11,i]:='';
                                              if(FSTraitementDonnees.RBPreciserNatureOperationAvis.Checked=true)then
                                              begin
                                                   if(Tableau.Cells[11,i]<>'')
                                                   then Tableau.Cells[11,i]:=Tableau.Cells[11,i]+': '+TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NatureDepense
                                                   else Tableau.Cells[11,i]:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NatureDepense;
                                              end
                                              else
                                              begin
                                                   if(Tableau.Cells[11,i]='')then Tableau.Cells[11,i]:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DesignationTypeAvis;
                                              end;

                                              Tableau.Cells[12,i]:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).CompteImputation;
                                              Tableau.Cells[13,i]:=DebitCreditAvis;
                                              Tableau.Cells[14,i]:=Completezerogauche(inttostr(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NumAvis),'5');
                                              if(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).ValiditeAvis=true)
                                              then
                                              begin
                                                   if(EtatAvisMaintenu='')
                                                   then Tableau.Cells[15,i]:='Maintenu'
                                                   else Tableau.Cells[15,i]:=EtatAvisMaintenu;
                                              end
                                              else Tableau.Cells[15,i]:='Annulé';
                                              Tableau.Cells[16,i]:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Origine;
                                              Tableau.Cells[17,i]:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).AvisConcerneTiers;
                                              RProjetFinance:=ChercherProjetFinance(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NumProjetFinance,PositionProjetFinancesRecherche);
                                              if(RProjetFinance.DesignationProjetFinance<>'')
                                              then Tableau.Cells[18,i]:=RProjetFinance.DesignationProjetFinance
                                              else Tableau.Cells[18,i]:='Partie Commune à '+floattostr(PourcentagePartCommune*100)+'%';
                                              if ChercherAvis(Lastlaters(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Origine,Longueur(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Origine)-5),FSTraitementDonnees.EditBaseAvisFichierConcerne.Text,TypeProces,AvisConcerneTiers,FSTraitementDonnees.RBModePayementNumAvis.Checked,FSTraitementDonnees.RBModePayementModePayement.Checked,FSTraitementDonnees.RBModePayementDomiciliation.Checked,FSTraitementDonnees.RBModePayementNumPiece.Checked,FSTraitementDonnees.RBModePayementDateAvis.Checked,FSTraitementDonnees.RBModePayementDateExecution.Checked,FSTraitementDonnees.TableauListeAvisTrouver,FSTraitementDonnees.EditListeNumAvisTrouver,FSTraitementDonnees.EditListeModePaiementTrouver,FSTraitementDonnees.EditListeDomiciliationAvisTrouver,FSTraitementDonnees.EditListeDomiciliationPieceTrouver,FSTraitementDonnees.EditListeNumPieceTrouver,FSTraitementDonnees.EditListeDateTrouver,FSTraitementDonnees.EditMemoLiseAvisTrouver)=true then
                                              begin
                                                   Tableau.Cells[19,i]:=DebitCreditAvis+' '+TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NumDomiciliationAvis+'/'+RAvisTrouver.DebitCredit+' '+RAvisTrouver.NumDomiciliationAvis;
                                              end
                                              else
                                              begin
                                                   Tableau.Cells[19,i]:='';
                                              end;
                                              Tableau.Cells[20,i]:='';
                                              Tableau.Cells[21,i]:='';
                                              Tableau.Cells[22,i]:='';
                                              Tableau.Cells[23,i]:=inttostr(P);
                                              Tableau.Cells[24,i]:=FichierConserneAvis;
                                         end;
                                    end
                                    else OKAvis:=false;
                               end
                               else
                               begin
                                    if(strtodate(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DateAvis)>=strtodate(DateDebut))
                                    and(strtodate(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DateAvis)<=strtodate(DateFin))
                                    then
                                    begin
                                         OKAvis:=true;
                                    end
                                    else OKAvis:=false;
                               end;
                          end;

                          if(OKAvis=true)then
                          begin
                               i:=i+1;
                               Tableau.Rows[i].Text:=inttostr(i);
                               Tableau.Cells[1,i]:=Completezerogauche(inttostr(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NumAvis),'5');
                               Tableau.Cells[2,i]:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DateAvis;
                               Tableau.Cells[3,i]:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DateExecute;
                               Tableau.Cells[4,i]:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).ModePaiement;
                               Tableau.Cells[5,i]:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DomiciliationPiece;
                               if(CodeTiers<>'Tous')then Tableau.Cells[6,i]:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NumPiece;

                               if(DebitCreditAvis='Débit')then
                               begin
                                    Tableau.Cells[7,i]:=Vergule(floattostr(SigneDebitCredit*TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Montant*PourcentagePartCommune),'2','C','');
                               end;
                               if(DebitCreditAvis='Crédit')then
                               begin
                                    Tableau.Cells[8,i]:=Vergule(floattostr(SigneDebitCredit*TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Montant*PourcentagePartCommune),'2','C','');
                               end;

                               Tableau.Cells[9,i]:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).CodeTiers;

                               Tableau.Cells[10,i]:=TiersDtat;

                               if(FSTraitementDonnees.RBPreciserTypeAvis.Checked=true)
                               then Tableau.Cells[11,i]:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DesignationTypeAvis
                               else Tableau.Cells[11,i]:='';
                               if(FSTraitementDonnees.RBPreciserNatureOperationAvis.Checked=true)then
                               begin
                                    if(Tableau.Cells[11,i]<>'')
                                    then Tableau.Cells[11,i]:=Tableau.Cells[11,i]+': '+TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NatureDepense
                                    else Tableau.Cells[11,i]:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NatureDepense;
                               end
                               else
                               begin
                                    if(Tableau.Cells[11,i]='')then Tableau.Cells[11,i]:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DesignationTypeAvis;
                               end;

                               Tableau.Cells[12,i]:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).CompteImputation;
                               Tableau.Cells[13,i]:=DebitCreditAvis;
                               Tableau.Cells[14,i]:=Completezerogauche(inttostr(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NumAvis),'5');
                               if(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).ValiditeAvis=true)
                               then
                               begin
                                    if(EtatAvisMaintenu='')
                                    then Tableau.Cells[15,i]:='Maintenu'
                                    else Tableau.Cells[15,i]:=EtatAvisMaintenu;
                               end
                               else Tableau.Cells[15,i]:='Annulé';
                               Tableau.Cells[16,i]:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Origine;
                               Tableau.Cells[17,i]:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).AvisConcerneTiers;
                               RProjetFinance:=ChercherProjetFinance(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NumProjetFinance,PositionProjetFinancesRecherche);
                               if(RProjetFinance.DesignationProjetFinance<>'')
                               then Tableau.Cells[18,i]:=RProjetFinance.DesignationProjetFinance
                               else Tableau.Cells[18,i]:='Partie Commune à '+floattostr(PourcentagePartCommune*100)+'%';

                               if ChercherAvis(Lastlaters(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Origine,Longueur(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Origine)-5),FSTraitementDonnees.EditBaseAvisFichierConcerne.Text,TypeProces,AvisConcerneTiers,FSTraitementDonnees.RBModePayementNumAvis.Checked,FSTraitementDonnees.RBModePayementModePayement.Checked,FSTraitementDonnees.RBModePayementDomiciliation.Checked,FSTraitementDonnees.RBModePayementNumPiece.Checked,FSTraitementDonnees.RBModePayementDateAvis.Checked,FSTraitementDonnees.RBModePayementDateExecution.Checked,FSTraitementDonnees.TableauListeAvisTrouver,FSTraitementDonnees.EditListeNumAvisTrouver,FSTraitementDonnees.EditListeModePaiementTrouver,FSTraitementDonnees.EditListeDomiciliationAvisTrouver,FSTraitementDonnees.EditListeDomiciliationPieceTrouver,FSTraitementDonnees.EditListeNumPieceTrouver,FSTraitementDonnees.EditListeDateTrouver,FSTraitementDonnees.EditMemoLiseAvisTrouver)=true then
                               begin
                                    Tableau.Cells[19,i]:=DebitCreditAvis+' '+TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NumDomiciliationAvis+'/'+RAvisTrouver.DebitCredit+' '+RAvisTrouver.NumDomiciliationAvis;
                               end
                               else
                               begin
                                    Tableau.Cells[19,i]:='';
                               end;
                               Tableau.Cells[20,i]:='';
                               Tableau.Cells[21,i]:='';
                               Tableau.Cells[22,i]:='';
                               Tableau.Cells[23,i]:=inttostr(P);
                               Tableau.Cells[24,i]:=FichierConserneAvis;
                          end;
                     P:=P+1;
                     end;
                end;
           LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
           end;
           finally
           Closefile(FBaseAvisListeAvis);
           end;
     end;

     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);

if(NumProjetFinance<>'')and(InclureArchivePrelevementUniteFond=true)then
begin
     InclureArchivePrelevementUniteFond:=ExisteNumProjetInAffectationCompteur(NumProjetFinance);
end;

if(InclureArchivePrelevementUniteFond=true)then
begin
     ChargerPointeurPrelevementUniteFonds(DateDebut,DateFin,Domiciliation,TypeProces,AvisConcerneTiers,CodeTiers,TypeTraitement,AfficherValeurNulle,OKCreatePointeurPrelevementUF);

     RapportTraitement.Lines.Add('Traitement Prélèvement:');

     for iP:=0 to ListeRegistrePrelevementUniteFondsPointeur.Count-1 do
     begin
          Application.ProcessMessages;  if(FSTraitementDonnees.RBSuspendreTraitement.Checked)then begin RapportTraitement.Lines.Add('Traitement Suspendu.'); Exit; end;
          iPAP:=iPAP+1;
          OKAvis:=not TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).ValeurPrecise;

          if(OKAvis=true)then
          begin
               TiersDtat:=ImporteDataProcesTiers(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).TypeProces,TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).FichierConcerne,TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).CodeTiers,PositionTiersRecherche)+DesignationGroupe;
          end;

          RapportTraitement.Lines.Add('Prélèvement N°'+inttostr(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).NumPrelevement)+'/'+TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).Matricule+' Tiers: '+TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).CodeTiers+' '+TiersDtat);

          if(FSTraitementDonnees.RBActiverPiecesManquantes.Checked=true)then
          begin
               if(OKAvis=true)then
               begin
                    if(FSTraitementDonnees.RBSpecifiePeriodeSelect.Checked=true)then
                    begin
                         if(strtodate(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).DatePrelevement)>=strtodate(DateDebut))
                         and(strtodate(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).DatePrelevement)<=strtodate(DateFin))
                         then OKPieceManquante:=true
                         else OKPieceManquante:=false;
                    end
                    else OKPieceManquante:=true;

                    if(OKPieceManquante=true)then
                    begin
                         PTCs:=PTCs+1;
                         FSTraitementDonnees.TableauToutesNumPiece.Rows[PTCs].Text:=inttostr(PTCs);
                         FSTraitementDonnees.TableauToutesNumPiece.Cells[1,PTCs]:=TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).DatePrelevement;
                         FSTraitementDonnees.TableauToutesNumPiece.Cells[2,PTCs]:=TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).NumPiece;
                         FSTraitementDonnees.TableauToutesNumPiece.Cells[3,PTCs]:=TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).CodeTiers;;
                         FSTraitementDonnees.TableauToutesNumPiece.Cells[4,PTCs]:=TiersDtat;
                         FSTraitementDonnees.TableauToutesNumPiece.Cells[5,PTCs]:='Prélèvement N°: '+inttostr(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).NumPrelevement)+' Mat: '+TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).Matricule;
                    end;
               end;
          end;

          if(OKAvis=true)then
          begin
               if(NumProjetFinance<>'')
               then
               begin
                    if(Firstlaters(NumProjetFinancePrelevement(inttostr(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).NumPrelevement),TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).Matricule),longueur(NumProjetFinance))=NumProjetFinance)
                    then OKAvis:=true
                    else OKAvis:=false;
               end
               else OKAvis:=true;
          end;

          if(OKAvis=true)then
          begin
               if(ModePaiement<>'')
               and(ModePaiement<>'Tous')
               then
               begin
                    if(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).ModePaiement=ModePaiement)
                    then OKAvis:=true
                    else OKAvis:=false;
               end
               else OKAvis:=true;
          end;

          if(OKAvis=true)then
          begin
               if(Domiciliation<>'')
               and(Domiciliation<>'Tous')
               then
               begin
                    if(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).Domiciliation=Domiciliation)
                    then OKAvis:=true
                    else OKAvis:=false;
               end
               else OKAvis:=true;
          end;

          if(OKAvis=true)then
          begin
               if(TypeProces<>'')
               and(TypeProces<>'Tous')
               then
               begin
                    if(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).TypeProces=TypeProces)
                    then OKAvis:=true
                    else OKAvis:=false;
               end
               else OKAvis:=true;
          end;

          if(OKAvis=true)then
          begin
               if(AvisConcerneTiers<>'')
               and(AvisConcerneTiers<>'Tous')
               then
               begin
                    OKAvis:=FunctionFichierInclu(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).FichierConcerne,AvisConcerneTiers);
               end
               else OKAvis:=true;
          end;

          if(OKAvis=true)then
          begin
               if(CodeTiers<>'Tous')then
               begin
                    if(CodeTiers<>'')
                    then
                    begin
                         if(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).CodeTiers<>'Tous')
                         then OKAvis:=TrouverGroupeTiers(CodeTiers,TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).CodeTiers,FSTraitementDonnees.RBActiverGroupeTiers.Checked,DesignationGroupe,ListeFichierTiersGroupe)
                         else OKAvis:=true;
                    end
                    else OKAvis:=false;
               end
               else
               begin
                    if(strtodate(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).DatePrelevement)<=strtodate(DateFin))then
                    begin
                         OKTiers:=false;
                         R:=2;
                         while(R<=i)and(OKTiers=false)do
                         begin
                              if(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).CodeTiers=Tableau.Cells[9,R])then
                              begin
                                   OKTiers:=true;

                                   RUniteFonds:=ChercherUniteFonds(inttostr(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).NumUniteFonds));
                                   Tableau.Cells[8,R]:=Vergule(floattostr(strtoreal(Tableau.Cells[8,R])+(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).ValeurPrelevement*RUniteFonds.ValeurMonetaireUnitaire)),'2','C','');

                              end;
                              R:=R+1;
                         end;
                         OKAvis:=not OKTiers;
                    end
                    else OKTiers:=false;
               end;
          end;

          if(FSTraitementDonnees.RBActiverPiecesManquantes.Checked=true)then
          begin
               if(OKAvis=true)and(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).NumPiece<>'')then
               begin
                    if(FSTraitementDonnees.RBSpecifiePeriodeSelect.Checked=true)then
                    begin
                         if(strtodate(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).DatePrelevement)>=strtodate(DateDebut))
                         and(strtodate(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).DatePrelevement)<=strtodate(DateFin))
                         then OKPieceManquante:=true
                         else OKPieceManquante:=false;
                    end
                    else OKPieceManquante:=true;

                    if(OKPieceManquante=true)then
                    begin
                         PCs:=PCs+1;
                         FSTraitementDonnees.TableauNumPiece.Rows[PCs].Text:=inttostr(PCs);
                         FSTraitementDonnees.TableauNumPiece.Cells[1,PCs]:=TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).DatePrelevement;
                         FSTraitementDonnees.TableauNumPiece.Cells[2,PCs]:=TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).NumPiece;
                    end;
               end;
          end;

          if(OKAvis=true)then
          begin
               if(strtodate(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).DatePrelevement)<strtodate(DateDebut))then
               begin
                    if(CodeTiers<>'')
                    and(CodeTiers<>'Tous')
                    then
                    begin
                         OKAvis:=false;
                         //RUniteFonds:=ChercherUniteFonds(inttostr(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).NumUniteFonds));
                         //Tableau.Cells[8,1]:=Vergule(floattostr(strtoreal(Tableau.Cells[8,1])+(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).ValeurPrelevement*RUniteFonds.ValeurMonetaireUnitaire)),'2','C','');

                         Tableau.Cells[8,1]:=Vergule(floattostr(strtoreal(Tableau.Cells[8,1])+(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).ValeurPrelevement)),'2','C','');
                    end
                    else OKAvis:=false;
               end
               else
               if(strtodate(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).DatePrelevement)>=strtodate(DateDebut))
               and(strtodate(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).DatePrelevement)<=strtodate(DateFin))
               then
               begin
                    OKAvis:=true;
               end
               else OKAvis:=false;
          end;

          if(OKAvis=true)then
          begin
               i:=i+1;
               Tableau.Rows[i].Text:=inttostr(i);
               Tableau.Cells[1,i]:=Completezerogauche(inttostr(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).NumPrelevement),'5');
               Tableau.Cells[2,i]:=TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).DatePrelevement;
               Tableau.Cells[3,i]:='';
               Tableau.Cells[4,i]:=TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).ModePaiement;
               Tableau.Cells[5,i]:=TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).Domiciliation;
               if(CodeTiers<>'Tous')then Tableau.Cells[6,i]:=TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).NumPiece;

               //RUniteFonds:=ChercherUniteFonds(inttostr(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).NumUniteFonds));
               //Tableau.Cells[8,i]:=Vergule(floattostr(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).ValeurPrelevement*RUniteFonds.ValeurMonetaireUnitaire),'2','C','');

               Tableau.Cells[8,i]:=Vergule(floattostr(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).ValeurPrelevement),'2','C','');

               Tableau.Cells[9,i]:=TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).CodeTiers;

               Tableau.Cells[10,i]:=TiersDtat;

               if(FSTraitementDonnees.RBPreciserNatureOperationMouvement.Checked=true)
               then Document:='Prélèvement N°: '+inttostr(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).NumPrelevement)+' Mat: '+TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).Matricule
               else Document:='';

               if(FSTraitementDonnees.RBPreciserDetailOperationMouvement.Checked=true)
               then DetailOperation:=''//NatureOperationPrelevementPointeur(inttostr(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).NumPrelevement),TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).Matricule,inttostr(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).NumPrelevementUniteFonds),FSTraitementDonnees.RBPreciserDetailOperationQuantiteMouvement.Checked)
               else DetailOperation:='';

               if(FSTraitementDonnees.RBPreciserDestinationMouvement.Checked=true)then
               begin
                    Destination:='';
               end
               else Destination:='';

               if(Document<>'')then Tableau.Cells[11,i]:=Document+'.  ';
               if(DetailOperation<>'')then Tableau.Cells[11,i]:=Tableau.Cells[11,i]+DetailOperation+'.  ';
               if(Destination<>'')then Tableau.Cells[11,i]:=Tableau.Cells[11,i]+Destination+'.';

               Tableau.Cells[12,i]:='';
               Tableau.Cells[13,i]:='Crédit';
               Tableau.Cells[14,i]:=inttostr(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).NumPrelevementUniteFonds);
               Tableau.Cells[15,i]:='Maintenu';
               Tableau.Cells[16,i]:='UF';
               Tableau.Cells[17,i]:=TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).FichierConcerne;
               Tableau.Cells[18,i]:='';
               Tableau.Cells[19,i]:='';
               Tableau.Cells[20,i]:='';
               Tableau.Cells[21,i]:='';
               Tableau.Cells[22,i]:='';
               Tableau.Cells[23,i]:='';
               Tableau.Cells[24,i]:='';

               RMoyenTransport:=ChercherMoyenTransport('','Prélèvement',inttostr(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).NumPrelevement),TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).Matricule,inttostr(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).NumPrelevementUniteFonds));

               if(FSTraitementDonnees.EditTitreInfoMoyenTransport.Text='Moyen transport')then Tableau.Cells[22,i]:=RMoyenTransport.MoyenTransport;
               if(FSTraitementDonnees.EditTitreInfoMoyenTransport.Text='Matricule')then Tableau.Cells[22,i]:=RMoyenTransport.MatriculeTransport;
               if(FSTraitementDonnees.EditTitreInfoMoyenTransport.Text='Chauffeur')then Tableau.Cells[22,i]:=RMoyenTransport.NomChauffeur+' '+RMoyenTransport.PrenomChauffeur;
               if(FSTraitementDonnees.EditTitreInfoMoyenTransport.Text='Pièce Identité')then Tableau.Cells[22,i]:=RMoyenTransport.PieceIdentite;
          end;
     end;
end;

   LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);


if(InclureListeMouvement=true)then
begin
     ///////////////////////////////////////////////////////////////////////////
     if(FSTraitementDonnees.RBAfficherMonvementAvecLocalisationGeo.Checked=true)then
     begin
          ListeOrdreMouvemen:=ListeOrdreMouvementAppartenanceGlobal(ExerciceAnnee,CodeTiers);
     end;

     RapportTraitement.Lines.Add('Traitement Mouvement:');

     R:=1;
     while(R<=FSTraitementDonnees.TableauIndiqueAdresseListeMouvement.RowCount-1)do
     begin
           ChargerPointeurListeMouvement(FSTraitementDonnees.TableauIndiqueAdresseListeMouvement.Cells[2,R],'','',DateDebut,DateFin,Domiciliation,TypeProces,AvisConcerneTiers,CodeTiers,TypeTraitement,True,FSTraitementDonnees.RBSuspendreTraitement.Checked,AfficherValeurNulle,OKCreatePointeurLMouvement);

           for iP:=0 to ListeRegistreListeMouvementPointeur.Count-1 do
           begin
                Application.ProcessMessages;  if(FSTraitementDonnees.RBSuspendreTraitement.Checked)then begin RapportTraitement.Lines.Add('Traitement Suspendu.'); Exit; end;
                RTypeMouvement:=ChercherTypeMouvement(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionTypeMouvement,ExerciceAnnee,AdresseFichierConcerne);
                RMouvement:=ChercherMouvement(inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionTypeMouvement),TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionMouvement,AdresseFichierConcerne);

                TiersDtat:=ImporteDataProcesTiers(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).TypeProces,TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).FichierTiersConserne,TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).CodeTiers,PositionTiersRecherche)+DesignationGroupe;

                RapportTraitement.Lines.Add(RMouvement.DesignationMouvement+' N°: '+inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumListeMouvement)+' Tiers: '+TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).CodeTiers+' '+TiersDtat);

                if(RMouvement.DebitCredit<>'')then
                begin
                     DebitCreditTypeMouvement:=RMouvement.DebitCredit;
                end
                else
                begin
                     DebitCreditTypeMouvement:='Débit';
                     if(RTypeMouvement.SigneTypeMouvement='+')
                     then DebitCreditTypeMouvement:='Débit'
                     else DebitCreditTypeMouvement:='Crédit';
                end;

                OKAvis:=RMouvement.MouvementeFinance;

                if(FSTraitementDonnees.RBActiverPiecesManquantes.Checked=true)then
                begin
                     if(OKAvis=true)then
                     begin
                          if(FSTraitementDonnees.RBSpecifiePeriodeSelect.Checked=true)then
                          begin
                               if(strtodate(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DateMouvement)>=strtodate(DateDebut))
                               and(strtodate(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DateMouvement)<=strtodate(DateFin))
                               then OKPieceManquante:=true
                               else OKPieceManquante:=false;
                          end
                          else OKPieceManquante:=true;

                          if(OKPieceManquante=true)then
                          begin
                               PTCs:=PTCs+1;
                               FSTraitementDonnees.TableauToutesNumPiece.Rows[PTCs].Text:=inttostr(PTCs);
                               FSTraitementDonnees.TableauToutesNumPiece.Cells[1,PTCs]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DateMouvement;
                               if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).ReferenceSourceListeMouvement<>'')
                               then FSTraitementDonnees.TableauToutesNumPiece.Cells[2,PTCs]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).ReferenceSourceListeMouvement
                               else FSTraitementDonnees.TableauToutesNumPiece.Cells[2,PTCs]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumPiece;
                               FSTraitementDonnees.TableauToutesNumPiece.Cells[3,PTCs]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).CodeTiers;
                               FSTraitementDonnees.TableauToutesNumPiece.Cells[4,PTCs]:=TiersDtat;
                               FSTraitementDonnees.TableauToutesNumPiece.Cells[5,PTCs]:=RMouvement.DesignationMouvement+' N° '+inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumListeMouvement);
                          end;
                     end;
                end;

                if(OKAvis=true)then
                begin
                     if existenuminTexte(inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).OrdreListeMouvement),ListeOrdreMouvemen)
                     then OKAvis:=false
                     else OKAvis:=true;
                end;

                if(OKAvis=true)then
                begin
                     if(RBJustifierAvisNonJustifieAvis=true)then
                     begin

                     end
                     else
                     if(RBJustifierAvis=true)then
                     begin
                          if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).ListeNumAvis<>'')
                          then OKAvis:=true
                          else OKAvis:=false;
                     end
                     else
                     if(RBNonJustifieAvis=true)then
                     begin
                          if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).ListeNumAvis='')
                          then OKAvis:=true
                          else OKAvis:=false;
                     end;
                end;

                if(OKAvis=true)then
                begin
                     if(CodeTiers<>'')and(CodeTiers<>'Tous')then
                     begin
                          if(AfficheAvisAnnuler=false)then
                          begin
                               OKAvis:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).OKExecution;
                          end
                          else OKAvis:=true;
                     end
                     else
                     begin
                          OKAvis:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).OKExecution;
                     end;
                end;

                if(OKAvis=true)then
                begin
                     if(AfficherAvisExecutesNonExecutes=true)then
                     begin
                          OKAvis:=true
                     end
                     else
                     if(AfficherAvisExecutes=true)then
                     begin
                          if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).OKExecution=true)
                          then OKAvis:=true
                          else OKAvis:=false;
                     end
                     else
                     if(AfficherAvisNonExecutes=true)then
                     begin
                          if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).OKExecution=false)
                          then OKAvis:=true
                          else OKAvis:=false;
                     end
                     else OKAvis:=true;
                end;

                if(OKAvis=true)then
                begin
                     if(NumProjetFinance<>'')
                     then
                     begin
                          if(Firstlaters(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumProjetFinance,longueur(NumProjetFinance))=NumProjetFinance)
                          then OKAvis:=true
                          else OKAvis:=false;
                     end
                     else OKAvis:=true;
                end;

                if(OKAvis=true)then
                begin
                     if(DesignationTypeAvis='')or(DesignationTypeAvis='Tous')
                     then OKAvis:=true
                     else OKAvis:=false;
                end;

                if(OKAvis=true)then
                begin
                     if(ModePaiement<>'')and(ModePaiement<>'Tous')
                     then
                     begin
                          if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).ModePaiement=ModePaiement)
                          then OKAvis:=true
                          else OKAvis:=false;
                     end
                     else OKAvis:=true;
                end;

                if(OKAvis=true)then
                begin
                     if(Domiciliation<>'')and(Domiciliation<>'Tous')
                     then
                     begin
                          if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).Domiciliation=Domiciliation)
                          then OKAvis:=true
                          else OKAvis:=false;
                     end
                     else OKAvis:=true;
                end;

                if(OKAvis=true)then
                begin
                     if(TypeProces<>'')and(TypeProces<>'Tous')
                     then
                     begin
                          if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).TypeProces=TypeProces)
                          then OKAvis:=true
                          else OKAvis:=false;
                     end
                     else OKAvis:=true;
                end;

                if(OKAvis=true)then
                begin
                     if(AvisConcerneTiers<>'')and(AvisConcerneTiers<>'Tous')
                     then
                     begin
                          OKAvis:=FunctionFichierInclu(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).FichierTiersConserne,AvisConcerneTiers);

                          {if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).FichierTiersConserne=AvisConcerneTiers)
                          then OKAvis:=true
                          else OKAvis:=false;}
                     end
                     else OKAvis:=true;
                end;

                if(OKAvis=true)then
                begin
                     if(CodeTiers<>'Tous')then
                     begin
                          if(CodeTiers<>'')then
                          begin
                               {if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).CodeTiers=CodeTiers)
                               then OKAvis:=true
                               else OKAvis:=false;}

                               OKAvis:=TrouverGroupeTiers(CodeTiers,TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).CodeTiers,FSTraitementDonnees.RBActiverGroupeTiers.Checked,DesignationGroupe,ListeFichierTiersGroupe);
                          end
                          else OKAvis:=true;
                     end
                     else
                     begin
                          if(strtodate(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DateMouvement)<=strtodate(DateFin))
                          then
                          begin
                               OKTiers:=false;
                               R:=2;
                               while(R<=i)and(OKTiers=false)do
                               begin
                                    if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).CodeTiers=Tableau.Cells[9,R])then
                                    begin
                                         OKTiers:=true;
                                         if(strtodate(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DateMouvement)<strtodate(DateDebut))then
                                         begin
                                              if(DebitCreditTypeMouvement='Débit')then
                                              begin
                                                   Tableau.Cells[6,R]:=Vergule(floattostr(strtoreal(Tableau.Cells[6,R])+TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).MontantMouvement),'2','C','');
                                              end;
                                              if(DebitCreditTypeMouvement='Crédit')then
                                              begin
                                                   Tableau.Cells[6,R]:=Vergule(floattostr(strtoreal(Tableau.Cells[6,R])-TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).MontantMouvement),'2','C','');
                                              end;
                                         end
                                         else
                                         begin
                                              if(DebitCreditTypeMouvement='Débit')then
                                              begin
                                                   Tableau.Cells[7,R]:=Vergule(floattostr(strtoreal(Tableau.Cells[7,R])+TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).MontantMouvement),'2','C','');
                                              end;
                                              if(DebitCreditTypeMouvement='Crédit')then
                                              begin
                                                   Tableau.Cells[8,R]:=Vergule(floattostr(strtoreal(Tableau.Cells[8,R])+TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).MontantMouvement),'2','C','');
                                              end;
                                         end;
                                    end;
                                    R:=R+1;
                               end;
                               OKAvis:=not OKTiers;
                          end
                          else OKAvis:=false;
                     end;
                end;

                if(FSTraitementDonnees.RBActiverPiecesManquantes.Checked=true)then
                begin
                     if(OKAvis=true)and(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).ReferenceSourceListeMouvement<>'')or(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumPiece<>'')then
                     begin
                          if(FSTraitementDonnees.RBSpecifiePeriodeSelect.Checked=true)then
                          begin
                               if(strtodate(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DateMouvement)>=strtodate(DateDebut))
                               and(strtodate(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DateMouvement)<=strtodate(DateFin))
                               then OKPieceManquante:=true
                               else OKPieceManquante:=false;
                          end
                          else OKPieceManquante:=true;

                          if(OKPieceManquante=true)then
                          begin
                               PCs:=PCs+1;
                               FSTraitementDonnees.TableauNumPiece.Rows[PCs].Text:=inttostr(PCs);
                               FSTraitementDonnees.TableauNumPiece.Cells[1,PCs]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DateMouvement;
                               if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).ReferenceSourceListeMouvement<>'')
                               then FSTraitementDonnees.TableauNumPiece.Cells[2,PCs]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).ReferenceSourceListeMouvement
                               else FSTraitementDonnees.TableauNumPiece.Cells[2,PCs]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumPiece;
                          end;
                     end;
                end;

                if(OKAvis=true)then
                begin
                     if(strtodate(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DateMouvement)<strtodate(DateDebut))then
                     begin
                          if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).OKExecution=true)then
                          begin
                               OKAvis:=false;
                               if(CodeTiers<>'Tous')
                               then
                               begin
                                    if(DebitCreditTypeMouvement='Débit')then
                                    begin
                                         Tableau.Cells[7,1]:=Vergule(floattostr(strtoreal(Tableau.Cells[7,1])+TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).MontantMouvement),'2','C','');
                                    end;
                                    if(DebitCreditTypeMouvement='Crédit')then
                                    begin
                                         Tableau.Cells[8,1]:=Vergule(floattostr(strtoreal(Tableau.Cells[8,1])+TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).MontantMouvement),'2','C','');
                                    end;
                               end
                               else
                               begin
                                    i:=i+1;
                                    Tableau.Rows[i].Text:=inttostr(i);
                                    Tableau.Cells[1,i]:=Completezerogauche(inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).OrdreListeMouvement),'5');
                                    Tableau.Cells[2,i]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DateMouvement;
                                    Tableau.Cells[3,i]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DateExecutionMouvement;
                                    Tableau.Cells[4,i]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).ModePaiement;
                                    Tableau.Cells[5,i]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).Domiciliation;
                                    if(CodeTiers<>'Tous')then Tableau.Cells[6,i]:='';

                                    if(DebitCreditAvis='Débit')then
                                    begin
                                         Tableau.Cells[6,i]:=Vergule(floattostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).MontantMouvement),'2','C','');
                                    end;
                                    if(DebitCreditAvis='Crédit')then
                                    begin
                                         Tableau.Cells[6,i]:=Vergule(floattostr((-1)*TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).MontantMouvement),'2','C','');
                                    end;

                                    Tableau.Cells[9,i]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).CodeTiers;

                                    Tableau.Cells[10,i]:=TiersDtat;

                                    RTypeMouvement:=ChercherTypeMouvement(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionTypeMouvement,ExerciceAnnee,AdresseFichierConcerne);
                                    RMouvement:=ChercherMouvement(inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionTypeMouvement),TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionMouvement,AdresseFichierConcerne);

                                    if(FSTraitementDonnees.RBPreciserNatureOperationMouvement.Checked=true)
                                    then Document:=RMouvement.DesignationMouvement+' N° '+inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumListeMouvement)
                                    else Document:='';

                                    if(FSTraitementDonnees.RBPreciserDetailOperationMouvement.Checked=true)
                                    then DetailOperation:=''//NatureOperationMouvementPointeur(RTypeMouvement.DesignationTypeMouvement,inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).OrdreListeMouvement),FSTraitementDonnees.RBPreciserDetailOperationQuantiteMouvement.Checked)
                                    else DetailOperation:='';

                                    if(FSTraitementDonnees.RBPreciserDestinationMouvement.Checked=true)then
                                    begin
                                         Destination:=ChercherLocalisationGeographique(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).CodeZoneExecutionMouvement,'FZone').IntitulleLocalisationGeographique;
                                         if(Destination<>'')
                                         then Destination:='; '+'Déstination: '+Destination;
                                    end
                                    else Destination:='';

                                    if(Document<>'')then Tableau.Cells[11,i]:=Document+'.  ';
                                    if(DetailOperation<>'')then Tableau.Cells[11,i]:=Tableau.Cells[11,i]+DetailOperation+'.  ';
                                    if(Destination<>'')then Tableau.Cells[11,i]:=Tableau.Cells[11,i]+Destination+'.';

                                    Tableau.Cells[12,i]:='';
                                    Tableau.Cells[13,i]:=DebitCreditTypeMouvement;
                                    Tableau.Cells[14,i]:=Completezerogauche(inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumListeMouvement),'5');
                                    if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).OKExecution=true)
                                    then Tableau.Cells[15,i]:='Maintenu Exécuter'
                                    else Tableau.Cells[15,i]:='Maintenu Non Exécuter';
                                    Tableau.Cells[16,i]:='LM';
                                    Tableau.Cells[17,i]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).FichierTiersConserne;
                                    Tableau.Cells[18,i]:=ChercherProjetFinance(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumProjetFinance,PositionProjetFinancesRecherche).DesignationProjetFinance;
                                    Tableau.Cells[19,i]:='';
                                    Tableau.Cells[20,i]:='';
                                    Tableau.Cells[21,i]:='';
                                    Tableau.Cells[22,i]:='';
                                    Tableau.Cells[23,i]:='';
                                    Tableau.Cells[24,i]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).ListeNumAvis;

                                    RMoyenTransport:=ChercherMoyenTransport('','Mouvement',inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionMouvement),'',inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).OrdreListeMouvement));

                                    if(FSTraitementDonnees.EditTitreInfoMoyenTransport.Text='Moyen transport')then Tableau.Cells[22,i]:=RMoyenTransport.MoyenTransport;
                                    if(FSTraitementDonnees.EditTitreInfoMoyenTransport.Text='Matricule')then Tableau.Cells[22,i]:=RMoyenTransport.MatriculeTransport;
                                    if(FSTraitementDonnees.EditTitreInfoMoyenTransport.Text='Chauffeur')then Tableau.Cells[22,i]:=RMoyenTransport.NomChauffeur+' '+RMoyenTransport.PrenomChauffeur;
                                    if(FSTraitementDonnees.EditTitreInfoMoyenTransport.Text='Pièce Identité')then Tableau.Cells[22,i]:=RMoyenTransport.PieceIdentite;
                               end;
                          end
                          else OKAvis:=false;
                     end
                     else
                     begin
                          if(strtodate(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DateMouvement)>=strtodate(DateDebut))
                          and(strtodate(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DateMouvement)<=strtodate(DateFin))
                          then
                          begin
                               OKAvis:=true;
                          end
                          else OKAvis:=false;
                     end;
                end;

                if(OKAvis=true)then
                begin
                     i:=i+1;
                     Tableau.Rows[i].Text:=inttostr(i);
                     Tableau.Cells[1,i]:=Completezerogauche(inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).OrdreListeMouvement),'5');
                     Tableau.Cells[2,i]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DateMouvement;
                     Tableau.Cells[3,i]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DateExecutionMouvement;
                     Tableau.Cells[4,i]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).ModePaiement;
                     Tableau.Cells[5,i]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).Domiciliation;
                     if(CodeTiers<>'Tous')then Tableau.Cells[6,i]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumPiece;

                     if(DebitCreditTypeMouvement='Débit')then
                     begin
                          Tableau.Cells[7,i]:=Vergule(floattostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).MontantMouvement),'2','C','');
                     end;
                     if(DebitCreditTypeMouvement='Crédit')then
                     begin
                          Tableau.Cells[8,i]:=Vergule(floattostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).MontantMouvement),'2','C','');
                     end;

                     Tableau.Cells[9,i]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).CodeTiers;

                     Tableau.Cells[10,i]:=TiersDtat;

                     RTypeMouvement:=ChercherTypeMouvement(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionTypeMouvement,ExerciceAnnee,AdresseFichierConcerne);
                     RMouvement:=ChercherMouvement(inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionTypeMouvement),TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionMouvement,AdresseFichierConcerne);

                     if(FSTraitementDonnees.RBPreciserNatureOperationMouvement.Checked=true)
                     then Document:=RMouvement.DesignationMouvement+' N° '+inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumListeMouvement)
                     else Document:='';

                     if(FSTraitementDonnees.RBPreciserDetailOperationMouvement.Checked=true)
                     then DetailOperation:=''//NatureOperationMouvementPointeur(RTypeMouvement.DesignationTypeMouvement,inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).OrdreListeMouvement),FSTraitementDonnees.RBPreciserDetailOperationQuantiteMouvement.Checked)
                     else DetailOperation:='';

                     if(FSTraitementDonnees.RBPreciserDestinationMouvement.Checked=true)then
                     begin
                          Destination:=ChercherLocalisationGeographique(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).CodeZoneExecutionMouvement,'FZone').IntitulleLocalisationGeographique;
                          if(Destination<>'')
                          then Destination:='; '+'Déstination: '+Destination;
                     end
                     else Destination:='';

                     if(Document<>'')then Tableau.Cells[11,i]:=Document+'.  ';
                     if(DetailOperation<>'')then Tableau.Cells[11,i]:=Tableau.Cells[11,i]+DetailOperation+'.  ';
                     if(Destination<>'')then Tableau.Cells[11,i]:=Tableau.Cells[11,i]+Destination+'.';

                     Tableau.Cells[12,i]:='';
                     Tableau.Cells[13,i]:=DebitCreditTypeMouvement;
                     Tableau.Cells[14,i]:=Completezerogauche(inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumListeMouvement),'5');
                     if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).OKExecution=true)
                     then Tableau.Cells[15,i]:='Maintenu Exécuter'
                     else Tableau.Cells[15,i]:='Maintenu Non Exécuter';
                     Tableau.Cells[16,i]:='LM';
                     Tableau.Cells[17,i]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).FichierTiersConserne;
                     Tableau.Cells[18,i]:=ChercherProjetFinance(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumProjetFinance,PositionProjetFinancesRecherche).DesignationProjetFinance;
                     Tableau.Cells[19,i]:='';
                     Tableau.Cells[20,i]:='';
                     Tableau.Cells[21,i]:='';
                     Tableau.Cells[22,i]:='';
                     Tableau.Cells[23,i]:='';
                     Tableau.Cells[24,i]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).ListeNumAvis;

                     RMoyenTransport:=ChercherMoyenTransport('','Fiche Saisie Commerciale',inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionMouvement),'',inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).OrdreListeMouvement));
                     Tableau.Cells[22,i]:=RMoyenTransport.MatriculeTransport;
                end;
           end;
     R:=R+1;
     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
     end;
     ///////////////////////////////////////////////////////////////////////////
end;

    LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);

if(InclureSituationMarche=true)then
begin
     RapportTraitement.Lines.Add('Traitement Situation de marché:');

     //////////////////////////////////////////////////////////////////////////
     OpenFParc(RParc);
     ChSituationMarche:=RParc.Parcours+'\'+Exercice+'FSituationMarche';
     assignfile(FSituationMarche,ChSituationMarche);
     try
     if FileExists(ChSituationMarche)then
     Reset(FSituationMarche)
     else Rewrite(FSituationMarche);
     Seek(FSituationMarche,0);
     while not eof(FSituationMarche)do
     begin
          read(FSituationMarche,RSituationMarche); Application.ProcessMessages;  if(FSTraitementDonnees.RBSuspendreTraitement.Checked)then begin RapportTraitement.Lines.Add('Traitement Suspendu.'); Exit; end;

          RMarcheCopie:=ChercherMarche(RSituationMarche.NSMarche);

          TiersDtat:=ImporteDataProcesTiers(RMarcheCopie.TypeProces,RMarcheCopie.FichierConcerneTiers,RMarcheCopie.CodeMaitreOuvrage,PositionTiersRecherche)+DesignationGroupe;

          RapportTraitement.Lines.Add('Situation N°: '+inttostr(RSituationMarche.NSituationMarche)+'/'+inttostr(RSituationMarche.NSMarche)+' du '+RSituationMarche.DateSituationMarche+' Tiers: '+RMarcheCopie.CodeMaitreOuvrage+' '+TiersDtat);

          if(RMarcheCopie.DebitCredit<>'')then
          begin
               DebitCreditTypeMouvement:=RMarcheCopie.DebitCredit;
          end
          else
          begin
               DebitCreditTypeMouvement:='Crédit';
          end;

          if(RSituationMarche.NSituationMarche<>0)
          then OKAvis:=true
          else OKAvis:=false;

          if(OKAvis=true)then
          begin
               if(NSMarcheSelect<>'')then
               begin
                    if(inttostr(RSituationMarche.NSMarche)=NSMarcheSelect)
                    then OKAvis:=true
                    else OKAvis:=false;
               end;
          end;

          if(OKAvis=true)then
          begin
               if(RBJustifierAvisNonJustifieAvis=true)then
               begin

               end
               else
               if(RBJustifierAvis=true)then
               begin
                    if(RSituationMarche.ListeNumAvis<>'')
                    then OKAvis:=true
                    else OKAvis:=false;
               end
               else
               if(RBNonJustifieAvis=true)then
               begin
                    if(RSituationMarche.ListeNumAvis='')
                    then OKAvis:=true
                    else OKAvis:=false;
               end;
          end;

          if(OKAvis=true)then
          begin
               if(CodeTiers<>'')and(CodeTiers<>'Tous')then
               begin
                    if(AfficheAvisAnnuler=false)then
                    begin
                         OKAvis:=RSituationMarche.ValiditeSituation;
                    end
                    else OKAvis:=true;
               end
               else
               begin
                    OKAvis:=RSituationMarche.ValiditeSituation;
               end;
          end;

          if(OKAvis=true)then
          begin
               if(NumProjetFinance<>'')
               then
               begin
                    if(Firstlaters(RMarcheCopie.NumProjetFinance,longueur(NumProjetFinance))=NumProjetFinance)
                    then OKAvis:=true
                    else OKAvis:=false;
               end;
          end;

          if(OKAvis=true)then
          begin
               if(ModePaiement<>'')and(ModePaiement<>'Tous')
               then
               begin
                    if(RSituationMarche.ModePaiement=ModePaiement)
                    then OKAvis:=true
                    else OKAvis:=false;
               end
               else OKAvis:=true;
          end;

          if(OKAvis=true)then
          begin
               if(Domiciliation<>'')and(Domiciliation<>'Tous')
               then
               begin
                    if(RSituationMarche.Domiciliation=Domiciliation)
                    then OKAvis:=true
                    else OKAvis:=false;
               end
               else OKAvis:=true;
          end;

          if(OKAvis=true)then
          begin
               if(TypeProces<>'')and(TypeProces<>'Tous')
               then
               begin
                    if(RMarcheCopie.TypeProces=TypeProces)
                    then OKAvis:=true
                    else OKAvis:=false;
               end
               else OKAvis:=true;
          end;

          if(OKAvis=true)then
          begin
               if(AvisConcerneTiers<>'')and(AvisConcerneTiers<>'Tous')
               then
               begin
                    OKAvis:=FunctionFichierInclu(RMarcheCopie.FichierConcerneTiers,AvisConcerneTiers);

                    if(RMarcheCopie.FichierConcerneTiers=AvisConcerneTiers)
                    then OKAvis:=true
                    else OKAvis:=false;
               end
               else OKAvis:=true;
          end;

          if(OKAvis=true)then
          begin
               if(CodeTiers<>'Tous')then
               begin
                    if(CodeTiers<>'')then
                    begin
                         if(RMarcheCopie.CodeMaitreOuvrage=CodeTiers)
                         then OKAvis:=true
                         else OKAvis:=false;

                         OKAvis:=TrouverGroupeTiers(CodeTiers,RMarcheCopie.CodeMaitreOuvrage,FSTraitementDonnees.RBActiverGroupeTiers.Checked,DesignationGroupe,ListeFichierTiersGroupe);
                    end
                    else OKAvis:=true;
               end
               else
               begin
                    if(StringToDate(RSituationMarche.DateSituationMarche,RSituationMarche.DesignationSituation)<=StringToDate(DateFin,'DateFin'))
                    then
                    begin
                         OKTiers:=false;
                         R:=2;
                         while(R<=i)and(OKTiers=false)do
                         begin
                              if(RMarcheCopie.CodeMaitreOuvrage=Tableau.Cells[9,R])then
                              begin
                                   OKTiers:=true;
                                   if(StringToDate(RSituationMarche.DateSituationMarche,RSituationMarche.DesignationSituation)<StringToDate(DateDebut,'DateDebut'))then
                                   begin
                                        if(DebitCreditTypeMouvement='Débit')then
                                        begin
                                             Tableau.Cells[6,R]:=Vergule(floattostr(strtoreal(Tableau.Cells[6,R])+RSituationMarche.MontantSituationTTCNet),'2','C','');
                                        end;
                                        if(DebitCreditTypeMouvement='Crédit')then
                                        begin
                                             Tableau.Cells[6,R]:=Vergule(floattostr(strtoreal(Tableau.Cells[6,R])-RSituationMarche.MontantSituationTTCNet),'2','C','');
                                        end;
                                   end
                                   else
                                   begin
                                        if(DebitCreditTypeMouvement='Débit')then
                                        begin
                                             Tableau.Cells[7,R]:=Vergule(floattostr(strtoreal(Tableau.Cells[7,R])+RSituationMarche.MontantSituationTTCNet),'2','C','');
                                        end;
                                        if(DebitCreditTypeMouvement='Crédit')then
                                        begin
                                             Tableau.Cells[8,R]:=Vergule(floattostr(strtoreal(Tableau.Cells[8,R])+RSituationMarche.MontantSituationTTCNet),'2','C','');
                                        end;
                                   end;
                              end;
                              R:=R+1;
                         end;
                         OKAvis:=not OKTiers;
                    end
                    else OKAvis:=false;
               end;
          end;

          if(OKAvis=true)then
          begin
               if(StringToDate(RSituationMarche.DateSituationMarche,RSituationMarche.DesignationSituation)<StringToDate(DateDebut,'DateDebut'))then
               begin
                    if(RSituationMarche.ValiditeSituation=true)then
                    begin
                         OKAvis:=false;
                         if(CodeTiers<>'Tous')
                         then
                         begin
                              if(DebitCreditTypeMouvement='Débit')then
                              begin
                                   Tableau.Cells[7,1]:=Vergule(floattostr(strtoreal(Tableau.Cells[7,1])+RSituationMarche.MontantSituationTTCNet),'2','C','');
                              end;
                              if(DebitCreditTypeMouvement='Crédit')then
                              begin
                                   Tableau.Cells[8,1]:=Vergule(floattostr(strtoreal(Tableau.Cells[8,1])+RSituationMarche.MontantSituationTTCNet),'2','C','');
                              end;
                         end
                         else
                         begin
                              i:=i+1;
                              Tableau.Rows[i].Text:=inttostr(i);
                              Tableau.Cells[1,i]:=Completezerogauche(inttostr(RSituationMarche.NSituationMarche),'5');
                              Tableau.Cells[2,i]:=RSituationMarche.DateSituationMarche;
                              Tableau.Cells[3,i]:=RSituationMarche.DateSituationMarche;
                              Tableau.Cells[4,i]:=RSituationMarche.ModePaiement;
                              Tableau.Cells[5,i]:=RSituationMarche.Domiciliation;
                              if(CodeTiers<>'Tous')then Tableau.Cells[6,i]:='';

                              if(DebitCreditAvis='Débit')then
                              begin
                                   Tableau.Cells[6,i]:=Vergule(floattostr(RSituationMarche.MontantSituationTTCNet),'2','C','');
                              end;
                              if(DebitCreditAvis='Crédit')then
                              begin
                                   Tableau.Cells[6,i]:=Vergule(floattostr((-1)*RSituationMarche.MontantSituationTTCNet),'2','C','');
                              end;

                              Tableau.Cells[9,i]:=RMarcheCopie.CodeMaitreOuvrage;

                              Tableau.Cells[10,i]:=TiersDtat;

                              if(FSTraitementDonnees.RBPreciserMarcheRealisation.Checked=false)
                              then Tableau.Cells[11,i]:=RSituationMarche.DesignationSituation+' N° '+Completezerogauche(inttostr(RSituationMarche.NSituationMarche),'2')+'/'+Lastlaters(RSituationMarche.DateSituationMarche,4)+' du '+RSituationMarche.DateSituationMarche
                              else Tableau.Cells[11,i]:=RSituationMarche.DesignationSituation+' N° '+Completezerogauche(inttostr(RSituationMarche.NSituationMarche),'2')+'/'+Lastlaters(RSituationMarche.DateSituationMarche,4)+' du '+RSituationMarche.DateSituationMarche+' au marché N° '+Completezerogauche(inttostr(RSituationMarche.NSMarche),'2')+'/'+Lastlaters(RMarcheCopie.DateMarche,4)+' du '+RMarcheCopie.DateMarche;

                              Tableau.Cells[12,i]:='';
                              Tableau.Cells[13,i]:=DebitCreditTypeMouvement;
                              Tableau.Cells[14,i]:=Completezerogauche(inttostr(RSituationMarche.NSituationMarche),'5');
                              if(RSituationMarche.ValiditeSituation=true)
                              then Tableau.Cells[15,i]:='Maintenu'
                              else Tableau.Cells[15,i]:='Annuler';
                              Tableau.Cells[16,i]:='ST';
                              Tableau.Cells[17,i]:=RMarcheCopie.FichierConcerneTiers;
                              Tableau.Cells[18,i]:=ChercherProjetFinance(RMarcheCopie.NumProjetFinance,PositionProjetFinancesRecherche).DesignationProjetFinance;
                              Tableau.Cells[19,i]:='';
                              Tableau.Cells[20,i]:='';
                              Tableau.Cells[21,i]:='';
                              Tableau.Cells[22,i]:='';
                              Tableau.Cells[23,i]:='';
                              Tableau.Cells[24,i]:=RSituationMarche.ListeNumAvis;
                         end;
                    end
                    else OKAvis:=false;
               end
               else
               begin
                    if(StringToDate(RSituationMarche.DateSituationMarche,RSituationMarche.DesignationSituation)>=StringToDate(DateDebut,'DateDebut'))
                    and(StringToDate(RSituationMarche.DateSituationMarche,RSituationMarche.DesignationSituation)<=StringToDate(DateFin,'DateFin'))
                    then
                    begin
                         OKAvis:=true;
                    end
                    else OKAvis:=false;
               end;
          end;

          if(OKAvis=true)then
          begin
               i:=i+1;
               Tableau.Rows[i].Text:=inttostr(i);
               Tableau.Cells[1,i]:=Completezerogauche(inttostr(RSituationMarche.NSituationMarche),'5');
               Tableau.Cells[2,i]:=RSituationMarche.DateSituationMarche;
               Tableau.Cells[3,i]:=RSituationMarche.DateSituationMarche;
               Tableau.Cells[4,i]:=RSituationMarche.ModePaiement;
               Tableau.Cells[5,i]:=RSituationMarche.Domiciliation;
               if(CodeTiers<>'Tous')then Tableau.Cells[6,i]:=RSituationMarche.NumPiece;

               if(DebitCreditTypeMouvement='Débit')then
               begin
                    Tableau.Cells[7,i]:=Vergule(floattostr(RSituationMarche.MontantSituationTTCNet),'2','C','');
               end;
               if(DebitCreditTypeMouvement='Crédit')then
               begin
                    Tableau.Cells[8,i]:=Vergule(floattostr(RSituationMarche.MontantSituationTTCNet),'2','C','');
               end;

               Tableau.Cells[9,i]:=RMarcheCopie.CodeMaitreOuvrage;

               Tableau.Cells[10,i]:=TiersDtat;

               if(FSTraitementDonnees.RBPreciserMarcheRealisation.Checked=false)
               then Tableau.Cells[11,i]:=RSituationMarche.DesignationSituation+' N° '+Completezerogauche(inttostr(RSituationMarche.NSituationMarche),'2')+'/'+Lastlaters(RSituationMarche.DateSituationMarche,4)+' du '+RSituationMarche.DateSituationMarche
               else Tableau.Cells[11,i]:=RSituationMarche.DesignationSituation+' N° '+Completezerogauche(inttostr(RSituationMarche.NSituationMarche),'2')+'/'+Lastlaters(RSituationMarche.DateSituationMarche,4)+' du '+RSituationMarche.DateSituationMarche+' au marché N° '+Completezerogauche(inttostr(RSituationMarche.NSMarche),'2')+'/'+Lastlaters(RMarcheCopie.DateMarche,4)+' du '+RMarcheCopie.DateMarche;

               Tableau.Cells[12,i]:='';
               Tableau.Cells[13,i]:=DebitCreditTypeMouvement;
               Tableau.Cells[14,i]:=Completezerogauche(inttostr(RSituationMarche.NSituationMarche),'5');
               if(RSituationMarche.ValiditeSituation=true)
               then Tableau.Cells[15,i]:='Maintenu'
               else Tableau.Cells[15,i]:='Annuler';
               Tableau.Cells[16,i]:='ST';
               Tableau.Cells[17,i]:=RMarcheCopie.FichierConcerneTiers;
               Tableau.Cells[18,i]:=ChercherProjetFinance(RMarcheCopie.NumProjetFinance,PositionProjetFinancesRecherche).DesignationProjetFinance;
               Tableau.Cells[19,i]:='';
               Tableau.Cells[20,i]:='';
               Tableau.Cells[21,i]:='';
               Tableau.Cells[22,i]:='';
               Tableau.Cells[23,i]:='';
               Tableau.Cells[24,i]:=RSituationMarche.ListeNumAvis;
          end;
     end;
     finally
     CloseFile(FSituationMarche);
     end;
     ///////////////////////////////////////////////////////////////////////////
end;

    LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);


     if(i>0)then Tableau.RowCount:=i+1
            else Tableau.RowCount:=2;

     Solde:=strtoreal(Tableau.Cells[7,1])-strtoreal(Tableau.Cells[8,1]);
     if(Solde>=0)then
     begin
          Tableau.Cells[7,1]:=Vergule(floattostr(Solde),'2','C','');
          Tableau.Cells[8,1]:='';
     end
     else      
     begin
          Tableau.Cells[7,1]:='';
          Tableau.Cells[8,1]:=Vergule(floattostr((-1)*Solde),'2','C','');
     end;

     Tableau.ColWidths[19]:=0;

     NotRow:='';
     NotCol:='19';

     if(FSTraitementDonnees.RBAfficherProjetFinance.Checked=false)
     then
     begin
          Tableau.ColWidths[18]:=0;
          if(NotCol<>'')then NotCol:=NotCol+';18'
                        else NotCol:='18';
     end;

     if(ModePaiement<>'')
     and(ModePaiement<>'Tous')
     then
     begin
          Tableau.ColWidths[4]:=0;
          if(NotCol<>'')then NotCol:=NotCol+';4'
                        else NotCol:='4';
     end;

     if(Domiciliation<>'')
     and(Domiciliation<>'Tous')
     then
     begin
          Tableau.ColWidths[5]:=0;
          if(NotCol<>'')then NotCol:=NotCol+';5'
                        else NotCol:='5';
     end;

     if(CodeTiers<>'')
     and(CodeTiers<>'Tous')
     then
     begin
          Tableau.ColWidths[9]:=0;
          Tableau.ColWidths[10]:=0;
          if(NotCol<>'')then NotCol:=NotCol+';9;10'
                        else NotCol:='9;10';
     end
     else
     begin
          if(NotCol<>'')then NotCol:=NotCol+';1;2;3;4;5;11;15;18'
                        else NotCol:='1;2;3;4;5;11;15;18';
          Tableau.ColWidths[1]:=0;
          Tableau.ColWidths[2]:=0;
          Tableau.ColWidths[3]:=0;
          Tableau.ColWidths[4]:=0;
          Tableau.ColWidths[5]:=0;
          Tableau.ColWidths[11]:=0;
          Tableau.ColWidths[15]:=0;
          Tableau.ColWidths[18]:=0;
     end;

     if(NotCol<>'')then NotCol:=NotCol+';12;13;14;16;17'
                   else NotCol:='12;13;14;16;17';
     Tableau.ColWidths[12]:=0;
     Tableau.ColWidths[13]:=0;
     Tableau.ColWidths[14]:=0;
     Tableau.ColWidths[16]:=0;
     Tableau.ColWidths[17]:=0;

     AjusterColWidth(Tableau,NotRow,NotCol);

     if (FSTraitementDonnees.RBAfficherPartiesCommunes.Checked=true)
     and(FSTraitementDonnees.RBPartiesCommunesCumules.Checked=false)then CummulePartieCumune(Tableau);

     if(FSTraitementDonnees.RBActiverPiecesManquantes.Checked=true)then
     begin
          if(PCs>0)then FSTraitementDonnees.TableauNumPiece.RowCount:=PCs+1
                   else FSTraitementDonnees.TableauNumPiece.RowCount:=2;

          if(PTCs>0)then FSTraitementDonnees.TableauToutesNumPiece.RowCount:=PTCs+1
                    else FSTraitementDonnees.TableauToutesNumPiece.RowCount:=2;
          AjusterColWidth(FSTraitementDonnees.TableauToutesNumPiece,'','');

          FSTraitementDonnees.TimerCompleteNumPiece.Enabled:=true;
          //TrierTableauARowSpecial(FSTraitementDonnees.TableauNumPiece,1,FSTraitementDonnees.TableauNumPiece.RowCount-1,1,'2','Num','+');
     end;


     B:=GetTickCount;
     FSTraitementDonnees.LabelTempsAttente.Caption:='Temps= '+inttostr(B-A)+' ms';
     
     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);


     //ShowWindow(LeHandle,SW_MINIMIZE); // Réduire cette fenêtre:
     
     //ShowWindow(LeHandle,SW_MAXIMIZE); // Agrandir la fenêtre:

     //SendMessage(LeHandle,WM_CLOSE,0,0); // Fermer la fenêtre:

     //LeHandle:=GetForegroundWindow();  // Obtenir le HWND de la fenêtre active:

     begin
          FSTraitementDonnees.Show;
          LeHandle:=GetForegroundWindow();  // Obtenir le HWND de la fenêtre active:
          ShowWindow(LeHandle,SW_MAXIMIZE); // Agrandir la fenêtre:
     end;

     if(Tableau=FSTraitementDonnees.TableauAvis)then
     begin
          if(FSTraitementDonnees.PageFinanceDomiciliation.Visible=false)then
          begin
               FSTraitementDonnees.PageFinanceDomiciliation.Visible:=true;
          end;
     end
     else
     if(Tableau=FSTraitementDonnees.TableauFinanceTiers)then
     begin
          if(FSTraitementDonnees.PageFinanceTiers.Visible=false)then
          begin
               FSTraitementDonnees.PageFinanceTiers.Visible:=true;
          end;
     end;

     RapportTraitement.Lines.Add('Fin du traitement.');
end; //FIN ChercherAvis

Procedure ProcAfficheListeMouvementPointeur(TableauListeMouvement:TStringGrid; PositionTypeMouvement,PositionMouvement,PLMBegin,PLMEnd,DateMouvementDebut,DateMouvementFin,DateLimiteExecution,CodePays,CodeWilaya,CodeDaira,CodeCommune,OKExecution,CodeTiers,AvisEtablis:string; AfficherValeursMonetaires,AfficherTotal,ChargerPointeur,AfficherValeurNulle,AfficherInfiTiersSupplementaire,OKUtiliserIndexation:boolean; NumLiseMouvementSelect:string);
var  iLM,R,C,RubriqueTrie,IndiceFinControleTrieRow,iMois,RowSelect,CodeReduit:integer;  OKMouvementeFinance,OKMouvement,OKCreatePointeurLMouvement:boolean;  NotRow,NotCol,TypeData,TypeProces,FichierConserne,Adresse,AdresseReseauxSource,NomDossierPartageOut,EmlacementLocalOuReseauxOut,TypeTraitement,AdresseListeMouvement:string;  TotalGeneral:real;
begin
     if(FSFicheSaisie.EditExecutionProcAfficheListeMouvementPointeur.Text<>'0')then Exit;

     FSFicheSaisie.EditExecutionProcAfficheListeMouvementPointeur.Text:='1';

     FSFicheSaisie.AffichePatientez.Visible:=true;
     FSFicheSaisie.RBSuspendreTraitement.Checked:=false;
     FSFicheSaisie.RapportTraitementDomiciliation.Lines.Text:='';
     FSFicheSaisie.RapportTraitementDomiciliation.Lines.Add('Début de traitement:');

     AccelerationAffichageTableau(TableauListeMouvement,true);

     TableauListeMouvement.ColCount:=55;
     TableauListeMouvement.Cols[0].Text:='N°';
     TableauListeMouvement.Cols[1].Text:='Ordre';
     TableauListeMouvement.Cols[2].Text:='Num';
     TableauListeMouvement.Cols[3].Text:='P°TM';
     TableauListeMouvement.Cols[4].Text:='P°M';
     TableauListeMouvement.Cols[5].Text:='Date.Etablis.';
     TableauListeMouvement.Cols[6].Text:='Code Type F';
     TableauListeMouvement.Cols[7].Text:='Type Proc';
     TableauListeMouvement.Cols[8].Text:='Fichier Tièrs Consern';
     TableauListeMouvement.Cols[9].Text:='Code Tiers';
     TableauListeMouvement.Cols[10].Text:='Tiers';
     TableauListeMouvement.Cols[11].Text:='Montant Mouvement';
     TableauListeMouvement.Cols[12].Text:='Date Exécution';
     TableauListeMouvement.Cols[13].Text:='C°Payés';
     TableauListeMouvement.Cols[14].Text:='Payés';
     TableauListeMouvement.Cols[15].Text:='C°Wilaya';
     TableauListeMouvement.Cols[16].Text:='Wilaya';
     TableauListeMouvement.Cols[17].Text:='C°Daira';
     TableauListeMouvement.Cols[18].Text:='Daira';
     TableauListeMouvement.Cols[19].Text:='C°Commune';
     TableauListeMouvement.Cols[20].Text:='Commune';
     TableauListeMouvement.Cols[21].Text:='C°Zone';
     TableauListeMouvement.Cols[22].Text:='Zone';
     TableauListeMouvement.Cols[23].Text:='Adresse';
     TableauListeMouvement.Cols[24].Text:='Exécution !';
     TableauListeMouvement.Cols[25].Text:='NumProjet ';
     TableauListeMouvement.Cols[26].Text:='Projet';
     TableauListeMouvement.Cols[27].Text:='Mode Paiement';
     TableauListeMouvement.Cols[28].Text:='Num Domiciliation';
     TableauListeMouvement.Cols[29].Text:='Domiciliation';
     TableauListeMouvement.Cols[30].Text:='Num Pièce';
     TableauListeMouvement.Cols[31].Text:='Num Avis';
     TableauListeMouvement.Cols[32].Text:='OdrMAp';
     TableauListeMouvement.Cols[33].Text:='SourceName';
     TableauListeMouvement.Cols[34].Text:='DataSourceName';
     TableauListeMouvement.Cols[35].Text:='DataTiers';
     TableauListeMouvement.Cols[36].Text:='RéfMouvement';
     TableauListeMouvement.Cols[37].Text:='Validation';
     TableauListeMouvement.Cols[38].Text:='P°Begin';
     TableauListeMouvement.Cols[39].Text:='P°End';
     TableauListeMouvement.Cols[40].Text:='P°Mvt';

     TableauListeMouvement.Cols[41].Text:='Code Utilisateur';
     TableauListeMouvement.Cols[42].Text:='Matricule Préleveur';
     TableauListeMouvement.Cols[43].Text:='Type véhicule';
     TableauListeMouvement.Cols[44].Text:='Tonage';

     TableauListeMouvement.Cols[45].Text:='Code Préleveur';
     TableauListeMouvement.Cols[46].Text:='Nom Préleveur';
     TableauListeMouvement.Cols[47].Text:='Prénom Prélveur';
     TableauListeMouvement.Cols[48].Text:='Indice Initial';
     TableauListeMouvement.Cols[49].Text:='Indice Final';

     TableauListeMouvement.Cols[50].Text:='Date Indice Initial';
     TableauListeMouvement.Cols[51].Text:='Heure Indice Initial';
     TableauListeMouvement.Cols[52].Text:='Date Indice Final';
     TableauListeMouvement.Cols[53].Text:='Heure Indice Final';
     TableauListeMouvement.Cols[54].Text:='Num Pont';

     TableauListeMouvement.RowCount:=2;
     TableauListeMouvement.Rows[1].Text:='';         

     RMouvement:=ChercherMouvement(PositionTypeMouvement,strtointeger(FSFicheSaisie.EditPositionMouvement.Text),AdresseFichierConcerne);
     OKMouvementeFinance:=RMouvement.MouvementeFinance;

     if(OKUtiliserIndexation)
     and(strtointeger(MidelLaters(DateMouvementDebut,7,10))=strtointeger(MidelLaters(DateMouvementFin,7,10)))then
     begin
          iAnnee:=strtointeger(MidelLaters(DateMouvementDebut,7,10));
          if(strtointeger(MidelLaters(DateMouvementDebut,4,5))=strtointeger(MidelLaters(DateMouvementFin,4,5)))then
          begin
               iMois:=strtointeger(MidelLaters(DateMouvementFin,4,5));
               PLMBegin:=inttostr(RMouvement.RegistrePositionListeMouvementParPeriode[iAnnee,iMois].PositionListeMouvementBegin);
               PLMEnd:=inttostr(RMouvement.RegistrePositionListeMouvementParPeriode[iAnnee,iMois].PositionListeMouvementEnd);
          end
          else
          begin
               PLMBegin:='0';
               PLMEnd:='999999999';
          end;
     end
     else
     begin
          PLMBegin:='0';
          PLMEnd:='999999999';
     end;

     FSFicheSaisie.EditPositionListeMouvementBeginAffiche.Text:=PLMBegin;
     FSFicheSaisie.EditPositionListeMouvementEndAffiche.Text:=PLMEnd;

     AdresseListeMouvement:=IndiqueAdresseListeMouvement(PositionTypeMouvement,TypeProcesReseauxListeMouvement);
     FSFicheSaisie.AfficheAdresseListeMouvement.Caption:=AdresseListeMouvement;

     FSFicheSaisie.RapportTraitementDomiciliation.Lines.Add('Chargement des pointeurs.');
     if(ChargerPointeur=true)then ChargerPointeurListeMouvement(AdresseListeMouvement,PLMBegin,PLMEnd,DateMouvementDebut,DateMouvementFin,'',TypeProces,'',CodeTiers,TypeTraitement,OKMouvementeFinance,FSFicheSaisie.RBSuspendreTraitement.Checked,AfficherValeurNulle,OKCreatePointeurLMouvement);

     TLocalisationGeographiqueCopie:=RemplireTLocalisationGeographique('FZone');

     RowSelect:=0;
     R:=0;
     IndiceFinControleTrieRow:=1;
     TotalGeneral:=0;
     //if(OKCreatePointeurLMouvement=true)then
     begin
           for iLM:=1 to ListeRegistreListeMouvementPointeur.Count-1 do
           begin
                Application.ProcessMessages;
                
                if(FSFicheSaisie.RBSuspendreTraitement.Checked=true)then
                begin
                     FSFicheSaisie.RapportTraitementDomiciliation.Lines.Add('Traitement suspendu.');
                     FSFicheSaisie.AffichePatientez.Visible:=false;
                     exit;
                end;

                if(PositionTypeMouvement<>'')then
                begin
                     if(inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).PositionTypeMouvement)=PositionTypeMouvement)
                     then OKMouvement:=true
                     else OKMouvement:=false;
                end
                else OKMouvement:=true;

                if(OKMouvement=true)then
                begin
                     if(AvisEtablis<>'')and(AvisEtablis<>'Tous')then
                     begin
                          if(strtoboolean(AvisEtablis)=true)then
                          begin
                               if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).ListeNumAvis<>'')
                               then OKMouvement:=true
                               else OKMouvement:=false;
                          end
                          else
                          begin
                               if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).ListeNumAvis='')
                               then OKMouvement:=true
                               else OKMouvement:=false;
                          end
                     end;
                end;

                if(OKMouvement=true)then
                begin
                     if(PositionMouvement<>'')then
                     begin
                          if(inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).PositionMouvement)=PositionMouvement)
                          then OKMouvement:=true
                          else OKMouvement:=false;
                     end;
                end;

                if(OKMouvement=true)then
                begin
                     if(DateMouvementDebut<>'')and(DateMouvementFin<>'')then
                     begin
                          if(datecorrecte(DateMouvementDebut)and datecorrecte(DateMouvementFin)and datecorrecte(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).DateMouvement))then
                          begin
                               if(strtodate(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).DateMouvement)>=strtodate(DateMouvementDebut))
                               and(strtodate(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).DateMouvement)<=strtodate(DateMouvementFin))
                               then OKMouvement:=true
                               else OKMouvement:=false;
                          end
                          else OKMouvement:=false;
                     end;
                end;

                if(OKMouvement=true)then
                begin
                     if(DateLimiteExecution<>'')then
                     begin
                          if(datecorrecte(DateLimiteExecution)and datecorrecte(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).DateExecutionMouvement))then
                          begin
                               if(strtodate(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).DateExecutionMouvement)<=strtodate(DateLimiteExecution))
                               then OKMouvement:=true
                               else OKMouvement:=false;
                          end
                          else OKMouvement:=false;
                     end;
                end;

                if(OKMouvement=true)then
                begin
                     if(OKExecution<>'')and(OKExecution<>'Tous')then
                     begin
                          if strtoboolean(OKExecution)=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).OKExecution
                          then OKMouvement:=true
                          else OKMouvement:=false;
                     end;
                end;

                if(OKMouvement=true)then
                begin
                     if(CodePays<>'')then
                     begin
                          if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).CodePaysExecutionMouvement=CodePays)
                          then OKMouvement:=true
                          else OKMouvement:=false;
                     end;
                end;

                if(OKMouvement=true)then
                begin
                     if(CodeWilaya<>'')then
                     begin
                          if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).CodeWilayaExecutionMouvement=CodeWilaya)
                          then OKMouvement:=true
                          else OKMouvement:=false;
                     end;
                end;

                if(OKMouvement=true)then
                begin
                     if(CodeTiers<>'')then
                     begin
                          if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).CodeTiers=CodeTiers)
                          then OKMouvement:=true
                          else OKMouvement:=false;
                     end;
                end;

                if(OKMouvement=true)then
                begin
                     if(CodeDaira<>'')then
                     begin
                          if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).CodeDairaExecutionMouvement=CodeDaira)
                          then OKMouvement:=true
                          else OKMouvement:=false;
                     end;
                end;

                if(OKMouvement=true)then
                begin
                     if(CodeCommune<>'')then
                     begin
                          if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).CodeCommuneExecutionMouvement=CodeCommune)
                          then OKMouvement:=true
                          else OKMouvement:=false;
                     end;
                end;

                if(OKMouvement=true)then
                begin
                     R:=R+1;
                     TableauListeMouvement.Rows[R].Text:=inttostr(R);
                     TableauListeMouvement.Cells[1,R]:=inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).OrdreListeMouvement);
                     TableauListeMouvement.Cells[2,R]:=inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).NumListeMouvement);
                     TableauListeMouvement.Cells[3,R]:=inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).PositionTypeMouvement);
                     TableauListeMouvement.Cells[4,R]:=inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).PositionMouvement);
                     TableauListeMouvement.Cells[5,R]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).DateMouvement;
                     TableauListeMouvement.Cells[6,R]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).CodeTypeFormule;
                     TableauListeMouvement.Cells[7,R]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).TypeProces;
                     TableauListeMouvement.Cells[8,R]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).FichierTiersConserne;
                     TableauListeMouvement.Cells[9,R]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).CodeTiers;
                     //RTier:=ChercherTiers(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).TypeProces,TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).FichierTiersConserne,TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).CodeTiers,'');
                     TableauListeMouvement.Cells[10,R]:='';//RTier.NomTiers+' '+RTier.PrenomTiers;
                     if((AfficherInfiTiersSupplementaire=true)and(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).DataTiersSupplementaire<>''))then TableauListeMouvement.Cells[10,R]:=TableauListeMouvement.Cells[10,R]+' {'+TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).DataTiersSupplementaire+'}';
                     TableauListeMouvement.Cells[11,R]:=Vergule(floattostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).MontantMouvement),'2','C','');
                     TableauListeMouvement.Cells[12,R]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).DateExecutionMouvement;
                     TableauListeMouvement.Cells[13,R]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).CodePaysExecutionMouvement;
                     //TableauListeMouvement.Cells[14,R]:=ChercherLocalisationGeographique(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).CodePaysExecutionMouvement,'FPays').IntitulleLocalisationGeographique;
                     TableauListeMouvement.Cells[15,R]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).CodeWilayaExecutionMouvement;
                     //TableauListeMouvement.Cells[16,R]:=ChercherLocalisationGeographique(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).CodeWilayaExecutionMouvement,'FWilaya').IntitulleLocalisationGeographique;
                     TableauListeMouvement.Cells[17,R]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).CodeDairaExecutionMouvement;
                     //TableauListeMouvement.Cells[18,R]:=ChercherLocalisationGeographique(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).CodeDairaExecutionMouvement,'FDaira').IntitulleLocalisationGeographique;
                     TableauListeMouvement.Cells[19,R]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).CodeCommuneExecutionMouvement;
                     //TableauListeMouvement.Cells[20,R]:=ChercherLocalisationGeographique(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).CodeCommuneExecutionMouvement,'FCommune').IntitulleLocalisationGeographique;
                     TableauListeMouvement.Cells[21,R]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).CodeZoneExecutionMouvement;
                     //TableauListeMouvement.Cells[22,R]:=ChercherLocalisationGeographique(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).CodeZoneExecutionMouvement,'FZone').IntitulleLocalisationGeographique;

                     if(FSFicheSaisie.RBPreciserDestinationMouvement.Checked=true)then
                     begin
                          CodeReduit:=CodeLocalisationGeographiqueReduit(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).CodeZoneExecutionMouvement);
                          if(CodeReduit>=0)
                          then TableauListeMouvement.Cells[22,R]:=TLocalisationGeographiqueCopie[CodeReduit].IntitulleLocalisationGeographique
                          else TableauListeMouvement.Cells[22,R]:='';
                          TableauListeMouvement.Cells[23,R]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).AdresseExecutionMouvement;
                     end
                     else
                     begin
                          TableauListeMouvement.Cells[22,R]:='';
                          TableauListeMouvement.Cells[23,R]:='';
                     end;

                     if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).AdresseExecutionMouvement<>'')
                     then TableauListeMouvement.Cells[23,R]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).AdresseExecutionMouvement;

                     TableauListeMouvement.Cells[24,R]:=booleantostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).OKExecution);
                     TableauListeMouvement.Cells[25,R]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).NumProjetFinance;
                     //TableauListeMouvement.Cells[26,R]:=ChercherProjetFinance(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).NumProjetFinance,PositionProjetFinancesRecherche).DesignationProjetFinance;
                     TableauListeMouvement.Cells[27,R]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).ModePaiement;
                     TableauListeMouvement.Cells[28,R]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).NumDomiciliation;
                     TableauListeMouvement.Cells[29,R]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).Domiciliation;
                     TableauListeMouvement.Cells[30,R]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).NumPiece;
                     TableauListeMouvement.Cells[31,R]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).ListeNumAvis;
                     TableauListeMouvement.Cells[32,R]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).OrdreListeMouvementAppartenant;
                     TableauListeMouvement.Cells[33,R]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).SourceName;
                     TableauListeMouvement.Cells[34,R]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).DataSourceName;
                     TableauListeMouvement.Cells[35,R]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).DataTiersSupplementaire;
                     TableauListeMouvement.Cells[36,R]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).ReferenceSourceListeMouvement;
                     TableauListeMouvement.Cells[37,R]:=booleantostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).ValidationListeMouvement);
                     TableauListeMouvement.Cells[38,R]:=inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).PositionDetailMouvementBegin);
                     TableauListeMouvement.Cells[39,R]:=inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).PositionDetailMouvementEnd);
                     TableauListeMouvement.Cells[40,R]:=inttostr(iLM-1);
                     TableauListeMouvement.Cells[41,R]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).CodeUtilisateur;
                     TableauListeMouvement.Cells[42,R]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).MatriculeResponsablePrelevement;
                     TableauListeMouvement.Cells[43,R]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).TypeVehiculePrelevement;
                     TableauListeMouvement.Cells[44,R]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).TonageVehiculePrelevement;
                     TableauListeMouvement.Cells[45,R]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).CodeResponsablePrelevement;
                     TableauListeMouvement.Cells[46,R]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).NomResponsablePrelevement;
                     TableauListeMouvement.Cells[47,R]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).PrenomResponsablePrelevement;
                     TableauListeMouvement.Cells[48,R]:=Vergule(floattostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).IndiceInialPontBascule),'2','C','');
                     TableauListeMouvement.Cells[49,R]:=Vergule(floattostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).IndiceFinalPontBascule),'2','C','');
                     TableauListeMouvement.Cells[50,R]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).DateIndiceInial;
                     TableauListeMouvement.Cells[51,R]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).HeureIndiceInial;
                     TableauListeMouvement.Cells[52,R]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).DateIndiceFinal;
                     TableauListeMouvement.Cells[53,R]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).HeureIndiceFinal;
                     TableauListeMouvement.Cells[54,R]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).NumeroPont;

                     if(AfficherTotal=true)and(AfficherValeursMonetaires=true)
                     then TotalGeneral:=TotalGeneral+TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).MontantMouvement;

                     if(NumLiseMouvementSelect<>'')then
                     begin
                          if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).NumListeMouvement=strtointeger(NumLiseMouvementSelect))
                          then RowSelect:=R;
                     end;

                     FSFicheSaisie.RapportTraitementDomiciliation.Lines.Add('Mouvement N° '+inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).NumListeMouvement)+' du '+TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iLM]).DateMouvement+' Tiers: '+TableauListeMouvement.Cells[10,R]);
                end;
           end;
     end;

     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);

     if(R>0)then
            begin
                  IndiceFinControleTrieRow:=R;
                  if(AfficherTotal=true)and(AfficherValeursMonetaires=true)then
                  begin
                       TableauListeMouvement.RowCount:=R+3;
                       TableauListeMouvement.Rows[TableauListeMouvement.RowCount-1].Text:='';
                       TableauListeMouvement.Rows[TableauListeMouvement.RowCount-2].Text:='';
                       TableauListeMouvement.Cells[11,TableauListeMouvement.RowCount-2]:='';
                       TableauListeMouvement.Cells[10,TableauListeMouvement.RowCount-1]:='Total:';
                       TableauListeMouvement.Cells[11,TableauListeMouvement.RowCount-1]:=Vergule(floattostr(TotalGeneral),'2','C','');;
                  end
                  else TableauListeMouvement.RowCount:=R+1;
            end
            else
            begin
                 TableauListeMouvement.RowCount:=2;

            end;

     NotRow:='';

     if(AfficherValeursMonetaires=false)
     then NotCol:='1;3;4;6-8;11;13;15;17;19;21;33;34;35;36;37;38;40-54'
     else NotCol:='1;3;4;6-8;   13;15;17;19;21;33;34;35;36;37;38;40-54';

     if(FSFicheSaisie.RBPreciserDestinationMouvement.Checked=true)
     then NotCol:='1;3;4;6-8;12-21;24-26;28-54'
     else NotCol:='1;3;4;6-8;12-26;28-54';

     for C:=1 to TableauListeMouvement.ColCount-1 do
     if ExisteNumInTexte(inttostr(C),NotCol)then TableauListeMouvement.ColWidths[C]:=0;

     IndiquerNomPrenomMultiTiers(TableauListeMouvement,7,8,9,'10','','','','','','','');

     AjusterColWidth(TableauListeMouvement,NotRow,NotCol);

     if(DateLimiteExecution<>'')then
     begin
          RubriqueTrie:=12;
          TypeData:='Date';
     end
     else
     begin
          if(FSFicheSaisie.RBTrieNum.Checked=true)then
          begin
               RubriqueTrie:=2;
               TypeData:='Num';
          end
          else
          begin
               RubriqueTrie:=5;
               TypeData:='Date';
          end;
     end;

     if(FSFicheSaisie.RBTrierRubriqueSelecte.Checked=true)and(FSFicheSaisie.RBTrieAucun.Checked=false)then
     begin
          TrierTableauARowSpecial(TableauListeMouvement,1,IndiceFinControleTrieRow,1,inttostr(RubriqueTrie),TypeData,'+');

          RowSelect:=0;
          R:=1;
          While(R<=TableauListeMouvement.RowCount-1)and(RowSelect=0)do
          begin
               if(strtointeger(TableauListeMouvement.Cells[2,R])=strtointeger(NumLiseMouvementSelect))
               then RowSelect:=R;
          R:=R+1;
          end;
     end;

     if(NumLiseMouvementSelect='')or(RowSelect<=0)or(RowSelect>TableauListeMouvement.RowCount-1)
     then RowSelect:=TableauListeMouvement.RowCount-1;

     TableauListeMouvement.Row:=RowSelect;
     FSFicheSaisie.TableauListeMouvementClick(TableauListeMouvement);
     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);

     FSFicheSaisie.RapportTraitementDomiciliation.Lines.Add('Fin du traitement.');
     FSFicheSaisie.AffichePatientez.Visible:=false;

     AccelerationAffichageTableau(TableauListeMouvement,false);

     FSFicheSaisie.EditExecutionProcAfficheListeMouvementPointeur.Text:='0';
end;

Procedure ListeAvisPointeurSpeciale(Tableau:TStringGrid; DesignationTypeAvis,ModePaiement,Domiciliation,DateDebut,DateFin,NumProjetFinance,NumFiche,NumRubrique,NumPlanificateur,TypeProces,AvisConcerneTiers,CodeTiers,TiersSupplementaire:string; IndiceRubriqueTrieCol:integer; AfficheAvisAnnuler,AfficherAvisExecutesNonExecutes,AfficherAvisExecutes,AfficherAvisNonExecutes,AfficherPartieCommune,PartieCommuneDetaille,RBJustifierAvisNonJustifieAvis,RBJustifierAvis,RBNonJustifieAvis,AfficherValeurNulle,AfficherInfoTiersSupplementaire:boolean);
var  i,iP,R,P,n,l,PCs,PTCs,iST,IBegin,IEnd,iPAP,NumFicheCherche,CodeReduit:integer; PourcentagePartCommune,Solde:real;  OKAvis,OKTiers,InclureArchivePrelevementUniteFond,InclureListeMouvement,InclureSituationMarche,OKPieceManquante:boolean; NotRow,NotCol,Adresse,DebitCreditTypeMouvement,ListeOrdreMouvemen:string;  RAvisTrouver:RAviss;
     Document,DetailOperation,Destination,TypeAvis,DesignationGroupe,ListeFichierTiersGroupe,TypeProcesRecherche,FichierconcerneRecherche,EtatAvisMaintenu,TypeProcesAvis,FichierConserneAvis,AdresseAvis,TypeProcesPrelevement,FichierConsernePrelevement,AdressePrelevement,PositionPrelevement,TiersDatat:string;
     PositionTypeAvis,NumTypeAvis,SigneDebitCredit:integer; CompteImputation,DebitCredit,DebitCreditAvis,JourneauxAuxiliaireUtilise,TypeProcesControleReseaux,NSMarcheSelect,TypeTraitement:string;
     RapportTraitement:TMemo;
     OKCreatePointeurTableau,OKCreatePointeurAvis,OKCreatePointeurLMouvement,OKCreatePointeurPrelevementUF,OKTypeMouvement:boolean;
     var A,B: cardinal;
     LeHandle:HWND;
     FichierConserne,NotRows:string;
     TTypeAvisChargement:TTypeAviss;
     TUniteFondsPointeur:TUniteFondss;  
     MoyenTransport,MatriculeTransport,NomChauffeur,PrenomChauffeur,PieceIdentite:string;
begin
     OKCreatePointeurAvis:=false;
     OKCreatePointeurLMouvement:=false;
     OKCreatePointeurPrelevementUF:=false;

     ListeRegistreTableauPointeur:=TList.Create;   OKCreatePointeurTableau:=true;
     RegistreTableauPointeur:=TRegistreTableauPointeur.Create;

     A:=GetTickCount;
     InclureListeMouvement:=false;
     InclureSituationMarche:=false;
     InclureArchivePrelevementUniteFond:=false;

     if(Tableau=FSTraitementDonnees.TableauAvis)then TypeTraitement:='Domiciliation';
     if(Tableau=FSTraitementDonnees.TableauFinanceTiers)then TypeTraitement:='Tiers' ;

     if(TypeTraitement='Domiciliation')then RapportTraitement:=FSTraitementDonnees.RapportTraitementDomiciliation;
     if(TypeTraitement='Tiers')then RapportTraitement:=FSTraitementDonnees.RapportTraitementTiers;

     RapportTraitement.Lines.Text:='';
     RapportTraitement.Lines.Add('Début de traitement:');

     NSMarcheSelect:='';

     if(FSTraitementDonnees.RBListeMouvement.Checked=true)then InclureListeMouvement:=true;
     if(FSTraitementDonnees.RBInclureSituationMarche.Checked=true)then InclureSituationMarche:=true;
     if(FSTraitementDonnees.RBPrelevement.Checked=true)then InclureArchivePrelevementUniteFond:=true;
     if(FSTraitementDonnees.RBTousMouvementPrelevementSituationMarche.Checked=true)then
     begin
          InclureListeMouvement:=true;
          InclureSituationMarche:=true;
          InclureArchivePrelevementUniteFond:=true;
     end;

     if(CodeTiers='')then
     begin
          InclureListeMouvement:=false;
          InclureSituationMarche:=false;
     end;

     FSTraitementDonnees.TableauNumPiece.ColCount:=3;
     FSTraitementDonnees.TableauNumPiece.Cols[0].Text:='N';
     FSTraitementDonnees.TableauNumPiece.Cols[1].Text:='Date';
     FSTraitementDonnees.TableauNumPiece.Cols[2].Text:='Num Pièce';

     FSTraitementDonnees.TableauNumPiece.RowCount:=2;
     FSTraitementDonnees.TableauNumPiece.Rows[1].Text:='';
     PCs:=0;

     FSTraitementDonnees.TableauToutesNumPiece.ColCount:=6;
     FSTraitementDonnees.TableauToutesNumPiece.Cols[0].Text:='N';
     FSTraitementDonnees.TableauToutesNumPiece.Cols[1].Text:='Date';
     FSTraitementDonnees.TableauToutesNumPiece.Cols[2].Text:='Num Pièce';
     FSTraitementDonnees.TableauToutesNumPiece.Cols[3].Text:='C.Tiers';
     FSTraitementDonnees.TableauToutesNumPiece.Cols[4].Text:='Tiers';
     FSTraitementDonnees.TableauToutesNumPiece.Cols[5].Text:='Source';

     FSTraitementDonnees.TableauToutesNumPiece.RowCount:=2;
     FSTraitementDonnees.TableauToutesNumPiece.Rows[1].Text:='';
     PTCs:=0;

     AccelerationAffichageTableau(Tableau,true);

     Tableau.ColCount:=30;
     Tableau.Cols[0].Text:='Or.';
     Tableau.Cols[1].Text:='N°Avis';
     Tableau.Cols[2].Text:='Date Avis';
     Tableau.Cols[3].Text:='Date Exécut°';
     Tableau.Cols[4].Text:='Mode Paiement';
     Tableau.Cols[5].Text:='Domiciliation';
     if(CodeTiers<>'Tous')then Tableau.Cols[6].Text:='Pièce'else Tableau.Cols[6].Text:='Solde au: '+datetostr(stringtodate(DateDebut,'Solde')-1);
     Tableau.Cols[7].Text:='M.Débit';
     Tableau.Cols[8].Text:='M.Crédit';
     Tableau.Cols[9].Text:='Code Tiers';
     Tableau.Cols[10].Text:='Tiers';
     Tableau.Cols[11].Text:='Nature de l''opération';
     Tableau.Cols[12].Text:='Imputation';
     Tableau.Cols[13].Text:='Débit/Crédit';
     Tableau.Cols[14].Text:='Réf.';
     Tableau.Cols[15].Text:='Validitée';
     Tableau.Cols[16].Text:='Origine';
     Tableau.Cols[17].Text:='Tiers';
     Tableau.Cols[18].Text:='Structure';
     Tableau.Cols[19].Text:='Comptabilité';
     Tableau.Cols[20].Text:='Solde';
     Tableau.Cols[21].Text:='Commentaire';
     Tableau.Cols[22].Text:='Matricule';
     Tableau.Cols[23].Text:='P°';
     Tableau.Cols[24].Text:='BaseAvis';
     Tableau.Cols[25].Text:='TypeProces';
     Tableau.Cols[26].Text:='FichierConcerne';

     Tableau.Cols[27].Text:='N°Pvt';
     Tableau.Cols[28].Text:='Matricule Pvt';
     Tableau.Cols[29].Text:='Num UniteFond Pvt';

     Tableau.RowCount:=2;
     Tableau.Rows[1].Text:='';

     i:=0;
     RegistreTableauPointeur:=TRegistreTableauPointeur.Create;
     RegistreTableauPointeur.Cells0:=inttostr(1);
     RegistreTableauPointeur.Cells1:='Solde au:';
     RegistreTableauPointeur.Cells2:=datetostr(stringtodate(DateDebut,'Solde au:')-1);
     RegistreTableauPointeur.Cells3:='';
     RegistreTableauPointeur.Cells4:='';
     RegistreTableauPointeur.Cells5:='';
     RegistreTableauPointeur.Cells6:='';
     RegistreTableauPointeur.Cells7:='';
     RegistreTableauPointeur.Cells8:='';
     RegistreTableauPointeur.Cells9:='';
     RegistreTableauPointeur.Cells10:='';
     RegistreTableauPointeur.Cells11:='';
     RegistreTableauPointeur.Cells12:='';
     RegistreTableauPointeur.Cells13:='';
     RegistreTableauPointeur.Cells14:='';
     RegistreTableauPointeur.Cells15:='Maintenu';
     RegistreTableauPointeur.Cells16:='';
     RegistreTableauPointeur.Cells17:='';
     RegistreTableauPointeur.Cells18:='';
     RegistreTableauPointeur.Cells19:='';
     RegistreTableauPointeur.Cells20:='';
     RegistreTableauPointeur.Cells21:='';
     RegistreTableauPointeur.Cells22:='';
     RegistreTableauPointeur.Cells23:='';
     RegistreTableauPointeur.Cells24:='';
     RegistreTableauPointeur.Cells25:='';
     RegistreTableauPointeur.Cells26:='';
     RegistreTableauPointeur.Cells27:='';
     RegistreTableauPointeur.Cells28:='';
     RegistreTableauPointeur.Cells29:='';
     ListeRegistreTableauPointeur.Add(RegistreTableauPointeur);


     if(RBNonJustifieAvis=false)then
     begin
           if not(FunctionAdresseProces('Business','FBaseAvis','',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
           begin
                AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+'FBaseAvis '+'recherché !');
           end;

           TTypeAvisChargement:=RemplireTableauTypeAvis;

           ChBaseAvisListeAvis:=Adresse;
           assignfile(FBaseAvisListeAvis,ChBaseAvisListeAvis);
           try
           if FileExists(ChBaseAvisListeAvis)then
           Reset(FBaseAvisListeAvis)
           else Rewrite(FBaseAvisListeAvis);
           Seek(FBaseAvisListeAvis,0);
           while not eof(FBaseAvisListeAvis)do
           begin
                read(FBaseAvisListeAvis,RBaseAvisListeAvis);  Application.ProcessMessages;  if(FSTraitementDonnees.RBSuspendreTraitement.Checked)then begin RapportTraitement.Lines.Add('Traitement Suspendu.'); Exit; end;

                FichierConserneAvis:=RBaseAvisListeAvis.DesignationBaseAvis;

                RapportTraitement.Lines.Add('Traitement '+FichierConserneAvis);

                if(FunctionFichierInclu(FichierConserneAvis,FSTraitementDonnees.EditBaseAvisFichierConcerne.Text))then
                begin
                     TypeProcesAvis:='Business';

                     if not(FunctionAdresseProces(TypeProcesAvis,FichierConserneAvis,'',AdresseAvis,TypeProcesReseaux,NomDossierPartageReseauxOut))then
                     begin
                          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché {'+FichierConserneAvis+'} !');
                     end;

                     TypeProcesControleReseaux:=TypeProcesReseaux;

                     ChargerPointeurAvis(TypeProcesAvis,FichierConserneAvis,TypeProcesControleReseaux,DateDebut,DateFin,Domiciliation,TypeProces,AvisConcerneTiers,CodeTiers,TypeTraitement,AfficherAvisExecutesNonExecutes,AfficherAvisExecutes,AfficherAvisNonExecutes,AfficherValeurNulle,OKCreatePointeurAvis);
                     TProjetFinanceCopie:=TableauProjetFinance;
                     TAvisCopie:=RemplireTAvisPositionAvis(FichierConserneAvis);

                     P:=0;
                     for iP:=0 to ListeRegistreAvisPointeur.Count-1 do
                     begin
                          Application.ProcessMessages;  if(FSTraitementDonnees.RBSuspendreTraitement.Checked)then begin RapportTraitement.Lines.Add('Traitement Suspendu.'); Exit; end;
                          PourcentagePartCommune:=1;

                          EtatAvisMaintenu:='';

                          DebitCreditAvis:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DebitCredit;

                          if(DebitCreditAvis='')then
                          begin
                               if(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).PositionTypeAvis>0)then
                               begin
                                    NumTypeAvis:=TTypeAvisChargement[TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).PositionTypeAvis].NumTypeAvis;
                                    SigneDebitCredit:=TTypeAvisChargement[TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).PositionTypeAvis].SigneDebitCredit;
                                    CompteImputation:=TTypeAvisChargement[TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).PositionTypeAvis].CompteImputation;
                                    DebitCreditAvis:=TTypeAvisChargement[TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).PositionTypeAvis].DebitCredit;
                                    TypeProcesRecherche:=TTypeAvisChargement[TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).PositionTypeAvis].TypeProces;
                                    FichierconcerneRecherche:=TTypeAvisChargement[TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).PositionTypeAvis].FichierConserne;
                                    JourneauxAuxiliaireUtilise:=TTypeAvisChargement[TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).PositionTypeAvis].JourneauxAuxiliaireUtilise;
                               end
                               else
                               begin
                                    NumTypeAvis:=-1;
                                    SigneDebitCredit:=1;
                                    CompteImputation:='';
                                    DebitCredit:='';
                                    TypeProcesRecherche:='';
                                    FichierconcerneRecherche:='';
                                    JourneauxAuxiliaireUtilise:='';
                               end;
                          end;

                          if(TypeProcesControleReseaux='Réseaux')
                          then OKAvis:=not RegistreInvisibleReseaux(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).TypeProces,TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).AvisConcerneTiers,TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).CodeTiers,'','',RAutorisationPartageRegistreCopie)
                          else OKAvis:=true;

                          if(OKAvis=true)then
                          begin
                               if(TypeProcesControleReseaux='Réseaux')then
                               begin
                                    if(stringtodate(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DateAvis,'Avis')<stringtodate('01/01/'+ExerciceAnnee,'Avis'))
                                    then OKAvis:=FSTraitementDonnees.RBInclureValeurSousReseauxPrecedenteExercice.Checked;

                                    if(OKAvis=true)then
                                    begin
                                         if(stringtodate(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DateAvis,'Avis')<stringtodate(DateDebut,'Avis'))
                                         then OKAvis:=FSTraitementDonnees.RBInclureValeurSousReseauxPrecedentePeriode.Checked;
                                    end;
                               end;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(AfficheAvisAnnuler=false)then
                               begin
                                    OKAvis:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).ValiditeAvis;
                               end;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(AfficherAvisExecutesNonExecutes=true)then
                               begin
                                    OKAvis:=true
                               end
                               else
                               if(AfficherAvisExecutes=true)then
                               begin
                                    if(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DateExecute<>'')and(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DateExecute<>'  /  /    ')
                                    then OKAvis:=true
                                    else OKAvis:=false;
                               end
                               else
                               if(AfficherAvisNonExecutes=true)then
                               begin
                                    if(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DateExecute='')or(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DateExecute='  /  /    ')
                                    then OKAvis:=true
                                    else OKAvis:=false;
                               end
                               else
                               begin
                                    if(TypeTraitement='Domiciliation')then
                                    begin
                                         if(DebitCreditAvis=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).EtatSoldeDomiciliationAvisDebitCredit)
                                         and((TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DateExecute='')or(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DateExecute='  /  /    '))
                                         then EtatAvisMaintenu:='En instance';
                                    end;
                               end;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(NumProjetFinance<>'')then
                               begin
                                    if(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NumProjetFinance='')then
                                    begin
                                         if(AfficherPartieCommune=true)then
                                         begin
                                              PourcentagePartCommune:=FunctPourcentagePartieCommune(NumProjetFinance);
                                              if(PourcentagePartCommune>0)then OKAvis:=true else OKAvis:=false;
                                         end
                                         else OKAvis:=false;
                                    end
                                    else
                                    begin
                                         if(Firstlaters(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NumProjetFinance,longueur(NumProjetFinance))=NumProjetFinance)
                                         then OKAvis:=true
                                         else OKAvis:=false;
                                    end;
                               end
                               else OKAvis:=true;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(NumFiche<>'')
                               then
                               begin
                                    RubriqueArborescence('',TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NumRubrique,RRubriqueFicheTechniqueCopie,RFicheTechniqueCopie,RTypeAvisCopie);
                                    if(RFicheTechniqueCopie.NumFicheTechnique=strtointeger(NumFiche))
                                    then OKAvis:=true
                                    else OKAvis:=false;
                               end;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(NumRubrique<>'')
                               then
                               begin
                                    if(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NumRubrique=NumRubrique)
                                    then OKAvis:=true
                                    else OKAvis:=false;
                               end;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(NumPlanificateur<>'')
                               then
                               begin
                                    if(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NumPlanificateur=NumPlanificateur)
                                    then OKAvis:=true
                                    else OKAvis:=false;
                               end;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(DesignationTypeAvis<>'')and(DesignationTypeAvis<>'Tous')
                               then
                               begin
                                    if(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DesignationTypeAvis=DesignationTypeAvis)
                                    then OKAvis:=true
                                    else OKAvis:=false;
                               end
                               else OKAvis:=true;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(ModePaiement<>'')and(ModePaiement<>'Tous')
                               then
                               begin
                                    if(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).ModePaiement=ModePaiement)
                                    then OKAvis:=true
                                    else OKAvis:=false;
                               end
                               else OKAvis:=true;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(Domiciliation<>'')and(Domiciliation<>'Tous')
                               then
                               begin
                                    if(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DomiciliationAvis=Domiciliation)
                                    then OKAvis:=true
                                    else OKAvis:=false;
                               end
                               else OKAvis:=true;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(TypeProces<>'')and(TypeProces<>'Tous')
                               then
                               begin
                                    if(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).TypeProces=TypeProces)
                                    then OKAvis:=true
                                    else OKAvis:=false;
                               end
                               else OKAvis:=true;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(AvisConcerneTiers<>'')and(AvisConcerneTiers<>'Tous')
                               then
                               begin
                                    OKAvis:=FunctionFichierInclu(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).AvisConcerneTiers,AvisConcerneTiers);
                               end
                               else OKAvis:=true;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).PositionTypeAvis>0)then
                               begin
                                    NumTypeAvis:=TTypeAvisChargement[TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).PositionTypeAvis].NumTypeAvis;
                                    SigneDebitCredit:=TTypeAvisChargement[TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).PositionTypeAvis].SigneDebitCredit;
                                    CompteImputation:=TTypeAvisChargement[TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).PositionTypeAvis].CompteImputation;
                                    DebitCredit:=TTypeAvisChargement[TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).PositionTypeAvis].DebitCredit;
                                    TypeProcesRecherche:=TTypeAvisChargement[TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).PositionTypeAvis].TypeProces;
                                    FichierconcerneRecherche:=TTypeAvisChargement[TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).PositionTypeAvis].FichierConserne;
                                    JourneauxAuxiliaireUtilise:=TTypeAvisChargement[TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).PositionTypeAvis].JourneauxAuxiliaireUtilise;
                               end
                               else
                               begin
                                    NumTypeAvis:=-1;
                                    SigneDebitCredit:=1;
                                    CompteImputation:='';
                                    DebitCredit:='';
                                    TypeProcesRecherche:='';
                                    FichierconcerneRecherche:='';
                                    JourneauxAuxiliaireUtilise:='';
                               end;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(CodeTiers<>'Tous')then
                               begin
                                    if(CodeTiers<>'')then
                                    begin
                                         OKAvis:=TrouverGroupeTiers(CodeTiers,TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).CodeTiers,FSTraitementDonnees.RBActiverGroupeTiers.Checked,DesignationGroupe,ListeFichierTiersGroupe);
                                    end
                                    else OKAvis:=true;
                               end
                               else
                               if(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).ValiditeAvis=true)and(EtatAvisMaintenu<>'En instance')then
                               begin
                                    if(stringtodate(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DateAvis,'Avis')<=stringtodate(DateFin,'Avis'))
                                    then
                                    begin
                                         OKTiers:=false;
                                         R:=1;
                                         while(R<=i)and(OKTiers=false)do
                                         begin
                                              if(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).CodeTiers=TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells9)then
                                              begin
                                                   OKTiers:=true;
                                                   if(stringtodate(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DateAvis,'Avis')<stringtodate(DateDebut,'Avis'))then
                                                   begin
                                                        if(DebitCreditAvis='Débit')
                                                        then TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells6:=Vergule(floattostr(strtoreal(TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells6)+(SigneDebitCredit*TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Montant*PourcentagePartCommune)),'2','C','')
                                                        else TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells6:=Vergule(floattostr(strtoreal(TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells6)-(SigneDebitCredit*TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Montant*PourcentagePartCommune)),'2','C','');
                                                   end
                                                   else
                                                   begin
                                                        if(DebitCreditAvis='Débit')
                                                        then TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells7:=Vergule(floattostr(strtoreal(TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells7)+(SigneDebitCredit*TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Montant*PourcentagePartCommune)),'2','C','')
                                                        else TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells8:=Vergule(floattostr(strtoreal(TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells8)+(SigneDebitCredit*TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Montant*PourcentagePartCommune)),'2','C','');
                                                   end;

                                                   if(TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells23='')
                                                   then TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells23:=inttostr(P)
                                                   else TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells23:=TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells23+';'+inttostr(P);

                                                   RapportTraitement.Lines.Add(FichierConserneAvis+' N°'+inttostr(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NumAvis)+' Tiers: '+TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).CodeTiers+' '+TiersDatat);
                                              end;
                                              R:=R+1;
                                         end;
                                         OKAvis:=not OKTiers;
                                    end
                                    else OKAvis:=false;
                               end
                               else OKAvis:=true;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(stringtodate(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DateAvis,'Avis')<stringtodate(DateDebut,'Avis'))then
                               begin
                                    if(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).ValiditeAvis=true)and(EtatAvisMaintenu<>'En instance')then
                                    begin
                                         OKAvis:=false;
                                         if(CodeTiers<>'Tous')
                                         then
                                         begin
                                              if(ListeRegistreTableauPointeur.Count>0)then
                                              begin
                                                   if(DebitCreditAvis='Débit')
                                                   then TRegistreTableauPointeur(ListeRegistreTableauPointeur[0]).Cells7:=Vergule(floattostr(strtoreal(TRegistreTableauPointeur(ListeRegistreTableauPointeur[0]).Cells7)+(SigneDebitCredit*TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Montant*PourcentagePartCommune)),'2','C','')
                                                   else TRegistreTableauPointeur(ListeRegistreTableauPointeur[0]).Cells8:=Vergule(floattostr(strtoreal(TRegistreTableauPointeur(ListeRegistreTableauPointeur[0]).Cells8)+(SigneDebitCredit*TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Montant*PourcentagePartCommune)),'2','C','');
                                              end;

                                              RapportTraitement.Lines.Add(FichierConserneAvis+' N°'+inttostr(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NumAvis)+' Tiers: '+TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).CodeTiers+' '+TiersDatat);
                                         end
                                         else
                                         begin
                                              i:=i+1;

                                              RegistreTableauPointeur:=TRegistreTableauPointeur.Create;
                                              RegistreTableauPointeur.Cells0:=inttostr(i);
                                              RegistreTableauPointeur.Cells1:=Completezerogauche(inttostr(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NumAvis),'5');
                                              RegistreTableauPointeur.Cells2:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DateAvis;
                                              RegistreTableauPointeur.Cells3:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DateExecute;
                                              RegistreTableauPointeur.Cells4:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).ModePaiement;
                                              RegistreTableauPointeur.Cells5:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DomiciliationPiece;
                                              if(CodeTiers<>'Tous')then RegistreTableauPointeur.Cells6:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NumPiece;

                                              if(DebitCreditAvis='Débit')
                                              then RegistreTableauPointeur.Cells7:=Vergule(floattostr(SigneDebitCredit*TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Montant*PourcentagePartCommune),'2','C','')
                                              else RegistreTableauPointeur.Cells8:=Vergule(floattostr(SigneDebitCredit*TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Montant*PourcentagePartCommune),'2','C','');

                                              RegistreTableauPointeur.Cells9:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).CodeTiers;

                                              RegistreTableauPointeur.Cells10:='';//TiersDatat;

                                              if(FSTraitementDonnees.RBPreciserTypeAvis.Checked=true)
                                              then RegistreTableauPointeur.Cells11:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DesignationTypeAvis
                                              else RegistreTableauPointeur.Cells11:='';
                                              if(FSTraitementDonnees.RBPreciserNatureOperationAvis.Checked=true)then
                                              begin
                                                   if(RegistreTableauPointeur.Cells11<>'')
                                                   then RegistreTableauPointeur.Cells11:=RegistreTableauPointeur.Cells11+': '+TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NatureDepense
                                                   else RegistreTableauPointeur.Cells11:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NatureDepense;
                                              end
                                              else
                                              begin
                                                   if(RegistreTableauPointeur.Cells11='')then RegistreTableauPointeur.Cells11:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DesignationTypeAvis;
                                              end;

                                              RegistreTableauPointeur.Cells12:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).CompteImputation;
                                              RegistreTableauPointeur.Cells13:=DebitCreditAvis;
                                              RegistreTableauPointeur.Cells14:=Completezerogauche(inttostr(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NumAvis),'5');
                                              if(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).ValiditeAvis=true)
                                              then
                                              begin
                                                   if(EtatAvisMaintenu='')
                                                   then RegistreTableauPointeur.Cells15:='Maintenu'
                                                   else RegistreTableauPointeur.Cells15:=EtatAvisMaintenu;
                                              end
                                              else RegistreTableauPointeur.Cells15:='Annulé';
                                              RegistreTableauPointeur.Cells16:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Origine;
                                              RegistreTableauPointeur.Cells17:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).AvisConcerneTiers;

                                              if(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).PositionProjetFinance<>'')
                                              and(TProjetFinanceCopie[strtointeger(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).PositionProjetFinance)].DesignationProjetFinance<>'')
                                              then RegistreTableauPointeur.Cells18:=TProjetFinanceCopie[strtointeger(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).PositionProjetFinance)].DesignationProjetFinance
                                              else RegistreTableauPointeur.Cells18:='Partie Commune à '+floattostr(PourcentagePartCommune*100)+'%';

                                              RegistreTableauPointeur.Cells19:='';

                                              if(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Origine<>'')then
                                              begin
                                                   if(TAvisCopie[strtointeger(Lastlaters(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Origine,longueur(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Origine)-5))].NumAvis>0)then
                                                   begin
                                                        RegistreTableauPointeur.Cells19:=DebitCreditAvis+' '+TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NumDomiciliationAvis+'/'+TAvisCopie[strtointeger(Lastlaters(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Origine,longueur(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Origine)-5))].DebitCredit+' '+TAvisCopie[strtointeger(Lastlaters(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Origine,longueur(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Origine)-5))].NumDomiciliationAvis;
                                                   end;
                                              end;

                                              RegistreTableauPointeur.Cells20:='';
                                              RegistreTableauPointeur.Cells21:='';
                                              RegistreTableauPointeur.Cells22:='';
                                              RegistreTableauPointeur.Cells23:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).PositionAvis;
                                              RegistreTableauPointeur.Cells24:=FichierConserneAvis;
                                              RegistreTableauPointeur.Cells25:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).TypeProces;
                                              RegistreTableauPointeur.Cells26:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).AvisConcerneTiers;
                                              RegistreTableauPointeur.Cells27:='';
                                              RegistreTableauPointeur.Cells28:='';
                                              RegistreTableauPointeur.Cells29:='';

                                              ListeRegistreTableauPointeur.Add(RegistreTableauPointeur);

                                              RapportTraitement.Lines.Add(FichierConserneAvis+' N°'+inttostr(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NumAvis)+' Tiers: '+TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).CodeTiers+' '+TiersDatat);
                                         end;
                                    end
                                    else OKAvis:=false;
                               end
                               else
                               begin
                                    if(stringtodate(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DateAvis,'Avis')>=stringtodate(DateDebut,'Avis'))
                                    and(stringtodate(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DateAvis,'Avis')<=stringtodate(DateFin,'Avis'))
                                    then
                                    begin
                                         OKAvis:=true;
                                    end
                                    else OKAvis:=false;
                               end;
                          end;

                          if(OKAvis=true)then
                          begin
                               i:=i+1;

                               RegistreTableauPointeur:=TRegistreTableauPointeur.Create;
                               RegistreTableauPointeur.Cells0:=inttostr(i);
                               RegistreTableauPointeur.Cells1:=Completezerogauche(inttostr(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NumAvis),'5');
                               RegistreTableauPointeur.Cells2:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DateAvis;
                               RegistreTableauPointeur.Cells3:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DateExecute;
                               RegistreTableauPointeur.Cells4:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).ModePaiement;
                               RegistreTableauPointeur.Cells5:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DomiciliationPiece;
                               if(CodeTiers<>'Tous')then RegistreTableauPointeur.Cells6:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NumPiece;

                               if(DebitCreditAvis='Débit')
                               then RegistreTableauPointeur.Cells7:=Vergule(floattostr(SigneDebitCredit*TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Montant*PourcentagePartCommune),'2','C','')
                               else RegistreTableauPointeur.Cells8:=Vergule(floattostr(SigneDebitCredit*TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Montant*PourcentagePartCommune),'2','C','');

                               RegistreTableauPointeur.Cells9:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).CodeTiers;

                               RegistreTableauPointeur.Cells10:='';//TiersDatat;

                               if(FSTraitementDonnees.RBPreciserTypeAvis.Checked=true)
                               then RegistreTableauPointeur.Cells11:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).DesignationTypeAvis
                               else RegistreTableauPointeur.Cells11:='';

                               if(FSTraitementDonnees.RBPreciserNatureOperationAvis.Checked=true)then
                               begin
                                    if(RegistreTableauPointeur.Cells11<>'')
                                    then RegistreTableauPointeur.Cells11:=RegistreTableauPointeur.Cells11+': '+TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NatureDepense
                                    else RegistreTableauPointeur.Cells11:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NatureDepense;
                               end;

                               RegistreTableauPointeur.Cells12:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).CompteImputation;
                               RegistreTableauPointeur.Cells13:=DebitCreditAvis;
                               RegistreTableauPointeur.Cells14:=Completezerogauche(inttostr(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NumAvis),'5');
                               if(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).ValiditeAvis=true)
                               then
                               begin
                                    if(EtatAvisMaintenu='')
                                    then RegistreTableauPointeur.Cells15:='Maintenu'
                                    else RegistreTableauPointeur.Cells15:=EtatAvisMaintenu;
                               end
                               else RegistreTableauPointeur.Cells15:='Annulé';
                               RegistreTableauPointeur.Cells16:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Origine;
                               RegistreTableauPointeur.Cells17:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).AvisConcerneTiers;

                               if(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).PositionProjetFinance<>'')
                               and(TProjetFinanceCopie[strtointeger(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).PositionProjetFinance)].DesignationProjetFinance<>'')
                               then RegistreTableauPointeur.Cells18:=TProjetFinanceCopie[strtointeger(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).PositionProjetFinance)].DesignationProjetFinance
                               else RegistreTableauPointeur.Cells18:='Partie Commune à '+floattostr(PourcentagePartCommune*100)+'%';

                               RegistreTableauPointeur.Cells19:='';

                               if(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Origine<>'')then
                               begin
                                    if(TAvisCopie[strtointeger(Lastlaters(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Origine,longueur(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Origine)-5))].NumAvis>0)then
                                    begin
                                         RegistreTableauPointeur.Cells19:=DebitCreditAvis+' '+TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NumDomiciliationAvis+'/'+TAvisCopie[strtointeger(Lastlaters(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Origine,longueur(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Origine)-5))].DebitCredit+' '+TAvisCopie[strtointeger(Lastlaters(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Origine,longueur(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).Origine)-5))].NumDomiciliationAvis;
                                    end;
                               end;

                               RegistreTableauPointeur.Cells20:='';
                               RegistreTableauPointeur.Cells21:='';
                               RegistreTableauPointeur.Cells22:='';
                               RegistreTableauPointeur.Cells23:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).PositionAvis;
                               RegistreTableauPointeur.Cells24:=FichierConserneAvis;
                               RegistreTableauPointeur.Cells25:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).TypeProces;
                               RegistreTableauPointeur.Cells26:=TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).AvisConcerneTiers;
                               RegistreTableauPointeur.Cells27:='';
                               RegistreTableauPointeur.Cells28:='';
                               RegistreTableauPointeur.Cells29:='';

                               ListeRegistreTableauPointeur.Add(RegistreTableauPointeur);

                               RapportTraitement.Lines.Add(FichierConserneAvis+' N°'+inttostr(TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).NumAvis)+' Tiers: '+TRegistreAvisPointeur(ListeRegistreAvisPointeur[iP]).CodeTiers+' '+TiersDatat);
                          end;
                     P:=P+1;
                     end;
                end;
           LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
           end;
           finally
           Closefile(FBaseAvisListeAvis);
           end;
     end;

     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);

if(NumProjetFinance<>'')and(InclureArchivePrelevementUniteFond=true)then
begin
     InclureArchivePrelevementUniteFond:=ExisteNumProjetInAffectationCompteur(NumProjetFinance);
end;

if(InclureArchivePrelevementUniteFond=true)then
begin
     RapportTraitement.Lines.Add('Chargement pointeur Prélèvement:');
     ChargerPointeurPrelevementUniteFonds(DateDebut,DateFin,Domiciliation,TypeProces,AvisConcerneTiers,CodeTiers,TypeTraitement,AfficherValeurNulle,OKCreatePointeurPrelevementUF);
     TUniteFondsPointeur:=TableauUniteFonds;
     RapportTraitement.Lines.Add('Traitement Prélèvement:');

     iP:=0;
     while(iP<=ListeRegistrePrelevementUniteFondsPointeur.Count-1)do
     begin
          Application.ProcessMessages;  if(FSTraitementDonnees.RBSuspendreTraitement.Checked)then begin RapportTraitement.Lines.Add('Traitement Suspendu.'); Exit; end;
          iPAP:=iPAP+1;

          if(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).ValeurPrelevement<>0)
          then OKAvis:=true
          else OKAvis:=false;

          if(OKAvis=true)then
          begin
               OKAvis:=not TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).ValeurPrecise;
          end;

          if(OKAvis=true)then
          begin
               if(FSTraitementDonnees.RBActiverPiecesManquantes.Checked=true)then
               begin
                    if(FSTraitementDonnees.RBSpecifiePeriodeSelect.Checked=true)then
                    begin
                         if(stringtodate(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).DatePrelevement,'Prelevement')>=stringtodate(DateDebut,'Prelevement'))
                         and(stringtodate(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).DatePrelevement,'Prelevement')<=stringtodate(DateFin,'Prelevement'))
                         then OKPieceManquante:=true
                         else OKPieceManquante:=false;
                    end
                    else OKPieceManquante:=true;

                    if(OKPieceManquante=true)then
                    begin
                         PTCs:=PTCs+1;
                         FSTraitementDonnees.TableauToutesNumPiece.Rows[PTCs].Text:=inttostr(PTCs);
                         FSTraitementDonnees.TableauToutesNumPiece.Cells[1,PTCs]:=TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).DatePrelevement;
                         FSTraitementDonnees.TableauToutesNumPiece.Cells[2,PTCs]:=TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).NumPiece;
                         FSTraitementDonnees.TableauToutesNumPiece.Cells[3,PTCs]:=TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).CodeTiers;;
                         FSTraitementDonnees.TableauToutesNumPiece.Cells[4,PTCs]:='';//TiersDatat;
                         FSTraitementDonnees.TableauToutesNumPiece.Cells[5,PTCs]:='Prélèvement N°: '+inttostr(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).NumPrelevement)+' Mat: '+TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).Matricule;
                    end;
               end;
          end;

          if(OKAvis=true)then
          begin
               if(NumProjetFinance<>'')
               then
               begin
                    if(Firstlaters(NumProjetFinancePrelevement(inttostr(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).NumPrelevement),TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).Matricule),longueur(NumProjetFinance))=NumProjetFinance)
                    then OKAvis:=true
                    else OKAvis:=false;
               end
               else OKAvis:=true;
          end;

          if(OKAvis=true)then
          begin
               if(ModePaiement<>'')
               and(ModePaiement<>'Tous')
               then
               begin
                    if(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).ModePaiement=ModePaiement)
                    then OKAvis:=true
                    else OKAvis:=false;
               end
               else OKAvis:=true;
          end;

          if(OKAvis=true)then
          begin
               if(Domiciliation<>'')
               and(Domiciliation<>'Tous')
               then
               begin
                    if(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).Domiciliation=Domiciliation)
                    then OKAvis:=true
                    else OKAvis:=false;
               end
               else OKAvis:=true;
          end;

          if(OKAvis=true)then
          begin
               if(TypeProces<>'')
               and(TypeProces<>'Tous')
               then
               begin
                    if(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).TypeProces=TypeProces)
                    then OKAvis:=true
                    else OKAvis:=false;
               end
               else OKAvis:=true;
          end;

          if(OKAvis=true)then
          begin
               if(AvisConcerneTiers<>'')
               and(AvisConcerneTiers<>'Tous')
               then
               begin
                    OKAvis:=FunctionFichierInclu(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).FichierConcerne,AvisConcerneTiers);
               end
               else OKAvis:=true;
          end;

          if(OKAvis=true)then
          begin
               if(CodeTiers<>'Tous')then
               begin
                    if(CodeTiers<>'')
                    then
                    begin
                         if(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).CodeTiers<>'Tous')
                         then OKAvis:=TrouverGroupeTiers(CodeTiers,TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).CodeTiers,FSTraitementDonnees.RBActiverGroupeTiers.Checked,DesignationGroupe,ListeFichierTiersGroupe)
                         else OKAvis:=true;
                    end
                    else OKAvis:=false;
               end
               else
               begin
                    if(stringtodate(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).DatePrelevement,'Prelevement')<=stringtodate(DateFin,'Prelevement'))then
                    begin
                         OKTiers:=false;
                         R:=1;
                         while(R<=i)and(OKTiers=false)do
                         begin
                              if(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).CodeTiers=TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells9)then
                              begin
                                   OKTiers:=true;

                                   TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells8:=Vergule(floattostr(strtoreal(TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells8)+(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).ValeurPrelevement*TUniteFondsPointeur[TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).NumUniteFonds].ValeurMonetaireUnitaire)),'2','C','');

                                   RapportTraitement.Lines.Add('Prélèvement N°'+inttostr(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).NumPrelevement)+'/'+TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).Matricule+' du '+TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).DatePrelevement+' Tiers: '+TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).CodeTiers+' '+TiersDatat);
                              end;
                              R:=R+1;
                         end;
                         OKAvis:=not OKTiers;
                    end
                    else OKTiers:=false;
               end;
          end;

          if(OKAvis=true)then
          begin
               if(FSTraitementDonnees.RBActiverPiecesManquantes.Checked=true)then
               begin
                    if(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).NumPiece<>'')then
                    begin
                         if(FSTraitementDonnees.RBSpecifiePeriodeSelect.Checked=true)then
                         begin
                              if(stringtodate(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).DatePrelevement,'Prelevement')>=stringtodate(DateDebut,'Prelevement'))
                              and(stringtodate(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).DatePrelevement,'Prelevement')<=stringtodate(DateFin,'Prelevement'))
                              then OKPieceManquante:=true
                              else OKPieceManquante:=false;
                         end
                         else OKPieceManquante:=true;

                         if(OKPieceManquante=true)then
                         begin
                              PCs:=PCs+1;
                              FSTraitementDonnees.TableauNumPiece.Rows[PCs].Text:=inttostr(PCs);
                              FSTraitementDonnees.TableauNumPiece.Cells[1,PCs]:=TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).DatePrelevement;
                              FSTraitementDonnees.TableauNumPiece.Cells[2,PCs]:=TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).NumPiece;
                         end;
                    end;
               end;
          end;

          if(OKAvis=true)then
          begin
               if(stringtodate(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).DatePrelevement,'Prelevement')<stringtodate(DateDebut,'Prelevement'))then
               begin
                    if(CodeTiers<>'')
                    and(CodeTiers<>'Tous')
                    then
                    begin
                         OKAvis:=false;

                         TRegistreTableauPointeur(ListeRegistreTableauPointeur[0]).Cells8:=Vergule(floattostr(strtoreal(TRegistreTableauPointeur(ListeRegistreTableauPointeur[0]).Cells8)+(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).ValeurPrelevement)),'2','C','');
                    end
                    else OKAvis:=false;
               end
               else
               if(stringtodate(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).DatePrelevement,'Prelevement')>=stringtodate(DateDebut,'Prelevement'))
               and(stringtodate(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).DatePrelevement,'Prelevement')<=stringtodate(DateFin,'Prelevement'))
               then
               begin
                    OKAvis:=true;
               end
               else OKAvis:=false;
          end;

          if(OKAvis=true)then
          begin
               i:=i+1;
               RegistreTableauPointeur:=TRegistreTableauPointeur.Create;
               RegistreTableauPointeur.Cells0:=inttostr(i);
               RegistreTableauPointeur.Cells1:=Completezerogauche(inttostr(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).NumPrelevement),'5');
               RegistreTableauPointeur.Cells2:=TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).DatePrelevement;
               RegistreTableauPointeur.Cells3:=TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).DatePrelevement;
               RegistreTableauPointeur.Cells4:=TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).ModePaiement;
               RegistreTableauPointeur.Cells5:=TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).Domiciliation;
               if(CodeTiers<>'Tous')then RegistreTableauPointeur.Cells6:=TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).NumPiece;

               RegistreTableauPointeur.Cells8:=Vergule(floattostr(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).ValeurPrelevement),'2','C','');

               RegistreTableauPointeur.Cells9:=TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).CodeTiers;

               RegistreTableauPointeur.Cells10:='';//TiersDatat;

               if(FSTraitementDonnees.RBPreciserNatureOperationMouvement.Checked=true)
               then Document:='Prélèvement N°: '+inttostr(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).NumPrelevement)+'/'+TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).Matricule
               else Document:='';

               if(Document<>'')then RegistreTableauPointeur.Cells11:=Document+'.  ';

               RegistreTableauPointeur.Cells12:='';
               RegistreTableauPointeur.Cells13:='Crédit';
               RegistreTableauPointeur.Cells14:=inttostr(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).NumPrelevementUniteFonds);
               RegistreTableauPointeur.Cells15:='Maintenu';
               RegistreTableauPointeur.Cells16:='UF';
               RegistreTableauPointeur.Cells17:=TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).FichierConcerne;
               RegistreTableauPointeur.Cells18:='';
               RegistreTableauPointeur.Cells19:='';
               RegistreTableauPointeur.Cells20:='';
               RegistreTableauPointeur.Cells21:='';
               RegistreTableauPointeur.Cells22:='';
               RegistreTableauPointeur.Cells23:=TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).PositionPrelevementUniteFonds;
               RegistreTableauPointeur.Cells24:='FPrelevement';
               RegistreTableauPointeur.Cells25:=TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).TypeProces;
               RegistreTableauPointeur.Cells26:=TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).FichierConcerne;
               RegistreTableauPointeur.Cells27:=inttostr(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).NumPrelevement);
               RegistreTableauPointeur.Cells28:=TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).Matricule;
               RegistreTableauPointeur.Cells29:=inttostr(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).NumPrelevementUniteFonds);


               ListeRegistreTableauPointeur.Add(RegistreTableauPointeur);

               RapportTraitement.Lines.Add('Prélèvement N°'+inttostr(TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).NumPrelevement)+'/'+TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).Matricule+' du '+TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).DatePrelevement+' Tiers: '+TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur[iP]).CodeTiers+' '+TiersDatat);
          end;
     iP:=iP+1;
     end;
end;

   LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);


FSTraitementDonnees.TableauIndiqueTypeMouvement.ColCount:=2;
FSTraitementDonnees.TableauIndiqueTypeMouvement.Cols[0].Text:='N°';
FSTraitementDonnees.TableauIndiqueTypeMouvement.Cols[1].Text:='TypeMouvement';

FSTraitementDonnees.TableauIndiqueTypeMouvement.RowCount:=2;
FSTraitementDonnees.TableauIndiqueTypeMouvement.Rows[1].Text:='';
n:=0;
l:=0;

if(InclureListeMouvement=true)then
begin
     RapportTraitement.Lines.Add('Traitement Mouvement:');

     TTypeMouvementCopie:=RemplireTTypeMouvement;
     TMouvementCopie:=RemplireTMouvement('');
     TLocalisationGeographiqueCopie:=RemplireTLocalisationGeographique('FZone');

     R:=1;  //?????
     while(R<=FSTraitementDonnees.TableauIndiqueAdresseListeMouvement.RowCount-1)do
     begin
           ChargerPointeurListeMouvement(FSTraitementDonnees.TableauIndiqueAdresseListeMouvement.Cells[2,R],'','',DateDebut,DateFin,Domiciliation,TypeProces,AvisConcerneTiers,CodeTiers,TypeTraitement,True,FSTraitementDonnees.RBSuspendreTraitement.Checked,AfficherValeurNulle,OKCreatePointeurLMouvement);
           RapportTraitement.Lines.Add('Fin chargement pointeurs Liste mouvement '+inttostr(ListeRegistreListeMouvementPointeur.Count)+' registres.');

           for iP:=0 to ListeRegistreListeMouvementPointeur.Count-1 do
           begin
                Application.ProcessMessages;  if(FSTraitementDonnees.RBSuspendreTraitement.Checked)then begin RapportTraitement.Lines.Add('Traitement Suspendu.'); Exit; end;

                if(AfficherInfoTiersSupplementaire=true)and(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DataTiersSupplementaire<>'')then TiersDatat:=TiersDatat+' {'+TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DataTiersSupplementaire+'}';

                if(stringtodate(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DateMouvement,'Mouvement'+inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumListeMouvement))<=stringtodate(DateFin,'Mouvement DateFin'))
                then OKAvis:=true
                else OKAvis:=false;

                if(OKAvis=true)then
                begin
                     if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DebitCredit='')then
                     begin
                          RTypeMouvement.PositionTypeMouvement:=TTypeMouvementCopie[TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionTypeMouvement].PositionTypeMouvement;
                          RTypeMouvement.CodeTypeMouvement:=TTypeMouvementCopie[TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionTypeMouvement].CodeTypeMouvement;
                          RTypeMouvement.DesignationTypeMouvement:=TTypeMouvementCopie[TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionTypeMouvement].DesignationTypeMouvement;
                          RTypeMouvement.SigneTypeMouvement:=TTypeMouvementCopie[TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionTypeMouvement].SigneTypeMouvement;
                          RTypeMouvement.AutoriserMouvementAVide:=TTypeMouvementCopie[TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionTypeMouvement].AutoriserMouvementAVide;

                          RMouvement.PositionTypeMouvement:=TMouvementCopie[TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionMouvement].PositionTypeMouvement;
                          RMouvement.PositionMouvement:=TMouvementCopie[TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionMouvement].PositionMouvement;
                          RMouvement.CodeMouvement:=TMouvementCopie[TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionMouvement].CodeMouvement;
                          RMouvement.DesignationMouvement:=TMouvementCopie[TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionMouvement].DesignationMouvement;
                          RMouvement.TypeProces:=TMouvementCopie[TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionMouvement].TypeProces;
                          RMouvement.FichierTiersConserne:=TMouvementCopie[TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionMouvement].FichierTiersConserne;
                          RMouvement.TypeStock:=TMouvementCopie[TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionMouvement].TypeStock;
                          RMouvement.CompteConserne:=TMouvementCopie[TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionMouvement].CompteConserne;
                          RMouvement.DebitCredit:=TMouvementCopie[TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionMouvement].DebitCredit;
                          RMouvement.SigneDebitCredit:=TMouvementCopie[TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionMouvement].SigneDebitCredit;
                          RMouvement.TypePrixMouvement:=TMouvementCopie[TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionMouvement].TypePrixMouvement;
                          RMouvement.CodeTypeFormuleBase:=TMouvementCopie[TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionMouvement].CodeTypeFormuleBase;
                          RMouvement.MouvementeCompte:=TMouvementCopie[TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionMouvement].MouvementeCompte;
                          RMouvement.MouvementeFinance:=TMouvementCopie[TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionMouvement].MouvementeFinance;
                          RMouvement.EtatUtilise:=TMouvementCopie[TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionMouvement].EtatUtilise;
                          RMouvement.AvecDateExecution:=TMouvementCopie[TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionMouvement].AvecDateExecution;
                          RMouvement.AvecLocalisationGeographique:=TMouvementCopie[TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionMouvement].AvecLocalisationGeographique;
                          RMouvement.ListeAppartenanceCodeMouvement:=TMouvementCopie[TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionMouvement].ListeAppartenanceCodeMouvement;
                          RMouvement.PositionListeMouvementBegin:=TMouvementCopie[TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionMouvement].PositionListeMouvementBegin;
                          RMouvement.PositionListeMouvementEnd:=TMouvementCopie[TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionMouvement].PositionListeMouvementEnd;
                          RMouvement.RegistrePositionListeMouvementParPeriode:=TMouvementCopie[TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionMouvement].RegistrePositionListeMouvementParPeriode;

                          OKAvis:=RMouvement.MouvementeFinance;

                          if(RMouvement.DebitCredit<>'')then
                          begin
                               DebitCreditTypeMouvement:=RMouvement.DebitCredit;
                               SigneDebitCredit:=RMouvement.SigneDebitCredit;
                          end
                          else
                          begin
                               DebitCreditTypeMouvement:='Débit';
                               if(RTypeMouvement.SigneTypeMouvement='+')
                               then DebitCreditTypeMouvement:='Débit'
                               else DebitCreditTypeMouvement:='Crédit';
                               SigneDebitCredit:=1;
                          end;
                     end
                     else DebitCreditTypeMouvement:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DebitCredit;
                end;

                if(FSTraitementDonnees.RBActiverPiecesManquantes.Checked=true)then
                begin
                     if(OKAvis=true)then
                     begin
                          if(FSTraitementDonnees.RBSpecifiePeriodeSelect.Checked=true)then
                          begin
                               if(stringtodate(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DateMouvement,'Mouvement'+inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumListeMouvement))>=stringtodate(DateDebut,'Mouvement DateDebut'))
                               and(stringtodate(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DateMouvement,'Mouvement'+inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumListeMouvement))<=stringtodate(DateFin,'Mouvement DateFin '))
                               then OKPieceManquante:=true
                               else OKPieceManquante:=false;
                          end
                          else OKPieceManquante:=true;

                          if(OKPieceManquante=true)then
                          begin
                               PTCs:=PTCs+1;
                               FSTraitementDonnees.TableauToutesNumPiece.Rows[PTCs].Text:=inttostr(PTCs);
                               FSTraitementDonnees.TableauToutesNumPiece.Cells[1,PTCs]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DateMouvement;
                               if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).ReferenceSourceListeMouvement<>'')
                               then FSTraitementDonnees.TableauToutesNumPiece.Cells[2,PTCs]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).ReferenceSourceListeMouvement
                               else FSTraitementDonnees.TableauToutesNumPiece.Cells[2,PTCs]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumPiece;
                               FSTraitementDonnees.TableauToutesNumPiece.Cells[3,PTCs]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).CodeTiers;
                               FSTraitementDonnees.TableauToutesNumPiece.Cells[4,PTCs]:='';//TiersDatat;
                               FSTraitementDonnees.TableauToutesNumPiece.Cells[5,PTCs]:=RMouvement.DesignationMouvement+' N° '+inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumListeMouvement);
                          end;
                     end;
                end;

                if(OKAvis=true)and(stringtodate(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DateMouvement,'Mouvement'+inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumListeMouvement))>=stringtodate(DateDebut,'Mouvement DateDebut'))then
                begin
                     if existenuminTexte(inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).OrdreListeMouvement),ListeOrdreMouvemen)
                     then OKAvis:=false
                     else OKAvis:=true;
                end;

                if(OKAvis=true)then
                begin
                     if(RBJustifierAvisNonJustifieAvis=true)then
                     begin

                     end
                     else
                     if(RBJustifierAvis=true)then
                     begin
                          if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).ListeNumAvis<>'')
                          then OKAvis:=true
                          else OKAvis:=false;
                     end
                     else
                     if(RBNonJustifieAvis=true)then
                     begin
                          if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).ListeNumAvis='')
                          then OKAvis:=true
                          else OKAvis:=false;
                     end;
                end;

                if(OKAvis=true)then
                begin
                     if(CodeTiers<>'')and(CodeTiers<>'Tous')then
                     begin
                          if(AfficheAvisAnnuler=false)then
                          begin
                               OKAvis:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).OKExecution;
                          end
                          else OKAvis:=true;
                     end
                     else
                     begin
                          OKAvis:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).OKExecution;
                     end;
                end;

                if(OKAvis=true)then
                begin
                     if(AfficherAvisExecutesNonExecutes=true)then
                     begin
                          OKAvis:=true
                     end
                     else
                     if(AfficherAvisExecutes=true)then
                     begin
                          if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).OKExecution=true)
                          then OKAvis:=true
                          else OKAvis:=false;
                     end
                     else
                     if(AfficherAvisNonExecutes=true)then
                     begin
                          if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).OKExecution=false)
                          then OKAvis:=true
                          else OKAvis:=false;
                     end
                     else OKAvis:=true;
                end;

                if(OKAvis=true)then
                begin
                     if(NumProjetFinance<>'')
                     then
                     begin
                          if(Firstlaters(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumProjetFinance,longueur(NumProjetFinance))=NumProjetFinance)
                          then OKAvis:=true
                          else OKAvis:=false;
                     end
                     else OKAvis:=true;
                end;

                if(OKAvis=true)then
                begin
                     if(DesignationTypeAvis='')or(DesignationTypeAvis='Tous')
                     then OKAvis:=true
                     else OKAvis:=false;
                end;

                if(OKAvis=true)then
                begin
                     if(ModePaiement<>'')and(ModePaiement<>'Tous')
                     then
                     begin
                          if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).ModePaiement=ModePaiement)
                          then OKAvis:=true
                          else OKAvis:=false;
                     end
                     else OKAvis:=true;
                end;

                if(OKAvis=true)then
                begin
                     if(Domiciliation<>'')and(Domiciliation<>'Tous')
                     then
                     begin
                          if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).Domiciliation=Domiciliation)
                          then OKAvis:=true
                          else OKAvis:=false;
                     end
                     else OKAvis:=true;
                end;

                if(OKAvis=true)then
                begin
                     if(TypeProces<>'')and(TypeProces<>'Tous')
                     then
                     begin
                          if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).TypeProces=TypeProces)
                          then OKAvis:=true
                          else OKAvis:=false;
                     end
                     else OKAvis:=true;
                end;

                if(OKAvis=true)then
                begin
                     if(AvisConcerneTiers<>'')and(AvisConcerneTiers<>'Tous')
                     then
                     begin
                          OKAvis:=FunctionFichierInclu(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).FichierTiersConserne,AvisConcerneTiers);
                     end
                     else OKAvis:=true;
                end;

                if(OKAvis=true)then
                begin
                     if(CodeTiers<>'Tous')then
                     begin
                          if(CodeTiers<>'')then
                          begin
                               OKAvis:=TrouverGroupeTiers(CodeTiers,TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).CodeTiers,FSTraitementDonnees.RBActiverGroupeTiers.Checked,DesignationGroupe,ListeFichierTiersGroupe);
                          end
                          else OKAvis:=true;
                     end
                     else
                     begin
                          if(stringtodate(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DateMouvement,'Mouvement'+inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumListeMouvement))<=stringtodate(DateFin,'Mouvement DateFin '))
                          then
                          begin
                               OKTiers:=false;
                               R:=1;
                               while(R<=i)and(OKTiers=false)do
                               begin
                                    if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).CodeTiers=TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells9)then
                                    begin
                                         OKTiers:=true;
                                         if(stringtodate(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DateMouvement,'Mouvement'+inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumListeMouvement))<stringtodate(DateDebut,'Mouvement DateDebut'))then
                                         begin
                                              if(DebitCreditTypeMouvement='Débit')
                                              then TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells6:=Vergule(floattostr(strtoreal(TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells6)+TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).MontantMouvement*SigneDebitCredit),'2','C','')
                                              else TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells6:=Vergule(floattostr(strtoreal(TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells6)-TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).MontantMouvement*SigneDebitCredit),'2','C','');
                                         end
                                         else
                                         begin
                                              if(DebitCreditTypeMouvement='Débit')
                                              then TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells7:=Vergule(floattostr(strtoreal(TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells7)+TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).MontantMouvement*SigneDebitCredit),'2','C','')
                                              else TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells8:=Vergule(floattostr(strtoreal(TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells8)+TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).MontantMouvement*SigneDebitCredit),'2','C','');
                                         end;

                                         RapportTraitement.Lines.Add(RMouvement.DesignationMouvement+' N°: '+inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumListeMouvement)+' Tiers: '+TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).CodeTiers+' '+TiersDatat);
                                    end;
                                    R:=R+1;
                               end;
                               OKAvis:=not OKTiers;
                          end
                          else OKAvis:=false;
                     end;
                end;

                if(OKAvis=true)then
                begin
                     if(TiersSupplementaire<>'')then
                     begin
                          if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DataTiersSupplementaire=TiersSupplementaire)
                          then OKAvis:=true
                          else OKAvis:=false;
                     end;
                end;

                if(FSTraitementDonnees.RBActiverPiecesManquantes.Checked=true)then
                begin
                     if(OKAvis=true)and(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).ReferenceSourceListeMouvement<>'')or(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumPiece<>'')then
                     begin
                          if(FSTraitementDonnees.RBSpecifiePeriodeSelect.Checked=true)then
                          begin
                               if(stringtodate(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DateMouvement,'Mouvement'+inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumListeMouvement))>=stringtodate(DateDebut,'Mouvement DateDebut'))
                               and(stringtodate(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DateMouvement,'Mouvement'+inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumListeMouvement))<=stringtodate(DateFin,'Mouvement DateDebut'))
                               then OKPieceManquante:=true
                               else OKPieceManquante:=false;
                          end
                          else OKPieceManquante:=true;

                          if(OKPieceManquante=true)then
                          begin
                               PCs:=PCs+1;
                               FSTraitementDonnees.TableauNumPiece.Rows[PCs].Text:=inttostr(PCs);
                               FSTraitementDonnees.TableauNumPiece.Cells[1,PCs]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DateMouvement;
                               if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).ReferenceSourceListeMouvement<>'')
                               then FSTraitementDonnees.TableauNumPiece.Cells[2,PCs]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).ReferenceSourceListeMouvement
                               else FSTraitementDonnees.TableauNumPiece.Cells[2,PCs]:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumPiece;
                          end;
                     end;
                end;

                if(OKAvis=true)then
                begin
                     if(stringtodate(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DateMouvement,'Mouvement'+inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumListeMouvement))<stringtodate(DateDebut,'Mouvement DateDebut'))then
                     begin
                          if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).OKExecution=true)then
                          begin
                               OKAvis:=false;
                               if(CodeTiers<>'Tous')
                               then
                               begin
                                    if(DebitCreditTypeMouvement='Débit')
                                    then TRegistreTableauPointeur(ListeRegistreTableauPointeur[0]).Cells7:=Vergule(floattostr(strtoreal(TRegistreTableauPointeur(ListeRegistreTableauPointeur[0]).Cells7)+TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).MontantMouvement*SigneDebitCredit),'2','C','')
                                    else TRegistreTableauPointeur(ListeRegistreTableauPointeur[0]).Cells8:=Vergule(floattostr(strtoreal(TRegistreTableauPointeur(ListeRegistreTableauPointeur[0]).Cells8)+TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).MontantMouvement*SigneDebitCredit),'2','C','');
                               end
                               else
                               begin
                                    i:=i+1;
                                    RegistreTableauPointeur:=TRegistreTableauPointeur.Create;
                                    RegistreTableauPointeur.Cells0:=inttostr(i);
                                    RegistreTableauPointeur.Cells1:=Completezerogauche(inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).OrdreListeMouvement),'5');
                                    RegistreTableauPointeur.Cells2:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DateMouvement;
                                    RegistreTableauPointeur.Cells3:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DateExecutionMouvement;
                                    RegistreTableauPointeur.Cells4:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).ModePaiement;
                                    RegistreTableauPointeur.Cells5:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).Domiciliation;
                                    if(CodeTiers<>'Tous')then RegistreTableauPointeur.Cells6:='';

                                    if(DebitCreditAvis='Débit')
                                    then RegistreTableauPointeur.Cells6:=Vergule(floattostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).MontantMouvement*SigneDebitCredit),'2','C','')
                                    else RegistreTableauPointeur.Cells6:=Vergule(floattostr((-1)*TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).MontantMouvement*SigneDebitCredit),'2','C','');

                                    RegistreTableauPointeur.Cells9:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).CodeTiers;

                                    RegistreTableauPointeur.Cells10:='';//TiersDatat;

                                    if(FSTraitementDonnees.RBPreciserNatureOperationMouvement.Checked=true)then
                                    begin
                                         Document:=TMouvementCopie[TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionMouvement].DesignationMouvement+' N° '+inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumListeMouvement)
                                    end
                                    else Document:='';

                                    {if(FSTraitementDonnees.RBPreciserDetailOperationMouvement.Checked=true)then
                                    begin
                                         //RTypeMouvement:=ChercherTypeMouvement(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionTypeMouvement,AdresseFichierConcerne);
                                         //DetailOperation:=NatureOperationMouvementPointeur(RTypeMouvement.DesignationTypeMouvement,inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).OrdreListeMouvement),FSTraitementDonnees.RBPreciserDetailOperationQuantiteMouvement.Checked)

                                         DetailOperation:=NatureOperationMouvementPointeur(TTypeMouvementCopie[TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionTypeMouvement].DesignationTypeMouvement,inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).OrdreListeMouvement),FSTraitementDonnees.RBPreciserDetailOperationQuantiteMouvement.Checked)
                                    end
                                    else DetailOperation:='';

                                    if(FSTraitementDonnees.RBPreciserDestinationMouvement.Checked=true)then
                                    begin
                                         Destination:=ChercherLocalisationGeographique(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).CodeZoneExecutionMouvement,'FZone').IntitulleLocalisationGeographique;
                                         if(Destination<>'')
                                         then Destination:='; '+'Déstination: '+Destination;
                                    end
                                    else Destination:='';}

                                    if(FSTraitementDonnees.RBPreciserDestinationMouvement.Checked=true)then
                                    begin
                                         CodeReduit:=CodeLocalisationGeographiqueReduit(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).CodeZoneExecutionMouvement);
                                         if(CodeReduit>=0)
                                         then Destination:='{'+TLocalisationGeographiqueCopie[CodeReduit].IntitulleLocalisationGeographique+'}'
                                         else Destination:='';
                                    end;

                                    if(Document<>'')then RegistreTableauPointeur.Cells11:=Document+'.  ';
                                    //if(DetailOperation<>'')then RegistreTableauPointeur.Cells11:=RegistreTableauPointeur.Cells11+DetailOperation+'.  ';
                                    if(Destination<>'')then RegistreTableauPointeur.Cells11:=RegistreTableauPointeur.Cells11+Destination+'.';

                                    RegistreTableauPointeur.Cells12:='';
                                    RegistreTableauPointeur.Cells13:=DebitCreditTypeMouvement;
                                    RegistreTableauPointeur.Cells14:=Completezerogauche(inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumListeMouvement),'5');
                                    if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).OKExecution=true)
                                    then RegistreTableauPointeur.Cells15:='Maintenu Exécuter'
                                    else RegistreTableauPointeur.Cells15:='Maintenu Non Exécuter';
                                    RegistreTableauPointeur.Cells16:='LM';
                                    RegistreTableauPointeur.Cells17:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).FichierTiersConserne;
                                    RegistreTableauPointeur.Cells18:=ChercherProjetFinance(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumProjetFinance,PositionProjetFinancesRecherche).DesignationProjetFinance;
                                    RegistreTableauPointeur.Cells19:=inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionTypeMouvement);
                                    RegistreTableauPointeur.Cells20:='';
                                    RegistreTableauPointeur.Cells21:='';
                                    RegistreTableauPointeur.Cells22:='';
                                    RegistreTableauPointeur.Cells23:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionListeMouvement;

                                    if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).ListeNumAvis<>'')
                                    then RegistreTableauPointeur.Cells24:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).ListeNumAvis
                                    else RegistreTableauPointeur.Cells24:='FListeMouvement';
                                    RegistreTableauPointeur.Cells25:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).TypeProces;
                                    RegistreTableauPointeur.Cells26:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).FichierTiersConserne;
                                    RegistreTableauPointeur.Cells27:=inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionTypeMouvement);
                                    RegistreTableauPointeur.Cells28:=inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionMouvement);
                                    RegistreTableauPointeur.Cells29:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).CodeZoneExecutionMouvement;

                                    ListeRegistreTableauPointeur.Add(RegistreTableauPointeur);
                               end;

                               RapportTraitement.Lines.Add(RMouvement.DesignationMouvement+' N°: '+inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumListeMouvement)+' Tiers: '+TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).CodeTiers+' '+TiersDatat);
                          end
                          else OKAvis:=false;
                     end
                     else
                     begin
                          if(stringtodate(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DateMouvement,'Mouvement'+inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumListeMouvement))>=stringtodate(DateDebut,'Mouvement DateDebut'))
                          and(stringtodate(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DateMouvement,'Mouvement'+inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumListeMouvement))<=stringtodate(DateFin,'Mouvement DateFin'))
                          then
                          begin
                               OKAvis:=true;
                          end
                          else OKAvis:=false;
                     end;
                end;

                if(OKAvis=true)then
                begin
                     i:=i+1;
                     RegistreTableauPointeur:=TRegistreTableauPointeur.Create;
                     RegistreTableauPointeur.Cells0:=inttostr(i);
                     RegistreTableauPointeur.Cells1:=Completezerogauche(inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).OrdreListeMouvement),'5');
                     RegistreTableauPointeur.Cells2:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DateMouvement;
                     RegistreTableauPointeur.Cells3:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).DateExecutionMouvement;
                     RegistreTableauPointeur.Cells4:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).ModePaiement;
                     RegistreTableauPointeur.Cells5:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).Domiciliation;
                     if(CodeTiers<>'Tous')then RegistreTableauPointeur.Cells6:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumPiece;

                     if(DebitCreditTypeMouvement='Débit')
                     then RegistreTableauPointeur.Cells7:=Vergule(floattostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).MontantMouvement*SigneDebitCredit),'2','C','')
                     else RegistreTableauPointeur.Cells8:=Vergule(floattostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).MontantMouvement*SigneDebitCredit),'2','C','');

                     RegistreTableauPointeur.Cells9:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).CodeTiers;

                     RegistreTableauPointeur.Cells10:='';//TiersDatat;

                     if(FSTraitementDonnees.RBPreciserNatureOperationMouvement.Checked=true)then
                     begin
                          Document:=TMouvementCopie[TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionMouvement].DesignationMouvement+' N° '+inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumListeMouvement)
                     end
                     else Document:='';

                     {if(FSTraitementDonnees.RBPreciserDetailOperationMouvement.Checked=true)then
                     begin
                          //RTypeMouvement:=ChercherTypeMouvement(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionTypeMouvement,AdresseFichierConcerne);
                          //DetailOperation:=NatureOperationMouvementPointeur(RTypeMouvement.DesignationTypeMouvement,inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).OrdreListeMouvement),FSTraitementDonnees.RBPreciserDetailOperationQuantiteMouvement.Checked)

                          DetailOperation:=NatureOperationMouvementPointeur(TTypeMouvementCopie[TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionTypeMouvement].DesignationTypeMouvement,inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).OrdreListeMouvement),FSTraitementDonnees.RBPreciserDetailOperationQuantiteMouvement.Checked)
                     end
                     else DetailOperation:='';

                     if(FSTraitementDonnees.RBPreciserDestinationMouvement.Checked=true)then
                     begin
                          Destination:=ChercherLocalisationGeographique(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).CodeZoneExecutionMouvement,'FZone').IntitulleLocalisationGeographique;
                          if(Destination<>'')
                          then Destination:='; '+'Déstination: '+Destination;
                     end
                     else Destination:='';}

                     if(FSTraitementDonnees.RBPreciserDestinationMouvement.Checked=true)then
                     begin
                          CodeReduit:=CodeLocalisationGeographiqueReduit(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).CodeZoneExecutionMouvement);
                          if(CodeReduit>=0)
                          then Destination:='{'+TLocalisationGeographiqueCopie[CodeReduit].IntitulleLocalisationGeographique+'}'
                          else Destination:='';
                     end;

                     if(Document<>'')then RegistreTableauPointeur.Cells11:=Document+'.  ';
                     //if(DetailOperation<>'')then RegistreTableauPointeur.Cells11:=RegistreTableauPointeur.Cells11+DetailOperation+'.  ';
                     if(Destination<>'')then RegistreTableauPointeur.Cells11:=RegistreTableauPointeur.Cells11+Destination+'.';

                     RegistreTableauPointeur.Cells12:='';
                     RegistreTableauPointeur.Cells13:=DebitCreditTypeMouvement;
                     RegistreTableauPointeur.Cells14:=Completezerogauche(inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumListeMouvement),'5');
                     if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).OKExecution=true)
                     then RegistreTableauPointeur.Cells15:='Maintenu Exécuter'
                     else RegistreTableauPointeur.Cells15:='Maintenu Non Exécuter';
                     RegistreTableauPointeur.Cells16:='LM';
                     RegistreTableauPointeur.Cells17:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).FichierTiersConserne;
                     RegistreTableauPointeur.Cells18:=ChercherProjetFinance(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumProjetFinance,PositionProjetFinancesRecherche).DesignationProjetFinance;
                     RegistreTableauPointeur.Cells19:=inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionTypeMouvement);
                     RegistreTableauPointeur.Cells20:='';
                     RegistreTableauPointeur.Cells21:='';
                     RegistreTableauPointeur.Cells22:='';
                     RegistreTableauPointeur.Cells23:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionListeMouvement;

                     if(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).ListeNumAvis<>'')
                     then RegistreTableauPointeur.Cells24:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).ListeNumAvis
                     else RegistreTableauPointeur.Cells24:='FListeMouvement';
                     RegistreTableauPointeur.Cells25:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).TypeProces;
                     RegistreTableauPointeur.Cells26:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).FichierTiersConserne;
                     RegistreTableauPointeur.Cells27:=inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionTypeMouvement);
                     RegistreTableauPointeur.Cells28:=inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).PositionMouvement);
                     RegistreTableauPointeur.Cells29:=TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).CodeZoneExecutionMouvement;

                     ListeRegistreTableauPointeur.Add(RegistreTableauPointeur);

                     RapportTraitement.Lines.Add(RMouvement.DesignationMouvement+' N°: '+inttostr(TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).NumListeMouvement)+' Tiers: '+TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur[iP]).CodeTiers+' '+TiersDatat);

                     n:=1;
                     OKTypeMouvement:=false;
                     while(n<=l)and(OKTypeMouvement=false)do
                     begin
                          if(FSTraitementDonnees.TableauIndiqueTypeMouvement.Cells[1,n]=RTypeMouvement.DesignationTypeMouvement)then
                          begin
                               OKTypeMouvement:=true;
                          end;
                     n:=n+1;
                     end;

                     if(OKTypeMouvement=false)then
                     begin
                          l:=l+1;
                          FSTraitementDonnees.TableauIndiqueTypeMouvement.Rows[l].Text:=inttostr(l);
                          FSTraitementDonnees.TableauIndiqueTypeMouvement.Cells[1,l]:=RTypeMouvement.DesignationTypeMouvement;
                     end;
                end;
           end;
     R:=R+1;
     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
     end;
     ///////////////////////////////////////////////////////////////////////////
end;
    RapportTraitement.Lines.Add('Fin traitement mouvement !');
    LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);

    if(l>0)then FSTraitementDonnees.TableauIndiqueTypeMouvement.RowCount:=l+1
            else FSTraitementDonnees.TableauIndiqueTypeMouvement.RowCount:=2;

if(InclureSituationMarche=true)then
begin
     RapportTraitement.Lines.Add('Traitement Situation de marché:');

     //////////////////////////////////////////////////////////////////////////
     OpenFParc(RParc);
     ChSituationMarche:=RParc.Parcours+'\'+Exercice+'FSituationMarche';
     assignfile(FSituationMarche,ChSituationMarche);
     try
     if FileExists(ChSituationMarche)then
     Reset(FSituationMarche)
     else Rewrite(FSituationMarche);
     Seek(FSituationMarche,0);
     iST:=0;
     while not eof(FSituationMarche)do
     begin
          read(FSituationMarche,RSituationMarche); Application.ProcessMessages;  if(FSTraitementDonnees.RBSuspendreTraitement.Checked)then begin RapportTraitement.Lines.Add('Traitement Suspendu.'); Exit; end;

          RMarcheCopie:=ChercherMarche(RSituationMarche.NSMarche);

          if(RMarcheCopie.DebitCredit<>'')then
          begin
               DebitCreditTypeMouvement:=RMarcheCopie.DebitCredit;
          end
          else
          begin
               DebitCreditTypeMouvement:='Crédit';
          end;

          if(RSituationMarche.NSituationMarche<>0)
          then OKAvis:=true
          else OKAvis:=false;

          if(OKAvis=true)then
          begin
               if(NSMarcheSelect<>'')then
               begin
                    if(inttostr(RSituationMarche.NSMarche)=NSMarcheSelect)
                    then OKAvis:=true
                    else OKAvis:=false;
               end;
          end;

          if(OKAvis=true)then
          begin
               if(RBJustifierAvisNonJustifieAvis=true)then
               begin

               end
               else
               if(RBJustifierAvis=true)then
               begin
                    if(RSituationMarche.ListeNumAvis<>'')
                    then OKAvis:=true
                    else OKAvis:=false;
               end
               else
               if(RBNonJustifieAvis=true)then
               begin
                    if(RSituationMarche.ListeNumAvis='')
                    then OKAvis:=true
                    else OKAvis:=false;
               end;
          end;

          if(OKAvis=true)then
          begin
               if(CodeTiers<>'')and(CodeTiers<>'Tous')then
               begin
                    if(AfficheAvisAnnuler=false)then
                    begin
                         OKAvis:=RSituationMarche.ValiditeSituation;
                    end
                    else OKAvis:=true;
               end
               else
               begin
                    OKAvis:=RSituationMarche.ValiditeSituation;
               end;
          end;

          if(OKAvis=true)then
          begin
               if(NumProjetFinance<>'')
               then
               begin
                    if(Firstlaters(RMarcheCopie.NumProjetFinance,longueur(NumProjetFinance))=NumProjetFinance)
                    then OKAvis:=true
                    else OKAvis:=false;
               end;
          end;

          if(OKAvis=true)then
          begin
               if(ModePaiement<>'')and(ModePaiement<>'Tous')
               then
               begin
                    if(RSituationMarche.ModePaiement=ModePaiement)
                    then OKAvis:=true
                    else OKAvis:=false;
               end
               else OKAvis:=true;
          end;

          if(OKAvis=true)then
          begin
               if(Domiciliation<>'')and(Domiciliation<>'Tous')
               then
               begin
                    if(RSituationMarche.Domiciliation=Domiciliation)
                    then OKAvis:=true
                    else OKAvis:=false;
               end
               else OKAvis:=true;
          end;

          if(OKAvis=true)then
          begin
               if(TypeProces<>'')and(TypeProces<>'Tous')
               then
               begin
                    if(RMarcheCopie.TypeProces=TypeProces)
                    then OKAvis:=true
                    else OKAvis:=false;
               end
               else OKAvis:=true;
          end;

          if(OKAvis=true)then
          begin
               if(AvisConcerneTiers<>'')and(AvisConcerneTiers<>'Tous')
               then
               begin
                    OKAvis:=FunctionFichierInclu(RMarcheCopie.FichierConcerneTiers,AvisConcerneTiers);

                    if(RMarcheCopie.FichierConcerneTiers=AvisConcerneTiers)
                    then OKAvis:=true
                    else OKAvis:=false;
               end
               else OKAvis:=true;
          end;

          if(OKAvis=true)then
          begin
               if(CodeTiers<>'Tous')then
               begin
                    if(CodeTiers<>'')then
                    begin
                         if(RMarcheCopie.CodeMaitreOuvrage=CodeTiers)
                         then OKAvis:=true
                         else OKAvis:=false;

                         OKAvis:=TrouverGroupeTiers(CodeTiers,RMarcheCopie.CodeMaitreOuvrage,FSTraitementDonnees.RBActiverGroupeTiers.Checked,DesignationGroupe,ListeFichierTiersGroupe);
                    end
                    else OKAvis:=true;
               end
               else
               begin
                    if(StringToDate(RSituationMarche.DateSituationMarche,RSituationMarche.DesignationSituation)<=StringToDate(DateFin,'DateFin'))
                    then
                    begin
                         OKTiers:=false;
                         R:=1;
                         while(R<=i)and(OKTiers=false)do
                         begin
                              if(RMarcheCopie.CodeMaitreOuvrage=TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells9)then
                              begin
                                   OKTiers:=true;
                                   if(StringToDate(RSituationMarche.DateSituationMarche,RSituationMarche.DesignationSituation)<StringToDate(DateDebut,'DateDebut'))then
                                   begin
                                        if(DebitCreditTypeMouvement='Débit')
                                        then TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells6:=Vergule(floattostr(strtoreal(TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells6)+RSituationMarche.MontantSituationTTCNet),'2','C','')
                                        else TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells6:=Vergule(floattostr(strtoreal(TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells6)-RSituationMarche.MontantSituationTTCNet),'2','C','');
                                   end
                                   else
                                   begin
                                        if(DebitCreditTypeMouvement='Débit')
                                        then TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells7:=Vergule(floattostr(strtoreal(TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells7)+RSituationMarche.MontantSituationTTCNet),'2','C','')
                                        else TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells8:=Vergule(floattostr(strtoreal(TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells8)+RSituationMarche.MontantSituationTTCNet),'2','C','');
                                   end;

                                   RapportTraitement.Lines.Add('Situation N°: '+inttostr(RSituationMarche.NSituationMarche)+'/'+inttostr(RSituationMarche.NSMarche)+' du '+RSituationMarche.DateSituationMarche+' Tiers: '+RMarcheCopie.CodeMaitreOuvrage+' '+TiersDatat);
                              end;
                              R:=R+1;
                         end;
                         OKAvis:=not OKTiers;
                    end
                    else OKAvis:=false;
               end;
          end;

          if(OKAvis=true)then
          begin
               if(StringToDate(RSituationMarche.DateSituationMarche,RSituationMarche.DesignationSituation)<StringToDate(DateDebut,'DateDebut'))then
               begin
                    if(RSituationMarche.ValiditeSituation=true)then
                    begin
                         OKAvis:=false;
                         if(CodeTiers<>'Tous')
                         then
                         begin
                              if(DebitCreditTypeMouvement='Débit')
                              then TRegistreTableauPointeur(ListeRegistreTableauPointeur[0]).Cells7:=Vergule(floattostr(strtoreal(TRegistreTableauPointeur(ListeRegistreTableauPointeur[0]).Cells7)+RSituationMarche.MontantSituationTTCNet),'2','C','')
                              else TRegistreTableauPointeur(ListeRegistreTableauPointeur[0]).Cells8:=Vergule(floattostr(strtoreal(TRegistreTableauPointeur(ListeRegistreTableauPointeur[0]).Cells8)+RSituationMarche.MontantSituationTTCNet),'2','C','');
                         end
                         else
                         begin
                              i:=i+1;
                              RegistreTableauPointeur:=TRegistreTableauPointeur.Create;
                              RegistreTableauPointeur.Cells0:=inttostr(i);
                              RegistreTableauPointeur.Cells1:=Completezerogauche(inttostr(RSituationMarche.NSituationMarche),'5');
                              RegistreTableauPointeur.Cells2:=RSituationMarche.DateSituationMarche;
                              RegistreTableauPointeur.Cells3:=RSituationMarche.DateSituationMarche;
                              RegistreTableauPointeur.Cells4:=RSituationMarche.ModePaiement;
                              RegistreTableauPointeur.Cells5:=RSituationMarche.Domiciliation;
                              if(CodeTiers<>'Tous')then RegistreTableauPointeur.Cells6:='';

                              if(DebitCreditAvis='Débit')
                              then RegistreTableauPointeur.Cells6:=Vergule(floattostr(RSituationMarche.MontantSituationTTCNet),'2','C','')
                              else RegistreTableauPointeur.Cells6:=Vergule(floattostr((-1)*RSituationMarche.MontantSituationTTCNet),'2','C','');

                              RegistreTableauPointeur.Cells9:=RMarcheCopie.CodeMaitreOuvrage;

                              RegistreTableauPointeur.Cells10:='';//TiersDatat;

                              if(FSTraitementDonnees.RBPreciserMarcheRealisation.Checked=false)
                              then RegistreTableauPointeur.Cells11:=RSituationMarche.DesignationSituation+' N° '+Completezerogauche(inttostr(RSituationMarche.NSituationMarche),'2')+'/'+Lastlaters(RSituationMarche.DateSituationMarche,4)+' du '+RSituationMarche.DateSituationMarche
                              else RegistreTableauPointeur.Cells11:=RSituationMarche.DesignationSituation+' N° '+Completezerogauche(inttostr(RSituationMarche.NSituationMarche),'2')+'/'+Lastlaters(RSituationMarche.DateSituationMarche,4)+' du '+RSituationMarche.DateSituationMarche+' au marché N° '+Completezerogauche(inttostr(RSituationMarche.NSMarche),'2')+'/'+Lastlaters(RMarcheCopie.DateMarche,4)+' du '+RMarcheCopie.DateMarche;

                              RegistreTableauPointeur.Cells12:='';
                              RegistreTableauPointeur.Cells13:=DebitCreditTypeMouvement;
                              RegistreTableauPointeur.Cells14:=Completezerogauche(inttostr(RSituationMarche.NSituationMarche),'5');
                              if(RSituationMarche.ValiditeSituation=true)
                              then RegistreTableauPointeur.Cells15:='Maintenu'
                              else RegistreTableauPointeur.Cells15:='Annuler';
                              RegistreTableauPointeur.Cells16:='ST';
                              RegistreTableauPointeur.Cells17:=RMarcheCopie.FichierConcerneTiers;
                              RegistreTableauPointeur.Cells18:=ChercherProjetFinance(RMarcheCopie.NumProjetFinance,PositionProjetFinancesRecherche).DesignationProjetFinance;
                              RegistreTableauPointeur.Cells19:='';
                              RegistreTableauPointeur.Cells20:='';
                              RegistreTableauPointeur.Cells21:='';
                              RegistreTableauPointeur.Cells22:='';
                              RegistreTableauPointeur.Cells23:=inttostr(iST);

                              if(RSituationMarche.ListeNumAvis<>'')
                              then RegistreTableauPointeur.Cells24:=RSituationMarche.ListeNumAvis
                              else RegistreTableauPointeur.Cells24:='FSituation';
                              RegistreTableauPointeur.Cells25:=RMarcheCopie.TypeProces;
                              RegistreTableauPointeur.Cells26:=RMarcheCopie.FichierConcerneTiers;
                              RegistreTableauPointeur.Cells27:='';
                              RegistreTableauPointeur.Cells28:='';
                              RegistreTableauPointeur.Cells29:='';

                              ListeRegistreTableauPointeur.Add(RegistreTableauPointeur);
                         end;

                         RapportTraitement.Lines.Add('Situation N°: '+inttostr(RSituationMarche.NSituationMarche)+'/'+inttostr(RSituationMarche.NSMarche)+' du '+RSituationMarche.DateSituationMarche+' Tiers: '+RMarcheCopie.CodeMaitreOuvrage+' '+TiersDatat);
                    end
                    else OKAvis:=false;
               end
               else
               begin
                    if(StringToDate(RSituationMarche.DateSituationMarche,RSituationMarche.DesignationSituation)>=StringToDate(DateDebut,'DateDebut'))
                    and(StringToDate(RSituationMarche.DateSituationMarche,RSituationMarche.DesignationSituation)<=StringToDate(DateFin,'DateFin'))
                    then
                    begin
                         OKAvis:=true;
                    end
                    else OKAvis:=false;
               end;
          end;

          if(OKAvis=true)then
          begin
               i:=i+1;
               RegistreTableauPointeur:=TRegistreTableauPointeur.Create;
               RegistreTableauPointeur.Cells0:=inttostr(i);
               RegistreTableauPointeur.Cells1:=Completezerogauche(inttostr(RSituationMarche.NSituationMarche),'5');
               RegistreTableauPointeur.Cells2:=RSituationMarche.DateSituationMarche;
               RegistreTableauPointeur.Cells3:=RSituationMarche.DateSituationMarche;
               RegistreTableauPointeur.Cells4:=RSituationMarche.ModePaiement;
               RegistreTableauPointeur.Cells5:=RSituationMarche.Domiciliation;
               if(CodeTiers<>'Tous')then RegistreTableauPointeur.Cells6:=RSituationMarche.NumPiece;

               if(DebitCreditTypeMouvement='Débit')
               then RegistreTableauPointeur.Cells7:=Vergule(floattostr(RSituationMarche.MontantSituationTTCNet),'2','C','')
               else RegistreTableauPointeur.Cells8:=Vergule(floattostr(RSituationMarche.MontantSituationTTCNet),'2','C','');

               RegistreTableauPointeur.Cells9:=RMarcheCopie.CodeMaitreOuvrage;

               RegistreTableauPointeur.Cells10:='';//TiersDatat;

               if(FSTraitementDonnees.RBPreciserMarcheRealisation.Checked=false)
               then RegistreTableauPointeur.Cells11:=RSituationMarche.DesignationSituation+' N° '+Completezerogauche(inttostr(RSituationMarche.NSituationMarche),'2')+'/'+Lastlaters(RSituationMarche.DateSituationMarche,4)+' du '+RSituationMarche.DateSituationMarche
               else RegistreTableauPointeur.Cells11:=RSituationMarche.DesignationSituation+' N° '+Completezerogauche(inttostr(RSituationMarche.NSituationMarche),'2')+'/'+Lastlaters(RSituationMarche.DateSituationMarche,4)+' du '+RSituationMarche.DateSituationMarche+' au marché N° '+Completezerogauche(inttostr(RSituationMarche.NSMarche),'2')+'/'+Lastlaters(RMarcheCopie.DateMarche,4)+' du '+RMarcheCopie.DateMarche;

               RegistreTableauPointeur.Cells12:='';
               RegistreTableauPointeur.Cells13:=DebitCreditTypeMouvement;
               RegistreTableauPointeur.Cells14:=Completezerogauche(inttostr(RSituationMarche.NSituationMarche),'5');
               if(RSituationMarche.ValiditeSituation=true)
               then RegistreTableauPointeur.Cells15:='Maintenu'
               else RegistreTableauPointeur.Cells15:='Annuler';
               RegistreTableauPointeur.Cells16:='ST';
               RegistreTableauPointeur.Cells17:=RMarcheCopie.FichierConcerneTiers;
               RegistreTableauPointeur.Cells18:=ChercherProjetFinance(RMarcheCopie.NumProjetFinance,PositionProjetFinancesRecherche).DesignationProjetFinance;
               RegistreTableauPointeur.Cells19:='';
               RegistreTableauPointeur.Cells20:='';
               RegistreTableauPointeur.Cells21:='';
               RegistreTableauPointeur.Cells22:='';
               RegistreTableauPointeur.Cells23:=inttostr(iST);

               if(RSituationMarche.ListeNumAvis<>'')
               then RegistreTableauPointeur.Cells24:=RSituationMarche.ListeNumAvis
               else RegistreTableauPointeur.Cells24:='FSituation';
               RegistreTableauPointeur.Cells25:=RMarcheCopie.TypeProces;
               RegistreTableauPointeur.Cells26:=RMarcheCopie.FichierConcerneTiers;
               RegistreTableauPointeur.Cells27:='';
               RegistreTableauPointeur.Cells28:='';
               RegistreTableauPointeur.Cells29:='';

               ListeRegistreTableauPointeur.Add(RegistreTableauPointeur);

               RapportTraitement.Lines.Add('Situation N°: '+inttostr(RSituationMarche.NSituationMarche)+'/'+inttostr(RSituationMarche.NSMarche)+' du '+RSituationMarche.DateSituationMarche+' Tiers: '+RMarcheCopie.CodeMaitreOuvrage+' '+TiersDatat);
          end;
     iST:=iST+1;
     end;
     finally
     CloseFile(FSituationMarche);
     end;
     ///////////////////////////////////////////////////////////////////////////
end;

    LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);

    B:=GetTickCount;
    RapportTraitement.Lines.Add('Remlissage du tableau '+Tableau.Name);
    i:=0;
    for R:=0 to ListeRegistreTableauPointeur.Count-1 do
    begin
         i:=i+1;
         Tableau.Cells[0,i]:=TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells0;
         Tableau.Cells[1,i]:=TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells1;
         Tableau.Cells[2,i]:=TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells2;
         Tableau.Cells[3,i]:=TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells3;
         Tableau.Cells[4,i]:=TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells4;
         Tableau.Cells[5,i]:=TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells5;
         Tableau.Cells[6,i]:=TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells6;
         Tableau.Cells[7,i]:=TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells7;
         Tableau.Cells[8,i]:=TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells8;
         Tableau.Cells[9,i]:=TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells9;
         Tableau.Cells[10,i]:=TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells10;
         Tableau.Cells[11,i]:=TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells11;
         Tableau.Cells[12,i]:=TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells12;
         Tableau.Cells[13,i]:=TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells13;
         Tableau.Cells[14,i]:=TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells14;
         Tableau.Cells[15,i]:=TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells15;
         Tableau.Cells[16,i]:=TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells16;
         Tableau.Cells[17,i]:=TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells17;
         Tableau.Cells[18,i]:=TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells18;
         Tableau.Cells[19,i]:=TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells19;
         Tableau.Cells[20,i]:=TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells20;
         Tableau.Cells[21,i]:=TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells21;
         Tableau.Cells[22,i]:=TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells22;
         Tableau.Cells[23,i]:=TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells23;
         Tableau.Cells[24,i]:=TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells24;
         Tableau.Cells[25,i]:=TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells25;
         Tableau.Cells[26,i]:=TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells26;
         Tableau.Cells[27,i]:=TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells27;
         Tableau.Cells[28,i]:=TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells28;
         Tableau.Cells[29,i]:=TRegistreTableauPointeur(ListeRegistreTableauPointeur[R]).Cells29;

         RapportTraitement.Lines.Add('Remplissage: ligne '+inttostr(i));
    end;

     if(i>0)then Tableau.RowCount:=i+1
            else Tableau.RowCount:=2;

     Solde:=strtoreal(Tableau.Cells[7,1])-strtoreal(Tableau.Cells[8,1]);
     if(Solde>=0)then
     begin
          Tableau.Cells[7,1]:=Vergule(floattostr(Solde),'2','C','');
          Tableau.Cells[8,1]:='';
     end
     else
     begin
          Tableau.Cells[7,1]:='';
          Tableau.Cells[8,1]:=Vergule(floattostr((-1)*Solde),'2','C','');
     end;

     Tableau.ColWidths[19]:=0;

     NotRow:='';
     NotCol:='19';

     if(FSTraitementDonnees.RBAfficherProjetFinance.Checked=false)
     then
     begin
          Tableau.ColWidths[18]:=0;
          if(NotCol<>'')then NotCol:=NotCol+';18'
                        else NotCol:='18';
     end;

     if(ModePaiement<>'')
     and(ModePaiement<>'Tous')
     then
     begin
          Tableau.ColWidths[4]:=0;
          if(NotCol<>'')then NotCol:=NotCol+';4'
                        else NotCol:='4';
     end;

     if(Domiciliation<>'')
     and(Domiciliation<>'Tous')
     then
     begin
          Tableau.ColWidths[5]:=0;
          if(NotCol<>'')then NotCol:=NotCol+';5'
                        else NotCol:='5';
     end;

     if(CodeTiers<>'')
     and(CodeTiers<>'Tous')
     then
     begin
          Tableau.ColWidths[9]:=0;
          Tableau.ColWidths[10]:=0;
          if(NotCol<>'')then NotCol:=NotCol+';9;10'
                        else NotCol:='9;10';
     end
     else
     begin
          if(NotCol<>'')then NotCol:=NotCol+';1;2;3;4;5;11;15;18'
                        else NotCol:='1;2;3;4;5;11;15;18';
          Tableau.ColWidths[1]:=0;
          Tableau.ColWidths[2]:=0;
          Tableau.ColWidths[3]:=0;
          Tableau.ColWidths[4]:=0;
          Tableau.ColWidths[5]:=0;
          Tableau.ColWidths[11]:=0;
          Tableau.ColWidths[15]:=0;
          Tableau.ColWidths[18]:=0;
     end;

     if(NotCol<>'')then NotCol:=NotCol+';12;13;14;16;17'
                   else NotCol:='12;13;14;16;17';
     Tableau.ColWidths[12]:=0;
     Tableau.ColWidths[13]:=0;
     Tableau.ColWidths[14]:=0;
     Tableau.ColWidths[16]:=0;
     Tableau.ColWidths[17]:=0;

     IndiquerNomPrenomMultiTiers(Tableau,25,26,9,'10','','','','','','','');

     if(i>0)
     and((FSTraitementDonnees.RBPreciserNatureOperationMouvement.Checked=true)or(FSTraitementDonnees.RBPreciserDetailOperationMouvement.Checked=true)or(FSTraitementDonnees.RBPreciserDestinationMouvement.Checked=true))then
     begin
         RapportTraitement.Lines.Add('Remplissage détail des opérations:');

         RemplireTableauDetailArticlePrelevementUniteFonds(Tableau,'',DateDebut,DateFin,FSTraitementDonnees.RBPreciserDetailOperationQuantiteMouvement.Checked,RapportTraitement);

         R:=1; 
         while(R<=FSTraitementDonnees.TableauIndiqueTypeMouvement.RowCount-1)do
         begin
              RemplireTableauDetailArticleMouvement(Tableau,FSTraitementDonnees.TableauIndiqueTypeMouvement.Cells[1,R],FSTraitementDonnees.RBPreciserDetailOperationQuantiteMouvement.Checked,RapportTraitement);
         R:=R+1;
         end;

         RapportTraitement.Lines.Add('Fin du Remplissage détail des opérations:');
     end;

     if(FSTraitementDonnees.RBAfficheMoyenTransport.Checked=true)then RemplirTableauInfoMoyenTransport(Tableau,RapportTraitement,FSTraitementDonnees.EditTitreInfoMoyenTransport.Text);
     
     AjusterColWidth(Tableau,NotRow,NotCol);

     if (FSTraitementDonnees.RBAfficherPartiesCommunes.Checked=true)
     and(FSTraitementDonnees.RBPartiesCommunesCumules.Checked=false)then CummulePartieCumune(Tableau);

     if(FSTraitementDonnees.RBActiverPiecesManquantes.Checked=true)then
     begin
          if(PCs>0)then FSTraitementDonnees.TableauNumPiece.RowCount:=PCs+1
                   else FSTraitementDonnees.TableauNumPiece.RowCount:=2;

          if(PTCs>0)then FSTraitementDonnees.TableauToutesNumPiece.RowCount:=PTCs+1
                    else FSTraitementDonnees.TableauToutesNumPiece.RowCount:=2;
          AjusterColWidth(FSTraitementDonnees.TableauToutesNumPiece,'','');

          FSTraitementDonnees.TimerCompleteNumPiece.Enabled:=true;
     end;

     RapportTraitement.Lines.Add('Fin du remplissage, temps: '+inttostr(GetTickCount-B));
     B:=GetTickCount;
     FSTraitementDonnees.LabelTempsAttente.Caption:='Temps= '+inttostr(B-A)+' ms';

     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);


     //ShowWindow(LeHandle,SW_MINIMIZE); // Réduire cette fenêtre:

     //ShowWindow(LeHandle,SW_MAXIMIZE); // Agrandir la fenêtre:

     //SendMessage(LeHandle,WM_CLOSE,0,0); // Fermer la fenêtre:

     //LeHandle:=GetForegroundWindow();  // Obtenir le HWND de la fenêtre active:

     begin
          FSTraitementDonnees.Show;
          LeHandle:=GetForegroundWindow();  // Obtenir le HWND de la fenêtre active:
          ShowWindow(LeHandle,SW_MAXIMIZE); // Agrandir la fenêtre:
     end;

     if(Tableau=FSTraitementDonnees.TableauAvis)then
     begin
          if(FSTraitementDonnees.PageFinanceDomiciliation.Visible=false)then
          begin
               FSTraitementDonnees.PageFinanceDomiciliation.Visible:=true;
          end;
     end
     else
     if(Tableau=FSTraitementDonnees.TableauFinanceTiers)then
     begin
          if(FSTraitementDonnees.PageFinanceTiers.Visible=false)then
          begin
               FSTraitementDonnees.PageFinanceTiers.Visible:=true;
          end;
     end;

     RapportTraitement.Lines.Add('Fin du traitement.');

     if(OKCreatePointeurAvis=true)then
     begin
          for i:=0 to ListeRegistreAvisPointeur.Count-1 do TRegistreAvisPointeur(ListeRegistreAvisPointeur.Items[i]).Free;
          ListeRegistreAvisPointeur.Free;
     end;

     if(OKCreatePointeurLMouvement=true)then
     begin
          for i:=0 to ListeRegistreListeMouvementPointeur.Count-1 do TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur.Items[i]).Free;
          ListeRegistreListeMouvementPointeur.Free;
     end;

     if(OKCreatePointeurPrelevementUF=true)then
     begin
          for i:=0 to ListeRegistrePrelevementUniteFondsPointeur.Count-1 do TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur.Items[i]).Free;
          ListeRegistrePrelevementUniteFondsPointeur.Free;
     end;

     if(OKCreatePointeurTableau)then
     begin
          for i:=0 to ListeRegistreTableauPointeur.Count-1 do TRegistreTableauPointeur(ListeRegistreTableauPointeur.Items[i]).Free;
          ListeRegistreTableauPointeur.Free;
     end;

     NotRows:='';
     AppliquerActiveColsTableaux(Tableau,Tableau.Name,NotRows,NotCol);

     AccelerationAffichageTableau(Tableau,false);
end;

Procedure  ListeDetailArticlePrelevementUniteFondsPointeur(TableauDetailArticlePrelevementUniteFonds:TStringGrid; ListeNumPrelevement,ListeNumPrelevementUniteFonds,Matricule,CodeTiers,DateDebut,DateFin:string; AccepteInfoVideNP,AccepteInfoVideNPUF,AccepteInfoVideMatricule,AccepteInfoVideCodeTiers,CumulerArticle:boolean; NbrRowIn:integer; NumStructure:string; var NbrRowOut:integer);
var   RNumPrelevement,RNumPrelevementUF,R,l,C,IBegin,IEnd,iPAP,iP:integer;  OKArticle,OKCreatePointeur:boolean;  MontantTotal:real;  FichierConcerne,NotCol,PositionPrelevement,TypeProcesInt,FichierConcerneInt,Adresse:string;
      TableauPointeurData:TableauPointeurDatas;  TRegistreListeNumPrelevement,TRegistreListeNumPrelevementUF:TRegistreListeNums;
begin
     ExisteNuminTexteSpecial(ListeNumPrelevement,TRegistreListeNumPrelevement,RNumPrelevement);
     ExisteNuminTexteSpecial(ListeNumPrelevementUniteFonds,TRegistreListeNumPrelevementUF,RNumPrelevementUF);

     if(NbrRowIn=0)then
     begin
           TableauDetailArticlePrelevementUniteFonds.ColCount:=22;
           TableauDetailArticlePrelevementUniteFonds.Cols[0].Text:='N°';
           TableauDetailArticlePrelevementUniteFonds.Cols[1].Text:='Code Article';
           TableauDetailArticlePrelevementUniteFonds.Cols[2].Text:='Article';
           TableauDetailArticlePrelevementUniteFonds.Cols[3].Text:='Réf';
           TableauDetailArticlePrelevementUniteFonds.Cols[4].Text:='U.M';
           TableauDetailArticlePrelevementUniteFonds.Cols[5].Text:='Coût';
           TableauDetailArticlePrelevementUniteFonds.Cols[6].Text:='Quantité';
           TableauDetailArticlePrelevementUniteFonds.Cols[7].Text:='Prix U.';
           TableauDetailArticlePrelevementUniteFonds.Cols[8].Text:='Montant';
           TableauDetailArticlePrelevementUniteFonds.Cols[9].Text:='P°';
           TableauDetailArticlePrelevementUniteFonds.Cols[10].Text:='N°Prel.UF';
           TableauDetailArticlePrelevementUniteFonds.Cols[11].Text:='N°Prel';
           TableauDetailArticlePrelevementUniteFonds.Cols[12].Text:='N°Equipe';
           TableauDetailArticlePrelevementUniteFonds.Cols[13].Text:='Matricule';
           TableauDetailArticlePrelevementUniteFonds.Cols[14].Text:='Date';
           TableauDetailArticlePrelevementUniteFonds.Cols[15].Text:='Heure';
           TableauDetailArticlePrelevementUniteFonds.Cols[16].Text:='Type Preces';
           TableauDetailArticlePrelevementUniteFonds.Cols[17].Text:='Fichier Concerne';
           TableauDetailArticlePrelevementUniteFonds.Cols[18].Text:='Code Tires';
           TableauDetailArticlePrelevementUniteFonds.Cols[19].Text:='Tiers';
           TableauDetailArticlePrelevementUniteFonds.Cols[20].Text:='Coût total';
           TableauDetailArticlePrelevementUniteFonds.Cols[21].Text:='Valeur Ajouter';

           TableauDetailArticlePrelevementUniteFonds.RowCount:=2;
           TableauDetailArticlePrelevementUniteFonds.Rows[1].Text:='';

           AjusterColWidth(TableauDetailArticlePrelevementUniteFonds,'','');

           setlength(TableauPointeurData,0);
     end
     else
     begin
          setlength(TableauPointeurData,NbrRowIn+1);
          for R:=1 to NbrRowIn do
          begin
               TableauPointeurData[R-1].Data1:=TableauDetailArticlePrelevementUniteFonds.Cells[1,R];
               TableauPointeurData[R-1].RowPointeur:=R;
          end;
     end;

     l:=NbrRowIn;

     if(strtointeger(ListeNumPrelevement)<>0)then
     begin
          RPrelevement:=ChercherPrelevement(strtointeger(ListeNumPrelevement),ExerciceAnnee,Matricule,PositionPrelevement);
          if(RPrelevement.Archiver=false)
          then FichierConcerneInt:='FDetailArticlePrelevementUniteFonds'
          else FichierConcerneInt:='FArchiveDetailArticlePrelevementUniteFonds';
     end
     else FichierConcerneInt:='FArchiveDetailArticlePrelevementUniteFonds';

     TypeProcesInt:='Business';
     Adresse:='';
     if not(FunctionAdresseProces(TypeProcesInt,FichierConcerneInt,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerneInt+' recherché !');
     end;

     if(FSTraitementDonnees.RBAppliquerIndexationArchivePrelevement.Checked=true)then
     begin
          IndiquerPositionPeriodiqueArchivePrelevement(FichierConcerneInt,ListeNumPrelevement,datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date),datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date),IBegin,IEnd);
     end
     else
     begin
          IBegin:=0;
          IEnd:=999999999;
     end;

     ChargerPointeurDetailArticlePrelevementUniteFonds(ListeNumPrelevement,Matricule,'','',OKCreatePointeur);

     MontantTotal:=0;
     for iP:=0 to ListeRegistreDetailArticlePrelevementUniteFondsPointeur.Count-1 do
     begin
          iPAP:=iPAP+1;

          if(ListeNumPrelevement<>'')then
          begin
               OKArticle:=false;
               R:=0;
               while(R<=RNumPrelevement-1)and(OKArticle=false)do
               begin
                    if(TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).NumPrelevement=TRegistreListeNumPrelevement[R])then OKArticle:=true;
               R:=R+1;
               end;
          end
          else OKArticle:=AccepteInfoVideNP;

          if(OKArticle=true)then
          begin
               if(ListeNumPrelevementUniteFonds<>'')then
               begin
                    OKArticle:=false;
                    R:=0;
                    while(R<=RNumPrelevementUF-1)and(OKArticle=false)do
                    begin
                         if(TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).NumPrelevementUniteFonds=TRegistreListeNumPrelevementUF[R])then OKArticle:=true;
                    R:=R+1;
                    end;
               end
               else OKArticle:=AccepteInfoVideNPUF;
          end;

          if(OKArticle=true)then
          begin
               if(Matricule<>'')then
               begin
                    if(TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).Matricule=Matricule)
                    then OKArticle:=true
                    else OKArticle:=false;
               end
               else OKArticle:=AccepteInfoVideMatricule;
          end;

          if(OKArticle=true)then
          begin
               if(CodeTiers<>'')then
               begin
                    if(TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).CodeTiers=CodeTiers)
                    then OKArticle:=true
                    else OKArticle:=false;
               end
               else OKArticle:=AccepteInfoVideCodeTiers;
          end;

          if(OKArticle=true)then
          begin
               if(Datecorrecte(DateDebut)=true)then
               begin
                    if(Datecorrecte(TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).DatePrelevement)=true)then
                    begin
                         if(stringtodate(TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).DatePrelevement,'Prelevement'))>=stringtodate(DateDebut,'Prelevement')
                         then OKArticle:=true
                         else OKArticle:=false;
                    end
                    else OKArticle:=false;
               end;
          end;

          if(OKArticle=true)then
          begin
               if(Datecorrecte(DateFin)=true)then
               begin
                    if(Datecorrecte(TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).DatePrelevement)=true)then
                    begin
                         if(stringtodate(TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).DatePrelevement,'Prelevement'))<=stringtodate(DateFin,'Prelevement')
                         then OKArticle:=true
                         else OKArticle:=false;
                    end
                    else OKArticle:=false;
               end;
          end;

          if(OKArticle=true)and(CumulerArticle=true)then
          begin
               R:=1;
               while(R<=l)and(OKArticle=true)do
               begin
                    if(TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).CodeArticle=TableauPointeurData[R-1].Data1)then
                    begin
                         OKArticle:=false;

                         TableauDetailArticlePrelevementUniteFonds.Cells[5,R]:=
                         Vergule(floattostr(((strtoreal(TableauDetailArticlePrelevementUniteFonds.Cells[6,R])*strtoreal(TableauDetailArticlePrelevementUniteFonds.Cells[5,R]))
                        +(TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).QuantiteJustifier*TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).CoutUnitaire))/(strtoreal(TableauDetailArticlePrelevementUniteFonds.Cells[6,R])+TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).QuantiteJustifier)),'2','C','');

                         TableauDetailArticlePrelevementUniteFonds.Cells[7,R]:=
                         Vergule(floattostr(((strtoreal(TableauDetailArticlePrelevementUniteFonds.Cells[6,R])*strtoreal(TableauDetailArticlePrelevementUniteFonds.Cells[7,R]))
                        +(TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).QuantiteJustifier*TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).PrixUnitaire))/(strtoreal(TableauDetailArticlePrelevementUniteFonds.Cells[6,R])+TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).QuantiteJustifier)),'2','C','');

                         TableauDetailArticlePrelevementUniteFonds.Cells[6,R]:=Vergule(floattostr(strtoreal(TableauDetailArticlePrelevementUniteFonds.Cells[6,R])+TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).QuantiteJustifier),'2','C','');
                         TableauDetailArticlePrelevementUniteFonds.Cells[8,R]:=Vergule(floattostr(strtoreal(TableauDetailArticlePrelevementUniteFonds.Cells[8,R])+(TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).QuantiteJustifier*TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).PrixUnitaire)),'2','C','');
                         TableauDetailArticlePrelevementUniteFonds.Cells[20,R]:=Vergule(floattostr(strtoreal(TableauDetailArticlePrelevementUniteFonds.Cells[20,R])+(TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).QuantiteJustifier*TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).CoutUnitaire)),'2','C','');

                         MontantTotal:=MontantTotal+(TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).QuantiteJustifier*TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).PrixUnitaire);

                         RStock:=ChercherStockArticle('Article',NumStructure,TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).CodeArticle,'',OKStockRecherche,RubriqueRecherche);
                         FSTraitementDonnees.Rapport.Lines.Add('Mise à jour Détail article prélèvement: '+TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).CodeArticle+' '+RStock.Design+' '+RStock.Ref+' '+Vergule(floattostr(TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).QuantiteJustifier),'2','C','')+' '+RStock.UM);
                         FSTraitementDonnees.RapportTraitementMouvements.Lines.Add('Détail prélèvement: '+TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).CodeArticle+' '+RStock.Design+' '+RStock.Ref+' '+Vergule(floattostr(TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).QuantiteJustifier),'2','C','')+' '+RStock.UM);
                    end;
               R:=R+1;
               end;
          end;

          if(OKArticle=true)then           
          begin
               l:=l+1;
               TableauDetailArticlePrelevementUniteFonds.Rows[l].Text:=inttostr(l);
               TableauDetailArticlePrelevementUniteFonds.Cells[1,l]:=TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).CodeArticle;
               RStock:=ChercherStockArticle('Article',NumStructure,TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).CodeArticle,'',OKStockRecherche,RubriqueRecherche);
               TableauDetailArticlePrelevementUniteFonds.Cells[2,l]:=RStock.Design;
               TableauDetailArticlePrelevementUniteFonds.Cells[3,l]:=RStock.Ref;
               TableauDetailArticlePrelevementUniteFonds.Cells[4,l]:=RStock.UM;
               TableauDetailArticlePrelevementUniteFonds.Cells[5,l]:=Vergule(floattostr(RStock.CoutUnitaire),'2','C','');
               TableauDetailArticlePrelevementUniteFonds.Cells[6,l]:=Vergule(floattostr(TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).QuantiteJustifier),'2','C','');
               TableauDetailArticlePrelevementUniteFonds.Cells[7,l]:=Vergule(floattostr(TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).PrixUnitaire),'2','C','');
               TableauDetailArticlePrelevementUniteFonds.Cells[8,l]:=Vergule(floattostr(TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).QuantiteJustifier*TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).PrixUnitaire),'2','C','');
               TableauDetailArticlePrelevementUniteFonds.Cells[9,l]:=inttostr(TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).PositionDetailArticlePrelevementUniteFonds);
               TableauDetailArticlePrelevementUniteFonds.Cells[10,l]:=inttostr(TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).NumPrelevementUniteFonds);
               TableauDetailArticlePrelevementUniteFonds.Cells[11,l]:=inttostr(TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).NumPrelevement);
               TableauDetailArticlePrelevementUniteFonds.Cells[12,l]:=inttostr(TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).NumEquipe);
               TableauDetailArticlePrelevementUniteFonds.Cells[13,l]:=TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).Matricule;
               TableauDetailArticlePrelevementUniteFonds.Cells[14,l]:=TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).DatePrelevement;
               TableauDetailArticlePrelevementUniteFonds.Cells[15,l]:=TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).HeurePrelevement;
               TableauDetailArticlePrelevementUniteFonds.Cells[16,l]:=TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).TypeProces;
               TableauDetailArticlePrelevementUniteFonds.Cells[17,l]:=TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).FichierConcerne;
               TableauDetailArticlePrelevementUniteFonds.Cells[18,l]:=TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).CodeTiers;
               TableauDetailArticlePrelevementUniteFonds.Cells[19,l]:=ImporteDataProcesTiers(TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).TypeProces,TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).FichierConcerne,TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).CodeTiers,PositionTiersRecherche);
               TableauDetailArticlePrelevementUniteFonds.Cells[20,l]:=Vergule(floattostr(TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).QuantiteJustifier*TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).CoutUnitaire),'2','C','');;
               TableauDetailArticlePrelevementUniteFonds.Cells[21,l]:='';

               MontantTotal:=MontantTotal+(TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).QuantiteJustifier*TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).PrixUnitaire);

               setlength(TableauPointeurData,l);
               TableauPointeurData[l-1].Data1:=TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).CodeArticle;
               TableauPointeurData[l-1].RowPointeur:=l;
AffichageProgressif(FSAffichage.AfficheTexte4,'Tiers: '+TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).CodeTiers+'  Article: '+TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).CodeArticle+' '+RStock.Design+' '+RStock.Ref,false,false);
               FSTraitementDonnees.Rapport.Lines.Add('Nouveau Détail article prélèvement: '+TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).CodeArticle+' '+RStock.Design+' '+RStock.Ref+' '+Vergule(floattostr(TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).QuantiteJustifier),'2','C','')+' '+RStock.UM);
               FSTraitementDonnees.RapportTraitementMouvements.Lines.Add('Détail prélèvement: '+TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).CodeArticle+' '+RStock.Design+' '+RStock.Ref+' '+Vergule(floattostr(TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iP]).QuantiteJustifier),'2','C','')+' '+RStock.UM);
          end;
     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
     end;

     if(l>0)then
            begin
                 TableauDetailArticlePrelevementUniteFonds.RowCount:=l+3;
                 TableauDetailArticlePrelevementUniteFonds.Rows[TableauDetailArticlePrelevementUniteFonds.RowCount-1].Text:='';
                 TableauDetailArticlePrelevementUniteFonds.Rows[TableauDetailArticlePrelevementUniteFonds.RowCount-2].Text:='';

                 TableauDetailArticlePrelevementUniteFonds.Cells[7,TableauDetailArticlePrelevementUniteFonds.RowCount-1]:='Total:';

                 R:=1;
                 while(R<=l)do
                 begin
                      TableauDetailArticlePrelevementUniteFonds.Cells[21,R]:=Vergule(floattostr(strtoreal(TableauDetailArticlePrelevementUniteFonds.Cells[8,R])-
                                                                              (strtoreal(TableauDetailArticlePrelevementUniteFonds.Cells[20,R]))),'2','C','');

                      TableauDetailArticlePrelevementUniteFonds.Cells[8,l+2]:=Vergule(floattostr(strtoreal(TableauDetailArticlePrelevementUniteFonds.Cells[8,l+2])+
                                                                              (strtoreal(TableauDetailArticlePrelevementUniteFonds.Cells[8,R]))),'2','C','');

                      TableauDetailArticlePrelevementUniteFonds.Cells[20,l+2]:=Vergule(floattostr(strtoreal(TableauDetailArticlePrelevementUniteFonds.Cells[20,l+2])+
                                                                              (strtoreal(TableauDetailArticlePrelevementUniteFonds.Cells[20,R]))),'2','C','');

                      TableauDetailArticlePrelevementUniteFonds.Cells[21,l+2]:=Vergule(floattostr(strtoreal(TableauDetailArticlePrelevementUniteFonds.Cells[21,l+2])+
                                                                              (strtoreal(TableauDetailArticlePrelevementUniteFonds.Cells[21,R]))),'2','C','');

                 R:=R+1;
                 end;
            end
            else TableauDetailArticlePrelevementUniteFonds.RowCount:=2;

            LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
            
     TableauDetailArticlePrelevementUniteFonds.Cells[8,TableauDetailArticlePrelevementUniteFonds.RowCount-1]:=Vergule(TableauDetailArticlePrelevementUniteFonds.Cells[8,TableauDetailArticlePrelevementUniteFonds.RowCount-1],'2','C','');
     TableauDetailArticlePrelevementUniteFonds.Cells[20,TableauDetailArticlePrelevementUniteFonds.RowCount-1]:=Vergule(TableauDetailArticlePrelevementUniteFonds.Cells[20,TableauDetailArticlePrelevementUniteFonds.RowCount-1],'2','C','');
     TableauDetailArticlePrelevementUniteFonds.Cells[21,TableauDetailArticlePrelevementUniteFonds.RowCount-1]:=Vergule(TableauDetailArticlePrelevementUniteFonds.Cells[21,TableauDetailArticlePrelevementUniteFonds.RowCount-1],'2','C','');

     NbrRowOut:=l;

     NotCol:='9-19;22;23';
     for C:=0 to TableauDetailArticlePrelevementUniteFonds.ColCount-1 do if(ExisteNuminTexte(inttostr(C),NotCol))then TableauDetailArticlePrelevementUniteFonds.ColWidths[C]:=0;
     AjusterColWidth(TableauDetailArticlePrelevementUniteFonds,'',NotCol);

     setlength(TRegistreListeNumPrelevement,0);
     setlength(TRegistreListeNumPrelevementUF,0);
end;

Procedure LibererRegistreAvisPointeur;
var i:integer;
begin
     for i:=0 to ListeRegistreAvisPointeur.Count-1 do TRegistreAvisPointeur(ListeRegistreAvisPointeur.Items[i]).Free;
     ListeRegistreAvisPointeur.Free;
end;

Procedure LibererRegistreListeMouvementPointeur;
var i:integer;
begin
     for i:=0 to ListeRegistreListeMouvementPointeur.Count-1 do TRegistreListeMouvementPointeur(ListeRegistreListeMouvementPointeur.Items[i]).Free;
     ListeRegistreListeMouvementPointeur.Free;
end;

Procedure LibererRegistreDetailMouvementPointeur;
var i:integer;
begin
     for i:=0 to ListeRegistreDetailMouvementPointeur.Count-1 do TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur.Items[i]).Free;
     ListeRegistreDetailMouvementPointeur.Free;
end;

Procedure LibererRegistrePrelevementUniteFondsPointeur;
var i:integer;
begin
     for i:=0 to ListeRegistrePrelevementUniteFondsPointeur.Count-1 do TRegistrePrelevementUniteFondsPointeur(ListeRegistrePrelevementUniteFondsPointeur.Items[i]).Free;
     ListeRegistrePrelevementUniteFondsPointeur.Free;
end;

Procedure LibererRegistreDetailArticlePrelevementUniteFondsPointeur;
var i:integer;
begin
     for i:=0 to ListeRegistreDetailArticlePrelevementUniteFondsPointeur.Count-1 do TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur.Items[i]).Free;
     ListeRegistreDetailArticlePrelevementUniteFondsPointeur.Free;
end;

Procedure LibererRegistreTableauPointeur;
var i:integer;
begin
     for i:=0 to ListeRegistreTableauPointeur.Count-1 do TRegistreTableauPointeur(ListeRegistreTableauPointeur.Items[i]).Free;
     ListeRegistreTableauPointeur.Free;
end;

Function FuncNbrDecimale(Chiffre:string):string;
var  i,Long:integer; OKDecimale:boolean; chiffreDecimale:string;
begin
     chiffreDecimale:='';
     Long:=longueur(Chiffre);
     i:=Long;
     OKDecimale:=false;
     while(i>=1)and(OKDecimale=false)do
     begin
          if(Chiffre[i]=DecimalSeparator)then
          begin
               OKDecimale:=true
          end
          else
          begin
               chiffreDecimale:=chiffreDecimale+Chiffre[i];
               i:=i-1;
          end;
     end;

     if(OKDecimale=true)and(strtointeger(chiffreDecimale)>0)
     then FuncNbrDecimale:=inttostr(Long-i)
     else FuncNbrDecimale:='0';
end;

Procedure IndiquerNomPrenomTiers(TableauARemplire:TstringGrid; TypeProces,FichierConcerne,ColCodeTiers,ColNomTiers,ColPrenomTiers:string);
var  R:integer; OKTiers:boolean; 
begin


if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;

if(TypeProces='Comptabilité')then
begin
     assignfile(FCompteTiers,Adresse);
     try
     if FileExists(Adresse)
     then Reset(FCompteTiers)else Rewrite(FCompteTiers);
     Seek(FCompteTiers,0);
     OKTiers:=false;
     while not eof(FCompteTiers)and(OKTiers=false)do
     begin
          Read(FCompteTiers,RCompteTiers);

          OKTiers:=true;
          R:=1;
          while(R<=TableauARemplire.RowCount-1)do
          begin
               if(TableauARemplire.Cells[strtointeger(ColCodeTiers),R]=RCompteTiers.NumCptTiers)then
               begin
                    if(ColPrenomTiers<>'')then
                    begin
                         TableauARemplire.Cells[strtointeger(ColNomTiers),R]:=RCompteTiers.Designation;
                         TableauARemplire.Cells[strtointeger(ColPrenomTiers),R]:='';//RCompteTiers;
                    end
                    else
                    begin
                         TableauARemplire.Cells[strtointeger(ColNomTiers),R]:=RCompteTiers.Designation;//+' '+RCompteTiers;
                    end;
               end;

               if(TableauARemplire.Cells[strtointeger(ColNomTiers),R]='')then OKTiers:=false;
          R:=R+1;
          end;
     end;
     finally
     CloseFile(FCompteTiers);
     end;
end;

if(TypeProces='Social')then
begin

end;


if(TypeProces='Commercial')or(TypeProces='Business')then
begin
     if(FichierConcerne<>'FProjetFinance')then
     begin
          ChTiers:=Adresse;
          assignfile(FTiers,ChTiers);
          if FileExists(ChTiers)then
          begin
               try
               Reset(FTiers);
               Seek(FTiers,0);
               OKTiers:=false;     // and(OKTiers=false)
               while not eof(FTiers)do
               begin
                    read(FTiers,RTiers);

                    OKTiers:=true;
                    R:=1;
                    while(R<=TableauARemplire.RowCount-1)do
                    begin

                    //showmessage(TableauARemplire.Cells[strtointeger(ColCodeTiers),R]+' = '+RTiers.CodeTiers);
                         if(TableauARemplire.Cells[strtointeger(ColCodeTiers),R]=RTiers.CodeTiers)then
                         begin
                              if(ColPrenomTiers<>'')then
                              begin
                                   TableauARemplire.Cells[strtointeger(ColNomTiers),R]:=RTiers.NomTiers;
                                   TableauARemplire.Cells[strtointeger(ColPrenomTiers),R]:=RTiers.PrenomTiers;
                              end
                              else
                              begin
                                   TableauARemplire.Cells[strtointeger(ColNomTiers),R]:=RTiers.NomTiers+' '+RTiers.PrenomTiers;
                              end;
                         end;

                         if(TableauARemplire.Cells[strtointeger(ColNomTiers),R]='')then OKTiers:=false;
                    R:=R+1;
                    end;
               end;
               finally
               CloseFile(FTiers);
               end;
          end
          else
          begin
               if(Adresse<>'')then AfficherMessage('Le Fichier: '+Adresse+ ' n''existe pas!');
          end;

     end;

     if(FichierConcerne='FProjetFinance')then
     begin
          ChProjetFinance:=Adresse;
          assignfile(FProjetFinance,ChProjetFinance);
          if FileExists(ChProjetFinance)then
          begin
               try
               Reset(FProjetFinance);
               Seek(FProjetFinance,0);
               OKTiers:=false;
               while not eof(FProjetFinance)and(OKTiers=false)do
               begin
                    read(FProjetFinance,RProjetFinance);

                    OKTiers:=true;
                    R:=1;
                    while(R<=TableauARemplire.RowCount-1)do
                    begin
                         if(TableauARemplire.Cells[strtointeger(ColCodeTiers),R]=RProjetFinance.NumProjetFinance)then
                         begin
                              if(ColPrenomTiers<>'')then
                              begin
                                   TableauARemplire.Cells[strtointeger(ColNomTiers),R]:=RProjetFinance.DesignationProjetFinance;
                                   TableauARemplire.Cells[strtointeger(ColPrenomTiers),R]:='';//RProjetFinance.NatureProjetFinance;
                              end
                              else
                              begin
                                   TableauARemplire.Cells[strtointeger(ColNomTiers),R]:=RProjetFinance.DesignationProjetFinance;//+' '+RProjetFinance.NatureProjetFinance;
                              end;
                         end;

                         if(TableauARemplire.Cells[strtointeger(ColNomTiers),R]='')then OKTiers:=false;
                    R:=R+1;
                    end;
               end;
               finally
               closefile(FProjetFinance);
               end;
          end
          else
          begin
               if(Adresse<>'')then AfficherMessage('Le Fichier: '+Adresse+ ' n''existe pas!');
          end;
     end;
end;

if(TypeProces='Paie')then
begin
     if(FichierConcerne='FPersonnel')then
     begin
          ChPersonnel:=Adresse;
          assignfile(FPersonnel,ChPersonnel);
          if FileExists(ChPersonnel)then
          begin
               try
               Reset(FPersonnel);
               Seek(FPersonnel,0);
               OKTiers:=false;
               while not eof(FPersonnel)and(OKTiers=false)do
               begin
                    read(FPersonnel,RPersonnel);

                    OKTiers:=true;
                    R:=1;
                    while(R<=TableauARemplire.RowCount-1)do
                    begin
                         if(TableauARemplire.Cells[strtointeger(ColCodeTiers),R]=RPersonnel.Matricule)then
                         begin
                              if(ColPrenomTiers<>'')then
                              begin
                                   TableauARemplire.Cells[strtointeger(ColNomTiers),R]:=RPersonnel.Nom;
                                   TableauARemplire.Cells[strtointeger(ColPrenomTiers),R]:=RPersonnel.Prenom;
                              end
                              else
                              begin
                                   TableauARemplire.Cells[strtointeger(ColNomTiers),R]:=RPersonnel.Nom+' '+RPersonnel.Prenom;
                              end;
                         end;

                         if(TableauARemplire.Cells[strtointeger(ColNomTiers),R]='')then OKTiers:=false;
                    R:=R+1;
                    end;
               end;
               finally
               closefile(FPersonnel);
               end;
          end
          else
          begin
               if(Adresse<>'')then AfficherMessage('Le Fichier: '+Adresse+ ' n''existe pas!');
          end;
     end;
end;
end;

Procedure IndiquerNomPrenomMultiTiers(TableauARemplire:TstringGrid; ColTypeProces,ColFichierConcerne,ColCodeTiers:integer; ColNomTiers,ColPrenomTiers,ColData1,ColData2,ColData3,ColData4,ColData5,ColData6:string);
var  R,l:integer; OKTiers:boolean; ListeFichierConcerne:string;
begin

ListeFichierConcerne:='';
R:=1;
while(R<=TableauARemplire.RowCount-1)do
begin
     TypeProces:=TableauARemplire.Cells[ColTypeProces,R];
     FichierConcerne:=TableauARemplire.Cells[ColFichierConcerne,R];

     if not ExisteCharInString(FichierConcerne,ListeFichierConcerne)then
     begin
           if(ListeFichierConcerne='')
           then ListeFichierConcerne:=FichierConcerne
           else ListeFichierConcerne:=ListeFichierConcerne+';'+FichierConcerne;

           if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
           begin
                //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
           end;

           if(TypeProces='Comptabilité')then
           begin
                assignfile(FCompteTiers,Adresse);
                try
                if FileExists(Adresse)
                then Reset(FCompteTiers)else Rewrite(FCompteTiers);
                Seek(FCompteTiers,0);
                OKTiers:=false;
                while not eof(FCompteTiers)and(OKTiers=false)do
                begin
                     Read(FCompteTiers,RCompteTiers);

                     OKTiers:=true;
                     l:=R;
                     while(l<=TableauARemplire.RowCount-1)do
                     begin
                          if (TableauARemplire.Cells[ColCodeTiers,l]<>'')
                          and(TableauARemplire.Cells[ColCodeTiers,l]=RCompteTiers.NumCptTiers)then
                          begin
                               if(ColPrenomTiers<>'')then
                               begin
                                    TableauARemplire.Cells[strtointeger(ColNomTiers),l]:=RCompteTiers.Designation;
                                    TableauARemplire.Cells[strtointeger(ColPrenomTiers),l]:='';//RCompteTiers;
                               end
                               else
                               begin
                                    TableauARemplire.Cells[strtointeger(ColNomTiers),l]:=RCompteTiers.Designation;//+' '+RCompteTiers;
                               end;

                               if(ColData1<>'')then TableauARemplire.Cells[strtointeger(ColData1),l]:='';
                               if(ColData2<>'')then TableauARemplire.Cells[strtointeger(ColData2),l]:='';
                               if(ColData3<>'')then TableauARemplire.Cells[strtointeger(ColData3),l]:='';
                               if(ColData4<>'')then TableauARemplire.Cells[strtointeger(ColData4),l]:='';
                               if(ColData5<>'')then TableauARemplire.Cells[strtointeger(ColData5),l]:='';
                               if(ColData6<>'')then TableauARemplire.Cells[strtointeger(ColData6),l]:='';
                          end;
                          if(TableauARemplire.Cells[strtointeger(ColNomTiers),l]='')then OKTiers:=false;
                     l:=l+1;
                     end;
                end;
                finally
                CloseFile(FCompteTiers);
                end;
           end;

           if(TypeProces='Social')then
           begin

           end;


           if(TypeProces='Commercial')or(TypeProces='Business')then
           begin
                if(FichierConcerne<>'FProjetFinance')then
                begin
                     ChTiers:=Adresse;
                     assignfile(FTiers,ChTiers);
                     if FileExists(ChTiers)then
                     begin
                          try
                          Reset(FTiers);
                          Seek(FTiers,0);
                          OKTiers:=false;     // and(OKTiers=false)
                          while not eof(FTiers)do
                          begin
                               read(FTiers,RTiers);

                               OKTiers:=true;
                               l:=R;
                               while(l<=TableauARemplire.RowCount-1)do
                               begin
                                    if (TableauARemplire.Cells[ColCodeTiers,l]<>'')
                                    and(TableauARemplire.Cells[ColCodeTiers,l]=RTiers.CodeTiers)then
                                    begin
                                         if(ColPrenomTiers<>'')then
                                         begin
                                              TableauARemplire.Cells[strtointeger(ColNomTiers),l]:=RTiers.NomTiers;
                                              TableauARemplire.Cells[strtointeger(ColPrenomTiers),l]:=RTiers.PrenomTiers;
                                         end
                                         else
                                         begin
                                              TableauARemplire.Cells[strtointeger(ColNomTiers),l]:=RTiers.NomTiers+' '+RTiers.PrenomTiers;
                                         end;

                                         if(ColData1<>'')then TableauARemplire.Cells[strtointeger(ColData1),l]:=RTiers.Data1;
                                         if(ColData2<>'')then TableauARemplire.Cells[strtointeger(ColData2),l]:=RTiers.Data2;
                                         if(ColData3<>'')then TableauARemplire.Cells[strtointeger(ColData3),l]:=RTiers.Data3;
                                         if(ColData4<>'')then TableauARemplire.Cells[strtointeger(ColData4),l]:=RTiers.Data4;
                                         if(ColData5<>'')then TableauARemplire.Cells[strtointeger(ColData5),l]:=RTiers.Data5;
                                         if(ColData6<>'')then TableauARemplire.Cells[strtointeger(ColData6),l]:=RTiers.Data6;
                                    end;
                                    if(TableauARemplire.Cells[strtointeger(ColNomTiers),l]='')then OKTiers:=false;
                               l:=l+1;
                               end;
                          end;
                          finally
                          closefile(FTiers);
                          end;
                     end
                     else
                     begin
                          if(Adresse<>'')then AfficherMessage('Le Fichier: '+Adresse+ ' n''existe pas!');
                     end;
                end;

                if(FichierConcerne='FProjetFinance')then
                begin
                     ChProjetFinance:=Adresse;
                     assignfile(FProjetFinance,ChProjetFinance);
                     if FileExists(ChProjetFinance)then
                     begin
                          try
                          Reset(FProjetFinance);
                          Seek(FProjetFinance,0);
                          OKTiers:=false;
                          while not eof(FProjetFinance)and(OKTiers=false)do
                          begin
                               read(FProjetFinance,RProjetFinance);

                               OKTiers:=true;
                               l:=R;
                               while(l<=TableauARemplire.RowCount-1)do
                               begin
                                    if (TableauARemplire.Cells[ColCodeTiers,l]<>'')
                                    and(TableauARemplire.Cells[ColCodeTiers,l]=RProjetFinance.NumProjetFinance)then
                                    begin
                                         if(ColPrenomTiers<>'')then
                                         begin
                                              TableauARemplire.Cells[strtointeger(ColNomTiers),l]:=RProjetFinance.DesignationProjetFinance;
                                              TableauARemplire.Cells[strtointeger(ColPrenomTiers),l]:='';//RProjetFinance.NatureProjetFinance;
                                         end
                                         else
                                         begin
                                              TableauARemplire.Cells[strtointeger(ColNomTiers),l]:=RProjetFinance.DesignationProjetFinance;//+' '+RProjetFinance.NatureProjetFinance;
                                         end;

                                         if(ColData1<>'')then TableauARemplire.Cells[strtointeger(ColData1),l]:='';
                                         if(ColData2<>'')then TableauARemplire.Cells[strtointeger(ColData2),l]:='';
                                         if(ColData3<>'')then TableauARemplire.Cells[strtointeger(ColData3),l]:='';
                                         if(ColData4<>'')then TableauARemplire.Cells[strtointeger(ColData4),l]:='';
                                         if(ColData5<>'')then TableauARemplire.Cells[strtointeger(ColData5),l]:='';
                                         if(ColData6<>'')then TableauARemplire.Cells[strtointeger(ColData6),l]:='';
                                    end;
                                    if(TableauARemplire.Cells[strtointeger(ColNomTiers),l]='')then OKTiers:=false;
                               l:=l+1;
                               end;
                          end;
                          finally
                          closefile(FProjetFinance);
                          end;
                     end
                     else
                     begin
                          if(Adresse<>'')then AfficherMessage('Le Fichier: '+Adresse+ ' n''existe pas!');
                     end;
                end;
           end;

           if(TypeProces='Paie')then
           begin
                if(FichierConcerne='FPersonnel')then
                begin
                     ChPersonnel:=Adresse;
                     assignfile(FPersonnel,ChPersonnel);
                     if FileExists(ChPersonnel)then
                     begin
                          try
                          Reset(FPersonnel);
                          Seek(FPersonnel,0);
                          OKTiers:=false;
                          while not eof(FPersonnel)and(OKTiers=false)do
                          begin
                               read(FPersonnel,RPersonnel);

                               OKTiers:=true;
                               l:=R;
                               while(l<=TableauARemplire.RowCount-1)do
                               begin
                                    if (TableauARemplire.Cells[ColCodeTiers,l]<>'')
                                    and(TableauARemplire.Cells[ColCodeTiers,l]=RPersonnel.Matricule)then
                                    begin
                                         if(ColPrenomTiers<>'')then
                                         begin
                                              TableauARemplire.Cells[strtointeger(ColNomTiers),l]:=RPersonnel.Nom;
                                              TableauARemplire.Cells[strtointeger(ColPrenomTiers),l]:=RPersonnel.Prenom;
                                         end
                                         else
                                         begin
                                              TableauARemplire.Cells[strtointeger(ColNomTiers),l]:=RPersonnel.Nom+' '+RPersonnel.Prenom;
                                         end;

                                         if(ColData1<>'')then TableauARemplire.Cells[strtointeger(ColData1),l]:='';
                                         if(ColData2<>'')then TableauARemplire.Cells[strtointeger(ColData2),l]:='';
                                         if(ColData3<>'')then TableauARemplire.Cells[strtointeger(ColData3),l]:='';
                                         if(ColData4<>'')then TableauARemplire.Cells[strtointeger(ColData4),l]:='';
                                         if(ColData5<>'')then TableauARemplire.Cells[strtointeger(ColData5),l]:='';
                                         if(ColData6<>'')then TableauARemplire.Cells[strtointeger(ColData6),l]:='';
                                    end;
                                    if(TableauARemplire.Cells[strtointeger(ColNomTiers),l]='')then OKTiers:=false;
                               l:=l+1;
                               end;
                          end;
                          finally
                          closefile(FPersonnel);
                          end;
                     end
                     else
                     begin
                          if(Adresse<>'')then AfficherMessage('Le Fichier: '+Adresse+ ' n''existe pas!');
                     end;
                end;
           end;
     end;
R:=R+1;
end;
end;

Procedure IndiquerInfoListeAvis(TableauARemplire:TStringGrid; ColListeNumAvis,ColinfoAvis,ColMontantAvis,ColMontantMouvement:integer);
var  l:integer;
     TexteMemoLigne,TypeProces,Adresse,FichierConserneAvis,ListeAvisCalcule,IndiceExist:string;
     OKAvis:boolean;
     MontantJustifier,MontantNonJustifier,MontantAvis:real;
begin
     FichierConcerne:='FAvis';

     if not(FunctionAdresseProces('Business','FBaseAvis','',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+'FBaseAvis '+'recherché !');
     end;

     ChBaseAvisRecherche:=Adresse;
     assignfile(FBaseAvisRecherche,ChBaseAvisRecherche);
     if FileExists(ChBaseAvisRecherche)then
     begin
           try
           Reset(FBaseAvisRecherche);
           Seek(FBaseAvisRecherche,0);
           while not eof(FBaseAvisRecherche)do
           begin
                read(FBaseAvisRecherche,RBaseAvisRecherche);  Application.ProcessMessages;

                FichierConserneAvis:=RBaseAvisRecherche.DesignationBaseAvis;

                if(FunctionFichierInclu(FichierConserneAvis,FichierConcerne))then
                begin
                     TypeProces:='Business';
                     if not(FunctionAdresseProces(TypeProces,FichierConserneAvis,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
                     begin
                          if(FichierConcerne<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConserneAvis+'}');
                     end;
                     ChAvisCopie:=Adresse;
                     assignfile(FAvisCopie,ChAvisCopie);
                     if FileExists(ChAvisCopie)then
                     begin
                           try
                           Reset(FAvisCopie);
                           Seek(FAvisCopie,0);
                           OKAvis:=false;
                           MontantAvis:=0;
                           ListeAvisCalcule:='';
                           while not eof(FAvisCopie)and(OKAvis=false)do
                           begin
                                read(FAvisCopie,RAvisCopie);

                                OKAvis:=true;
                                l:=1;
                                while(l<=TableauARemplire.RowCount-4)do
                                begin
                                     if ExisteNumAvisinTexte(FichierConserneAvis,inttostr(RAvisCopie.NumAvis),TableauARemplire.Cells[ColListeNumAvis,l])then
                                     begin
                                          if not ExisteNumInTexte(inttostr(RAvisCopie.NumAvis),ListeAvisCalcule)then
                                          begin
                                               TableauARemplire.Cells[ColMontantAvis,l]:=Vergule(floattostr(RAvisCopie.Montant),'2','C','');

                                               MontantAvis:=MontantAvis+RAvisCopie.Montant;

                                               if(ListeAvisCalcule='')
                                               then ListeAvisCalcule:=inttostr(RAvisCopie.NumAvis)
                                               else ListeAvisCalcule:=ListeAvisCalcule+';'+inttostr(RAvisCopie.NumAvis);

                                               IndiceExist:='.';
                                          end
                                          else IndiceExist:='...';

                                          TableauARemplire.Cells[ColinfoAvis,l]:=RAvisCopie.ModePaiement+' '+RAvisCopie.DomiciliationPiece+' n° '+RAvisCopie.NumPiece+' du '+RAvisCopie.DateAvis+' '+IndiceExist;
                                     end;
                                     if(TableauARemplire.Cells[ColMontantAvis,l]='')then OKAvis:=false;
                                l:=l+1;
                                end;
                           end;
                           finally
                           CloseFile(FAvisCopie);
                           end;
                     end;
                end;
           end;
           finally
           closefile(FBaseAvisRecherche);
           end;
     end;

     l:=1;
     MontantJustifier:=0;
     MontantNonJustifier:=0;
     while(l<=TableauARemplire.RowCount-4)do
     begin
          if(TableauARemplire.Cells[ColinfoAvis,l]<>'')then
          begin
               MontantJustifier:=MontantJustifier+strtoreal(TableauARemplire.Cells[ColMontantMouvement,l]);
          end
          else
          begin
               MontantNonJustifier:=MontantNonJustifier+strtoreal(TableauARemplire.Cells[ColMontantMouvement,l]);
          end;
     l:=l+1;
     end;

     TableauARemplire.Cells[ColMontantAvis,TableauARemplire.RowCount-2]:=Vergule(floattostr(MontantAvis),'2','C','');
     TableauARemplire.Cells[ColinfoAvis,TableauARemplire.RowCount-2]:=Vergule(floattostr(MontantJustifier),'2','C','');
     TableauARemplire.Cells[ColMontantMouvement,TableauARemplire.RowCount-1]:=Vergule(floattostr(MontantNonJustifier),'2','C','');
     TableauARemplire.Cells[ColMontantAvis,TableauARemplire.RowCount-1]:=Vergule(floattostr(strtoreal(TableauARemplire.Cells[ColMontantAvis,TableauARemplire.RowCount-2])-strtoreal(TableauARemplire.Cells[ColinfoAvis,TableauARemplire.RowCount-2])),'2','C','');
     LibererMemoireProcessus('BusinessProces.exe',True);
end;

Procedure ProcChargerListeMouvementDansDetailMouvement;
var  iLM,NumListeMouvementMax:integer;
     TypeProces,FichierConserne,Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut,AdresseListeMouvement,ListeOrdreLMExiste,AdresseTypeMouvement:string;
     OKDetailMouvement,OKFormule:boolean;
begin
     ListeOrdreLMExiste:='';

     TypeProces:='Business';   FichierConserne:='FMouvement';
     if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
     end;

     if(TypeProcesReseaux<>'Réseaux')then
     begin
          ChMouvement:=Adresse;
          assignfile(FMouvement,ChMouvement);
          if FileExists(ChMouvement)then
          begin
               try
               Reset(FMouvement);
               seek(FMouvement,0);
               FSFicheSaisie.ProgressAttenteAnomalie.Max:=FileSize(FMouvement);
               FSFicheSaisie.ProgressAttenteAnomalie.Position:=0;
               while not eof(FMouvement)do
               begin
                    Read(FMouvement,RMouvement);

                    FSFicheSaisie.ProgressAttenteAnomalie.StepIt;

                    RTypeMouvement:=ChercherTypeMouvement(RMouvement.PositionTypeMouvement,ExerciceAnnee,AdresseTypeMouvement);

                    FSFicheSaisie.AdresseMouvement.Caption:=RTypeMouvement.DesignationTypeMouvement+' / '+RMouvement.DesignationMouvement;
                    
                    AdresseListeMouvement:=IndiqueAdresseListeMouvement(inttostr(RMouvement.PositionTypeMouvement),TypeProcesReseauxListeMouvement);

                    if(TypeProcesReseauxListeMouvement<>'Réseaux')then
                    begin
                          NumListeMouvementMax:=0;

                          ChListeMouvement:=AdresseListeMouvement;
                          FSFicheSaisie.AfficheAdresseListeMouvement.Caption:=ChListeMouvement;
                          assignfile(FListeMouvement,ChListeMouvement);
                          if FileExists(ChListeMouvement)then
                          begin
                              try
                              Reset(FListeMouvement);
                              Seek(FListeMouvement,0);
                              iLM:=0;
                              while(not eof(FListeMouvement))do
                              begin
                                   read(FListeMouvement,RListeMouvement);  Application.ProcessMessages;
                                   iLM:=iLM+1;

                                   if not ExisteNumInTexte(inttostr(RListeMouvement.OrdreListeMouvement),ListeOrdreLMExiste)then
                                   begin
                                        if(ListeOrdreLMExiste='')
                                        then ListeOrdreLMExiste:=inttostr(RListeMouvement.OrdreListeMouvement)
                                        else ListeOrdreLMExiste:=ListeOrdreLMExiste+';'+inttostr(RListeMouvement.OrdreListeMouvement);
                                   end;

                                   if(RListeMouvement.PositionTypeMouvement=RMouvement.PositionTypeMouvement)then
                                   begin
                                        if(NumListeMouvementMax<RListeMouvement.NumListeMouvement)then NumListeMouvementMax:=RListeMouvement.NumListeMouvement;
                                   end;
                              end;

                              TypeProces:='Business';   FichierConserne:='DétailMouvement '+RTypeMouvement.DesignationTypeMouvement;
                              if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
                              begin
                                   AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
                              end;

                              if(TypeProcesReseaux<>'Réseaux')then
                              begin
                                    ChDetailMouvement:=Adresse;
                                    FSFicheSaisie.AfficheAdresseDetailMouvement.Caption:=ChDetailMouvement;
                                    assignfile(FDetailMouvement,ChDetailMouvement);
                                    if FileExists(ChDetailMouvement)then
                                    begin
                                         try
                                         Reset(FDetailMouvement);
                                         Seek(FDetailMouvement,0);

                                         while not eof(FDetailMouvement)do
                                         begin
                                              read(FDetailMouvement,RDetailMouvement);  Application.ProcessMessages;

                                              if not ExisteNumInTexte(inttostr(RDetailMouvement.OrdreListeMouvement),ListeOrdreLMExiste)then
                                              begin
                                                   if(ListeOrdreLMExiste='')
                                                   then ListeOrdreLMExiste:=inttostr(RDetailMouvement.OrdreListeMouvement)
                                                   else ListeOrdreLMExiste:=ListeOrdreLMExiste+';'+inttostr(RDetailMouvement.OrdreListeMouvement);

                                                   RListeMouvement.OrdreListeMouvement:=RDetailMouvement.OrdreListeMouvement;
                                                   NumListeMouvementMax:=NumListeMouvementMax+1;
                                                   RListeMouvement.NumListeMouvement:=NumListeMouvementMax;
                                                   RListeMouvement.PositionTypeMouvement:=RTypeMouvement.PositionTypeMouvement;
                                                   RListeMouvement.PositionMouvement:=RMouvement.PositionMouvement;
                                                   RListeMouvement.ReferenceSourceListeMouvement:='';
                                                   RListeMouvement.DateMouvement:=RDetailMouvement.DateMouvement;
                                                   RListeMouvement.CodeTypeFormule:=FSFicheSaisie.EditCodeTypeFormuleAfficher.Text;
                                                   RListeMouvement.TypeProces:=FSFicheSaisie.EditTypeProces.Text;
                                                   RListeMouvement.FichierTiersConserne:=FSFicheSaisie.EditFunctionFichierConcerne.Text;
                                                   RListeMouvement.CodeTiers:='';
                                                   RListeMouvement.DataTiersSupplementaire:='';
                                                   RListeMouvement.MontantMouvement:=1;
                                                   RListeMouvement.NumProjetFinance:='';
                                                   RListeMouvement.NumDomiciliation:='';
                                                   RListeMouvement.Domiciliation:='';
                                                   RListeMouvement.ModePaiement:='';
                                                   RListeMouvement.NumPiece:='';
                                                   RListeMouvement.DateExecutionMouvement:='';
                                                   RListeMouvement.CodePaysExecutionMouvement:='';
                                                   RListeMouvement.CodeWilayaExecutionMouvement:='';
                                                   RListeMouvement.CodeDairaExecutionMouvement:='';
                                                   RListeMouvement.CodeCommuneExecutionMouvement:='';
                                                   RListeMouvement.CodeZoneExecutionMouvement:='';
                                                   RListeMouvement.AdresseExecutionMouvement:='';
                                                   RListeMouvement.OKExecution:=true;
                                                   RListeMouvement.OrdreListeMouvementAppartenant:='';
                                                   RListeMouvement.ListeNumAvis:='';
                                                   RListeMouvement.SourceName:='';
                                                   RListeMouvement.DataSourceName:='';
                                                   RListeMouvement.ValidationListeMouvement:=true;
                                                   RListeMouvement.PositionDetailMouvementBegin:=0;
                                                   RListeMouvement.PositionDetailMouvementEnd:=999999999;
                                                   RListeMouvement.CodeUtilisateur:='';
                                                   RListeMouvement.MatriculeResponsablePrelevement:='';
                                                   RListeMouvement.TypeVehiculePrelevement:='';
                                                   RListeMouvement.TonageVehiculePrelevement:='';
                                                   RListeMouvement.CodeResponsablePrelevement:='';
                                                   RListeMouvement.NomResponsablePrelevement:='';
                                                   RListeMouvement.PrenomResponsablePrelevement:='';
                                                   RListeMouvement.IndiceInialPontBascule:=0;
                                                   RListeMouvement.IndiceFinalPontBascule:=0;
                                                   RListeMouvement.DateIndiceInial:='';
                                                   RListeMouvement.HeureIndiceInial:='';
                                                   RListeMouvement.DateIndiceFinal:='';
                                                   RListeMouvement.HeureIndiceFinal:='';
                                                   RListeMouvement.NumeroPont:='';

                                                   Seek(FListeMouvement,iLM);
                                                   write(FListeMouvement,RListeMouvement);
                                                   iLM:=iLM+1;
                                              end;
                                         end;
                                         finally
                                         CloseFile(FDetailMouvement);
                                         end;
                                    end;
                              end;

                              finally
                              closefile(FListeMouvement);
                              end;
                          end;
                    end;
               end;
               finally
               closefile(FMouvement);
               end;
          end;
     end;
end;

//////////////////////////////
Procedure ChargerPointeurDetailArticlePrelevementUniteFonds(NumPrelevement,Matricule,DateDebut,DateFin:string;  var OKCreatePointeur:boolean);
var iP,PBegin,PEnd:integer; TypeProces,FichierConserne,Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut,PositionPrelevement:string;
begin
     ListeRegistreDetailArticlePrelevementUniteFondsPointeur:=TList.Create;

     FichierConserne:='FArchiveDetailArticlePrelevementUniteFonds';
     IndiquerPositionPeriodiqueArchivePrelevement(FichierConserne,NumPrelevement,DateDebut,DateFin,PBegin,PEnd);

     TypeProces:='Business';
     Adresse:='';
     if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
     end;

     ChDetailArticlePrelevementUniteFonds:=Adresse;
     assignfile(FDetailArticlePrelevementUniteFonds,ChDetailArticlePrelevementUniteFonds);
     if FileExists(ChDetailArticlePrelevementUniteFonds)then
     begin
          try
          Reset(FDetailArticlePrelevementUniteFonds);
          iP:=PBegin;
          Seek(FDetailArticlePrelevementUniteFonds,iP);
          while not eof(FDetailArticlePrelevementUniteFonds)and(iP<=PEnd)do
          begin
               read(FDetailArticlePrelevementUniteFonds,RDetailArticlePrelevementUniteFonds);
               iP:=iP+1;
               //ListeRegistreDetailArticlePrelevementUniteFondsPointeur:=TList.Create;
               RegistreDetailArticlePrelevementUniteFondsPointeur:=TRegistreDetailArticlePrelevementUniteFondsPointeur.Create;
               RegistreDetailArticlePrelevementUniteFondsPointeur.PositionDetailArticlePrelevementUniteFonds:=RDetailArticlePrelevementUniteFonds.PositionDetailArticlePrelevementUniteFonds;
               RegistreDetailArticlePrelevementUniteFondsPointeur.NumPrelevementUniteFonds:=RDetailArticlePrelevementUniteFonds.NumPrelevementUniteFonds;
               RegistreDetailArticlePrelevementUniteFondsPointeur.NumPrelevement:=RDetailArticlePrelevementUniteFonds.NumPrelevement;
               RegistreDetailArticlePrelevementUniteFondsPointeur.NumEquipe:=RDetailArticlePrelevementUniteFonds.NumEquipe;
               RegistreDetailArticlePrelevementUniteFondsPointeur.Matricule:=RDetailArticlePrelevementUniteFonds.Matricule;
               RegistreDetailArticlePrelevementUniteFondsPointeur.DatePrelevement:=RDetailArticlePrelevementUniteFonds.DatePrelevement;
               RegistreDetailArticlePrelevementUniteFondsPointeur.HeurePrelevement:=RDetailArticlePrelevementUniteFonds.HeurePrelevement;
               RegistreDetailArticlePrelevementUniteFondsPointeur.TypeProces:=RDetailArticlePrelevementUniteFonds.TypeProces;
               RegistreDetailArticlePrelevementUniteFondsPointeur.FichierConcerne:=RDetailArticlePrelevementUniteFonds.FichierConcerne;
               RegistreDetailArticlePrelevementUniteFondsPointeur.CodeTiers:=RDetailArticlePrelevementUniteFonds.CodeTiers;
               RegistreDetailArticlePrelevementUniteFondsPointeur.CodeArticle:=RDetailArticlePrelevementUniteFonds.CodeArticle;
               RegistreDetailArticlePrelevementUniteFondsPointeur.QuantiteJustifier:=RDetailArticlePrelevementUniteFonds.QuantiteJustifier;
               RegistreDetailArticlePrelevementUniteFondsPointeur.PrixUnitaire:=RDetailArticlePrelevementUniteFonds.PrixUnitaire;
               RegistreDetailArticlePrelevementUniteFondsPointeur.CoutUnitaire:=RDetailArticlePrelevementUniteFonds.CoutUnitaire;
               ListeRegistreDetailArticlePrelevementUniteFondsPointeur.Add(RegistreDetailArticlePrelevementUniteFondsPointeur);
          end;
          finally
          CloseFile(FDetailArticlePrelevementUniteFonds);
          end;
     end;
end;

Function NatureOperationPrelevementPointeur(NumPrelevement,Matricule,NumPrelevementUniteFonds:string; RapportTraitement:TMemo; InclureQuantite:boolean):string;
var  iPNP,PBegin,PEnd,IndiceCodeStock:integer;  NatureMouvement,PositionPrelevement,TypeProcesInt,FichierConcerneInt,Adresse,NumStructure,QuantiteTexte:string;  OKDetailArticlePrelevementUniteFonds,OKCreatePointeur:boolean;
begin
     ChargerPointeurDetailArticlePrelevementUniteFonds(NumPrelevement,Matricule,'','',OKCreatePointeur);
     //TStockArrayCopie:=RemplireTStockArticle('Article',NumStructure,RapportTraitement);

     NatureMouvement:='';
     iPNP:=0;
     while(iPNP<=ListeRegistreDetailArticlePrelevementUniteFondsPointeur.Count-1)do
     begin
          if(NumPrelevement<>'')then
          begin
               if(inttostr(TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iPNP]).NumPrelevement)=NumPrelevement)
               then OKDetailArticlePrelevementUniteFonds:=true
               else OKDetailArticlePrelevementUniteFonds:=false;
          end
          else OKDetailArticlePrelevementUniteFonds:=false;

          if(OKDetailArticlePrelevementUniteFonds=true)then
          begin
               if(Matricule<>'')then
               begin
                    if(TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iPNP]).Matricule=Matricule)
                    then OKDetailArticlePrelevementUniteFonds:=true
                    else OKDetailArticlePrelevementUniteFonds:=false;
               end
               else OKDetailArticlePrelevementUniteFonds:=false;
          end;

          if(OKDetailArticlePrelevementUniteFonds=true)then
          begin
               if(NumPrelevementUniteFonds<>'')then
               begin
                    if(inttostr(TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iPNP]).NumPrelevementUniteFonds)=NumPrelevementUniteFonds)
                    then OKDetailArticlePrelevementUniteFonds:=true
                    else OKDetailArticlePrelevementUniteFonds:=false;
               end
               else OKDetailArticlePrelevementUniteFonds:=false;
          end;

          if(OKDetailArticlePrelevementUniteFonds=true)then
          begin
               NumStructure:='';
               RStockArticleCopie:=ChercherStockArticle('Article',NumStructure,TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iPNP]).CodeArticle,'',OKStockRecherche,RubriqueRecherche);
               {IndiceCodeStock:=strtointeger(TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iPNP]).CodeArticle);
               RStockArticleCopie.QteEntree:=TStockArticleCopie[IndiceCodeStock].QteEntree;
               RStockArticleCopie.QteSortie:=TStockArticleCopie[IndiceCodeStock].QteSortie;
               RStockArticleCopie.QteStock:=TStockArticleCopie[IndiceCodeStock].QteStock;
               RStockArticleCopie.QteInitial:=TStockArticleCopie[IndiceCodeStock].QteInitial;
               RStockArticleCopie.QteLimite:=TStockArticleCopie[IndiceCodeStock].QteLimite;
               RStockArticleCopie.CoutUnitaire:=TStockArticleCopie[IndiceCodeStock].CoutUnitaire;
               RStockArticleCopie.PrixVenteDetaille:=TStockArticleCopie[IndiceCodeStock].PrixVenteDetaille;
               RStockArticleCopie.PrixVenteDemiGros:=TStockArticleCopie[IndiceCodeStock].PrixVenteDemiGros;
               RStockArticleCopie.PrixVenteGros:=TStockArticleCopie[IndiceCodeStock].PrixVenteGros;
               RStockArticleCopie.Design:=TStockArticleCopie[IndiceCodeStock].Design;
               RStockArticleCopie.Ref:=TStockArticleCopie[IndiceCodeStock].Ref;
               RStockArticleCopie.Observ:=TStockArticleCopie[IndiceCodeStock].Observ;
               RStockArticleCopie.Emplace:=TStockArticleCopie[IndiceCodeStock].Emplace;
               RStockArticleCopie.CodeBarre:=TStockArticleCopie[IndiceCodeStock].CodeBarre;
               RStockArticleCopie.Code:=TStockArticleCopie[IndiceCodeStock].Code;
               RStockArticleCopie.UM:=TStockArticleCopie[IndiceCodeStock].UM;
               RStockArticleCopie.Formule:=TStockArticleCopie[IndiceCodeStock].Formule;
               RStockArticleCopie.enregistrement:=TStockArticleCopie[IndiceCodeStock].enregistrement;}

               if(InclureQuantite=true)
               then QuantiteTexte:=Vergule(floattostr(TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur[iPNP]).QuantiteJustifier),'2','C','')+' '+RStockArticleCopie.UM+' '
               else QuantiteTexte:='';

               if(NatureMouvement='')then
               begin
                    NatureMouvement:=QuantiteTexte+RStockArticleCopie.Design+' '+RStockArticleCopie.Ref;
               end
               else
               begin
                    NatureMouvement:=NatureMouvement+'; '+QuantiteTexte+RStockArticleCopie.Design+' '+RStockArticleCopie.Ref;
               end;
               
          end;
     iPNP:=iPNP+1;
     end;

     NatureOperationPrelevementPointeur:=NatureMouvement;

     if(OKCreatePointeur=true)then
     begin
          for iPNP:=0 to ListeRegistreDetailArticlePrelevementUniteFondsPointeur.Count-1 do TRegistreDetailArticlePrelevementUniteFondsPointeur(ListeRegistreDetailArticlePrelevementUniteFondsPointeur.Items[iPNP]).Free;
          ListeRegistreDetailArticlePrelevementUniteFondsPointeur.Free;
     end;
end;

Procedure RemplireTableauDetailArticlePrelevementUniteFonds(Tableau:TStringGrid; NumStructure,DateDebut,DateFin:string; InclureQuantite:boolean; RapportTraitement:TMemo);
var  R,iP,PBegin,PEnd,IndiceCodeStock,IndexSousFamilleStock,iSFS:integer;
     TypeProces,FichierConserne,Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut,PositionPrelevement,SousFamilleStock:string;
     OKStockArticle,OKIndexSousFamilleStock:boolean;
     QuantiteTexte,NatureMouvement:string;
begin
     if(FSTraitementDonnees.RBRemplireTStockArticle.Checked=false)then
     begin
          RapportTraitement.Lines.Add('Chargement Articles ...');
          TStockCopie:=RemplireTStockArticle('Article',NumStructure,RapportTraitement,ArrayIndexSousFamilleStock);
          RapportTraitement.Lines.Add('Fin Chargement Articles ...');
     end
     else RapportTraitement.Lines.Add('Chargement Articles déjà effectué ...');
     
     PBegin:=0;
     PEnd:=999999999;
     FichierConserne:='FArchiveDetailArticlePrelevementUniteFonds';

     IndiquerPositionPeriodiqueArchivePrelevement(FichierConserne,'',DateDebut,DateFin,PBegin,PEnd);

     TypeProces:='Business';
     Adresse:='';
     if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
     end;

     ChDetailArticlePrelevementUniteFonds:=Adresse;
     assignfile(FDetailArticlePrelevementUniteFonds,ChDetailArticlePrelevementUniteFonds);
     if FileExists(ChDetailArticlePrelevementUniteFonds)then
     begin
          try
          Reset(FDetailArticlePrelevementUniteFonds);
          iP:=PBegin;
          Seek(FDetailArticlePrelevementUniteFonds,iP);
          while not eof(FDetailArticlePrelevementUniteFonds)and(iP<=PEnd)do
          begin
               read(FDetailArticlePrelevementUniteFonds,RDetailArticlePrelevementUniteFonds);  Application.ProcessMessages;  if(FSTraitementDonnees.RBSuspendreTraitement.Checked)then begin RapportTraitement.Lines.Add('Traitement Suspendu.'); Exit; end;

               SousFamilleStock:=Firstlaters(RDetailArticlePrelevementUniteFonds.CodeArticle,6);

               iP:=iP+1;
               R:=1;
               OKStockArticle:=false;
               while(R<=Tableau.RowCount-1)and(OKStockArticle=false)do
               begin
                    QuantiteTexte:='';
                    NatureMouvement:='';
                    
                    if(Tableau.Cells[16,R]='UF')
                    and(Tableau.Cells[27,R]<>'')
                    and(Tableau.Cells[28,R]<>'')
                    and(Tableau.Cells[29,R]<>'')
                    and(inttostr(RDetailArticlePrelevementUniteFonds.NumPrelevement)=Tableau.Cells[27,R])
                    and(RDetailArticlePrelevementUniteFonds.Matricule=Tableau.Cells[28,R])
                    and(inttostr(RDetailArticlePrelevementUniteFonds.NumPrelevementUniteFonds)=Tableau.Cells[29,R])
                    then
                    begin
                         OKStockArticle:=true;

                         iSFS:=0;
                         OKIndexSousFamilleStock:=false;
                         while(iSFS<=High(ArrayIndexSousFamilleStock))and(OKIndexSousFamilleStock=false)do
                         begin
                              if(ArrayIndexSousFamilleStock[iSFS]=SousFamilleStock)then
                              begin
                                   OKIndexSousFamilleStock:=true;
                                   IndiceCodeStock:=strtoint(inttostr(iSFS)+lastlaters(RDetailArticlePrelevementUniteFonds.CodeArticle,4));
                              end;
                         iSFS:=iSFS+1;
                         end;
                                                       
                         if(OKIndexSousFamilleStock=true)and(IndiceCodeStock<=High(TStockCopie))then
                         begin
                               RStockArticleCopie.QteEntree:=TStockCopie[IndiceCodeStock].QteEntree;
                               RStockArticleCopie.QteSortie:=TStockCopie[IndiceCodeStock].QteSortie;
                               RStockArticleCopie.QteStock:=TStockCopie[IndiceCodeStock].QteStock;
                               RStockArticleCopie.QteInitial:=TStockCopie[IndiceCodeStock].QteInitial;
                               RStockArticleCopie.QteLimite:=TStockCopie[IndiceCodeStock].QteLimite;
                               RStockArticleCopie.CoutUnitaire:=TStockCopie[IndiceCodeStock].CoutUnitaire;
                               RStockArticleCopie.PrixVenteDetaille:=TStockCopie[IndiceCodeStock].PrixVenteDetaille;
                               RStockArticleCopie.PrixVenteDemiGros:=TStockCopie[IndiceCodeStock].PrixVenteDemiGros;
                               RStockArticleCopie.PrixVenteGros:=TStockCopie[IndiceCodeStock].PrixVenteGros;
                               RStockArticleCopie.Design:=TStockCopie[IndiceCodeStock].Design;
                               RStockArticleCopie.Ref:=TStockCopie[IndiceCodeStock].Ref;
                               RStockArticleCopie.Observ:=TStockCopie[IndiceCodeStock].Observ;
                               RStockArticleCopie.Emplace:=TStockCopie[IndiceCodeStock].Emplace;
                               RStockArticleCopie.CodeBarre:=TStockCopie[IndiceCodeStock].CodeBarre;
                               RStockArticleCopie.Code:=TStockCopie[IndiceCodeStock].Code;
                               RStockArticleCopie.UM:=TStockCopie[IndiceCodeStock].UM;
                               RStockArticleCopie.Formule:=TStockCopie[IndiceCodeStock].Formule;
                               RStockArticleCopie.enregistrement:=TStockCopie[IndiceCodeStock].enregistrement;

                               if(InclureQuantite=true)
                               then QuantiteTexte:=Vergule(floattostr(RDetailArticlePrelevementUniteFonds.QuantiteJustifier),'2','C','')+' '+TStockCopie[IndiceCodeStock].UM+' '
                               else QuantiteTexte:='';

                               if(NatureMouvement='')then
                               begin
                                    NatureMouvement:=QuantiteTexte+TStockCopie[IndiceCodeStock].Design+' '+TStockCopie[IndiceCodeStock].Ref;
                               end
                               else
                               begin
                                    NatureMouvement:=NatureMouvement+'; '+QuantiteTexte+TStockCopie[IndiceCodeStock].Design+' '+TStockCopie[IndiceCodeStock].Ref;
                               end;

                               if(Tableau.Cells[11,R]='')
                               then Tableau.Cells[11,R]:=NatureMouvement
                               else Tableau.Cells[11,R]:=Tableau.Cells[11,R]+' '+NatureMouvement;

                               RapportTraitement.Lines.Add(Tableau.Cells[16,R]+' N° '+Tableau.Cells[1,R]+' du '+Tableau.Cells[2,R]+': '+Tableau.Cells[11,R]);
                         end
                         else RapportTraitement.Lines.Add('Anomalie: IndiceCodeStock '+inttostr(IndiceCodeStock)+' Code Article: '+RDetailArticlePrelevementUniteFonds.CodeArticle);
                    end;
               R:=R+1;
               end;
          end;
          finally
          CloseFile(FDetailArticlePrelevementUniteFonds);
          end;
     end;
                   
     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
end;

Procedure ChargerPointeurDetailMouvement(DesignationTypeMouvement,PDMBegin,PDMEnd:string;  var OKCreatePointeur:boolean);
var
     iPDM,MaxProgress:integer;
     TypeProces,FichierConserne,Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut:string;
     TableauRDetailMouvement:array of RDetailMouvements;
     NbrALire,NbrRDetailMouvementLus,Nbr:integer;
begin
     NbrALire:=NombreOptimaleBufferSize('RDetailMouvement');
     SetLength(TableauRDetailMouvement,NbrALire);

     ListeRegistreDetailMouvementPointeur:=TList.Create;
     OKCreatePointeur:=false;

     if(strtointeger(PDMBegin)<0)or(strtointeger(PDMEnd)<0)then
     begin
          RDetailMouvement.RRegistreFormule0.PositionFormule:=0;
          RDetailMouvement.RRegistreFormule0.CodeFormule:='';
          RDetailMouvement.RRegistreFormule0.LibelleFormule:='';
          RDetailMouvement.RRegistreFormule0.TypeAffichage:='';
          RDetailMouvement.RRegistreFormule0.Active:=false;
          RDetailMouvement.RRegistreFormule0.ValeurFormule:=0;

          RegistreDetailMouvementPointeur:=TRegistreDetailMouvementPointeur.Create;
          RegistreDetailMouvementPointeur.PositionDetailMouvement:=-1;
          RegistreDetailMouvementPointeur.NumDetailMouvement:=-1;
          RegistreDetailMouvementPointeur.OrdreListeMouvement:=-1;
          RegistreDetailMouvementPointeur.DateMouvement:='';
          RegistreDetailMouvementPointeur.CodeArticle:='';
          RegistreDetailMouvementPointeur.DesignationArticle:='';
          RegistreDetailMouvementPointeur.ReferenceArticle:='';
          RegistreDetailMouvementPointeur.UMArticle:='';
          RegistreDetailMouvementPointeur.CoutUnitaireArticle:=0;
          RegistreDetailMouvementPointeur.Quantite:=0;
          RegistreDetailMouvementPointeur.PrixUnitaire:=0;
          RegistreDetailMouvementPointeur.RRegistreFormule0:=RDetailMouvement.RRegistreFormule0;
          RegistreDetailMouvementPointeur.RRegistreFormule1:=RDetailMouvement.RRegistreFormule0;
          RegistreDetailMouvementPointeur.RRegistreFormule2:=RDetailMouvement.RRegistreFormule0;
          RegistreDetailMouvementPointeur.RRegistreFormule3:=RDetailMouvement.RRegistreFormule0;
          RegistreDetailMouvementPointeur.RRegistreFormule4:=RDetailMouvement.RRegistreFormule0;
          RegistreDetailMouvementPointeur.RRegistreFormule5:=RDetailMouvement.RRegistreFormule0;
          RegistreDetailMouvementPointeur.RRegistreFormule6:=RDetailMouvement.RRegistreFormule0;
          RegistreDetailMouvementPointeur.RRegistreFormule7:=RDetailMouvement.RRegistreFormule0;
          RegistreDetailMouvementPointeur.RRegistreFormule8:=RDetailMouvement.RRegistreFormule0;
          RegistreDetailMouvementPointeur.RRegistreFormule9:=RDetailMouvement.RRegistreFormule0;
          RegistreDetailMouvementPointeur.ValidationDetailMouvement:=false;
          ListeRegistreDetailMouvementPointeur.Add(RegistreDetailMouvementPointeur);
          OKCreatePointeur:=true;
     Exit;
     end;

     if(PDMBegin='')then PDMBegin:='0';
     if(PDMEnd='')then PDMEnd:='0';

     if(PDMBegin='999999999')and(PDMEnd='0')then
     begin
          PDMBegin:='0';
          PDMEnd:='999999999';
     end;

     TypeProces:='Business';   FichierConserne:='DétailMouvement '+DesignationTypeMouvement;
     if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
     end;

     ChDetailMouvement:=Adresse;
FSFicheSaisie.AfficheAdresseDetailMouvement.Caption:=ChDetailMouvement;
     assignfile(FDetailMouvement,ChDetailMouvement);
     if FileExists(ChDetailMouvement)then
     begin
          try
          Reset(FDetailMouvement);
          iPDM:=strtointeger(PDMBegin);
          Seek(FDetailMouvement,iPDM);

          MaxProgress:=strtointeger(PDMEnd)-strtointeger(PDMBegin)+1;
          FSFicheSaisie.ProgressAttenteDetailMouvement.Min:=0;
          FSFicheSaisie.ProgressAttenteDetailMouvement.Max:=MaxProgress;
          FSFicheSaisie.ProgressAttenteDetailMouvement.Position:=0;

          while not eof(FDetailMouvement)and(iPDM<=strtointeger(PDMEnd))do
          begin
               //read(FDetailMouvement,RDetailMouvement);  Application.ProcessMessages;

               BlockRead(FDetailMouvement,TableauRDetailMouvement[0],NbrALire,NbrRDetailMouvementLus);  Application.ProcessMessages;

               Nbr:=0;
               while Nbr<=NbrRDetailMouvementLus-1 do
               begin
                    RDetailMouvement:=TableauRDetailMouvement[Nbr];
               FSFicheSaisie.ProgressAttenteDetailMouvement.StepIt;

               iPDM:=iPDM+1;
               //ListeRegistreDetailMouvementPointeur:=TList.Create;
               RegistreDetailMouvementPointeur:=TRegistreDetailMouvementPointeur.Create;
               RegistreDetailMouvementPointeur.PositionDetailMouvement:=RDetailMouvement.PositionDetailMouvement;
               RegistreDetailMouvementPointeur.NumDetailMouvement:=RDetailMouvement.NumDetailMouvement;
               RegistreDetailMouvementPointeur.OrdreListeMouvement:=RDetailMouvement.OrdreListeMouvement;
               RegistreDetailMouvementPointeur.DateMouvement:=RDetailMouvement.DateMouvement;
               RegistreDetailMouvementPointeur.CodeArticle:=RDetailMouvement.CodeArticle;
               RegistreDetailMouvementPointeur.DesignationArticle:=RDetailMouvement.DesignationArticle;
               RegistreDetailMouvementPointeur.ReferenceArticle:=RDetailMouvement.ReferenceArticle;
               RegistreDetailMouvementPointeur.UMArticle:=RDetailMouvement.UMArticle;
               RegistreDetailMouvementPointeur.CoutUnitaireArticle:=RDetailMouvement.CoutUnitaireArticle;
               RegistreDetailMouvementPointeur.Quantite:=RDetailMouvement.Quantite;
               RegistreDetailMouvementPointeur.PrixUnitaire:=RDetailMouvement.PrixUnitaire;
               RegistreDetailMouvementPointeur.RRegistreFormule0:=RDetailMouvement.RRegistreFormule0;
               RegistreDetailMouvementPointeur.RRegistreFormule1:=RDetailMouvement.RRegistreFormule1;
               RegistreDetailMouvementPointeur.RRegistreFormule2:=RDetailMouvement.RRegistreFormule2;
               RegistreDetailMouvementPointeur.RRegistreFormule3:=RDetailMouvement.RRegistreFormule3;
               RegistreDetailMouvementPointeur.RRegistreFormule4:=RDetailMouvement.RRegistreFormule4;
               RegistreDetailMouvementPointeur.RRegistreFormule5:=RDetailMouvement.RRegistreFormule5;
               RegistreDetailMouvementPointeur.RRegistreFormule6:=RDetailMouvement.RRegistreFormule6;
               RegistreDetailMouvementPointeur.RRegistreFormule7:=RDetailMouvement.RRegistreFormule7;
               RegistreDetailMouvementPointeur.RRegistreFormule8:=RDetailMouvement.RRegistreFormule8;
               RegistreDetailMouvementPointeur.RRegistreFormule9:=RDetailMouvement.RRegistreFormule9;
               RegistreDetailMouvementPointeur.ValidationDetailMouvement:=RDetailMouvement.ValidationDetailMouvement;
               ListeRegistreDetailMouvementPointeur.Add(RegistreDetailMouvementPointeur);
               OKCreatePointeur:=true;

               Nbr:=Nbr+1;
               end;
          end;
          finally
          CloseFile(FDetailMouvement);
          end;
     end;
end;

Function NatureOperationMouvementPointeur(DesignationTypeMouvement,OrdreListeMouvement:string; InclureQuantite:boolean):string;
var   IP:integer; NatureMouvement,QuantiteTexte,TypeProcesNOM,FichierConserneNOM,AdresseNOM:string;  OKDetailMouvement,OKCreatePointeur:boolean;
begin
     ChargerPointeurDetailMouvement(DesignationTypeMouvement,'','',OKCreatePointeur);

     NatureMouvement:='';
     for iP:=0 to ListeRegistreDetailMouvementPointeur.Count-1 do
     begin
          OKDetailMouvement:=TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iP]).ValidationDetailMouvement;

          if(OKDetailMouvement=true)then
          begin
               if(inttostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iP]).OrdreListeMouvement)=OrdreListeMouvement)
               then OKDetailMouvement:=true
               else OKDetailMouvement:=false;
          end;

          if(OKDetailMouvement=true)then
          begin
               if(InclureQuantite=true)
               then QuantiteTexte:=Vergule(floattostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iP]).Quantite),'2','C','')+' '+TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iP]).UMArticle+' '
               else QuantiteTexte:='';

               if(NatureMouvement='')then
               begin
                    NatureMouvement:=QuantiteTexte+TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iP]).DesignationArticle+' '+TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iP]).ReferenceArticle;
               end
               else
               begin
                    NatureMouvement:=NatureMouvement+'; '+QuantiteTexte+TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iP]).DesignationArticle+' '+TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iP]).ReferenceArticle;
               end;
          end;

     end;

     NatureOperationMouvementPointeur:=NatureMouvement;

     if(OKCreatePointeur=true)then
     begin
          for iP:=0 to ListeRegistreDetailMouvementPointeur.Count-1 do TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur.Items[iP]).Free;
          ListeRegistreDetailMouvementPointeur.Free;
     end;
end;

Procedure RemplireTableauDetailArticleMouvement(Tableau:TStringGrid; DesignationTypeMouvement:string; InclureQuantite:boolean; RapportTraitement:TMemo);
var  R,iPDM,PDMBegin,PDMEnd:integer;
     TypeProces,FichierConserne,Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut:string;
     OKStockArticle:boolean;
     QuantiteTexte,NatureMouvement:string;
begin
     TypeProces:='Business';   FichierConserne:='DétailMouvement '+DesignationTypeMouvement;
     if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
     end;

     PDMBegin:=0;
     PDMEnd:=999999999;

     ChDetailMouvement:=Adresse;
     assignfile(FDetailMouvement,ChDetailMouvement);
     if FileExists(ChDetailMouvement)then
     begin
          try
          Reset(FDetailMouvement);
          iPDM:=PDMBegin;
          Seek(FDetailMouvement,iPDM);

          while not eof(FDetailMouvement)and(iPDM<=PDMEnd)do
          begin
               read(FDetailMouvement,RDetailMouvement);  Application.ProcessMessages;  if(FSTraitementDonnees.RBSuspendreTraitement.Checked)then begin RapportTraitement.Lines.Add('Traitement Suspendu.'); Exit; end;
               iPDM:=iPDM+1;
               R:=1;
               OKStockArticle:=false;
               while(R<=Tableau.RowCount-1)and(OKStockArticle=false)do
               begin
                    QuantiteTexte:='';
                    NatureMouvement:='';
                    
                    if(Tableau.Cells[16,R]='LM')
                    and(Tableau.Cells[1,R]<>'')
                    and(RDetailMouvement.OrdreListeMouvement=strtointeger(Tableau.Cells[1,R]))
                    then
                    begin
                         OKStockArticle:=true;

                         if(InclureQuantite=true)
                         then QuantiteTexte:=Vergule(floattostr(RDetailMouvement.Quantite),'2','C','')+' '+RDetailMouvement.UMArticle+' '
                         else QuantiteTexte:='';

                         if(NatureMouvement='')then
                         begin
                              NatureMouvement:=QuantiteTexte+RDetailMouvement.DesignationArticle+' '+RDetailMouvement.ReferenceArticle;
                         end
                         else
                         begin
                              NatureMouvement:=NatureMouvement+'; '+QuantiteTexte+RDetailMouvement.DesignationArticle+' '+RDetailMouvement.ReferenceArticle;
                         end;

                         if(Tableau.Cells[11,R]='')
                         then Tableau.Cells[11,R]:=NatureMouvement
                         else Tableau.Cells[11,R]:=Tableau.Cells[11,R]+' '+NatureMouvement;

                         RapportTraitement.Lines.Add(Tableau.Cells[16,R]+' N° '+Tableau.Cells[1,R]+' du '+Tableau.Cells[2,R]+': '+Tableau.Cells[11,R]);
                    end;
               R:=R+1;
               end;
          end;
          finally
          CloseFile(FDetailMouvement);
          end;
     end;

     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
end;

Procedure ProceAfficheDetailMouvementPointeur(TableauFormules,TableauVariable,TableauDetaiMouvement:TStringGrid; OrdreListeMouvement,PositionDetailMouvementBegin,PositionDetailMouvementEnd:integer; ValidationDetailMouvement,RBDetailMouvementAfficher,ChargerPointeur:boolean);
var  iDM,j,Row,R,Col,C,T,ColCount:integer;  OKArticle,OKFormule,OKDetailMouvement,OKCreatePointeur:boolean;  TableauPointeurData:TableauPointeurDatas; TypeProces,FichierConserne,Adresse,NbrDecimalePrix,NbrDecimaleAutres:string;
begin
     AccelerationAffichageTableau(TableauDetaiMouvement,true);

     NbrDecimalePrix:=FSFicheSaisie.EditNbrChiffreApresVergulePrix.Text;

     C:=0;
     ColCount:=TableauDetaiMouvement.ColCount;
     {while(C<=ColCount-1)do
     begin
          setlength(TableauPointeurData,C+1);
          TableauPointeurData[C].Data1:=TableauDetaiMouvement.Cells[C,0];
          TableauPointeurData[C].Data2:=TableauDetaiMouvement.Cells[C,3];
          TableauPointeurData[C].RowPointeur:=C;
     C:=C+1;
     end;}

     TypeProces:='Business';   FichierConserne:=FSFicheSaisie.EditCodeTypeFormuleBase.Text;
     if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
     end;

     ChFormule:=Adresse;
     assignfile(FFormule,ChFormule);
     try
     if FileExists(ChFormule)then
     Reset(FFormule)
     else Rewrite(FFormule);

     if(ValidationDetailMouvement=false)then
     begin
          PositionDetailMouvementBegin:=0;
          PositionDetailMouvementEnd:=999999999;
     end;

     if(ChargerPointeur=true)then ChargerPointeurDetailMouvement(FSFicheSaisie.EditDesignationTypeMouvement.Text,inttostr(PositionDetailMouvementBegin),inttostr(PositionDetailMouvementEnd),OKCreatePointeur);

     Row:=5;
     Col:=5;

     FSFicheSaisie.ProgressAttenteDetailMouvement.Min:=0;
     FSFicheSaisie.ProgressAttenteDetailMouvement.Max:=ListeRegistreDetailMouvementPointeur.Count;
     FSFicheSaisie.ProgressAttenteDetailMouvement.Position:=0;

     for iDM:=0 to ListeRegistreDetailMouvementPointeur.Count-1 do
     begin
          FSFicheSaisie.ProgressAttenteDetailMouvement.StepIt; Application.ProcessMessages;

          if(FSFicheSaisie.RBSuspendreDetailMouvement.Checked=true)then Exit;

          if(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).ValidationDetailMouvement=ValidationDetailMouvement)
          then OKDetailMouvement:=true
          else OKDetailMouvement:=false;

          if(OKDetailMouvement=true)then
          begin
               if(RBDetailMouvementAfficher=true)then
               begin
                    if(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).OrdreListeMouvement=OrdreListeMouvement)
                    then OKDetailMouvement:=true
                    else OKDetailMouvement:=false;
               end;
          end;

          if(OKDetailMouvement=true)then
          begin
               Row:=Row+1;
               TableauDetaiMouvement.Rows[Row].Text:='';
               TableauDetaiMouvement.Cells[0,Row]:=inttostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).PositionDetailMouvement);
               TableauDetaiMouvement.Cells[1,Row]:=TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).CodeArticle;
               TableauDetaiMouvement.Cells[2,Row]:=TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).DesignationArticle;
               TableauDetaiMouvement.Cells[3,Row]:=TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).ReferenceArticle;
               TableauDetaiMouvement.Cells[4,Row]:=TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).UMArticle;
               TableauDetaiMouvement.Cells[5,Row]:=Vergule(floattostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).CoutUnitaireArticle),FSFicheSaisie.EditNbrChiffreApresVerguleCout.Text,'C','');
               TableauDetaiMouvement.Cells[6,Row]:=Vergule(floattostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).Quantite),FunctionNombreChiffreApresVerguleQte(floattostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).Quantite),TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).UMArticle,FSFicheSaisie.EditNbrChiffreApresVerguleQte.Text,FSFicheSaisie.RBNbrChiffreApresVerguleAutomatique.Checked),'C','');
               TableauDetaiMouvement.Cells[7,Row]:=Vergule(floattostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).PrixUnitaire),FSFicheSaisie.EditNbrChiffreApresVergulePrix.Text,'C','');


               C:=8;
               while(C<=ColCount-1)do
               begin
                    OKFormule:=false;
                    if(TableauDetaiMouvement.Cells[C,0]<>'')
                    and(TableauDetaiMouvement.Cells[C,0]=inttostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule0.PositionFormule))
                    then
                    begin
                         NbrDecimaleAutres:=FuncNbrDecimale(floattostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule0.ValeurFormule*100));
                         OKFormule:=true;
                         if(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule0.TypeAffichage='%')
                         then TableauDetaiMouvement.Cells[C,Row]:=Vergule(floattostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule0.ValeurFormule*100),NbrDecimaleAutres,'C','')+'%'
                         else TableauDetaiMouvement.Cells[C,Row]:=Vergule(floattostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule0.ValeurFormule),NbrDecimalePrix,'C','');
                    end;

                    if(OKFormule=false)
                    and(TableauDetaiMouvement.Cells[C,0]<>'')
                    and(TableauDetaiMouvement.Cells[C,0]=inttostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule1.PositionFormule))
                    then
                    begin
                         NbrDecimaleAutres:=FuncNbrDecimale(floattostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule1.ValeurFormule*100));
                         OKFormule:=true;
                         if(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule1.TypeAffichage='%')
                         then TableauDetaiMouvement.Cells[C,Row]:=Vergule(floattostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule1.ValeurFormule*100),NbrDecimaleAutres,'C','')+'%'
                         else TableauDetaiMouvement.Cells[C,Row]:=Vergule(floattostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule1.ValeurFormule),NbrDecimalePrix,'C','');
                    end;

                    if(OKFormule=false)
                    and(TableauDetaiMouvement.Cells[C,0]<>'')
                    and(TableauDetaiMouvement.Cells[C,0]=inttostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule2.PositionFormule))
                    then
                    begin
                         NbrDecimaleAutres:=FuncNbrDecimale(floattostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule2.ValeurFormule*100));
                         OKFormule:=true;
                         if(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule2.TypeAffichage='%')
                         then TableauDetaiMouvement.Cells[C,Row]:=Vergule(floattostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule2.ValeurFormule*100),NbrDecimaleAutres,'C','')+'%'
                         else TableauDetaiMouvement.Cells[C,Row]:=Vergule(floattostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule2.ValeurFormule),NbrDecimalePrix,'C','');
                    end;

                    if(OKFormule=false)
                    and(TableauDetaiMouvement.Cells[C,0]<>'')
                    and(TableauDetaiMouvement.Cells[C,0]=inttostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule3.PositionFormule))
                    then
                    begin
                         NbrDecimaleAutres:=FuncNbrDecimale(floattostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule3.ValeurFormule*100));
                         OKFormule:=true;
                         if(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule3.TypeAffichage='%')
                         then TableauDetaiMouvement.Cells[C,Row]:=Vergule(floattostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule3.ValeurFormule*100),NbrDecimaleAutres,'C','')+'%'
                         else TableauDetaiMouvement.Cells[C,Row]:=Vergule(floattostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule3.ValeurFormule),NbrDecimalePrix,'C','');
                    end;

                    if(OKFormule=false)
                    and(TableauDetaiMouvement.Cells[C,0]<>'')
                    and(TableauDetaiMouvement.Cells[C,0]=inttostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule4.PositionFormule))
                    then
                    begin
                         NbrDecimaleAutres:=FuncNbrDecimale(floattostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule4.ValeurFormule*100));
                         OKFormule:=true;
                         if(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule4.TypeAffichage='%')
                         then TableauDetaiMouvement.Cells[C,Row]:=Vergule(floattostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule4.ValeurFormule*100),NbrDecimaleAutres,'C','')+'%'
                         else TableauDetaiMouvement.Cells[C,Row]:=Vergule(floattostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule4.ValeurFormule),NbrDecimalePrix,'C','');
                    end;

                    if(OKFormule=false)
                    and(TableauDetaiMouvement.Cells[C,0]<>'')
                    and(TableauDetaiMouvement.Cells[C,0]=inttostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule5.PositionFormule))
                    then
                    begin
                         NbrDecimaleAutres:=FuncNbrDecimale(floattostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule5.ValeurFormule*100));
                         OKFormule:=true;
                         if(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule5.TypeAffichage='%')
                         then TableauDetaiMouvement.Cells[C,Row]:=Vergule(floattostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule5.ValeurFormule*100),NbrDecimaleAutres,'C','')+'%'
                         else TableauDetaiMouvement.Cells[C,Row]:=Vergule(floattostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule5.ValeurFormule),NbrDecimalePrix,'C','');
                    end;

                    if(OKFormule=false)
                    and(TableauDetaiMouvement.Cells[C,0]<>'')
                    and(TableauDetaiMouvement.Cells[C,0]=inttostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule6.PositionFormule))
                    then
                    begin
                         NbrDecimaleAutres:=FuncNbrDecimale(floattostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule6.ValeurFormule*100));
                         OKFormule:=true;
                         if(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule6.TypeAffichage='%')
                         then TableauDetaiMouvement.Cells[C,Row]:=Vergule(floattostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule6.ValeurFormule*100),NbrDecimaleAutres,'C','')+'%'
                         else TableauDetaiMouvement.Cells[C,Row]:=Vergule(floattostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule6.ValeurFormule),NbrDecimalePrix,'C','');
                    end;

                    if(OKFormule=false)
                    and(TableauDetaiMouvement.Cells[C,0]<>'')
                    and(TableauDetaiMouvement.Cells[C,0]=inttostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule7.PositionFormule))
                    then
                    begin
                         NbrDecimaleAutres:=FuncNbrDecimale(floattostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule7.ValeurFormule*100));
                         OKFormule:=true;
                         if(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule7.TypeAffichage='%')
                         then TableauDetaiMouvement.Cells[C,Row]:=Vergule(floattostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule7.ValeurFormule*100),NbrDecimaleAutres,'C','')+'%'
                         else TableauDetaiMouvement.Cells[C,Row]:=Vergule(floattostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule7.ValeurFormule),NbrDecimalePrix,'C','');
                    end;

                    if(OKFormule=false)
                    and(TableauDetaiMouvement.Cells[C,0]<>'')
                    and(TableauDetaiMouvement.Cells[C,0]=inttostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule8.PositionFormule))
                    then
                    begin
                         NbrDecimaleAutres:=FuncNbrDecimale(floattostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule8.ValeurFormule*100));
                         OKFormule:=true;
                         if(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule8.TypeAffichage='%')
                         then TableauDetaiMouvement.Cells[C,Row]:=Vergule(floattostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule8.ValeurFormule*100),NbrDecimaleAutres,'C','')+'%'
                         else TableauDetaiMouvement.Cells[C,Row]:=Vergule(floattostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule8.ValeurFormule),NbrDecimalePrix,'C','');
                    end;

                    if(OKFormule=false)
                    and(TableauDetaiMouvement.Cells[C,0]<>'')
                    and(TableauDetaiMouvement.Cells[C,0]=inttostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule9.PositionFormule))
                    then
                    begin
                         NbrDecimaleAutres:=FuncNbrDecimale(floattostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule9.ValeurFormule*100));
                         OKFormule:=true;
                         if(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule9.TypeAffichage='%')
                         then TableauDetaiMouvement.Cells[C,Row]:=Vergule(floattostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule9.ValeurFormule*100),NbrDecimaleAutres,'C','')+'%'
                         else TableauDetaiMouvement.Cells[C,Row]:=Vergule(floattostr(TRegistreDetailMouvementPointeur(ListeRegistreDetailMouvementPointeur[iDM]).RRegistreFormule9.ValeurFormule),NbrDecimalePrix,'C','');
                    end;
               C:=C+1;
               end;
          end;
     end;

     finally
     CloseFile(FFormule);
     end;

     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);

     if(Row>=6)then TableauDetaiMouvement.RowCount:=Row+1
               else
               begin
                    TableauDetaiMouvement.RowCount:=7;
                    TableauDetaiMouvement.Rows[6].Text:='';
               end;
     TrierTableauACol(TableauDetaiMouvement,8,0,1,'');

     AjustementTableauDetaiMouvement(TableauDetaiMouvement);

     if(FSFicheSaisie.RBTailleColonneMax.Checked=true)then
     begin
          for C:=1 to TableauDetaiMouvement.ColCount-1 do
          begin
               TableauDetaiMouvement.ColWidths[C]:=MinInt(TableauDetaiMouvement.ColWidths[C],strtointeger(FSFicheSaisie.EditTailleColonneMax.Text));
          end;
     end;

     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);

     AccelerationAffichageTableau(TableauDetaiMouvement,false);
end;


end.
