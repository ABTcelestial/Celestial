unit UnitFSAuthentificationMarche;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ExtCtrls, StdCtrls;

type
  TFSAuthentificationMarche = class(TForm)
    AfficheAuthentificationMarche: TPanel;
    TableauAuthentificationMarche: TStringGrid;
    EditDesignationArticleAuthentificationTeste: TMemo;
    AfficheInformationAuthentificationMarche: TPanel;
    TexteAfficheAuthentificationMarche: TMemo;
    procedure TableauAuthentificationMarcheClick(Sender: TObject);
    procedure TableauAuthentificationMarcheKeyPress(Sender: TObject;
      var Key: Char);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSAuthentificationMarche: TFSAuthentificationMarche;

implementation

Uses UnitInitialisation;

var

      TMarche:TMarches;
      RMarche:RMarches;
      FMarche:FMarches;
      ChMarche:string250;

      TAvenantMarche:TAvenantMarches;
      RAvenantMarche:RAvenantMarches;
      FAvenantMarche:FAvenantMarches;
      ChAvenantMarche:string250;

      TStructureMarche:TStructureMarches;
      RStructureMarche:RStructureMarches;
      FStructureMarche:FStructureMarches;
      ChStructureMarche:string250;

      TStatistiqueMarche:TStatistiqueMarches;
      RStatistiqueMarche:RStatistiqueMarches;
      FStatistiqueMarche:FStatistiqueMarches;
      ChStatistiqueMarche:string250;

      TDetailMarche:TDetailMarches;
      TDetailMarcheModif:TDetailMarches;
      RDetailMarche:RDetailMarches;
      FDetailMarche:FDetailMarches;
      ChDetailMarche:string250;

      TFinance:TFinances;
      RFinance:RFinances;
      FFinance:FFinances;
      ChFinance:string250;

      TOperationFinance:TOperationFinances;
      ROperationFinance:ROperationFinances;
      FOperationFinance:FOperationFinances;
      ChOperationFinance:string250;

      TSituationMarche:TSituationMarches;
      RSituationMarche:RSituationMarches;
      FSituationMarche:FSituationMarches;
      ChSituationMarche:string250;

      RParc:RInstalle;
      FParc:FInstalle;
      ParcInstalle:string250;

      RRegistre:REnregistrement;
      FRegistre:FEnregistrement;
      ChEnregistrement:string250;

      TApprovisionnement:TApprovisionnements;

      i,j,k,l,m,n,C,R,V,LGrid:integer;
      Confirme:boolean;

      RowCount,RowCountNew:integer;


{$R *.dfm}

procedure TFSAuthentificationMarche.TableauAuthentificationMarcheClick(
  Sender: TObject);
begin
FSAuthentificationMarche.AfficheInformationAuthentificationMarche.Visible:=false;

FSAuthentificationMarche.TableauAuthentificationMarche.DefaultRowHeight:=18;
FSAuthentificationMarche.EditDesignationArticleAuthentificationTeste.Lines.Text:=FSAuthentificationMarche.TableauAuthentificationMarche.Cells[FSAuthentificationMarche.TableauAuthentificationMarche.Col,FSAuthentificationMarche.TableauAuthentificationMarche.Row];
if(FSAuthentificationMarche.EditDesignationArticleAuthentificationTeste.Lines.Count>0)
then FSAuthentificationMarche.TableauAuthentificationMarche.RowHeights[FSAuthentificationMarche.TableauAuthentificationMarche.Row]:=FSAuthentificationMarche.EditDesignationArticleAuthentificationTeste.Lines.Count*18;
end;

procedure TFSAuthentificationMarche.TableauAuthentificationMarcheKeyPress(
  Sender: TObject; var Key: Char);
var  ARow,NSMarche,NStructure,NStatistique,NAvenant:integer;
     OKArow:boolean;
begin

ARow:=FSAuthentificationMarche.TableauAuthentificationMarche.Row;

if key in['d','D']then
begin
     FSAuthentificationMarche.AfficheInformationAuthentificationMarche.Visible:=true;
     NSMarche:=strtointeger(DTrie('M',FSAuthentificationMarche.TableauAuthentificationMarche.Cells[7,ARow]));
     NStructure:=strtointeger(DTrie('S',FSAuthentificationMarche.TableauAuthentificationMarche.Cells[7,ARow]));
     NStatistique:=strtointeger(DTrie('T',FSAuthentificationMarche.TableauAuthentificationMarche.Cells[7,ARow]));
     NAvenant:=strtointeger(DTrie('A',FSAuthentificationMarche.TableauAuthentificationMarche.Cells[7,ARow]));

     FSAuthentificationMarche.TexteAfficheAuthentificationMarche.Lines.Text:='';

     FSAuthentificationMarche.TexteAfficheAuthentificationMarche.Lines.Add('');
     RMarche:=ChercherMarche(NSMarche);
     FSAuthentificationMarche.TexteAfficheAuthentificationMarche.Lines.Add('Marché N°: '+inttostr(RMarche.NSMarche)+' - '+RMarche.Marche);

     if(NStructure<>0)then
     begin
          FSAuthentificationMarche.TexteAfficheAuthentificationMarche.Lines.Add('');
          RStructureMarche:=ChercherStructureMarche(NSMarche,NStructure);
          FSAuthentificationMarche.TexteAfficheAuthentificationMarche.Lines.Add('Structure N°: '+inttostr(RStructureMarche.NStructureMarche)+' - '+RStructureMarche.StructureMarche);
     end;

     if(NStatistique<>0)then
     begin
          FSAuthentificationMarche.TexteAfficheAuthentificationMarche.Lines.Add('');
          RStatistiqueMarche:=ChercherStatistiqueMarche(NSMarche,NStatistique);
          FSAuthentificationMarche.TexteAfficheAuthentificationMarche.Lines.Add('S/Structure N°: '+inttostr(RStatistiqueMarche.NStatistiqueMarche)+' - '+RStatistiqueMarche.StatistiqueMarche);
     end;

     if(NAvenant<>0)then
     begin
          FSAuthentificationMarche.TexteAfficheAuthentificationMarche.Lines.Add('');
          FSAuthentificationMarche.TexteAfficheAuthentificationMarche.Lines.Add('Avenant N°: '+inttostr(NAvenant)+' - '+ChercherAvenantMarche(NSMarche,NAvenant));
     end;

     FSAuthentificationMarche.TexteAfficheAuthentificationMarche.Lines.Add('');

     if(FSAuthentificationMarche.TableauAuthentificationMarche.Cells[10,ARow]<>'')
     then
     begin
          FSAuthentificationMarche.TexteAfficheAuthentificationMarche.Lines.Add(FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,ARow]);
          FSAuthentificationMarche.TexteAfficheAuthentificationMarche.Lines.Add('');
          FSAuthentificationMarche.TexteAfficheAuthentificationMarche.Lines.Add('Contre:');
          FSAuthentificationMarche.TexteAfficheAuthentificationMarche.Lines.Add('');
          OKArow:=false;
          R:=ARow+1;
          l:=0;
          while(R<=FSAuthentificationMarche.TableauAuthentificationMarche.RowCount-1)and(OKArow=false)do
          begin
               if(FSAuthentificationMarche.TableauAuthentificationMarche.Cells[10,R]='')
               then
               begin
                    l:=l+1;
                    FSAuthentificationMarche.TexteAfficheAuthentificationMarche.Lines.Add(completezerogauche(inttostr(l),'2')+')- '+FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,R]);
               end
               else OKArow:=true;
          R:=R+1;
          end;
     end
     else
     if(FSAuthentificationMarche.TableauAuthentificationMarche.Cells[10,ARow]='')
     then
     begin
          FSAuthentificationMarche.TexteAfficheAuthentificationMarche.Lines.Add(FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,ARow]);
          FSAuthentificationMarche.TexteAfficheAuthentificationMarche.Lines.Add('');
          OKArow:=false;
          R:=ARow-1;
          while(R>=1)and(OKArow=false)do
          begin
               if(FSAuthentificationMarche.TableauAuthentificationMarche.Cells[10,R]<>'')
               then
               begin
                    OKArow:=true;
                    FSAuthentificationMarche.TexteAfficheAuthentificationMarche.Lines.Add('Contre la ligne N°: '+FSAuthentificationMarche.TableauAuthentificationMarche.Cells[10,R]);
               end;
          R:=R-1;
          end;
     end;
end;

FSAuthentificationMarche.TexteAfficheAuthentificationMarche.Height:=
MinInt((MaxInt((FSAuthentificationMarche.TexteAfficheAuthentificationMarche.Lines.Capacity*15),145)),400);

FSAuthentificationMarche.AfficheInformationAuthentificationMarche.Height:=
FSAuthentificationMarche.TexteAfficheAuthentificationMarche.Height+16;

key:=#0;
end;

end.
