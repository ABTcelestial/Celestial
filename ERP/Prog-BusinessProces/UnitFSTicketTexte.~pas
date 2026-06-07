unit UnitFSTicketTexte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls;

type
    ROptionsTickets=record
                    TailleTotale:integer;
                    TailleUnitM:integer;
                    TailleQuantite:integer;
                    TaillePrixU:integer;
                    TailleMontant:integer;
                    TailleDesignation:integer;
                    RBInclureTailleTotale:boolean;
                    RBInclureTailleUnitM:boolean;
                    RBInclureTailleQuantite:boolean;
                    RBInclureTaillePrixU:boolean;
                    RBInclureTailleMontant:boolean;
                    RBInclureTailleDesignation:boolean;
                    FondCharset:TFontCharset;
                    FondColor:TColor;
                    FondHeight:Integer;
                    FondName:string[20];
                    FondPitch:TFontPitch;
                    FondSize:Integer;
                    FondStyle:TFontStyles;
                    IndexImprimanteTicket:integer;
                    DesignationPlusieursLignes:boolean;
                    RBApercuAvantImprission:boolean;
                    MessageBasPage:string[250];
                    end;
    FOptionsTickets=File of ROptionsTickets;

    TFSTicketTexte = class(TForm)
    PageControl1: TPageControl;
    PageTicket: TTabSheet;
    Bevel2: TBevel;
    BitBtn2: TBitBtn;
    ChoisirFont: TFontDialog;
    PageOptions: TTabSheet;
    PrinterSetupDialog1: TPrinterSetupDialog;
    EditTicket: TRichEdit;
    AfficheParametresTickets: TPanel;
    Bevel4: TBevel;
    Bevel3: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    IndexImprimanteTicket: TLabel;
    ImprimanteSelectionner: TLabel;
    Label7: TLabel;
    EditTailleTotale: TEdit;
    EditTailleUnitM: TEdit;
    EditTailleQuantite: TEdit;
    EditTaillePrixU: TEdit;
    EditTailleMontant: TEdit;
    EditTailleDesignation: TEdit;
    IncrimenteEditTailleTotale: TUpDown;
    IncrimenteEditTailleUnitM: TUpDown;
    IncrimenteEditTailleQuantite: TUpDown;
    IncrimenteEditTaillePrixU: TUpDown;
    IncrimenteEditTailleMontant: TUpDown;
    IncrimenteEditTailleDesignation: TUpDown;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    RBImprimanteTicket: TCheckBox;
    EditListeImprimantesDisponibles: TMemo;
    RBDesignationPlusieursLignes: TCheckBox;
    Bevel8: TBevel;
    BitBtn4: TBitBtn;
    BitModifierParametres: TBitBtn;
    RadioGroup1: TRadioGroup;
    RBImprimer: TRadioButton;
    RBApercu: TRadioButton;
    EditMessageBasPage: TComboBox;
    MemoMessageBasPage: TRichEdit;
    Label8: TLabel;
    EditTesteDesignation: TRichEdit;
    RBInclureTailleUnitM: TCheckBox;
    RBInclureTailleQuantite: TCheckBox;
    RBInclureTaillePrixU: TCheckBox;
    RBInclureTailleTotale: TCheckBox;
    RBInclureTailleMontant: TCheckBox;
    RBInclureTailleDesignation: TCheckBox;
    Bevel9: TBevel;
    Bevel10: TBevel;
    Panel1: TPanel;
    BitImprimeEtat: TBitBtn;
    Bevel1: TBevel;
    Bevel11: TBevel;
    BitCancel: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitImprimeEtatClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure IncrimenteEditTailleTotaleClick(Sender: TObject; Button: TUDBtnType);
    procedure EditTailleTotaleKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditMessageBasPageChange(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitModifierParametresClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RBInclureTailleTotaleClick(Sender: TObject);
    procedure BitCancelClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSTicketTexte: TFSTicketTexte;

  Procedure EnregistrementOptionsTicket;
  Procedure ChargementOptionsTicket;

implementation

Uses UnitInitialisation, Printers, UnitPrintTicket, UnitFSMenuPrincipal,
     UnitFSFicheSaisie, UnitFSEtiquettesCodeBarre;

var

    ROptionsTicket:ROptionsTickets;
    FOptionsTicket:FOptionsTickets;
    ChOptionsTicket:string100;

{$R *.dfm}



procedure TFSTicketTexte.BitBtn2Click(Sender: TObject);
var
index: Integer;
r: TRect;
a: Integer;
F: TextFile;
Stg:String;

begin
     if(FSTicketTexte.IndexImprimanteTicket.Caption<>'')then
     begin
          index:=strtointeger(FSTicketTexte.IndexImprimanteTicket.Caption);
     end
     else
     begin
          if(FSTicketTexte.PrinterSetupDialog1.Execute)then
          begin
               FSTicketTexte.IndexImprimanteTicket.Caption:=inttostr(Printer.PrinterIndex);
               EnregistrementSelectionImprimanteChecked(FSTicketTexte.RBImprimanteTicket.Name,FSTicketTexte.IndexImprimanteTicket.Caption);
               FSTicketTexte.ImprimanteSelectionner.Caption:=Printer.Printers.Strings[strtointeger(FSTicketTexte.IndexImprimanteTicket.Caption)];

               index:=strtointeger(FSTicketTexte.IndexImprimanteTicket.Caption);
          end;
     end;

     //if index >= 0 then PrintTicket.PrinterSettings.PrinterIndex := index
                   //else showmessage('Erreur');

     with Printer do
     begin
          r := Rect(50,50,50,50); // Marge de 50 pixels autour de la feuille
          Printer.BeginDoc;
          Canvas.Font.Name:='Courier';
          // Ici pour imprimer le contenu du mémo :
          for a := 0 to EditTicket.Lines.Count do
          begin
               {Canvas.Font.Charset:=EditTicket.Font.Charset;
               Canvas.Font.Color:=EditTicket.Font.Color;
               Canvas.Font.Height:=EditTicket.Font.Height;
               Canvas.Font.Name:=EditTicket.Font.Name;
               Canvas.Font.Pitch:=EditTicket.Font.Pitch;
               Canvas.Font.Size:=EditTicket.Font.Size;
               Canvas.Font.Style:=EditTicket.Font.Style; }
               Canvas.TextOut(50,50 + (a * Canvas.TextHeight(EditTicket.Lines.Strings[a])), EditTicket.Lines.Strings[a]);               
          end;
          //Canvas.Brush.Color :=EditTicket.Brush.Color;
          //Canvas.FrameRect(r); //Cette instruction imprime un rectangle autour de la feuille
          Printer.EndDoc;
     end;
end;

procedure TFSTicketTexte.BitImprimeEtatClick(Sender: TObject);
var  a,index,Nombre,Diviseur,Resultat,Reste:integer;
begin
     if(FSTicketTexte.IndexImprimanteTicket.Caption<>'')then
     begin
          index:=strtointeger(FSTicketTexte.IndexImprimanteTicket.Caption);
     end
     else
     begin
          if(FSTicketTexte.PrinterSetupDialog1.Execute)then
          begin
               FSTicketTexte.IndexImprimanteTicket.Caption:=inttostr(Printer.PrinterIndex);
               EnregistrementSelectionImprimanteChecked(FSTicketTexte.RBImprimanteTicket.Name,FSTicketTexte.IndexImprimanteTicket.Caption);
               FSTicketTexte.ImprimanteSelectionner.Caption:=Printer.Printers.Strings[strtointeger(FSTicketTexte.IndexImprimanteTicket.Caption)];

               index:=strtointeger(FSTicketTexte.IndexImprimanteTicket.Caption);
          end;
     end;

     if index >= 0 then PrintTicket.PrinterSettings.PrinterIndex := index
                   else showmessage('Erreur');

     PrintTicket.TexteTicket.Lines.Text:='';
     PrintTicket.Logo.Picture:=FSMenuPrincipal.Logo.Picture;
     PrintTicket.TexteTicket.Font.Name:=FSTicketTexte.EditTicket.Font.Name;
     PrintTicket.TexteTicket.Font.charset:=FSTicketTexte.EditTicket.Font.Charset;
     PrintTicket.TexteTicket.Font.Color:=FSTicketTexte.EditTicket.Font.Color;
     PrintTicket.TexteTicket.Font.Height:=FSTicketTexte.EditTicket.Font.Height;
     PrintTicket.TexteTicket.Font.Name:=FSTicketTexte.EditTicket.Font.Name;
     PrintTicket.TexteTicket.Font.Pitch:=FSTicketTexte.EditTicket.Font.Pitch;
     PrintTicket.TexteTicket.Font.Size:=FSTicketTexte.EditTicket.Font.Size;
     PrintTicket.TexteTicket.Font.Style:=FSTicketTexte.EditTicket.Font.Style;

     PrintTicket.TexteTicket.Lines.Text:=FSTicketTexte.EditTicket.Lines.Text;

     {for a := 0 to FSTicketTexte.EditTicket.Lines.Count do
     begin
          PrintTicket.TexteTicket.Lines.Add(FSTicketTexte.EditTicket.Lines.Strings[a]);
     end;}

     if(FSTicketTexte.RBImprimer.Checked=true)
     then PrintTicket.Print
     else PrintTicket.Preview;

     if(FSFicheSaisie.Showing=true)
     and(FSFicheSaisie.PageOperationFicheSaisie.Showing=true)
     and((FSFicheSaisie.RBChercheArticleParCodeBarre.Checked=true)or(FSFicheSaisie.RBChercheArticleParPontBascule.Checked=true))
     then
     begin
          FSFicheSaisie.BitEchapClick(FSFicheSaisie.BitEchap);
     end;
end;

procedure TFSTicketTexte.BitBtn6Click(Sender: TObject);
begin
FSTicketTexte.ChoisirFont.Font.Charset:=FSTicketTexte.EditTicket.Font.Charset; //
FSTicketTexte.ChoisirFont.Font.Color:=FSTicketTexte.EditTicket.Font.Color;     //
FSTicketTexte.ChoisirFont.Font.Height:=FSTicketTexte.EditTicket.Font.Height;   //
FSTicketTexte.ChoisirFont.Font.Name:=FSTicketTexte.EditTicket.Font.Name;       //
FSTicketTexte.ChoisirFont.Font.Pitch:=FSTicketTexte.EditTicket.Font.Pitch;     //
FSTicketTexte.ChoisirFont.Font.Size:=FSTicketTexte.EditTicket.Font.Size;       //
FSTicketTexte.ChoisirFont.Font.Style:=FSTicketTexte.EditTicket.Font.Style;     //Gras,Italique,...

if(FSTicketTexte.ChoisirFont.Execute)then
begin
     FSTicketTexte.EditTicket.Font:=FSTicketTexte.ChoisirFont.Font;
end;

end;

procedure TFSTicketTexte.IncrimenteEditTailleTotaleClick(Sender: TObject; Button: TUDBtnType);
var TailleTotale,TailleDesignation,TailleUnitM,TailleQuantite,TaillePrixU,TailleMontant,NbrParType:integer;
begin
     TailleTotale:=0;
     TailleUnitM:=0;
     TailleQuantite:=0;
     TaillePrixU:=0;
     TailleMontant:=0;
     TailleDesignation:=0;

     if(FSTicketTexte.RBInclureTailleTotale.Checked=true)then TailleTotale:=FSTicketTexte.IncrimenteEditTailleTotale.Position;
     if(FSTicketTexte.RBInclureTailleUnitM.Checked=true)then TailleUnitM:=FSTicketTexte.IncrimenteEditTailleUnitM.Position;
     if(FSTicketTexte.RBInclureTailleQuantite.Checked=true)then TailleQuantite:=FSTicketTexte.IncrimenteEditTailleQuantite.Position;
     if(FSTicketTexte.RBInclureTaillePrixU.Checked=true)then TaillePrixU:=FSTicketTexte.IncrimenteEditTaillePrixU.Position;
     if(FSTicketTexte.RBInclureTailleMontant.Checked=true)then TailleMontant:=FSTicketTexte.IncrimenteEditTailleMontant.Position;
     if(FSTicketTexte.RBInclureTailleDesignation.Checked=true)then FSTicketTexte.IncrimenteEditTailleDesignation.Position:=
                                                                   TailleTotale-
                                                                   TailleUnitM-
                                                                   TailleQuantite-
                                                                   TaillePrixU-
                                                                   TailleMontant;
end;

procedure TFSTicketTexte.EditTailleTotaleKeyPress(Sender: TObject;
  var Key: Char);
begin
     key:=#0;
end;

procedure TFSTicketTexte.BitBtn1Click(Sender: TObject);
begin
     FSTicketTexte.IncrimenteEditTailleTotale.Position:=48;
     FSTicketTexte.IncrimenteEditTailleUnitM.Position:=3;
     FSTicketTexte.IncrimenteEditTailleQuantite.Position:=6;
     FSTicketTexte.IncrimenteEditTaillePrixU.Position:=10;
     FSTicketTexte.IncrimenteEditTailleMontant.Position:=10;

     FSTicketTexte.IncrimenteEditTailleDesignation.Position:=
     FSTicketTexte.IncrimenteEditTailleTotale.Position-
     FSTicketTexte.IncrimenteEditTailleUnitM.Position-
     FSTicketTexte.IncrimenteEditTailleQuantite.Position-
     FSTicketTexte.IncrimenteEditTaillePrixU.Position-
     FSTicketTexte.IncrimenteEditTailleMontant.Position;
end;

Procedure EnregistrementOptionsTicket;
begin
     OpenFParc(RParc);
     ChOptionsTicket:=RParc.Parcours+'\'+'FOptionsTicket';
     assignfile(FOptionsTicket,ChOptionsTicket);
     if FileExists(ChOptionsTicket)then
     Reset(FOptionsTicket)
     else Rewrite(FOptionsTicket); //création nouveau fichier
     Seek(FOptionsTicket,0);
     ROptionsTicket.TailleTotale:=FSTicketTexte.IncrimenteEditTailleTotale.Position;
     ROptionsTicket.TailleUnitM:=FSTicketTexte.IncrimenteEditTailleUnitM.Position;
     ROptionsTicket.TailleQuantite:=FSTicketTexte.IncrimenteEditTailleQuantite.Position;
     ROptionsTicket.TaillePrixU:=FSTicketTexte.IncrimenteEditTaillePrixU.Position;
     ROptionsTicket.TailleMontant:=FSTicketTexte.IncrimenteEditTailleMontant.Position;
     ROptionsTicket.TailleDesignation:=FSTicketTexte.IncrimenteEditTailleDesignation.Position;

     ROptionsTicket.RBInclureTailleTotale:=FSTicketTexte.RBInclureTailleTotale.Checked;
     ROptionsTicket.RBInclureTailleUnitM:=FSTicketTexte.RBInclureTailleUnitM.Checked;
     ROptionsTicket.RBInclureTailleQuantite:=FSTicketTexte.RBInclureTailleQuantite.Checked;
     ROptionsTicket.RBInclureTaillePrixU:=FSTicketTexte.RBInclureTaillePrixU.Checked;
     ROptionsTicket.RBInclureTailleMontant:=FSTicketTexte.RBInclureTailleMontant.Checked;
     ROptionsTicket.RBInclureTailleDesignation:=FSTicketTexte.RBInclureTailleDesignation.Checked;

     ROptionsTicket.FondCharset:=FSTicketTexte.EditTicket.Font.Charset;
     ROptionsTicket.FondColor:=FSTicketTexte.EditTicket.Font.Color;
     ROptionsTicket.FondHeight:=FSTicketTexte.EditTicket.Font.Height;
     ROptionsTicket.FondName:=FSTicketTexte.EditTicket.Font.Name;
     ROptionsTicket.FondPitch:=FSTicketTexte.EditTicket.Font.Pitch;
     ROptionsTicket.FondSize:=FSTicketTexte.EditTicket.Font.Size;
     ROptionsTicket.FondStyle:=FSTicketTexte.EditTicket.Font.Style;
     ROptionsTicket.IndexImprimanteTicket:=strtointeger(FSTicketTexte.IndexImprimanteTicket.Caption);
     ROptionsTicket.DesignationPlusieursLignes:=FSTicketTexte.RBDesignationPlusieursLignes.Checked;
     ROptionsTicket.RBApercuAvantImprission:=FSTicketTexte.RBApercu.Checked; 
     ROptionsTicket.MessageBasPage:=FSTicketTexte.MemoMessageBasPage.Lines.Text;

     write(FOptionsTicket,ROptionsTicket);
     CloseFile(FOptionsTicket);
end;

Procedure ChargementOptionsTicket;
var  OKOptions:boolean;
begin
     OKOptions:=false;
     OpenFParc(RParc);
     ChOptionsTicket:=RParc.Parcours+'\'+'FOptionsTicket';
     assignfile(FOptionsTicket,ChOptionsTicket);
     if FileExists(ChOptionsTicket)then
     begin
          Reset(FOptionsTicket);
          Seek(FOptionsTicket,0);
          if not eof(FOptionsTicket)then
          begin
               read(FOptionsTicket,ROptionsTicket);
               FSTicketTexte.IncrimenteEditTailleTotale.Position:=ROptionsTicket.TailleTotale;
               FSTicketTexte.IncrimenteEditTailleUnitM.Position:=ROptionsTicket.TailleUnitM;
               FSTicketTexte.IncrimenteEditTailleQuantite.Position:=ROptionsTicket.TailleQuantite;
               FSTicketTexte.IncrimenteEditTaillePrixU.Position:=ROptionsTicket.TaillePrixU;
               FSTicketTexte.IncrimenteEditTailleMontant.Position:=ROptionsTicket.TailleMontant;
               FSTicketTexte.IncrimenteEditTailleDesignation.Position:=ROptionsTicket.TailleDesignation;

               FSTicketTexte.RBInclureTailleTotale.Checked:=ROptionsTicket.RBInclureTailleTotale;
               FSTicketTexte.RBInclureTailleUnitM.Checked:=ROptionsTicket.RBInclureTailleUnitM;
               FSTicketTexte.RBInclureTailleQuantite.Checked:=ROptionsTicket.RBInclureTailleQuantite;
               FSTicketTexte.RBInclureTaillePrixU.Checked:=ROptionsTicket.RBInclureTaillePrixU;
               FSTicketTexte.RBInclureTailleMontant.Checked:=ROptionsTicket.RBInclureTailleMontant;
               FSTicketTexte.RBInclureTailleDesignation.Checked:=ROptionsTicket.RBInclureTailleDesignation;

               FSTicketTexte.EditTicket.Font.Charset:=ROptionsTicket.FondCharset;
               FSTicketTexte.EditTicket.Font.Color:=ROptionsTicket.FondColor;
               FSTicketTexte.EditTicket.Font.Height:=ROptionsTicket.FondHeight;
               FSTicketTexte.EditTicket.Font.Name:=ROptionsTicket.FondName;
               FSTicketTexte.EditTicket.Font.Pitch:=ROptionsTicket.FondPitch;
               FSTicketTexte.EditTicket.Font.Size:=ROptionsTicket.FondSize;
               FSTicketTexte.EditTicket.Font.Style:=ROptionsTicket.FondStyle;
               FSTicketTexte.IndexImprimanteTicket.Caption:=inttostr(ROptionsTicket.IndexImprimanteTicket);
               FSTicketTexte.RBDesignationPlusieursLignes.Checked:=ROptionsTicket.DesignationPlusieursLignes;
               if(ROptionsTicket.RBApercuAvantImprission=true)
               then FSTicketTexte.RBApercu.Checked:=true
               else FSTicketTexte.RBImprimer.Checked:=true;
               FSTicketTexte.EditMessageBasPage.Text:=ROptionsTicket.MessageBasPage;
               FSTicketTexte.MemoMessageBasPage.Lines.Text:=ROptionsTicket.MessageBasPage;
               OKOptions:=true;
          end;
     //CloseFile(FOptionsTicket);
     end;

     if(OKOptions=false)then
     begin
          FSTicketTexte.RBInclureTailleTotale.Checked:=true;
          FSTicketTexte.RBInclureTailleUnitM.Checked:=true;
          FSTicketTexte.RBInclureTailleQuantite.Checked:=true;
          FSTicketTexte.RBInclureTaillePrixU.Checked:=true;
          FSTicketTexte.RBInclureTailleMontant.Checked:=true;
          FSTicketTexte.RBInclureTailleDesignation.Checked:=true;

          FSTicketTexte.IncrimenteEditTailleTotale.Position:=48;
          FSTicketTexte.IncrimenteEditTailleUnitM.Position:=3;
          FSTicketTexte.IncrimenteEditTailleQuantite.Position:=6;
          FSTicketTexte.IncrimenteEditTaillePrixU.Position:=10;
          FSTicketTexte.IncrimenteEditTailleMontant.Position:=10;

          FSTicketTexte.IncrimenteEditTailleDesignation.Position:=
          FSTicketTexte.IncrimenteEditTailleTotale.Position-
          FSTicketTexte.IncrimenteEditTailleUnitM.Position-
          FSTicketTexte.IncrimenteEditTailleQuantite.Position-
          FSTicketTexte.IncrimenteEditTaillePrixU.Position-
          FSTicketTexte.IncrimenteEditTailleMontant.Position;
     end;
end;

procedure TFSTicketTexte.BitBtn3Click(Sender: TObject);
begin
     if(FSTicketTexte.PrinterSetupDialog1.Execute)then
     begin
          FSTicketTexte.IndexImprimanteTicket.Caption:=inttostr(Printer.PrinterIndex);
          EnregistrementSelectionImprimanteChecked(FSTicketTexte.RBImprimanteTicket.Name,FSTicketTexte.IndexImprimanteTicket.Caption);
          FSTicketTexte.ImprimanteSelectionner.Caption:=Printer.Printers.Strings[strtointeger(FSTicketTexte.IndexImprimanteTicket.Caption)];
     end;
end;

procedure TFSTicketTexte.FormShow(Sender: TObject);
begin
     FSTicketTexte.IndexImprimanteTicket.Caption:=FindDataSelectionImprimanteChecked(FSTicketTexte.RBImprimanteTicket.Name);
     FSTicketTexte.ImprimanteSelectionner.Caption:=Printer.Printers.Strings[strtointeger(FSTicketTexte.IndexImprimanteTicket.Caption)];

     //FSTicketTexte.EditListeImprimantesDisponibles.Lines.Text:=Printer.Printers.Text;
end;

procedure TFSTicketTexte.EditMessageBasPageChange(Sender: TObject);
begin
     FSTicketTexte.MemoMessageBasPage.Lines.Text:=FSTicketTexte.EditMessageBasPage.Text;
end;

procedure TFSTicketTexte.BitBtn4Click(Sender: TObject);
begin
     ChargementOptionsTicket;
     FSTicketTexte.AfficheParametresTickets.Enabled:=false;
end;

procedure TFSTicketTexte.BitModifierParametresClick(Sender: TObject);
begin
     if(FSTicketTexte.BitModifierParametres.Caption='Modifier les paramètres')then
     begin
          FSTicketTexte.AfficheParametresTickets.Enabled:=true;
          FSTicketTexte.BitModifierParametres.Caption:='Valider'
     end
     else
     begin
          FSTicketTexte.AfficheParametresTickets.Enabled:=false;
          FSTicketTexte.BitModifierParametres.Caption:='Modifier les paramètres';
          EnregistrementOptionsTicket;
     end;
end;

procedure TFSTicketTexte.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     if(FSTicketTexte.BitModifierParametres.Caption<>'Modifier les paramètres')then
     begin
          FSTicketTexte.AfficheParametresTickets.Enabled:=false;
          FSTicketTexte.BitModifierParametres.Caption:='Modifier les paramètres';
          EnregistrementOptionsTicket;
     end;
end;

procedure TFSTicketTexte.RBInclureTailleTotaleClick(Sender: TObject);
var TailleTotale,TailleDesignation,TailleUnitM,TailleQuantite,TaillePrixU,TailleMontant,NbrParType:integer;
begin
     TailleTotale:=0;
     TailleUnitM:=0;
     TailleQuantite:=0;
     TaillePrixU:=0;
     TailleMontant:=0;
     TailleDesignation:=0;

     if(FSTicketTexte.RBInclureTailleTotale.Checked=true)then TailleTotale:=FSTicketTexte.IncrimenteEditTailleTotale.Position;
     if(FSTicketTexte.RBInclureTailleUnitM.Checked=true)then TailleUnitM:=FSTicketTexte.IncrimenteEditTailleUnitM.Position;
     if(FSTicketTexte.RBInclureTailleQuantite.Checked=true)then TailleQuantite:=FSTicketTexte.IncrimenteEditTailleQuantite.Position;
     if(FSTicketTexte.RBInclureTaillePrixU.Checked=true)then TaillePrixU:=FSTicketTexte.IncrimenteEditTaillePrixU.Position;
     if(FSTicketTexte.RBInclureTailleMontant.Checked=true)then TailleMontant:=FSTicketTexte.IncrimenteEditTailleMontant.Position;
     if(FSTicketTexte.RBInclureTailleDesignation.Checked=true)then FSTicketTexte.IncrimenteEditTailleDesignation.Position:=
                                                                   TailleTotale-
                                                                   TailleUnitM-
                                                                   TailleQuantite-
                                                                   TaillePrixU-
                                                                   TailleMontant;
end;

procedure TFSTicketTexte.BitCancelClick(Sender: TObject);
begin
     FSTicketTexte.Close;

     if(FSFicheSaisie.Showing=true)
     and(FSFicheSaisie.PageOperationFicheSaisie.Showing=true)
     and((FSFicheSaisie.RBChercheArticleParCodeBarre.Checked=true)or(FSFicheSaisie.RBChercheArticleParPontBascule.Checked=true))
     then
     begin
          FSFicheSaisie.BitEchapClick(FSFicheSaisie.BitEchap);
     end;
end;

end.
