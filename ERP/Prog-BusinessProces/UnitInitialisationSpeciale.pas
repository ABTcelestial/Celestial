unit UnitInitialisationSpeciale;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, StdCtrls, Buttons, ExtCtrls, ComCtrls, Mask, QuickRpt, QRCtrls;

type
//********************* Type record et autres **********************************

    RMarches=record
              NSMarche:integer;
              RefMarche:string[30];
              DateMarche:string[10];
              DesignationMarche:string[255];
              CodeMaitreOuvrage:string[10];
              LOT:string[150];
              LieuTrav:string[150];
              MontantMarche,Rabaix,RetenueGarantie:real;
              RefDevis,DelaisExecut:string[30];
              DateReception:string[10];
              DureeAttenteRG:integer;
              AvertirAvantRG:integer;
              EtatRG:string[1];
              DateTirageRG:string[10];
              NbrTirageRG:integer;
              TypeFormulation:string[2];
              end;
    FMarches=file of RMarches;
    TMarches=array of RMarches;

    RStructureMarches=record
                NSMarche:integer;
                NStructureMarche:integer;
                DesignationStructureMarche:string[100];
                end;
    FStructureMarches=file of RStructureMarches;
    TStructureMarches=array of RStructureMarches;

    RStatistiqueMarches=record
                NSMarche:integer;
                NStructureMarche:integer;
                NStatistiqueMarche:integer;
                DesignationStatistiqueMarche:string[100];
                SourceValeureImporter:string[255];
                PourcentageValeureImporter:integer;
                ValeureTVA:real;
                end;
    FStatistiqueMarches=file of RStatistiqueMarches;
    TStatistiqueMarches=array of RStatistiqueMarches;

    RDetailMarches=record
                NDetailMarche:integer;
                NArticle:string[8];
                DesignationArticle:string[255];
                UniteM:string[10];
                QuantiteGlobale:real;
                PrixUnitaire:real;
                CodeTrie:string[31];
                CodeStock:string[10];
              end;
    FDetailMarches=file of RDetailMarches;
    TDetailMarches=array of RDetailMarches;

    RDevisQEs=record
                NDetailMarche:integer;
                NArticle:string[8];
                DesignationArticle:string[255];
                UniteM:string[10];
                QuantiteGlobale:real;
                PrixUnitaire:real;
                Montant:real;
                CodeTrie:string[31];
                CodeStock:string[10];
              end;
    FDevisQEs=file of RDevisQEs;
    TDevisQEs=array of RDevisQEs;

    RAvenantMarches=record
                NSMarche:integer;
                NAvenant:integer;
                Date:string[10];
                Avenant:string[255];
                end;
    FAvenantMarches=file of RAvenantMarches;
    TAvenantMarches=array of RAvenantMarches;

    RAttachements=record
                OrdreAttachement:integer;
                NAttachement:integer;
                Date:string[10];
                NArticle:string[20];
                DesignationArticle:string[255];
                UniteM:string[10];
                QuantiteGlobal:real;
                QuantiteMarche:real;
                PrixUnitaire:real;
                CodeTrie:string[31];
                CodeStock:string[10];
              end;
    FAttachements=file of RAttachements;
    TAttachements=array of RAttachements;

//********************* Fin Type record et autres ******************************

implementation

Uses UnitInitialisation, UnitFSMarche;

//********************* Procedure et fonction **********************************


end.
