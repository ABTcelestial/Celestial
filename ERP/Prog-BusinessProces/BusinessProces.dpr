program BusinessProces;

uses
  Forms,
  UnitFSMenuPrincipal in 'UnitFSMenuPrincipal.pas' {FSMenuPrincipal},
  UnitFSAvis in 'UnitFSAvis.pas' {FSAvis},
  UnitFSTraitementDonnees in 'UnitFSTraitementDonnees.pas' {FSTraitementDonnees},
  UnitFSGenerateurBase in 'UnitFSGenerateurBase.pas' {FSGenerateurBase},
  UnitFSPrelevement in 'UnitFSPrelevement.pas' {FSPrelevement},
  UnitInitialisation in 'UnitInitialisation.pas',
  UnitPintAvis in 'UnitPintAvis.pas' {PrintAvis: TQuickRep},
  UnitPrintEtatTraitementDonnees in 'UnitPrintEtatTraitementDonnees.pas' {PrintEtatTraitementDonnees: TQuickRep},
  UnitPrintEtatTraitementDonneesPortrait in 'UnitPrintEtatTraitementDonneesPortrait.pas' {PrintEtatTraitementDonneesPortrait: TQuickRep},
  UnitFSAccueilUtilisateurs in 'UnitFSAccueilUtilisateurs.pas' {FSAccueilUtilisateurs},
  UnitInstalle in 'UnitInstalle.pas' {FSInstalle},
  UnitFSCodeUtilisateurs in 'UnitFSCodeUtilisateurs.pas' {FSCodeUtilisateurs},
  UnitFSGenerateurAccesPrivilegies in 'UnitFSGenerateurAccesPrivilegies.pas' {FSGenerateurAccesPrivilegies},
  UnitFSPublicite in 'UnitFSPublicite.pas' {FSPublicite},
  UnitFSConsultationExercice in 'UnitFSConsultationExercice.pas' {FSConsultationExercice},
  UnitFSPlanificateur in 'UnitFSPlanificateur.pas' {FSPlanificateur},
  UnitFSNowPrelevement in 'UnitFSNowPrelevement.pas' {FSNowPrelevement},
  UnitFSListePrelevement in 'UnitFSListePrelevement.pas' {FSListePrelevement},
  UnitFSTransformationUniteFonds in 'UnitFSTransformationUniteFonds.pas' {FSTransformationUniteFonds},
  UnitPrintEtatProcesverbalTransformationUFonds in 'UnitPrintEtatProcesverbalTransformationUFonds.pas' {PrintEtatProcesverbalTransformationUFonds: TQuickRep},
  UnitFSClients in 'UnitFSClients.pas' {FSClients},
  UnitFSFournisseurs in 'UnitFSFournisseurs.pas' {FSFournisseurs},
  UnitFSEffectifs in 'UnitFSEffectifs.pas' {FSEffectifs},
  UnitFSOperationsAvis in 'UnitFSOperationsAvis.pas' {FSOperationsAvis},
  UnitFSFormules in 'UnitFSFormules.pas' {FSFormules},
  UnitFSFicheSaisie in 'UnitFSFicheSaisie.pas' {FSFicheSaisie},
  UnitFSFicheTechniqueProjet in 'UnitFSFicheTechniqueProjet.pas' {FSFicheTechniqueProjet},
  UnitFSGenerateurMouvement in 'UnitFSGenerateurMouvement.pas' {FSGenerateurMouvement},
  UnitPrintOuvrir in 'UnitPrintOuvrir.pas' {PrintOuvrir: TQuickRep},
  UnitPrintConvention in 'UnitPrintConvention.pas' {PrintConvention: TQuickRep},
  UnitPrintConvention1 in 'UnitPrintConvention1.pas' {PrintConvention1: TQuickRep},
  UnitPrintConvention2 in 'UnitPrintConvention2.pas' {PrintConvention2: TQuickRep},
  UnitFSModelFormuleCalcule in 'UnitFSModelFormuleCalcule.pas' {FSModelFormuleCalcule},
  UnitFSMiseaJour in 'UnitFSMiseaJour.pas' {FSMiseaJour},
  UnitFSFormulairePreselection in 'UnitFSFormulairePreselection.pas' {FSFormulairePreselection},
  UnitPrintFormulairePreselection in 'UnitPrintFormulairePreselection.pas' {PrintFormulairePreselection: TQuickRep},
  UnitPrintAutorisationVerssement in 'UnitPrintAutorisationVerssement.pas' {PrintAutorisationVerssement: TQuickRep},
  UnitPrintBonValorise in 'UnitPrintBonValorise.pas' {PrintBonValorise: TQuickRep},
  UnitPrintBonQuantitatif in 'UnitPrintBonQuantitatif.pas' {PrintBonQuantitatif: TQuickRep},
  UnitPrintFacture in 'UnitPrintFacture.pas' {PrintFacture: TQuickRep},
  UnitPrintChequeModel01 in 'UnitPrintChequeModel01.pas' {PrintChequeModel01: TQuickRep},
  UnitFSRecapitulatifProjets in 'UnitFSRecapitulatifProjets.pas' {FSRecapitulatifProjets},
  UnitSuppression in 'UnitSuppression.pas',
  UnitShowmessage in 'UnitShowmessage.pas' {FSShowmessage},
  UnitPrintOrdreVirement in 'UnitPrintOrdreVirement.pas' {PrintOrdreVirement: TQuickRep},
  UnitFSAgenceBanque in 'UnitFSAgenceBanque.pas' {FSAgenceBanque},
  UnitPrintDemandeChequeBanque in 'UnitPrintDemandeChequeBanque.pas' {PrintDemandeChequeBanque: TQuickRep},
  UnitPrintRemiseCheque in 'UnitPrintRemiseCheque.pas' {PrintRemiseCheque: TQuickRep},
  UnitPrintOrdreVersementEspece in 'UnitPrintOrdreVersementEspece.pas' {PrintOrdreVersementEspece: TQuickRep},
  UnitFSEcheancierPayement in 'UnitFSEcheancierPayement.pas' {FSEcheancierPayement},
  UnitFSTiers in 'UnitFSTiers.pas' {FSTiers},
  UnitFSComptabiliteTransitoire in 'UnitFSComptabiliteTransitoire.pas' {FSComptabiliteTransitoire},
  UnitFSGenerateurLocalisationGeographique in 'UnitFSGenerateurLocalisationGeographique.pas' {FSGenerateurLocalisationGeographique},
  UnitFSParametresAvances in 'UnitFSParametresAvances.pas' {FSParametresAvances},
  UnitFSResultatsAutocontroleAlerteExecution in 'UnitFSResultatsAutocontroleAlerteExecution.pas' {FSResultatsAutocontroleAlerteExecution},
  UnitPrintEngagementPaiement in 'UnitPrintEngagementPaiement.pas' {PrintEngagementPaiement: TQuickRep},
  UnitPrintFactureSimple in 'UnitPrintFactureSimple.pas' {PrintFactureSimple: TQuickRep},
  UnitPrintFactureDinamique in 'UnitPrintFactureDinamique.pas' {PrintFactureDinamique: TQuickRep},
  UnitPrintDiagramme2 in 'UnitPrintDiagramme2.pas' {PrintDiagramme2: TQuickRep},
  UnitPrintDiagramme3 in 'UnitPrintDiagramme3.pas' {PrintDiagramme3: TQuickRep},
  UnitPrintDiagramme4 in 'UnitPrintDiagramme4.pas' {PrintDiagramme4: TQuickRep},
  UnitFSGenerateurEtats in 'UnitFSGenerateurEtats.pas' {FSGenerateurEtats},
  UnitFSCompleteFormulesEtat in 'UnitFSCompleteFormulesEtat.pas' {FSCompleteFormulesEtat},
  UnitFSAttente in 'UnitFSAttente.pas' {FSAttente},
  UnitPrintEtatRecapitulatif in 'UnitPrintEtatRecapitulatif.pas' {PrintEtatRecapitulatif: TQuickRep},
  UnitPrintDiagramme in 'UnitPrintDiagramme.pas' {PrintDiagramme: TQuickRep},
  UnitPrintEtatDynamique in 'UnitPrintEtatDynamique.pas' {PrintEtatDynamique: TQuickRep},
  UnitPrintEtatPortraitDynamique in 'UnitPrintEtatPortraitDynamique.pas' {PrintEtatPortraitDynamique: TQuickRep},
  UnitFSPlanComptable in 'UnitFSPlanComptable.pas' {FSPlanComptable},
  UnitPrintRapportControleSpecificite in 'UnitPrintRapportControleSpecificite.pas' {PrintRapportControleSpecificite: TQuickRep},
  UnitFSCreateFichierTexte in 'UnitFSCreateFichierTexte.pas' {FSCreateFichierTexte},
  UnitInitialisationSpeciale in 'UnitInitialisationSpeciale.pas',
  UnitFSMarche in 'UnitFSMarche.pas' {FSMarche},
  UnitPrintEtatInventaire in 'UnitPrintEtatInventaire.pas' {PrintEtatInventaire: TQuickRep},
  UnitPrintFeuilleInventaire in 'UnitPrintFeuilleInventaire.pas' {PrintFeuilleInventaire: TQuickRep},
  UnitPrintFicheInventaire in 'UnitPrintFicheInventaire.pas' {PrintFicheInventaire: TQuickRep},
  UnitFSAttachements in 'UnitFSAttachements.pas' {FSAttachements},
  UnitFSDetailMarche in 'UnitFSDetailMarche.pas' {FSDetailMarche},
  UnitPrintAttachement in 'UnitPrintAttachement.pas' {PrintAttachement: TQuickRep},
  UnitFSSituations in 'UnitFSSituations.pas' {FSSituations},
  UnitPrintPrincipaleSituationMarche in 'UnitPrintPrincipaleSituationMarche.pas' {PrintPrincipaleSituationMarche: TQuickRep},
  UnitPrintRecapitulatifSituationMarche in 'UnitPrintRecapitulatifSituationMarche.pas' {PrintRecapitulatifSituationMarche: TQuickRep},
  UnitPrintSituationMarche in 'UnitPrintSituationMarche.pas' {PrintSituationMarche: TQuickRep},
  UnitPrintDiagrammeDouble in 'UnitPrintDiagrammeDouble.pas' {PrintDiagrammeDouble: TQuickRep},
  UnitFSOperationFinanceMarche in 'UnitFSOperationFinanceMarche.pas' {FSOperationFinanceMarche},
  UnitFSFormuleComposition in 'UnitFSFormuleComposition.pas' {FSFormuleComposition},
  UnitFSApprovisionnement in 'UnitFSApprovisionnement.pas' {FSApprovisionnement},
  UnitFSAuthentificationMarche in 'UnitFSAuthentificationMarche.pas' {FSAuthentificationMarche},
  UnitPrintDevisRestant in 'UnitPrintDevisRestant.pas' {PrintDevisRestant: TQuickRep},
  UnitPrintDevisMarche in 'UnitPrintDevisMarche.pas' {PrintDevisMarche: TQuickRep},
  UnitPrintRecapitulationParStructure in 'UnitPrintRecapitulationParStructure.pas' {PrintRecapitulationParStructure: TQuickRep},
  UnitPrintAvisBanque1 in 'UnitPrintAvisBanque1.pas' {PrintAvisBanque1: TQuickRep},
  UnitFSModuleCalculeFormiles in 'UnitFSModuleCalculeFormiles.pas' {FSModuleCalculeFormules},
  UnitFSTravauxFinAnnee in 'UnitFSTravauxFinAnnee.pas' {FSTravauxFinAnnee},
  UnitFSRechercheBaseDonnees in 'UnitFSRechercheBaseDonnees.pas' {FSRechercheBaseDonnees},
  UnitFSControleSysteme in 'UnitFSControleSysteme.pas' {FSControleSysteme},
  Splash in 'Splash.pas' {Splashfrm},
  DriveOleWord in 'DriveOleWord.pas',
  UnitFSImporteDetailMarcheExcel in 'UnitFSImporteDetailMarcheExcel.pas' {FSImporteDetailMarcheExcel},
  UnitFSUtilitaires in 'UnitFSUtilitaires.pas' {FSUtilitaires},
  UnitPrintBordereauEnvoi in 'UnitPrintBordereauEnvoi.pas' {PrintBordereauEnvoi: TQuickRep},
  UnitFSBordereauEnvoi in 'UnitFSBordereauEnvoi.pas' {FSBordereauEnvoi},
  UnitPrintPrincipaleSituationMarcheVerso in 'UnitPrintPrincipaleSituationMarcheVerso.pas' {PrintPrincipaleSituationMarcheVerso: TQuickRep},
  UnitFSSairiePiecesDomiciliation in 'UnitFSSairiePiecesDomiciliation.pas' {FSSairiePiecesDomiciliation},
  UnitFSGenerationGroupeTiers in 'UnitFSGenerationGroupeTiers.pas' {FSGenerationGroupeTiers},
  UnitPrintDemandePlanification in 'UnitPrintDemandePlanification.pas' {PrintDemandePlanification: TQuickRep},
  UnitFSBaremeComptabilisationCodeParCompte in 'UnitFSBaremeComptabilisationCodeParCompte.pas' {FSBaremeComptabilisationCodeParCompte},
  UnitFSListeValeurs in 'UnitFSListeValeurs.pas' {FSListeValeurs},
  UnitPrintFactureAutre1 in 'UnitPrintFactureAutre1.pas' {PrintFactureAutre1: TQuickRep},
  UnitFSDecryptage in 'UnitFSDecryptage.pas' {FSDecryptage},
  UnitFSMoyenTransport in 'UnitFSMoyenTransport.pas' {FSMoyenTransport},
  UnitFSTransfertMagnetiqueDonnesCommerciales in 'UnitFSTransfertMagnetiqueDonnesCommerciales.pas' {FSTransfertMagnetiqueDonnesCommerciales},
  UnitFSAlerte in 'UnitFSAlerte.pas' {FSAlerte},
  UnitFSConnectiviteBaseDataSelection in 'UnitFSConnectiviteBaseDataSelection.pas' {FSConnectiviteBaseDataSelection},
  UnitPrintFactureSimple1 in 'UnitPrintFactureSimple1.pas' {PrintFactureSimple1: TQuickRep},
  UnitPrintFactureAutre in 'UnitPrintFactureAutre.pas' {PrintFactureAutre: TQuickRep},
  UnitPrintBonQuantitatifPaysage in 'UnitPrintBonQuantitatifPaysage.pas' {PrintBonQuantitatifPaysage: TQuickRep},
  UnitFSArchivesPhotosCommentaires in 'UnitFSArchivesPhotosCommentaires.pas' {FSArchivesPhotosCommentaires},
  UnitFSAuthentificationreseaux in 'UnitFSAuthentificationreseaux.pas' {FSAuthentificationreseaux},
  UnitFSPublicationReseaux in 'UnitFSPublicationReseaux.pas' {FSPublicationReseaux},
  UnitFSDataServeur in 'UnitFSDataServeur.pas' {FSDataServeur},
  UnitFSDataClient in 'UnitFSDataClient.pas' {FSDataClient},
  UnitFSRessourceFinanciere in 'UnitFSRessourceFinanciere.pas' {FSRessourceFinanciere},
  UnitFSAutorisationPartageRegistre in 'UnitFSAutorisationPartageRegistre.pas' {FSAutorisationPartageRegistre},
  UnitPrintArchivePhotos in 'UnitPrintArchivePhotos.pas' {PrintArchivePhotos: TQuickRep},
  UnitFSPhotoPleinEcran in 'UnitFSPhotoPleinEcran.pas' {FSPhotoPleinEcran},
  UnitFSOperationPrelevement in 'UnitFSOperationPrelevement.pas' {FSOperationPrelevement},
  UnitFSPlanTravail in 'UnitFSPlanTravail.pas' {FSPlanTravail},
  UnitPointeurs in 'UnitPointeurs.pas',
  API_LiberationProcessus in 'API_LiberationProcessus.pas',
  UnitFSAffichage in 'UnitFSAffichage.pas' {FSAffichage},
  UnitFirstThread in 'UnitFirstThread.pas',
  UnitFSTraitementAnalyse in 'UnitFSTraitementAnalyse.pas' {FSTraitementAnalyse},
  UnitPrintDECISION in 'UnitPrintDECISION.pas' {PrintDECISION: TQuickRep},
  UnitPrintAttestationVersement in 'UnitPrintAttestationVersement.pas' {PrintAttestationVersement: TQuickRep},
  UnitPrintFactureBienImmobilier in 'UnitPrintFactureBienImmobilier.pas' {PrintFactureBienImmobilier: TQuickRep},
  UnitFSRapportAffichageSysteme in 'UnitFSRapportAffichageSysteme.pas' {FSRapportAffichageSysteme},
  UnitFSConfigurationTableauxCols in 'UnitFSConfigurationTableauxCols.pas' {FSConfigurationTableauxCols},
  UnitFSServerSocket in 'UnitFSServerSocket.pas' {FSServerSocket},
  UnitFSSocket in 'UnitFSSocket.pas' {FSSocket},
  UnitFSPatienter in 'UnitFSPatienter.pas' {FSPatienter},
  UnitFSSauvegarderBaseDonnees in 'UnitFSSauvegarderBaseDonnees.pas' {FSSauvegarderBaseDonnees},
  UnitFSCopieLibre in 'UnitFSCopieLibre.pas' {FSCopieLibre},
  UnitFSEtatStocks in 'UnitFSEtatStocks.pas' {FSEtatStocks},
  UnitPrintFactureDinamiquePaysage in 'UnitPrintFactureDinamiquePaysage.pas' {PrintFactureDinamiquePaysage: TQuickRep},
  UnitPrintRemiseCles in 'UnitPrintRemiseCles.pas' {PrintRemiseCles: TQuickRep},
  UnitPrintReservesRemiseCles in 'UnitPrintReservesRemiseCles.pas' {PrintReservesRemiseCles: TQuickRep},
  UnitPrintDeclarationSurHonneur in 'UnitPrintDeclarationSurHonneur.pas' {PrintDeclarationSurHonneur: TQuickRep},
  UnitFSConfirmationSaveSocket in 'UnitFSConfirmationSaveSocket.pas' {FSConfirmationSaveSocket},
  UnitPrintCodeBarre in 'UnitPrintCodeBarre.pas' {PrintCodeBarre: TQuickRep},
  FonctionsChaine in 'FonctionsChaine.pas',
  UnitFSEtiquettesCodeBarre in 'UnitFSEtiquettesCodeBarre.pas' {FSEtiquettesCodeBarre},
  UnitPrintCarteProfessionnel in 'UnitPrintCarteProfessionnel.pas' {PrintCarteProfessionnel: TQuickRep},
  UnitFSTicketTexte in 'UnitFSTicketTexte.pas' {FSTicketTexte},
  UnitPrintTicket in 'UnitPrintTicket.pas' {PrintTicket: TQuickRep},
  UnitPrintCodeBareSpeciale in 'UnitPrintCodeBareSpeciale.pas' {PrintCodeBareSpeciale: TQuickRep},
  UnitFSParametresPontBascule in 'UnitFSParametresPontBascule.pas' {FSParametresPontBascule},
  UnitFSOrigineListeMouvementAvis in 'UnitFSOrigineListeMouvementAvis.pas' {FSOrigineListeMouvementAvis},
  UnitFSPDF in 'UnitFSPDF.pas' {FSPDF},
  UnitPrintEtatDouble in 'UnitPrintEtatDouble.pas' {PrintEtatDouble: TQuickRep},
  UnitPrintBondeRoutePM in 'UnitPrintBondeRoutePM.pas' {PrintBondeRoutePM: TQuickRep},
  UnitPrintTicketPontBasculePM in 'UnitPrintTicketPontBasculePM.pas' {PrintTicketPontBasculePM: TQuickRep},
  UnitPrintBondeRouteGM in 'UnitPrintBondeRouteGM.pas' {PrintBondeRouteGM: TQuickRep},
  UnitPrintTicketPontBasculeGM in 'UnitPrintTicketPontBasculeGM.pas' {PrintTicketPontBasculeGM: TQuickRep},
  UnitFSParametrePDF in 'UnitFSParametrePDF.pas' {FSParametrePDF},
  UnitPrintBonQuantitatifDynamique in 'UnitPrintBonQuantitatifDynamique.pas' {PrintBonQuantitatifDynamique: TQuickRep},
  UnitPrintDECISIONBis in 'UnitPrintDECISIONBis.pas' {PrintDECISIONBis: TQuickRep},
  UnitFSPrestationService in 'UnitFSPrestationService.pas' {FSPrestationService},
  UnitFSCourrierMail in 'UnitFSCourrierMail.pas' {FSCourrierMail},
  UnitFSApplicationTerminate in 'UnitFSApplicationTerminate.pas' {FSApplicationTerminate},
  UnitPrintListeCodeBarre in 'UnitPrintListeCodeBarre.pas' {PrintListeCodeBarre: TQuickRep};

{$R *.res}

  begin
  Application.Initialize;
  // Affichage de l'écran Splash
  splashfrm := TSplashfrm.Create(application);///***
  try///***
     splashfrm.Show;///***
     splashfrm.DoFade(100);///***
  finally///***
  splashfrm.Free;///***
  end;///***

  Application.CreateForm(TFSMenuPrincipal, FSMenuPrincipal);
  Application.CreateForm(TFSPublicite, FSPublicite);
  Application.CreateForm(TPrintListeCodeBarre, PrintListeCodeBarre);
  FSPublicite.Show;
  FSMenuPrincipal.Enabled:=false;
  FSPublicite.ProgressCDL.Max:=165;
  FSPublicite.ProgressCDL.Position:=0;
  FSPublicite.TimerPourcentage.Enabled:=true;

  {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Début de la création des FS.');FSPublicite.ProgressCDL.StepIt;
  {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSMenuPrincipal'); FSPublicite.ProgressCDL.StepIt;
  {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSPublicite'); FSPublicite.ProgressCDL.StepIt;

  Application.CreateForm(TPrintBonQuantitatifDynamique, PrintBonQuantitatifDynamique); {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintBonQuantitatifDynamique'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSPrestationService, FSPrestationService); {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSPrestationService'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSCourrierMail, FSCourrierMail); {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSCourrierMail'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSApplicationTerminate, FSApplicationTerminate); {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSApplicationTerminate'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSParametresPontBascule, FSParametresPontBascule); {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSParametresPontBascule'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSOrigineListeMouvementAvis, FSOrigineListeMouvementAvis); {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSOrigineListeMouvementAvis'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintEtatDouble, PrintEtatDouble); {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintEtatDouble'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintBondeRoutePM, PrintBondeRoutePM); {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintBondeRoutePM'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintTicketPontBasculePM, PrintTicketPontBasculePM);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintTicketPontBasculePM'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintBondeRouteGM, PrintBondeRouteGM);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintBondeRouteGM'); FSPublicite.ProgressCDL.StepIt;

  LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
  Application.ProcessMessages;

  Application.CreateForm(TPrintTicketPontBasculeGM, PrintTicketPontBasculeGM);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintTicketPontBasculeGM'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintCodeBarre, PrintCodeBarre);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintCodeBarre'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSEtiquettesCodeBarre, FSEtiquettesCodeBarre);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSEtiquettesCodeBarre'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintCarteProfessionnel, PrintCarteProfessionnel);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintCarteProfessionnel'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSTicketTexte, FSTicketTexte);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSTicketTexte'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintTicket, PrintTicket);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintTicket'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintCodeBareSpeciale, PrintCodeBareSpeciale);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintCodeBareSpeciale'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSAffichage, FSAffichage);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSAffichage'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSTraitementAnalyse, FSTraitementAnalyse);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSTraitementAnalyse'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSRapportAffichageSysteme, FSRapportAffichageSysteme);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSRapportAffichageSysteme'); FSPublicite.ProgressCDL.StepIt;

  LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
  Application.ProcessMessages;

  Application.CreateForm(TFSConfigurationTableauxCols, FSConfigurationTableauxCols);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSConfigurationTableauxCols'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSServerSocket, FSServerSocket);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSServerSocket'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSSocket, FSSocket);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSSocket'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSPatienter, FSPatienter);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSPatienter'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSSauvegarderBaseDonnees, FSSauvegarderBaseDonnees);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSSauvegarderBaseDonnees'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSCopieLibre, FSCopieLibre);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSCopieLibre'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSEtatStocks, FSEtatStocks);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSEtatStocks'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintFactureDinamiquePaysage, PrintFactureDinamiquePaysage);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintFactureDinamiquePaysage'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSConfirmationSaveSocket, FSConfirmationSaveSocket);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSConfirmationSaveSocket'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSOperationPrelevement, FSOperationPrelevement);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSOperationPrelevement'); FSPublicite.ProgressCDL.StepIt;

  LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
  Application.ProcessMessages;

  //////////////// Annulation 30//////////////////////////////////////////////////////////////
  Application.CreateForm(TFSParametrePDF, FSParametrePDF); {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSParametrePDF'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintDECISIONBis, PrintDECISIONBis); {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintDECISIONBis'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSPDF, FSPDF); {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSPDF'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintDECISION, PrintDECISION);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintDECISION'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintAttestationVersement, PrintAttestationVersement);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintAttestationVersement'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintFactureBienImmobilier, PrintFactureBienImmobilier);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintFactureBienImmobilier'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintRemiseCles, PrintRemiseCles);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintRemiseCles'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintReservesRemiseCles, PrintReservesRemiseCles);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintReservesRemiseCles'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintDeclarationSurHonneur, PrintDeclarationSurHonneur);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintDeclarationSurHonneur'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintPrincipaleSituationMarcheVerso, PrintPrincipaleSituationMarcheVerso);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintPrincipaleSituationMarcheVerso'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintDemandePlanification, PrintDemandePlanification);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintDemandePlanification'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSImporteDetailMarcheExcel, FSImporteDetailMarcheExcel);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSImporteDetailMarcheExcel'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintEngagementPaiement, PrintEngagementPaiement);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintEngagementPaiement'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSMarche, FSMarche);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSMarche'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintAttachement, PrintAttachement);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintAttachement'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSAttachements, FSAttachements);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSAttachements '+FSPublicite.Pourcentage.Caption); FSPublicite.ProgressCDL.StepIt;
  FSAttachements.Close;
  Application.CreateForm(TFSDetailMarche, FSDetailMarche);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSDetailMarche'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSSituations, FSSituations);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSSituations'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintPrincipaleSituationMarche, PrintPrincipaleSituationMarche);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création TPrintPrincipaleSituationMarche'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintRecapitulatifSituationMarche, PrintRecapitulatifSituationMarche);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création TPrintRecapitulatifSituationMarche'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintSituationMarche, PrintSituationMarche);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintSituationMarche'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSOperationFinanceMarche, FSOperationFinanceMarche);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSOperationFinanceMarche'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSAuthentificationMarche, FSAuthentificationMarche);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSAuthentificationMarche'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintDevisMarche, PrintDevisMarche);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintDevisMarche'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintRecapitulationParStructure, PrintRecapitulationParStructure);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintRecapitulationParStructure'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSFormulairePreselection, FSFormulairePreselection);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSFormulairePreselection'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintFormulairePreselection, PrintFormulairePreselection);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintFormulairePreselection'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintAutorisationVerssement, PrintAutorisationVerssement);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintAutorisationVerssement'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSPlanificateur, FSPlanificateur);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSPlanificateur'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSFicheTechniqueProjet, FSFicheTechniqueProjet);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSFicheTechniqueProjet'); FSPublicite.ProgressCDL.StepIt;
  ///////////////// Fin d'Annulation/////////////////////////////////////////////////////////////

  Application.CreateForm(TFSPlanTravail, FSPlanTravail);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSPlanTravail'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSGenerateurBase, FSGenerateurBase);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSGenerateurBase'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSArchivesPhotosCommentaires, FSArchivesPhotosCommentaires);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSArchivesPhotosCommentaires'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintArchivePhotos, PrintArchivePhotos);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintArchivePhotos'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSAvis, FSAvis);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSAvis'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSRessourceFinanciere, FSRessourceFinanciere);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSRessourceFinanciere'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSAuthentificationreseaux, FSAuthentificationreseaux);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSAuthentificationreseaux'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSPublicationReseaux, FSPublicationReseaux);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSAuthentificationreseaux'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSDataServeur, FSDataServeur);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSDataServeur'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSDataClient, FSDataClient);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSDataClient'); FSPublicite.ProgressCDL.StepIt;

  LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
  Application.ProcessMessages;
  
  Application.CreateForm(TFSClients, FSClients);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSClients'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSAutorisationPartageRegistre, FSAutorisationPartageRegistre);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSAutorisationPartageRegistre'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSPhotoPleinEcran, FSPhotoPleinEcran);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSPhotoPleinEcran'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSSairiePiecesDomiciliation, FSSairiePiecesDomiciliation);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSSairiePiecesDomiciliation'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSGenerationGroupeTiers, FSGenerationGroupeTiers);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSGenerationGroupeTiers'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSBaremeComptabilisationCodeParCompte, FSBaremeComptabilisationCodeParCompte);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSBaremeComptabilisationCodeParCompte'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSListeValeurs, FSListeValeurs);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSListeValeurs'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintFactureAutre1, PrintFactureAutre1);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintFactureAutre1'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSDecryptage, FSDecryptage);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSDecryptage'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSMoyenTransport, FSMoyenTransport);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSMoyenTransport'); FSPublicite.ProgressCDL.StepIt;

  LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
  Application.ProcessMessages;

  Application.CreateForm(TFSTransfertMagnetiqueDonnesCommerciales, FSTransfertMagnetiqueDonnesCommerciales);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSTransfertMagnetiqueDonnesCommerciales'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSAlerte, FSAlerte);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSAlerte'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSConnectiviteBaseDataSelection, FSConnectiviteBaseDataSelection);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSConnectiviteBaseDataSelection'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintFactureSimple1, PrintFactureSimple1);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintFactureSimple1'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintFactureAutre, PrintFactureAutre);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintFactureAutre'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintBonQuantitatifPaysage, PrintBonQuantitatifPaysage);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintBonQuantitatifPaysage'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSUtilitaires, FSUtilitaires);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSUtilitaires'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintBordereauEnvoi, PrintBordereauEnvoi);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintBordereauEnvoi'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSBordereauEnvoi, FSBordereauEnvoi);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSBordereauEnvoi'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSControleSysteme, FSControleSysteme);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSControleSysteme'); FSPublicite.ProgressCDL.StepIt;

  LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
  Application.ProcessMessages;

  Application.CreateForm(TFSRecapitulatifProjets, FSRecapitulatifProjets);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSRecapitulatifProjets'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSShowmessage, FSShowmessage); {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSShowmessage'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintOrdreVirement, PrintOrdreVirement); {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintOrdreVirement'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSAgenceBanque, FSAgenceBanque);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSAgenceBanque'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintDemandeChequeBanque, PrintDemandeChequeBanque); {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintDemandeChequeBanque'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintRemiseCheque, PrintRemiseCheque);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintRemiseCheque'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintOrdreVersementEspece, PrintOrdreVersementEspece);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintOrdreVersementEspece'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSEcheancierPayement, FSEcheancierPayement);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSEcheancierPayement'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSTiers, FSTiers);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSTiers'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSComptabiliteTransitoire, FSComptabiliteTransitoire);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSComptabiliteTransitoire'); FSPublicite.ProgressCDL.StepIt;

  LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
  Application.ProcessMessages;

  Application.CreateForm(TFSGenerateurLocalisationGeographique, FSGenerateurLocalisationGeographique);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSGenerateurLocalisationGeographique'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSParametresAvances, FSParametresAvances);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSParametresAvances'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSResultatsAutocontroleAlerteExecution, FSResultatsAutocontroleAlerteExecution);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSResultatsAutocontroleAlerteExecution'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintFactureSimple, PrintFactureSimple);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintFactureSimple'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintFactureDinamique, PrintFactureDinamique);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintFactureDinamique'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintDiagramme2, PrintDiagramme2);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintDiagramme2'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintDiagramme3, PrintDiagramme3);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintDiagramme3'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintDiagramme4, PrintDiagramme4);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintDiagramme4'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSGenerateurEtats, FSGenerateurEtats);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSGenerateurEtats'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSCompleteFormulesEtat, FSCompleteFormulesEtat);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSAttente'); FSPublicite.ProgressCDL.StepIt;

  LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
  Application.ProcessMessages;

  Application.CreateForm(TFSAttente, FSAttente);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSFormulairePreselection'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintEtatRecapitulatif, PrintEtatRecapitulatif);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintEtatRecapitulatif'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintDiagramme, PrintDiagramme);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintDiagramme'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintEtatDynamique, PrintEtatDynamique);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintEtatDynamique'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintEtatPortraitDynamique, PrintEtatPortraitDynamique);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintEtatPortraitDynamique'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSPlanComptable, FSPlanComptable);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSPlanComptable'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintRapportControleSpecificite, PrintRapportControleSpecificite);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintRapportControleSpecificite'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSCreateFichierTexte, FSCreateFichierTexte);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSCreateFichierTexte'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintEtatInventaire, PrintEtatInventaire);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintEtatInventaire'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintFeuilleInventaire, PrintFeuilleInventaire);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintFeuilleInventaire'); FSPublicite.ProgressCDL.StepIt;

  LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
  Application.ProcessMessages;

  Application.CreateForm(TPrintFicheInventaire, PrintFicheInventaire);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintFicheInventaire'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintDiagrammeDouble, PrintDiagrammeDouble);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintDiagrammeDouble'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSFormuleComposition, FSFormuleComposition);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSFormuleComposition'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSApprovisionnement, FSApprovisionnement);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSApprovisionnement'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintDevisRestant, PrintDevisRestant);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintDevisRestant'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintAvisBanque1, PrintAvisBanque1);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintAvisBanque1'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSModuleCalculeFormules, FSModuleCalculeFormules);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSModuleCalculeFormules'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSTravauxFinAnnee, FSTravauxFinAnnee);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSTravauxFinAnnee'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintBonValorise, PrintBonValorise);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintBonValorise'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintBonQuantitatif, PrintBonQuantitatif);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintBonQuantitatif'); FSPublicite.ProgressCDL.StepIt;

  LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
  Application.ProcessMessages;

  Application.CreateForm(TPrintFacture, PrintFacture);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintFacture'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintChequeModel01, PrintChequeModel01);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintChequeModel01'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSConsultationExercice, FSConsultationExercice);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSConsultationExercice'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSPrelevement, FSPrelevement);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSPrelevement'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSNowPrelevement, FSNowPrelevement);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSNowPrelevement'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSListePrelevement, FSListePrelevement);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSListePrelevement'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSTransformationUniteFonds, FSTransformationUniteFonds);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSTransformationUniteFonds'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintEtatProcesverbalTransformationUFonds, PrintEtatProcesverbalTransformationUFonds);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintEtatProcesverbalTransformationUFonds'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSClients, FSClients);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSClients'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSFournisseurs, FSFournisseurs);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSFournisseurs'); FSPublicite.ProgressCDL.StepIt;

  LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
  Application.ProcessMessages;

  Application.CreateForm(TFSEffectifs, FSEffectifs);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSEffectifs'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSOperationsAvis, FSOperationsAvis);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSOperationsAvis'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSFormules, FSFormules);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSFormules'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSFicheSaisie, FSFicheSaisie);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSFicheSaisie'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSGenerateurMouvement, FSGenerateurMouvement);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSGenerateurMouvement'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintOuvrir, PrintOuvrir);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintOuvrir'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintConvention, PrintConvention);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintConvention'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSAccueilUtilisateurs, FSAccueilUtilisateurs);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSAccueilUtilisateurs'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSInstalle, FSInstalle);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSInstalle'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSCodeUtilisateurs, FSCodeUtilisateurs);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSCodeUtilisateurs'); FSPublicite.ProgressCDL.StepIt;

  LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
  Application.ProcessMessages;

  Application.CreateForm(TFSGenerateurAccesPrivilegies, FSGenerateurAccesPrivilegies);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSGenerateurAccesPrivilegies'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSRechercheBaseDonnees, FSRechercheBaseDonnees);{Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSRechercheBaseDonnees'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintConvention1, PrintConvention1);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintConvention1'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintConvention2, PrintConvention2);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintConvention2'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSModelFormuleCalcule, FSModelFormuleCalcule);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSModelFormuleCalcule'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSMiseaJour, FSMiseaJour);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSMiseaJour'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSTraitementDonnees, FSTraitementDonnees);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSTraitementDonnees'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintEtatTraitementDonnees, PrintEtatTraitementDonnees);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintEtatTraitementDonnees'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintEtatTraitementDonneesPortrait, PrintEtatTraitementDonneesPortrait);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintEtatTraitementDonneesPortrait'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TFSAvis, FSAvis);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSAvis'); FSPublicite.ProgressCDL.StepIt;

  LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
  Application.ProcessMessages;

  Application.CreateForm(TFSGenerateurBase, FSGenerateurBase);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création FSGenerateurBase'); FSPublicite.ProgressCDL.StepIt;
  Application.CreateForm(TPrintAvis, PrintAvis);   {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Création PrintAvis'); FSPublicite.ProgressCDL.StepIt;

  {Affichage Création} FSPublicite.AfficheCreationFS.Lines.Add('Fin de la création des FS.');

  LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
  Application.ProcessMessages;
  
  FSPublicite.TimerPourcentage.Enabled:=false;
  FSPublicite.Close;
  FSMenuPrincipal.Enabled:=true;
  FSMenuPrincipal.TimerControleInstallation.Enabled:=true;

  //RunAsAdmin(Application.Name,'');
  Application.Run;
  
  end.
