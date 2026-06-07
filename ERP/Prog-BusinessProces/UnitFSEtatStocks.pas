unit UnitFSEtatStocks;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, StdCtrls, Buttons;

type
  TFSEtatStocks = class(TForm)
    TableauStockArticle: TStringGrid;
    Panel1: TPanel;
    AfficheTiersOptionPrint: TPanel;
    Bevel86: TBevel;
    RadioGroup10: TRadioGroup;
    StaticText3: TStaticText;
    RBTiersOrientationPapier: TComboBox;
    RBTiersAjustement: TCheckBox;
    BitBtn56: TBitBtn;
    BitBtn62: TBitBtn;
    Bevel1: TBevel;
    Bevel2: TBevel;
    RBRubriqueTrieTableauArticle: TCheckBox;
    EditRubriqueTrieArticle: TEdit;
    TypeTrieArticle: TRadioGroup;
    RadioButton7: TRadioButton;
    RadioButton5: TRadioButton;
    BitTousStock: TBitBtn;
    Bevel3: TBevel;
    Bevel4: TBevel;
    AfficheEtatStock: TPanel;
    AfficheEtatStockInfo: TPanel;
    TableauStockArticleEtat: TStringGrid;
    Bevel5: TBevel;
    BitBtn1: TBitBtn;
    EditInfoEtat: TMemo;
    RadioGroup1: TRadioGroup;
    RBTousStock: TRadioButton;
    RBStockMouvemente: TRadioButton;
    RBStockExistant: TRadioButton;
    procedure AfficheTiersOptionPrintClick(Sender: TObject);
    procedure BitBtn56Click(Sender: TObject);
    procedure TableauStockArticleClick(Sender: TObject);
    procedure BitBtn62Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    procedure BitTousStockClick(Sender: TObject);
    procedure TableauStockArticleContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure TableauStockArticleEtatClick(Sender: TObject);
    procedure RBTousStockClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSEtatStocks: TFSEtatStocks;

implementation

Uses UnitInitialisation, UnitFSMenuPrincipal, UnitFSGenerateurBase;

{$R *.dfm}

procedure TFSEtatStocks.AfficheTiersOptionPrintClick(Sender: TObject);
begin

if(FSEtatStocks.AfficheTiersOptionPrint.Height=25)
then FSEtatStocks.AfficheTiersOptionPrint.Height:=223
else FSEtatStocks.AfficheTiersOptionPrint.Height:=25;

end;

procedure TFSEtatStocks.BitBtn56Click(Sender: TObject);
var  R:integer; TitreEtat,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol:string; TableauPrint:TStringGrid;
begin
     FSEtatStocks.AfficheTiersOptionPrint.Height:=25;

     if(FSEtatStocks.AfficheEtatStock.Visible=true)then
     begin
          TableauPrint:=FSEtatStocks.TableauStockArticleEtat;
          FSEtatStocks.EditInfoEtat.Lines.Add(FSEtatStocks.AfficheEtatStockInfo.Caption);
     end
     else
     begin
          TableauPrint:=FSEtatStocks.TableauStockArticle;
          FSEtatStocks.EditInfoEtat.Lines.Add('Etat du stock');
     end;

     FSEtatStocks.EditInfoEtat.Lines.Add(FSGenerateurBase.EditInfoEtat.Lines.Text);

     TitreEtat:=FSEtatStocks.EditInfoEtat.Lines.Text;

     GrasARow:='0';
     GrasACol:='0';
     CenterARow:='0';
     CenterACol:='0';
     RightARow:='';
     RightACol:='5-9';

     OptionsImpression(TableauPrint,'Center',0,1,TitreEtat,FSEtatStocks.RBTiersAjustement.Checked,FSEtatStocks.RBTiersOrientationPapier.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,true,1,FSMenuPrincipal.ImageCodebarre,true,R);
end;

procedure TFSEtatStocks.TableauStockArticleClick(Sender: TObject);
var  TypeData:string;
begin
FSEtatStocks.AfficheTiersOptionPrint.Height:=25;

if(FSEtatStocks.RBRubriqueTrieTableauArticle.Checked=true)then
begin
     FSEtatStocks.EditRubriqueTrieArticle.Text:=inttostr(FSEtatStocks.TableauStockArticle.Col);

     TypeData:='';

     if(FSEtatStocks.TableauStockArticle.Col=1)
     or(FSEtatStocks.TableauStockArticle.Col=5)
     or(FSEtatStocks.TableauStockArticle.Col=6)
     or(FSEtatStocks.TableauStockArticle.Col=7)
     or(FSEtatStocks.TableauStockArticle.Col=8)
     then
     begin
          TypeData:='Num';
     end;

     FSEtatStocks.RBRubriqueTrieTableauArticle.Checked:=false;
     TrierTableauARowSpecial(FSEtatStocks.TableauStockArticle,1,FSEtatStocks.TableauStockArticle.RowCount-1,1,FSEtatStocks.EditRubriqueTrieArticle.Text,TypeData,FSEtatStocks.TypeTrieArticle.Caption);
end;
end;

procedure TFSEtatStocks.BitBtn62Click(Sender: TObject);
var   TitreEtat,SousTitreEtat:string;
begin
     TitreEtat:='Etat du Stock';
     SousTitreEtat:='';
     TableauToExcel(FSEtatStocks.TableauStockArticle,1,0,ColNum,ColDate,ColTexte,ColGauche,ColCentre,ColDroite,TitreEtat,SousTitreEtat,'',true,FSMenuPrincipal.RBInsertLogo.Checked,FSMenuPrincipal.RBAfficherLaSaisie.Checked);
end;

procedure TFSEtatStocks.RadioButton5Click(Sender: TObject);
begin
     FSEtatStocks.TypeTrieArticle.Caption:='+';
end;

procedure TFSEtatStocks.RadioButton7Click(Sender: TObject);
begin
     FSEtatStocks.TypeTrieArticle.Caption:='-';
end;

procedure TFSEtatStocks.BitTousStockClick(Sender: TObject);
begin
     FSEtatStocks.AfficheEtatStock.Visible:=true;
     FSEtatStocks.RBTousStock.Checked:=true;
end;

procedure TFSEtatStocks.TableauStockArticleContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
var R:integer;
begin
     for R:=1 to FSEtatStocks.TableauStockArticle.RowCount-1 do FSEtatStocks.TableauStockArticle.RowHeights[R]:=20;
end;

procedure TFSEtatStocks.BitBtn1Click(Sender: TObject);
begin
     FSEtatStocks.AfficheEtatStock.Visible:=false;
end;

procedure TFSEtatStocks.TableauStockArticleEtatClick(Sender: TObject);
var  TypeData:string;
begin
FSEtatStocks.AfficheTiersOptionPrint.Height:=25;

if(FSEtatStocks.RBRubriqueTrieTableauArticle.Checked=true)then
begin
     FSEtatStocks.EditRubriqueTrieArticle.Text:=inttostr(FSEtatStocks.TableauStockArticleEtat.Col);

     TypeData:='';

     if(FSEtatStocks.TableauStockArticleEtat.Col=1)
     or(FSEtatStocks.TableauStockArticleEtat.Col=5)
     or(FSEtatStocks.TableauStockArticleEtat.Col=6)
     or(FSEtatStocks.TableauStockArticleEtat.Col=7)
     or(FSEtatStocks.TableauStockArticleEtat.Col=8)
     then
     begin
          TypeData:='Num';
     end;

     FSEtatStocks.RBRubriqueTrieTableauArticle.Checked:=false;
     TrierTableauARowSpecial(FSEtatStocks.TableauStockArticleEtat,1,FSEtatStocks.TableauStockArticleEtat.RowCount-1,1,FSEtatStocks.EditRubriqueTrieArticle.Text,TypeData,FSEtatStocks.TypeTrieArticle.Caption);
end;
end;

procedure TFSEtatStocks.RBTousStockClick(Sender: TObject);
var  R,l,C:integer;  OKRowHeihtZero:boolean; NotCol:string;
begin
     FSEtatStocks.TableauStockArticleEtat.RowCount:=2;
     FSEtatStocks.TableauStockArticleEtat.Rows[0].Text:=FSEtatStocks.TableauStockArticle.Rows[0].Text;
     FSEtatStocks.TableauStockArticleEtat.Rows[1].Text:='';

     l:=0;
     R:=1;
     while(R<=FSEtatStocks.TableauStockArticle.RowCount-1)do
     begin
          if(FSEtatStocks.RBTousStock.Checked=true)then
          begin
               FSEtatStocks.AfficheEtatStockInfo.Caption:=FSEtatStocks.RBTousStock.Caption;
               OKRowHeihtZero:=false;
          end
          else
          if(FSEtatStocks.RBStockMouvemente.Checked=true)then
          begin
               FSEtatStocks.AfficheEtatStockInfo.Caption:=FSEtatStocks.RBStockMouvemente.Caption;

               if(strtoreal(FSEtatStocks.TableauStockArticle.Cells[6,R])<>0)
               or(strtoreal(FSEtatStocks.TableauStockArticle.Cells[7,R])<>0)
               then OKRowHeihtZero:=false
               else OKRowHeihtZero:=true;

          end
          else
          if(FSEtatStocks.RBStockExistant.Checked=true)then
          begin
               FSEtatStocks.AfficheEtatStockInfo.Caption:=FSEtatStocks.RBStockExistant.Caption;

               if(strtoreal(FSEtatStocks.TableauStockArticle.Cells[8,R])<>0)
               then OKRowHeihtZero:=false
               else OKRowHeihtZero:=true;
          end;

          if(OKRowHeihtZero=false)then
          begin
               l:=l+1;
               FSEtatStocks.TableauStockArticleEtat.Rows[l].Text:=inttostr(l);
               FSEtatStocks.TableauStockArticleEtat.Rows[l].Text:=FSEtatStocks.TableauStockArticle.Rows[R].Text;
          end;
     R:=R+1;
     end;

     FSEtatStocks.TableauStockArticleEtat.RowCount:=l+1;

     NotCol:='';
     for C:=1 to FSEtatStocks.TableauStockArticle.ColCount-1 do
     begin
          if(FSEtatStocks.TableauStockArticle.ColWidths[C]=0)then
          begin
               if(NotCol='')
               then NotCol:=inttostr(C)
               else NotCol:=NotCol+';'+inttostr(C);
          end;
     end;

     for C:= 1 to FSEtatStocks.TableauStockArticleEtat.ColCount-1 do if(Existenumintexte(inttostr(C),NotCol))then FSEtatStocks.TableauStockArticleEtat.ColWidths[C]:=0;
     AjusterColWidth(FSEtatStocks.TableauStockArticleEtat,'',NotCol);
end;

end.
