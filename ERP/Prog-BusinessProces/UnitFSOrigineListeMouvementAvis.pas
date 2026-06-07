unit UnitFSOrigineListeMouvementAvis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Grids, Buttons;

type
  TFSOrigineListeMouvementAvis = class(TForm)
    TableauMouvement: TStringGrid;
    Panel1: TPanel;
    TableauListeMouvement: TStringGrid;
    EditCodeTiersOrigine: TEdit;
    Label1: TLabel;
    EditTiers: TEdit;
    EditDateDebut: TDateTimePicker;
    EditDateFin: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    BitValide: TBitBtn;
    EditTypeProces: TEdit;
    EditFichierConcerne: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Bevel2: TBevel;
    EditTotalAvis: TMemo;
    Label6: TLabel;
    EditNumAvisOrigine: TEdit;
    Label7: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label8: TLabel;
    EditOrdreListeMouvement: TEdit;
    procedure TableauMouvementDblClick(Sender: TObject);
    procedure TableauListeMouvementDblClick(Sender: TObject);
    procedure BitValideClick(Sender: TObject);
    procedure EditTotalAvisKeyPress(Sender: TObject; var Key: Char);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSOrigineListeMouvementAvis: TFSOrigineListeMouvementAvis;

implementation

uses UnitInitialisation, UnitFSFicheSaisie, UnitFSAvis, UnitFSGenerateurMouvement;

{$R *.dfm}

procedure TFSOrigineListeMouvementAvis.TableauMouvementDblClick(
  Sender: TObject);
var  CodeTiers,PositionTypeMouvement,PositionMouvement,CodeTypeFormuleBase,ModeRecherche:string;
begin
     TypeProces:=FSOrigineListeMouvementAvis.EditTypeProces.Text;
     FichierConcerne:=FSOrigineListeMouvementAvis.EditFichierConcerne.Text;
     CodeTiers:=FSOrigineListeMouvementAvis.EditCodeTiersOrigine.Text;
     PositionTypeMouvement:=FSOrigineListeMouvementAvis.TableauMouvement.Cells[0,FSOrigineListeMouvementAvis.TableauMouvement.Row];
     PositionMouvement:=FSOrigineListeMouvementAvis.TableauMouvement.Cells[1,FSOrigineListeMouvementAvis.TableauMouvement.Row];
     CodeTypeFormuleBase:='';//FSOrigineListeMouvementAvis.TableauMouvement.Cells[9,FSOrigineListeMouvementAvis.TableauMouvement.Row];
     ModeRecherche:='Tiers';
     FSFicheSaisie.EditPositionMouvement.Text:=PositionMouvement;
     ProcAfficheListeMouvementErrones(FSOrigineListeMouvementAvis.TableauListeMouvement,PositionTypeMouvement,PositionMouvement,CodeTypeFormuleBase,'',TypeProces,FichierConcerne,CodeTiers,'','',ModeRecherche,'',true);

     FSOrigineListeMouvementAvis.TableauListeMouvement.ColCount:=13;
     FSOrigineListeMouvementAvis.TableauListeMouvement.Cols[12].Text:='Select';

     FSOrigineListeMouvementAvis.TableauListeMouvement.RowCount:=FSOrigineListeMouvementAvis.TableauListeMouvement.RowCount+2;
     FSOrigineListeMouvementAvis.TableauListeMouvement.Rows[FSOrigineListeMouvementAvis.TableauListeMouvement.RowCount-1].Text:='';
     FSOrigineListeMouvementAvis.TableauListeMouvement.Rows[FSOrigineListeMouvementAvis.TableauListeMouvement.RowCount-2].Text:='';

     FSOrigineListeMouvementAvis.TableauListeMouvement.Cells[10,FSOrigineListeMouvementAvis.TableauListeMouvement.RowCount-1]:='Total:';

end;

procedure TFSOrigineListeMouvementAvis.TableauListeMouvementDblClick(
  Sender: TObject);
var  R:integer;  Total:real;
begin
     Total:=0;
     FSOrigineListeMouvementAvis.EditOrdreListeMouvement.Text:='';

     if(FSOrigineListeMouvementAvis.TableauListeMouvement.Cells[1,FSOrigineListeMouvementAvis.TableauListeMouvement.Row]<>'')then
     begin
          if(FSOrigineListeMouvementAvis.TableauListeMouvement.Cells[12,FSOrigineListeMouvementAvis.TableauListeMouvement.Row]='OK')
          then FSOrigineListeMouvementAvis.TableauListeMouvement.Cells[12,FSOrigineListeMouvementAvis.TableauListeMouvement.Row]:=''
          else FSOrigineListeMouvementAvis.TableauListeMouvement.Cells[12,FSOrigineListeMouvementAvis.TableauListeMouvement.Row]:='OK';
     end;

     R:=1;
     while(R<=FSOrigineListeMouvementAvis.TableauListeMouvement.RowCount-1)do
     begin
          if(FSOrigineListeMouvementAvis.TableauListeMouvement.Cells[12,R]='OK')then
          begin
               Total:=Total+strtoreal(FSOrigineListeMouvementAvis.TableauListeMouvement.Cells[11,R]);

               if(FSOrigineListeMouvementAvis.EditOrdreListeMouvement.Text='')then
               FSOrigineListeMouvementAvis.EditOrdreListeMouvement.Text:='FSC'+FSOrigineListeMouvementAvis.TableauListeMouvement.Cells[1,R]
               else FSOrigineListeMouvementAvis.EditOrdreListeMouvement.Text:=FSOrigineListeMouvementAvis.EditOrdreListeMouvement.Text+';'+'FSC'+FSOrigineListeMouvementAvis.TableauListeMouvement.Cells[1,R];
          end;
     R:=R+1;
     end;
     

     FSOrigineListeMouvementAvis.TableauListeMouvement.Cells[11,FSOrigineListeMouvementAvis.TableauListeMouvement.RowCount-1]:=Vergule(floattostr(Total),'2','C','');
end;

procedure TFSOrigineListeMouvementAvis.BitValideClick(Sender: TObject);
var  i,R:integer;   OKListeMouvement,OKModifier:boolean;
begin
     FSAvis.EditOrigine.Text:='';

     if(FSAvis.Showing=true)then
     begin
          R:=1;
          while(R<=FSOrigineListeMouvementAvis.TableauListeMouvement.RowCount-1)do
          begin
               if(FSOrigineListeMouvementAvis.TableauListeMouvement.Cells[12,R]='OK')then
               begin
                    if(FSAvis.EditOrigine.Text='')
                    then FSAvis.EditOrigine.Text:='FSC'+FSOrigineListeMouvementAvis.TableauListeMouvement.Cells[1,R]
                    else FSAvis.EditOrigine.Text:=FSAvis.EditOrigine.Text+';'+'FSC'+FSOrigineListeMouvementAvis.TableauListeMouvement.Cells[1,R];
               end;
          R:=R+1;
          end;

     FSAvis.BitValiderAvisClick(FSAvis.BitValiderAvis);
     FSAvis.BitOperationAvisClick(FSAvis.BitOperationAvis);

     ///////////////////////////////////////////////////////////////////////////
     TypeProces:='Business';   FichierConcerne:='FListeMouvement';
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
     end;

     ChListeMouvement:=IndiqueAdresseListeMouvement(FSOrigineListeMouvementAvis.TableauMouvement.Cells[0,FSOrigineListeMouvementAvis.TableauMouvement.Row],TypeProcesReseauxListeMouvement);

     if(TypeProcesReseauxListeMouvement='Réseaux')then
     begin
          showmessage('Opération réseaux non autorisé !');
          Exit;
     end;

     assignfile(FListeMouvement,ChListeMouvement);
     if FileExists(ChListeMouvement)then
     begin
          Reset(FListeMouvement);
          R:=1;
          while(R<=FSOrigineListeMouvementAvis.TableauListeMouvement.RowCount-1)do
          begin
               if(FSOrigineListeMouvementAvis.TableauListeMouvement.Cells[12,R]='OK')then
               begin
                    Seek(FListeMouvement,0);
                    OKListeMouvement:=false;
                    i:=0;
                    while not eof(FListeMouvement)and(OKListeMouvement=false)do
                    begin
                         read(FListeMouvement,RListeMouvement);
                         if(RListeMouvement.OrdreListeMouvement=strtointeger(FSOrigineListeMouvementAvis.TableauListeMouvement.Cells[1,R]))then
                         begin
                              OKListeMouvement:=true;
                              OKModifier:=false;

                              if(RListeMouvement.ListeNumAvis='')then
                              begin
                                   OKModifier:=true;
                                   RListeMouvement.ListeNumAvis:=FSOrigineListeMouvementAvis.EditNumAvisOrigine.Text;
                              end
                              else
                              begin
                                   if not ExisteNumInTexte(FSOrigineListeMouvementAvis.EditNumAvisOrigine.Text,RListeMouvement.ListeNumAvis)then
                                   begin
                                        OKModifier:=true;
                                        RListeMouvement.ListeNumAvis:=RListeMouvement.ListeNumAvis+';'+FSOrigineListeMouvementAvis.EditNumAvisOrigine.Text;
                                   end;
                              end;

                              if(OKModifier=true)then
                              begin
                                   Seek(FListeMouvement,i);
                                   write(FListeMouvement,RListeMouvement);
                              end;
                         end;
                    i:=i+1;
                    end;
               end;
          R:=R+1;
          end;
     CloseFile(FListeMouvement);
     end;
     ///////////////////////////////////////////////////////////////////////////
     end;

     FSOrigineListeMouvementAvis.Close;
end;


procedure TFSOrigineListeMouvementAvis.EditTotalAvisKeyPress(
  Sender: TObject; var Key: Char);
begin
     key:=#0;
end;

end.
