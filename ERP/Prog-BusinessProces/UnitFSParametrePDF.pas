unit UnitFSParametrePDF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, printers;

type

    ROptionsPrintPDFs=record
                      IndexImprimantePDF:integer;
                      end;
    FOptionsPrintPDFs=File of ROptionsPrintPDFs;



  TFSParametrePDF = class(TForm)
    PrinterSetupDialog1: TPrinterSetupDialog;
    BitBtn3: TBitBtn;
    ImprimanteSelectionner: TLabel;
    IndexImprimantePDF: TLabel;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSParametrePDF: TFSParametrePDF;

  Procedure EnregistrementSelectionPrintPDF;
  Function FindIndexImprimantePDF(var NomImprimantePDF:string):string;

implementation

Uses  UnitInitialisation;

var

    ROptionsPrintPDF:ROptionsPrintPDFs;
    FOptionsPrintPDF:FOptionsPrintPDFs;
    ChOptionsPrintPDF:string100;

{$R *.dfm}

procedure TFSParametrePDF.BitBtn3Click(Sender: TObject);
var  NomImprimantePDF:string;
begin
     if(FSParametrePDF.PrinterSetupDialog1.Execute)then
     begin
          FSParametrePDF.IndexImprimantePDF.Caption:=inttostr(Printer.PrinterIndex);
          EnregistrementSelectionPrintPDF;
     end;

     FSParametrePDF.IndexImprimantePDF.Caption:=FindIndexImprimantePDF(NomImprimantePDF);
     FSParametrePDF.ImprimanteSelectionner.Caption:=NomImprimantePDF;
end;

Procedure EnregistrementSelectionPrintPDF;
begin
     OpenFParc(RParc);
     ChOptionsPrintPDF:=RParc.Parcours+'\'+'FOptionsPrintPDF';
     assignfile(FOptionsPrintPDF,ChOptionsPrintPDF);
     if FileExists(ChOptionsPrintPDF)then
     Reset(FOptionsPrintPDF)
     else Rewrite(FOptionsPrintPDF); //création nouveau fichier
     Seek(FOptionsPrintPDF,0);

     ROptionsPrintPDF.IndexImprimantePDF:=strtoint(FSParametrePDF.IndexImprimantePDF.Caption);

     write(FOptionsPrintPDF,ROptionsPrintPDF);
     CloseFile(FOptionsPrintPDF);
end;

Function FindIndexImprimantePDF(var NomImprimantePDF:string):string;
var  Index:string;
begin
     Index:='';
     NomImprimantePDF:='Aucune imprimante trouvé !';
     
     OpenFParc(RParc);
     ChOptionsPrintPDF:=RParc.Parcours+'\'+'FOptionsPrintPDF';
     assignfile(FOptionsPrintPDF,ChOptionsPrintPDF);
     if FileExists(ChOptionsPrintPDF)then
     begin
          Reset(FOptionsPrintPDF);
          Seek(FOptionsPrintPDF,0);
          read(FOptionsPrintPDF,ROptionsPrintPDF);
          Index:=inttostr(ROptionsPrintPDF.IndexImprimantePDF);
          CloseFile(FOptionsPrintPDF);
     end;

     if(Index<>'')then NomImprimantePDF:=Printer.Printers.Strings[strtoint(Index)];
     FindIndexImprimantePDF:=Index;
end;

procedure TFSParametrePDF.FormShow(Sender: TObject);
var  NomImprimantePDF:string;
begin
     FSParametrePDF.IndexImprimantePDF.Caption:=FindIndexImprimantePDF(NomImprimantePDF);
     FSParametrePDF.ImprimanteSelectionner.Caption:=NomImprimantePDF;
end;

end.
