object FSPrelevement: TFSPrelevement
  Left = 50
  Top = 18
  Width = 1264
  Height = 692
  Caption = 'Pr'#233'l'#232'vement'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PagePrincipale: TPageControl
    Left = 2
    Top = 2
    Width = 1239
    Height = 647
    ActivePage = PagePrelevementCompteursUniteFonds
    TabIndex = 0
    TabOrder = 0
    object PagePrelevementCompteursUniteFonds: TTabSheet
      Caption = '   Pr'#233'l'#232'vement Compteurs et Unit'#233's de Fonds   '
      OnShow = PagePrelevementCompteursUniteFondsShow
      object AfficheAffectationEffectifEquipe: TPanel
        Left = 472
        Top = 304
        Width = 441
        Height = 313
        BevelOuter = bvLowered
        Color = clAqua
        TabOrder = 11
        object TableauTitreAffectationEffectifEquipe: TStringGrid
          Left = 16
          Top = 16
          Width = 417
          Height = 33
          ColCount = 1
          Ctl3D = False
          DefaultColWidth = 400
          FixedCols = 0
          RowCount = 1
          FixedRows = 0
          ParentCtl3D = False
          TabOrder = 4
        end
        object TableauAffectationEffectifEquipe: TStringGrid
          Left = 8
          Top = 8
          Width = 425
          Height = 297
          Ctl3D = False
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
          ParentCtl3D = False
          TabOrder = 0
          OnClick = TableauAffectationEffectifEquipeClick
          OnDrawCell = TableauAffectationEffectifEquipeDrawCell
          OnKeyDown = TableauAffectationEffectifEquipeKeyDown
          OnKeyPress = TableauAffectationEffectifEquipeKeyPress
          ColWidths = (
            64
            64
            64
            64
            64)
          RowHeights = (
            24
            24
            24
            24
            24)
        end
        object AfficherOperationAffectationEffectifEquipe: TPanel
          Left = 72
          Top = 56
          Width = 313
          Height = 161
          BevelInner = bvLowered
          TabOrder = 1
          Visible = False
          object Label26: TLabel
            Left = 8
            Top = 10
            Width = 69
            Height = 13
            Caption = 'N'#176' Affectation:'
          end
          object Label27: TLabel
            Left = 16
            Top = 34
            Width = 63
            Height = 13
            Caption = 'N'#176' Compteur:'
          end
          object Label28: TLabel
            Left = 19
            Top = 58
            Width = 58
            Height = 13
            Caption = 'N'#176' U.Fonds:'
          end
          object Label29: TLabel
            Left = 42
            Top = 82
            Width = 33
            Height = 13
            Caption = 'Valeur:'
          end
          object Bevel14: TBevel
            Left = 8
            Top = 112
            Width = 297
            Height = 41
          end
          object EditNumAffectationEffectifEquipe: TEdit
            Left = 96
            Top = 8
            Width = 121
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            OnKeyDown = EditNumAffectationEffectifEquipeKeyDown
          end
          object EditNumCompteurAffecter: TEdit
            Left = 96
            Top = 32
            Width = 57
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
            OnEnter = EditNumCompteurAffecterEnter
            OnKeyDown = EditNumCompteurAffecterKeyDown
          end
          object EditNumUniteFonds: TEdit
            Left = 96
            Top = 56
            Width = 57
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 2
            OnEnter = EditNumUniteFondsEnter
            OnKeyDown = EditNumUniteFondsKeyDown
          end
          object EditValeurAffecter: TEdit
            Left = 96
            Top = 80
            Width = 121
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
            OnKeyDown = EditValeurAffecterKeyDown
          end
          object BitBtn15: TBitBtn
            Left = 16
            Top = 120
            Width = 75
            Height = 25
            TabOrder = 4
            OnClick = BitBtn15Click
            Kind = bkCancel
          end
          object BitAffectationEffectifEquipe: TBitBtn
            Left = 224
            Top = 120
            Width = 75
            Height = 25
            TabOrder = 5
            OnClick = BitAffectationEffectifEquipeClick
            Kind = bkAll
          end
          object EditCompteurAffecter: TEdit
            Left = 152
            Top = 32
            Width = 153
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 6
          end
          object EditUniteFondsAffecter: TEdit
            Left = 152
            Top = 56
            Width = 153
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 7
          end
        end
        object TableauSelection: TStringGrid
          Left = -39
          Top = 128
          Width = 256
          Height = 137
          Ctl3D = False
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
          ParentCtl3D = False
          TabOrder = 2
          Visible = False
          OnDrawCell = TableauSelectionDrawCell
          OnKeyDown = TableauSelectionKeyDown
        end
        object EditTrierAffectationEffectifEquipe: TEdit
          Left = 11
          Top = 11
          Width = 22
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
          Text = '1'
        end
      end
      object MemoTitreEtat: TMemo
        Left = 1000
        Top = 328
        Width = 185
        Height = 33
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 9
      end
      object AffichePrelevementCompteur: TPanel
        Left = 0
        Top = 0
        Width = 1225
        Height = 297
        BevelInner = bvLowered
        Color = 16777145
        TabOrder = 0
        object Bevel4: TBevel
          Left = 8
          Top = 5
          Width = 145
          Height = 28
        end
        object Label7: TLabel
          Left = 14
          Top = 13
          Width = 40
          Height = 13
          Caption = 'Num'#233'ro:'
        end
        object Label22: TLabel
          Left = 168
          Top = 13
          Width = 116
          Height = 13
          Caption = 'P'#233'riode de Pr'#233'l'#232'vement:'
        end
        object Label23: TLabel
          Left = 552
          Top = 13
          Width = 36
          Height = 13
          Caption = 'Equipe:'
        end
        object Bevel12: TBevel
          Left = 1136
          Top = 5
          Width = 82
          Height = 33
        end
        object Label25: TLabel
          Left = 824
          Top = 13
          Width = 36
          Height = 13
          Caption = 'Eff'#233'ctif:'
        end
        object AfficheEcartsEtatsPrincipal: TPanel
          Left = 904
          Top = 40
          Width = 313
          Height = 249
          BevelInner = bvLowered
          Color = 16777145
          Enabled = False
          TabOrder = 13
          object AfficheDataCompteurPrincipal: TPanel
            Left = 8
            Top = 8
            Width = 297
            Height = 57
            Alignment = taLeftJustify
            BorderWidth = 10
            TabOrder = 0
            object Label60: TLabel
              Left = 178
              Top = 24
              Width = 28
              Height = 13
              Alignment = taRightJustify
              Caption = 'Ecart:'
            end
            object EditControleMontantCompteurTableauPrelevementCompteurPrincipal: TEdit
              Left = 80
              Top = 6
              Width = 89
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 0
            end
            object EditControleMontantCompteurTableauDetailTiersPrincipal: TEdit
              Left = 80
              Top = 30
              Width = 89
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 1
            end
            object EditSoldeCompteurPrincipal: TMemo
              Left = 208
              Top = 13
              Width = 81
              Height = 33
              Alignment = taRightJustify
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
            end
            object Panel21: TPanel
              Left = 8
              Top = 8
              Width = 65
              Height = 41
              BevelInner = bvLowered
              Caption = 'Compteur'
              TabOrder = 3
            end
          end
          object AfficheDataUnitesFondsPrincipal: TPanel
            Left = 8
            Top = 72
            Width = 297
            Height = 57
            Alignment = taLeftJustify
            BorderWidth = 10
            TabOrder = 1
            object Label63: TLabel
              Left = 178
              Top = 24
              Width = 28
              Height = 13
              Alignment = taRightJustify
              Caption = 'Ecart:'
            end
            object EditControleMontantUFTableauPrelevementUniteFondsPrincipal: TEdit
              Left = 80
              Top = 6
              Width = 89
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 0
            end
            object EditControleMontantUFTableauDetailTiersPrincipal: TEdit
              Left = 80
              Top = 30
              Width = 89
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 1
            end
            object EditSoldeUnitesFondsPrincipal: TMemo
              Left = 208
              Top = 13
              Width = 81
              Height = 33
              Alignment = taRightJustify
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
            end
            object Panel22: TPanel
              Left = 8
              Top = 8
              Width = 65
              Height = 41
              BevelInner = bvLowered
              Caption = 'U.Fonds'
              TabOrder = 3
            end
          end
          object AfficheSoldePrincipal: TPanel
            Left = 8
            Top = 136
            Width = 297
            Height = 57
            Alignment = taLeftJustify
            BorderWidth = 10
            Color = clLime
            TabOrder = 2
            object Label66: TLabel
              Left = 178
              Top = 24
              Width = 28
              Height = 13
              Alignment = taRightJustify
              Caption = 'Ecart:'
            end
            object EditControleSoldeTableauEffectifEquipePrincipal: TEdit
              Left = 80
              Top = 6
              Width = 89
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 0
            end
            object EditControleSoldeAfficherPrelevementPrincipal: TEdit
              Left = 80
              Top = 30
              Width = 89
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 1
            end
            object EditSoldedesSoldesPrincipal: TMemo
              Left = 208
              Top = 13
              Width = 81
              Height = 33
              Alignment = taRightJustify
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
            end
            object Panel23: TPanel
              Left = 8
              Top = 8
              Width = 65
              Height = 41
              BevelInner = bvLowered
              Caption = 'Eff'#233'ctifs'
              TabOrder = 3
            end
          end
          object Panel19: TPanel
            Left = 8
            Top = 200
            Width = 297
            Height = 41
            BevelInner = bvLowered
            TabOrder = 3
            object RBRecherchePrelevementActive: TCheckBox
              Left = 6
              Top = 10
              Width = 241
              Height = 17
              Caption = 'Recherche Pr'#233'l'#232'vement Active !'
              Enabled = False
              TabOrder = 0
            end
          end
        end
        object EditNumPrelevementMax: TEdit
          Left = 60
          Top = 10
          Width = 41
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 12
        end
        object EditMatricule: TEdit
          Left = 120
          Top = 8
          Width = 25
          Height = 22
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
        object TableauTitrePrelevementCompteur: TStringGrid
          Left = 8
          Top = 48
          Width = 609
          Height = 33
          ColCount = 1
          Ctl3D = False
          DefaultColWidth = 590
          FixedCols = 0
          RowCount = 1
          FixedRows = 0
          ParentCtl3D = False
          TabOrder = 6
          ColWidths = (
            604)
        end
        object TableauPrelevementCompteur: TStringGrid
          Left = 8
          Top = 36
          Width = 889
          Height = 255
          Color = 16777192
          ColCount = 21
          Ctl3D = False
          DefaultColWidth = 30
          DefaultRowHeight = 20
          FixedColor = 16777145
          RowCount = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnClick = TableauPrelevementCompteurClick
          OnDrawCell = TableauPrelevementCompteurDrawCell
          OnKeyDown = TableauPrelevementCompteurKeyDown
          OnKeyPress = TableauPrelevementCompteurKeyPress
          ColWidths = (
            30
            30
            30
            30
            30
            30
            30
            30
            30
            30
            30
            30
            30
            30
            30
            30
            30
            30
            30
            30
            30)
        end
        object EditNumPrelevementCompteur: TEdit
          Left = 55
          Top = 8
          Width = 58
          Height = 22
          Color = clWhite
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          Text = '0'
          OnKeyPress = EditNumPrelevementCompteurKeyPress
        end
        object BitBtn6: TBitBtn
          Left = 1142
          Top = 8
          Width = 71
          Height = 25
          Caption = 'Fond'
          TabOrder = 2
          OnClick = BitBtn6Click
          Kind = bkHelp
        end
        object EditPeriodePrelevement: TEdit
          Left = 287
          Top = 8
          Width = 242
          Height = 22
          Color = clWhite
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object EditNumEquipePrelevement: TEdit
          Left = 599
          Top = 8
          Width = 26
          Height = 22
          Color = clWhite
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object EditEquipePrelevement: TEdit
          Left = 591
          Top = 8
          Width = 138
          Height = 22
          Color = clWhite
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          OnEnter = EditEquipePrelevementEnter
        end
        object EditNomEffectif: TEdit
          Left = 872
          Top = 8
          Width = 249
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 7
          OnEnter = EditNomEffectifEnter
        end
        object TableauChercheEffectif: TStringGrid
          Left = 874
          Top = 32
          Width = 271
          Height = 265
          ColCount = 7
          Ctl3D = False
          DefaultColWidth = 40
          DefaultRowHeight = 20
          FixedColor = 8454016
          RowCount = 2
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
          ParentCtl3D = False
          TabOrder = 9
          Visible = False
          OnDblClick = TableauChercheEffectifDblClick
          OnDrawCell = TableauChercheEffectifDrawCell
          OnKeyDown = TableauChercheEffectifKeyDown
          OnMouseDown = TableauChercheEffectifMouseDown
          RowHeights = (
            20
            20)
        end
        object TableauChercheEquipe: TStringGrid
          Left = 592
          Top = 32
          Width = 327
          Height = 265
          ColCount = 7
          Ctl3D = False
          DefaultColWidth = 40
          DefaultRowHeight = 20
          FixedColor = 8454016
          RowCount = 2
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
          ParentCtl3D = False
          TabOrder = 10
          Visible = False
          OnDblClick = TableauChercheEquipeDblClick
          OnDrawCell = TableauChercheEquipeDrawCell
          OnKeyDown = TableauChercheEquipeKeyDown
          OnMouseDown = TableauChercheEquipeMouseDown
          ColWidths = (
            40
            40
            40
            40
            40
            40
            40)
          RowHeights = (
            20
            20)
        end
        object EditModifierPrelevement: TEdit
          Left = 736
          Top = 8
          Width = 57
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 11
        end
      end
      object AffichePrelevementUniteFonds: TPanel
        Left = 0
        Top = 304
        Width = 465
        Height = 313
        BevelInner = bvLowered
        Color = clYellow
        TabOrder = 2
        object Bevel5: TBevel
          Left = 8
          Top = 8
          Width = 113
          Height = 26
        end
        object Label9: TLabel
          Left = 14
          Top = 15
          Width = 40
          Height = 13
          Caption = 'Num'#233'ro:'
        end
        object TableauTitrePrelevementUniteFonds: TStringGrid
          Left = 8
          Top = 8
          Width = 433
          Height = 35
          ColCount = 1
          Ctl3D = False
          DefaultColWidth = 590
          FixedCols = 0
          RowCount = 1
          FixedRows = 0
          ParentCtl3D = False
          TabOrder = 2
          ColWidths = (
            604)
        end
        object EditNumPrelevementUF: TEdit
          Left = 63
          Top = 8
          Width = 57
          Height = 26
          Color = clYellow
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object TableauPrelevementUniteFonds: TStringGrid
          Left = 8
          Top = 8
          Width = 449
          Height = 297
          Color = 13041663
          ColCount = 19
          Ctl3D = False
          DefaultColWidth = 30
          DefaultRowHeight = 20
          FixedColor = clYellow
          RowCount = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnClick = TableauPrelevementUniteFondsClick
          OnContextPopup = TableauPrelevementUniteFondsContextPopup
          OnDrawCell = TableauPrelevementUniteFondsDrawCell
          OnEnter = TableauPrelevementUniteFondsEnter
          OnKeyDown = TableauPrelevementUniteFondsKeyDown
          OnKeyPress = TableauPrelevementUniteFondsKeyPress
          ColWidths = (
            30
            30
            30
            30
            30
            30
            30
            30
            30
            30
            30
            30
            30
            30
            30
            30
            30
            30
            30)
          RowHeights = (
            20
            20)
        end
      end
      object AfficheSaisiePrelevement: TPanel
        Left = 8
        Top = 35
        Width = 473
        Height = 257
        BevelInner = bvLowered
        Color = 16777145
        TabOrder = 1
        Visible = False
        OnMouseDown = AfficheSaisiePrelevementMouseDown
        object Bevel1: TBevel
          Left = 200
          Top = 144
          Width = 257
          Height = 105
        end
        object EditTypePrelevement: TLabel
          Left = 208
          Top = 152
          Width = 41
          Height = 13
          Caption = '..........'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Panel5: TPanel
          Left = 8
          Top = 8
          Width = 457
          Height = 73
          BevelWidth = 5
          Color = 8454016
          TabOrder = 0
          object Bevel2: TBevel
            Left = 8
            Top = 8
            Width = 441
            Height = 57
          end
          object Label2: TLabel
            Left = 13
            Top = 18
            Width = 36
            Height = 13
            Caption = 'Equipe:'
          end
          object Label4: TLabel
            Left = 14
            Top = 44
            Width = 34
            Height = 13
            Caption = 'Vague:'
          end
          object Label5: TLabel
            Left = 190
            Top = 44
            Width = 42
            Height = 13
            Caption = '======>'
          end
          object EditDateIn: TMaskEdit
            Left = 56
            Top = 40
            Width = 73
            Height = 19
            Color = 14408667
            Ctl3D = False
            EditMask = '!99/99/9999;1;_'
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 0
            Text = '  /  /    '
          end
          object EditEquipe: TEdit
            Left = 56
            Top = 24
            Width = 385
            Height = 19
            Color = 14408667
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
          end
          object EditHeureIn: TMaskEdit
            Left = 128
            Top = 40
            Width = 57
            Height = 19
            Color = 14408667
            Ctl3D = False
            EditMask = '!90:00:00;1;_'
            MaxLength = 8
            ParentCtl3D = False
            TabOrder = 2
            Text = '  :  :  '
          end
          object EditDateFin: TMaskEdit
            Left = 240
            Top = 40
            Width = 73
            Height = 19
            Color = 14408667
            Ctl3D = False
            EditMask = '!99/99/9999;1;_'
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 3
            Text = '  /  /    '
          end
          object EditHeureFin: TMaskEdit
            Left = 312
            Top = 40
            Width = 57
            Height = 19
            Color = 14408667
            Ctl3D = False
            EditMask = '!90:00:00;1;_'
            MaxLength = 8
            ParentCtl3D = False
            TabOrder = 4
            Text = '  :  :  '
          end
        end
        object Panel6: TPanel
          Left = 8
          Top = 88
          Width = 457
          Height = 49
          BevelWidth = 5
          Color = 16777126
          TabOrder = 1
          object Bevel3: TBevel
            Left = 8
            Top = 8
            Width = 441
            Height = 33
          end
          object Label1: TLabel
            Left = 16
            Top = 16
            Width = 48
            Height = 13
            Caption = 'Compteur:'
          end
          object Label3: TLabel
            Left = 182
            Top = 16
            Width = 32
            Height = 13
            Caption = 'Article:'
          end
          object EditCompteur: TEdit
            Left = 72
            Top = 14
            Width = 105
            Height = 19
            Color = 14408667
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
          end
          object EditArticle: TEdit
            Left = 216
            Top = 14
            Width = 225
            Height = 19
            Color = 14408667
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
          end
        end
        object Panel7: TPanel
          Left = 208
          Top = 168
          Width = 241
          Height = 70
          BevelWidth = 10
          Caption = 'Panel7'
          Color = 8404992
          TabOrder = 2
          object EditValeurPrelevement: TEdit
            Left = 16
            Top = 16
            Width = 209
            Height = 37
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnKeyDown = EditValeurPrelevementKeyDown
            OnKeyPress = EditValeurPrelevementKeyPress
          end
        end
        object RadioGroup1: TRadioGroup
          Left = 8
          Top = 144
          Width = 185
          Height = 105
          Caption = 'Option de Pr'#233'l'#232'vement:'
          TabOrder = 3
        end
        object RBPrelevementIndice: TRadioButton
          Left = 16
          Top = 168
          Width = 169
          Height = 17
          Caption = 'Pr'#233'l'#232'vement Indice Compteur.'
          TabOrder = 4
          OnClick = RBPrelevementIndiceClick
        end
        object RBPrelevementMouvement: TRadioButton
          Left = 16
          Top = 192
          Width = 161
          Height = 17
          Caption = 'Pr'#233'l'#232'vement Mouvement.'
          TabOrder = 5
          OnClick = RBPrelevementMouvementClick
        end
        object RBInitialIndice: TRadioButton
          Left = 16
          Top = 216
          Width = 161
          Height = 17
          Caption = 'Pr'#233'l'#232'vement Indice Initiale.'
          TabOrder = 6
          OnClick = RBInitialIndiceClick
        end
      end
      object AfficheResultat: TPanel
        Left = 920
        Top = 392
        Width = 305
        Height = 225
        BevelInner = bvLowered
        BevelWidth = 5
        Color = clBlack
        TabOrder = 5
        object Label6: TLabel
          Left = 19
          Top = 71
          Width = 126
          Height = 13
          Caption = 'Le Montant Compteur:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 37
          Top = 32
          Width = 107
          Height = 13
          Caption = 'Le Montant Fonds:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 105
          Top = 146
          Width = 37
          Height = 13
          Caption = 'Solde:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label30: TLabel
          Left = 29
          Top = 108
          Width = 115
          Height = 13
          Caption = 'Fond de Roulement:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EditMontantCompteur: TMemo
          Left = 152
          Top = 56
          Width = 137
          Height = 33
          Alignment = taRightJustify
          Color = 16777145
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object EditMontantUniteFonds: TMemo
          Left = 152
          Top = 16
          Width = 137
          Height = 33
          Alignment = taRightJustify
          Color = clYellow
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object EditSoldePrelevement: TMemo
          Left = 152
          Top = 136
          Width = 137
          Height = 33
          Alignment = taRightJustify
          Color = 9798399
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object EditFondRoulement: TMemo
          Left = 152
          Top = 96
          Width = 137
          Height = 33
          Alignment = taRightJustify
          Color = 16777145
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
      end
      object AfficheArchivePrelevement: TPanel
        Left = 496
        Top = 160
        Width = 681
        Height = 89
        BevelInner = bvLowered
        BevelWidth = 3
        Color = 8454143
        TabOrder = 6
        Visible = False
        object Bevel10: TBevel
          Left = 8
          Top = 8
          Width = 665
          Height = 73
        end
        object BitBtn3: TBitBtn
          Left = 16
          Top = 16
          Width = 75
          Height = 57
          Caption = '&Non'
          ModalResult = 7
          TabOrder = 0
          OnClick = BitBtn3Click
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333FFFFF333333000033333388888833333333333F888888FFF333
            000033338811111188333333338833FFF388FF33000033381119999111833333
            38F338888F338FF30000339119933331111833338F388333383338F300003391
            13333381111833338F8F3333833F38F3000039118333381119118338F38F3338
            33F8F38F000039183333811193918338F8F333833F838F8F0000391833381119
            33918338F8F33833F8338F8F000039183381119333918338F8F3833F83338F8F
            000039183811193333918338F8F833F83333838F000039118111933339118338
            F3833F83333833830000339111193333391833338F33F8333FF838F300003391
            11833338111833338F338FFFF883F83300003339111888811183333338FF3888
            83FF83330000333399111111993333333388FFFFFF8833330000333333999999
            3333333333338888883333330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
        end
        object OperationPrelevement: TBitBtn
          Left = 496
          Top = 16
          Width = 171
          Height = 57
          Caption = 'Archiver le pr'#233'l'#232'vement !'
          TabOrder = 1
          OnClick = OperationPrelevementClick
          Kind = bkAll
        end
        object AffichePatienterArchivePrelevement: TPanel
          Left = -304
          Top = 32
          Width = 665
          Height = 73
          BevelInner = bvLowered
          Caption = 'Veuillez patienter SVP !'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Visible = False
          object EditPatienterArchivePrelevement: TEdit
            Left = 648
            Top = 8
            Width = 5
            Height = 32
            TabOrder = 0
          end
        end
      end
      object AfficheOperationsPrelevement: TPanel
        Left = 920
        Top = 304
        Width = 305
        Height = 81
        BevelInner = bvLowered
        BevelWidth = 5
        Color = clBlack
        TabOrder = 4
        object BitArchiverPrelevement: TBitBtn
          Left = 16
          Top = 104
          Width = 273
          Height = 33
          Caption = 'Archiver le Pr'#233'l'#232'vement'
          TabOrder = 0
          OnClick = BitArchiverPrelevementClick
          Kind = bkRetry
          Margin = 5
        end
        object BitImprimerPrelevement: TBitBtn
          Left = 16
          Top = 160
          Width = 193
          Height = 33
          Caption = 'Imprimer l'#39'Etat de pr'#233'l'#232'vement'
          TabOrder = 1
          OnClick = BitImprimerPrelevementClick
          Kind = bkAll
          Margin = 5
        end
        object BitAnnulerPrelevement: TBitBtn
          Left = 16
          Top = 208
          Width = 273
          Height = 33
          Caption = 'Refaire le p'#233'l'#232'vement'
          ModalResult = 2
          TabOrder = 2
          OnClick = BitAnnulerPrelevementClick
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333333333000033338833333333333333333F333333333333
            0000333911833333983333333388F333333F3333000033391118333911833333
            38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
            911118111118333338F3338F833338F3000033333911111111833333338F3338
            3333F8330000333333911111183333333338F333333F83330000333333311111
            8333333333338F3333383333000033333339111183333333333338F333833333
            00003333339111118333333333333833338F3333000033333911181118333333
            33338333338F333300003333911183911183333333383338F338F33300003333
            9118333911183333338F33838F338F33000033333913333391113333338FF833
            38F338F300003333333333333919333333388333338FFF830000333333333333
            3333333333333333333888330000333333333333333333333333333333333333
            0000}
          Margin = 5
          NumGlyphs = 2
        end
        object BitOperationPrelevement: TBitBtn
          Left = 16
          Top = 16
          Width = 273
          Height = 49
          Caption = 'Op'#233'rations Pr'#233'l'#232'vement'
          TabOrder = 3
          OnClick = BitOperationPrelevementClick
          Kind = bkHelp
        end
        object SeparateurAfficheOperationsPrelevement: TPanel
          Left = 16
          Top = 81
          Width = 273
          Height = 17
          BevelInner = bvLowered
          Color = clRed
          TabOrder = 4
        end
        object RBNbrEquipe: TCheckBox
          Left = 216
          Top = 168
          Width = 73
          Height = 17
          Caption = 'Global.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = RBNbrEquipeClick
        end
      end
      object AfficheDetailUniteFonds: TPanel
        Left = 952
        Top = 544
        Width = 913
        Height = 313
        BevelInner = bvLowered
        Color = 8421631
        TabOrder = 10
        Visible = False
        OnMouseDown = AfficheDetailUniteFondsMouseDown
        object Bevel31: TBevel
          Left = 752
          Top = 8
          Width = 154
          Height = 33
        end
        object TableauDetailUniteFonds: TStringGrid
          Left = 8
          Top = 48
          Width = 897
          Height = 257
          ColCount = 10
          Ctl3D = False
          FixedColor = 8421631
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
          ParentCtl3D = False
          TabOrder = 0
          OnClick = TableauDetailUniteFondsClick
          OnDrawCell = TableauDetailUniteFondsDrawCell
          OnKeyPress = TableauDetailUniteFondsKeyPress
          ColWidths = (
            64
            64
            64
            64
            64
            64
            64
            64
            64
            64)
          RowHeights = (
            24
            24
            24
            24
            24)
        end
        object BitBtn11: TBitBtn
          Left = 760
          Top = 13
          Width = 139
          Height = 25
          TabOrder = 1
          OnClick = BitBtn11Click
          Kind = bkCancel
        end
        object AfficheOperationDetailUF: TPanel
          Left = 264
          Top = 88
          Width = 369
          Height = 57
          BevelInner = bvLowered
          Color = 8454016
          TabOrder = 2
          Visible = False
          object Bevel13: TBevel
            Left = 8
            Top = 8
            Width = 353
            Height = 41
          end
          object BitBtn12: TBitBtn
            Left = 16
            Top = 16
            Width = 57
            Height = 25
            TabOrder = 0
            OnClick = BitBtn12Click
            Kind = bkNo
          end
          object BitAfficheOperationDetailUF: TBitBtn
            Left = 272
            Top = 16
            Width = 83
            Height = 25
            Caption = 'Valider'
            TabOrder = 1
            OnClick = BitAfficheOperationDetailUFClick
            Kind = bkAll
          end
        end
        object RBSuppressionAutorisee: TCheckBox
          Left = 16
          Top = 8
          Width = 145
          Height = 17
          Caption = 'Suppression autoris'#233'e !'
          Enabled = False
          TabOrder = 3
        end
        object RBTrieRubriqueSelect: TCheckBox
          Left = 248
          Top = 8
          Width = 185
          Height = 17
          Caption = 'Trier par la rubrique s'#233'lectionner !'
          TabOrder = 4
        end
      end
      object AfficheSaisiePrelevementUniteFonds: TPanel
        Left = 0
        Top = 304
        Width = 1225
        Height = 313
        BevelInner = bvLowered
        Color = clYellow
        TabOrder = 3
        Visible = False
        OnClick = AfficheSaisiePrelevementUniteFondsClick
        OnMouseDown = AfficheSaisiePrelevementUniteFondsMouseDown
        object Bevel8: TBevel
          Left = 8
          Top = 144
          Width = 449
          Height = 89
        end
        object Bevel25: TBevel
          Left = 296
          Top = 240
          Width = 161
          Height = 65
        end
        object Bevel27: TBevel
          Left = 8
          Top = 240
          Width = 281
          Height = 65
        end
        object Bevel37: TBevel
          Left = 396
          Top = 11
          Width = 56
          Height = 33
        end
        object Bevel38: TBevel
          Left = 396
          Top = 69
          Width = 56
          Height = 25
        end
        object Panel9: TPanel
          Left = 8
          Top = 8
          Width = 385
          Height = 73
          BevelWidth = 5
          Color = 8454016
          TabOrder = 0
          object Bevel6: TBevel
            Left = 8
            Top = 8
            Width = 369
            Height = 57
          end
          object Label10: TLabel
            Left = 13
            Top = 18
            Width = 36
            Height = 13
            Caption = 'Equipe:'
          end
          object Label11: TLabel
            Left = 14
            Top = 44
            Width = 34
            Height = 13
            Caption = 'Vague:'
          end
          object Label12: TLabel
            Left = 190
            Top = 44
            Width = 42
            Height = 13
            Caption = '======>'
          end
          object EditDateInUniteFonds: TMaskEdit
            Left = 56
            Top = 40
            Width = 73
            Height = 19
            Color = 14408667
            Ctl3D = False
            EditMask = '!99/99/9999;1;_'
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 0
            Text = '  /  /    '
          end
          object EditEquipeUniteFonds: TEdit
            Left = 56
            Top = 16
            Width = 313
            Height = 19
            Color = 14408667
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
          end
          object EditHeureInUniteFonds: TMaskEdit
            Left = 128
            Top = 40
            Width = 57
            Height = 19
            Color = 14408667
            Ctl3D = False
            EditMask = '!90:00:00;1;_'
            MaxLength = 8
            ParentCtl3D = False
            TabOrder = 2
            Text = '  :  :  '
          end
          object EditDateFinUniteFonds: TMaskEdit
            Left = 240
            Top = 40
            Width = 73
            Height = 19
            Color = 14408667
            Ctl3D = False
            EditMask = '!99/99/9999;1;_'
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 3
            Text = '  /  /    '
          end
          object EditHeureFinUniteFonds: TMaskEdit
            Left = 312
            Top = 40
            Width = 57
            Height = 19
            Color = 14408667
            Ctl3D = False
            EditMask = '!90:00:00;1;_'
            MaxLength = 8
            ParentCtl3D = False
            TabOrder = 4
            Text = '  :  :  '
          end
        end
        object Panel11: TPanel
          Left = 296
          Top = 152
          Width = 153
          Height = 70
          BevelWidth = 10
          Color = 8404992
          TabOrder = 1
        end
        object Panel10: TPanel
          Left = 8
          Top = 88
          Width = 385
          Height = 49
          BevelWidth = 5
          Color = 16777126
          TabOrder = 2
          object Bevel7: TBevel
            Left = 8
            Top = 8
            Width = 369
            Height = 33
          end
          object Label13: TLabel
            Left = 16
            Top = 16
            Width = 75
            Height = 13
            Caption = 'Unite de Fonds:'
          end
          object EditUniteFonds: TEdit
            Left = 96
            Top = 14
            Width = 273
            Height = 19
            Color = 14408667
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
          end
        end
        object AfficheTiers: TPanel
          Left = 16
          Top = 152
          Width = 273
          Height = 73
          BevelInner = bvLowered
          BevelWidth = 3
          TabOrder = 4
          Visible = False
        end
        object AfficheModePaiementUniteFonds: TPanel
          Left = 8
          Top = 8
          Width = 449
          Height = 137
          BevelInner = bvLowered
          BevelWidth = 3
          Color = clYellow
          TabOrder = 5
          object Bevel11: TBevel
            Left = 8
            Top = 8
            Width = 433
            Height = 121
          end
          object Label18: TLabel
            Left = 16
            Top = 59
            Width = 92
            Height = 13
            Caption = 'Mode de Paiement:'
          end
          object Label19: TLabel
            Left = 52
            Top = 83
            Width = 55
            Height = 13
            Caption = 'Num.Pi'#232'ce:'
          end
          object Label20: TLabel
            Left = 45
            Top = 107
            Width = 62
            Height = 13
            Caption = 'Domiciliation:'
          end
          object TitreTiers: TLabel
            Left = 80
            Top = 34
            Width = 26
            Height = 13
            Caption = 'Tiers:'
          end
          object Bevel39: TBevel
            Left = 382
            Top = 62
            Width = 56
            Height = 25
          end
          object EditModePaiement: TEdit
            Left = 112
            Top = 56
            Width = 121
            Height = 19
            Color = 14211288
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
          end
          object EditNumPiece: TEdit
            Left = 112
            Top = 80
            Width = 121
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            OnKeyDown = EditNumPieceKeyDown
          end
          object EditDomiciliation: TEdit
            Left = 112
            Top = 104
            Width = 321
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 2
            OnKeyDown = EditDomiciliationKeyDown
          end
          object EditCodeTiers: TEdit
            Left = 112
            Top = 34
            Width = 89
            Height = 19
            Color = 13224393
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 3
            OnEnter = EditCodeTiersEnter
          end
          object EditTiers: TEdit
            Left = 200
            Top = 34
            Width = 233
            Height = 19
            Color = 13224393
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 4
          end
          object EditNumPrelevementUniteFonds: TEdit
            Left = 8
            Top = 8
            Width = 73
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 5
          end
        end
        object AfficheDetaildesArticles: TPanel
          Left = 464
          Top = 8
          Width = 753
          Height = 193
          BevelInner = bvLowered
          TabOrder = 6
          object Bevel18: TBevel
            Left = 520
            Top = 8
            Width = 225
            Height = 25
          end
          object Label34: TLabel
            Left = 536
            Top = 13
            Width = 149
            Height = 13
            Caption = 'Nombre Chiffres Apr'#233's vergule !'
          end
          object TableauDetailArticlePrelevement: TStringGrid
            Left = 8
            Top = 40
            Width = 737
            Height = 145
            Ctl3D = False
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goEditing]
            ParentCtl3D = False
            TabOrder = 0
            OnDblClick = TableauDetailArticlePrelevementDblClick
            OnDrawCell = TableauDetailArticlePrelevementDrawCell
            OnKeyDown = TableauDetailArticlePrelevementKeyDown
            OnKeyPress = TableauDetailArticlePrelevementKeyPress
            OnKeyUp = TableauDetailArticlePrelevementKeyUp
          end
          object EditMontantRestant: TEdit
            Left = 8
            Top = 11
            Width = 121
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
          end
          object EditNbrChiffreApresVergule: TEdit
            Left = 696
            Top = 11
            Width = 25
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 2
            Text = '4'
          end
          object UpDown2: TUpDown
            Left = 721
            Top = 11
            Width = 16
            Height = 19
            Associate = EditNbrChiffreApresVergule
            Min = 2
            Max = 5
            Position = 4
            TabOrder = 3
            Wrap = False
          end
          object RBAutoriserValidationSansJustifierArticles: TCheckBox
            Left = 176
            Top = 16
            Width = 241
            Height = 17
            Caption = 'Autoriser la validation sans justifier les articles !'
            TabOrder = 4
          end
        end
        object AfficheOperationMoyenTransport: TPanel
          Left = 464
          Top = 208
          Width = 753
          Height = 97
          BevelInner = bvLowered
          Color = 8454143
          TabOrder = 7
          OnEnter = AfficheOperationMoyenTransportEnter
          object Bevel62: TBevel
            Left = 8
            Top = 8
            Width = 561
            Height = 81
          end
          object Bevel30: TBevel
            Left = 576
            Top = 8
            Width = 169
            Height = 33
          end
          object Label81: TLabel
            Left = 16
            Top = 179
            Width = 100
            Height = 13
            Caption = 'EditTypeFicheValider'
          end
          object Label82: TLabel
            Left = 16
            Top = 203
            Width = 181
            Height = 13
            Caption = 'EditNumMovementPrelevementValider'
          end
          object Label83: TLabel
            Left = 16
            Top = 227
            Width = 98
            Height = 13
            Caption = 'EditNumFicheValider'
          end
          object Label71: TLabel
            Left = 656
            Top = 19
            Width = 14
            Height = 13
            Caption = 'P'#176':'
          end
          object Label72: TLabel
            Left = 16
            Top = 19
            Width = 48
            Height = 13
            Caption = 'Transport:'
          end
          object Label76: TLabel
            Left = 312
            Top = 19
            Width = 46
            Height = 13
            Caption = 'Matricule:'
          end
          object Label78: TLabel
            Left = 16
            Top = 43
            Width = 74
            Height = 13
            Caption = 'Nom Chauffeur:'
          end
          object Label79: TLabel
            Left = 320
            Top = 43
            Width = 39
            Height = 13
            Caption = 'Pr'#233'nom:'
          end
          object Label80: TLabel
            Left = 16
            Top = 67
            Width = 68
            Height = 13
            Caption = 'Pi'#232'ce Identite:'
          end
          object Label37: TLabel
            Left = 16
            Top = 251
            Width = 98
            Height = 13
            Caption = 'EditCodeTiersValider'
          end
          object Label38: TLabel
            Left = 16
            Top = 275
            Width = 94
            Height = 13
            Caption = 'EditMatriculeEffectif'
          end
          object Bevel28: TBevel
            Left = 8
            Top = 168
            Width = 345
            Height = 129
          end
          object Bevel29: TBevel
            Left = 576
            Top = 48
            Width = 169
            Height = 41
          end
          object EditPositionMoyenTransport: TEdit
            Left = 680
            Top = 16
            Width = 57
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
          end
          object EditMoyenTransport: TEdit
            Left = 96
            Top = 16
            Width = 209
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            OnKeyDown = EditMoyenTransportKeyDown
          end
          object EditMatriculeTransport: TEdit
            Left = 368
            Top = 16
            Width = 193
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 2
            OnKeyDown = EditMatriculeTransportKeyDown
          end
          object EditNomChauffeur: TEdit
            Left = 96
            Top = 40
            Width = 209
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
            OnKeyDown = EditNomChauffeurKeyDown
          end
          object EditPrenomChauffeur: TEdit
            Left = 368
            Top = 40
            Width = 193
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 4
            OnKeyDown = EditPrenomChauffeurKeyDown
          end
          object EditPieceIdentite: TEdit
            Left = 96
            Top = 64
            Width = 209
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 5
            OnKeyDown = EditPieceIdentiteKeyDown
          end
          object EditTypeFiche: TEdit
            Left = 208
            Top = 176
            Width = 121
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 6
          end
          object EditNumMovementPrelevement: TEdit
            Left = 208
            Top = 200
            Width = 121
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 7
          end
          object EditNumFiche: TEdit
            Left = 208
            Top = 224
            Width = 121
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 8
          end
          object BitBtn24: TBitBtn
            Left = 584
            Top = 56
            Width = 153
            Height = 25
            Caption = 'Ouvrir dans la fiche'
            TabOrder = 9
            OnClick = BitBtn24Click
            Kind = bkHelp
          end
          object EditCodeTiersValider: TEdit
            Left = 208
            Top = 246
            Width = 121
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 10
          end
          object EditMatriculeEffectifValider: TEdit
            Left = 208
            Top = 270
            Width = 121
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 11
          end
        end
        object BitValiderDetailArticlePrelevement: TBitBtn
          Left = 304
          Top = 248
          Width = 145
          Height = 49
          Caption = 'Valider'
          TabOrder = 8
          OnClick = BitValiderDetailArticlePrelevementClick
          Kind = bkAll
        end
        object BitBtn2: TBitBtn
          Left = 16
          Top = 248
          Width = 265
          Height = 49
          Caption = 'Quitter'
          TabOrder = 3
          OnClick = BitBtn2Click
          Kind = bkCancel
        end
        object EditValeurPrelevementUniteFonds: TMemo
          Left = 312
          Top = 168
          Width = 121
          Height = 38
          Alignment = taRightJustify
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 9
          WantReturns = False
          OnKeyDown = EditValeurPrelevementUniteFondsKeyDown
          OnKeyPress = EditValeurPrelevementUniteFondsKeyPress
          OnKeyUp = EditValeurPrelevementUniteFondsKeyUp
        end
        object EditARowTableauPrelevementUniteFonds: TEdit
          Left = 427
          Top = 18
          Width = 19
          Height = 19
          Color = clYellow
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 10
        end
        object EditNumUniteFondsSelect: TEdit
          Left = 400
          Top = 18
          Width = 24
          Height = 19
          Color = clYellow
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 11
        end
        object RBValeurPrecise: TCheckBox
          Left = 400
          Top = 75
          Width = 41
          Height = 17
          Alignment = taLeftJustify
          Caption = 'V.P.'
          Enabled = False
          TabOrder = 12
        end
      end
      object AfficheListePieceTiers: TPanel
        Left = 688
        Top = 432
        Width = 913
        Height = 313
        BevelInner = bvLowered
        Color = clYellow
        TabOrder = 8
        Visible = False
        OnMouseDown = AfficheListePieceTiersMouseDown
        object Bevel9: TBevel
          Left = 8
          Top = 8
          Width = 417
          Height = 33
        end
        object Label21: TLabel
          Left = 16
          Top = 20
          Width = 26
          Height = 13
          Caption = 'Tiers:'
        end
        object Bevel17: TBevel
          Left = 752
          Top = 8
          Width = 154
          Height = 33
        end
        object TableauListePieceTiers: TStringGrid
          Left = 8
          Top = 48
          Width = 897
          Height = 257
          ColCount = 9
          Ctl3D = False
          DefaultColWidth = 40
          DefaultRowHeight = 20
          RowCount = 2
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
          ParentCtl3D = False
          TabOrder = 0
          OnDrawCell = TableauListePieceTiersDrawCell
          OnKeyDown = TableauListePieceTiersKeyDown
        end
        object EditAfficheCodeTiers: TEdit
          Left = 48
          Top = 16
          Width = 97
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object EditAfficheTiers: TEdit
          Left = 144
          Top = 16
          Width = 273
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
        end
        object BitBtn5: TBitBtn
          Left = 759
          Top = 12
          Width = 141
          Height = 25
          TabOrder = 3
          OnClick = BitBtn5Click
          Kind = bkCancel
        end
      end
      object TableauTiers: TStringGrid
        Left = 1089
        Top = 545
        Width = 912
        Height = 311
        Color = 12582911
        ColCount = 10
        Ctl3D = False
        DefaultColWidth = 40
        DefaultRowHeight = 18
        FixedColor = clYellow
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected]
        ParentCtl3D = False
        TabOrder = 7
        Visible = False
        OnClick = TableauTiersClick
        OnDblClick = TableauTiersDblClick
        OnDrawCell = TableauTiersDrawCell
        OnKeyDown = TableauTiersKeyDown
        OnKeyPress = TableauTiersKeyPress
        OnMouseDown = TableauTiersMouseDown
        ColWidths = (
          40
          70
          332
          245
          242
          205
          200
          212
          213
          206)
        RowHeights = (
          18
          18)
      end
      object AfficheNouveauTiers: TPanel
        Left = 56
        Top = 388
        Width = 913
        Height = 123
        BevelInner = bvLowered
        BevelOuter = bvNone
        Color = 8454143
        TabOrder = 12
        Visible = False
        object Bevel24: TBevel
          Left = 8
          Top = 8
          Width = 297
          Height = 105
        end
        object Label45: TLabel
          Left = 40
          Top = 43
          Width = 25
          Height = 13
          Caption = 'Nom:'
        end
        object Label46: TLabel
          Left = 24
          Top = 67
          Width = 39
          Height = 13
          Caption = 'Pr'#233'nom:'
        end
        object Label47: TLabel
          Left = 24
          Top = 91
          Width = 41
          Height = 13
          Caption = 'Adresse:'
        end
        object Bevel26: TBevel
          Left = 312
          Top = 8
          Width = 105
          Height = 105
        end
        object Label49: TLabel
          Left = 40
          Top = 19
          Width = 28
          Height = 13
          Caption = 'Code:'
        end
        object Label50: TLabel
          Left = 168
          Top = 19
          Width = 62
          Height = 13
          Caption = 'Sous Famille:'
        end
        object EditNomTiersNew: TEdit
          Left = 72
          Top = 40
          Width = 225
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnKeyDown = EditNomTiersNewKeyDown
        end
        object EditPrenomTiersNew: TEdit
          Left = 72
          Top = 64
          Width = 225
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnKeyDown = EditPrenomTiersNewKeyDown
        end
        object EditAdresseTiersNew: TEdit
          Left = 72
          Top = 88
          Width = 225
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          OnKeyDown = EditAdresseTiersNewKeyDown
        end
        object BitBtn13: TBitBtn
          Left = 320
          Top = 80
          Width = 89
          Height = 25
          TabOrder = 4
          OnClick = BitBtn13Click
          Kind = bkCancel
        end
        object BitValiderNouveauTiers: TBitBtn
          Left = 320
          Top = 16
          Width = 89
          Height = 33
          Caption = 'Valider'
          TabOrder = 5
          OnClick = BitValiderNouveauTiersClick
          Kind = bkAll
        end
        object EditCompteTiersRecherche: TEdit
          Left = 232
          Top = 16
          Width = 65
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 6
        end
        object EditCodeTiersNew: TEdit
          Left = 72
          Top = 16
          Width = 89
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 7
          OnKeyDown = EditCodeTiersNewKeyDown
        end
        object TableauCompteTiers: TStringGrid
          Left = 8
          Top = 8
          Width = 897
          Height = 105
          Ctl3D = False
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
          ParentCtl3D = False
          TabOrder = 2
          Visible = False
          OnDrawCell = TableauCompteTiersDrawCell
          OnKeyDown = TableauCompteTiersKeyDown
          ColWidths = (
            64
            64
            97
            64
            64)
        end
      end
      object AfficheRechercheTiersPrelevement: TPanel
        Left = 24
        Top = 374
        Width = 913
        Height = 49
        BevelInner = bvLowered
        Color = 8454143
        TabOrder = 13
        Visible = False
        OnExit = AfficheRechercheTiersPrelevementExit
        OnMouseDown = AfficheRechercheTiersPrelevementMouseDown
        object EditRechercheNomPrenomTiers: TEdit
          Left = 8
          Top = 16
          Width = 817
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnEnter = EditRechercheNomPrenomTiersEnter
          OnKeyDown = EditRechercheNomPrenomTiersKeyDown
          OnKeyUp = EditRechercheNomPrenomTiersKeyUp
        end
        object RBRechercheTiersMotsCles: TCheckBox
          Left = 832
          Top = 16
          Width = 73
          Height = 17
          Caption = 'Mots Cl'#233's.'
          Checked = True
          State = cbChecked
          TabOrder = 1
        end
      end
    end
    object PageDetailArticleUniteFonds: TTabSheet
      Caption = '   D'#233'tail Par Type Unit'#233's de Fonds et Tiers   '
      ImageIndex = 1
      OnShow = PageDetailArticleUniteFondsShow
      object Label55: TLabel
        Left = 8
        Top = 515
        Width = 50
        Height = 13
        Caption = 'Liste NUF:'
      end
      object Label56: TLabel
        Left = 8
        Top = 539
        Width = 25
        Height = 13
        Caption = 'New:'
      end
      object Label57: TLabel
        Left = 8
        Top = 563
        Width = 22
        Height = 13
        Caption = 'Add:'
      end
      object EditListeNumPrelevementUF: TEdit
        Left = 64
        Top = 512
        Width = 1153
        Height = 19
        Color = clSilver
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 4
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1225
        Height = 225
        BevelInner = bvLowered
        Color = 12189625
        TabOrder = 0
        object Label16: TLabel
          Left = 800
          Top = 192
          Width = 124
          Height = 13
          Caption = 'Montant des fonds Global:'
        end
        object Label53: TLabel
          Left = 8
          Top = 196
          Width = 131
          Height = 13
          Caption = 'Valeur UF Attribu'#233' aux tiers:'
        end
        object Label54: TLabel
          Left = 280
          Top = 196
          Width = 154
          Height = 13
          Caption = 'Valeur UF Non Attribu'#233' aux tiers:'
        end
        object TableauDetailTypeUniteFonds: TStringGrid
          Left = 8
          Top = 40
          Width = 1057
          Height = 145
          ColCount = 6
          Ctl3D = False
          DefaultColWidth = 30
          DefaultRowHeight = 20
          FixedColor = 12189625
          RowCount = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnDblClick = TableauDetailTypeUniteFondsDblClick
          OnDrawCell = TableauDetailTypeUniteFondsDrawCell
          ColWidths = (
            30
            30
            30
            30
            30
            30)
        end
        object EditMontatntDetailTypeUniteFonds: TMemo
          Left = 928
          Top = 188
          Width = 137
          Height = 25
          Alignment = taRightJustify
          Color = 12189625
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object Panel14: TPanel
          Left = 1072
          Top = 8
          Width = 145
          Height = 209
          BevelInner = bvLowered
          Color = 12189625
          TabOrder = 2
          object Label24: TLabel
            Left = 8
            Top = 160
            Width = 103
            Height = 13
            Caption = 'Cumule par S'#233'lection:'
          end
          object EditCumuleSelectionTypeUniteFonds: TMemo
            Left = 8
            Top = 180
            Width = 129
            Height = 25
            Alignment = taRightJustify
            Color = clWhite
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object RadioGroup6: TRadioGroup
            Left = 8
            Top = 8
            Width = 129
            Height = 105
            Caption = 'Diagramme:'
            TabOrder = 2
          end
          object BitBtn7: TBitBtn
            Left = 16
            Top = 80
            Width = 113
            Height = 25
            Caption = 'Voir Diagramme'
            TabOrder = 1
            OnClick = BitBtn7Click
            Kind = bkHelp
          end
          object RBTypeUFond: TRadioButton
            Left = 16
            Top = 32
            Width = 113
            Height = 17
            Caption = 'Type U.Fond'
            TabOrder = 3
          end
          object RBUFond: TRadioButton
            Left = 16
            Top = 56
            Width = 113
            Height = 17
            Caption = 'Unit'#233's de Fond'
            TabOrder = 4
          end
        end
        object TableauTitreDetailTypeUniteFonds: TStringGrid
          Left = 8
          Top = 8
          Width = 609
          Height = 27
          ColCount = 1
          Ctl3D = False
          DefaultColWidth = 590
          FixedCols = 0
          RowCount = 1
          FixedRows = 0
          ParentCtl3D = False
          TabOrder = 3
          ColWidths = (
            604)
        end
        object Panel2: TPanel
          Left = 8
          Top = 4
          Width = 1057
          Height = 33
          BevelInner = bvLowered
          Caption = 'D'#233'tail par Type Unit'#233's de Fonds'
          Color = 8454143
          TabOrder = 4
        end
        object EditValeurPrelevementAttribueTiers: TEdit
          Left = 144
          Top = 192
          Width = 121
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
        end
        object EditValeurPrelevementNonAttribueTiers: TEdit
          Left = 440
          Top = 192
          Width = 121
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 6
        end
      end
      object Panel13: TPanel
        Left = 0
        Top = 232
        Width = 1225
        Height = 273
        BevelInner = bvLowered
        Color = 16777088
        TabOrder = 1
        object Label17: TLabel
          Left = 944
          Top = 247
          Width = 135
          Height = 13
          Caption = 'Montant des fonds par Tiers:'
        end
        object TableauDetailTiers: TStringGrid
          Left = 8
          Top = 40
          Width = 633
          Height = 193
          ColCount = 7
          Ctl3D = False
          DefaultColWidth = 40
          DefaultRowHeight = 20
          RowCount = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnClick = TableauDetailTiersClick
          OnContextPopup = TableauDetailTiersContextPopup
          OnDrawCell = TableauDetailTiersDrawCell
          OnKeyDown = TableauDetailTiersKeyDown
        end
        object EditMontatntDetailTiers: TMemo
          Left = 1088
          Top = 240
          Width = 129
          Height = 25
          Alignment = taRightJustify
          Color = 16777088
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object RadioGroup2: TRadioGroup
          Left = 8
          Top = 234
          Width = 377
          Height = 33
          Caption = 'Type d'#39'Affichage:'
          TabOrder = 2
        end
        object RBCumuleTiers: TRadioButton
          Left = 120
          Top = 245
          Width = 105
          Height = 17
          Caption = 'Cumule Par Tiers.'
          Checked = True
          TabOrder = 3
          TabStop = True
          OnClick = RBCumuleTiersClick
        end
        object RBDetailPieceTiers: TRadioButton
          Left = 248
          Top = 245
          Width = 121
          Height = 17
          Caption = 'D'#233'tail par pi'#232'ce Tiers.'
          TabOrder = 4
          OnClick = RBDetailPieceTiersClick
        end
        object TableauTitreDetailTiers: TStringGrid
          Left = 8
          Top = 8
          Width = 761
          Height = 27
          ColCount = 1
          Ctl3D = False
          DefaultColWidth = 590
          FixedCols = 0
          RowCount = 1
          FixedRows = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          ColWidths = (
            756)
        end
        object Panel15: TPanel
          Left = 8
          Top = 4
          Width = 1209
          Height = 33
          BevelInner = bvLowered
          Caption = 'D'#233'tail par Tiers'
          Color = 8454143
          TabOrder = 6
          object EditNumPrelevementTiers: TEdit
            Left = 8
            Top = 6
            Width = 73
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
          end
          object EditNumPrelevementFinTiers: TEdit
            Left = 88
            Top = 6
            Width = 73
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
          end
        end
        object TableauDetailArticleTiers: TStringGrid
          Left = 648
          Top = 40
          Width = 569
          Height = 225
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 7
          OnClick = TableauDetailArticleTiersClick
          OnDrawCell = TableauDetailArticleTiersDrawCell
          OnKeyPress = TableauDetailArticleTiersKeyPress
        end
        object AfficheOperationTableauDetailArticleTiers: TPanel
          Left = 400
          Top = 88
          Width = 585
          Height = 57
          BevelInner = bvLowered
          TabOrder = 8
          Visible = False
          object Bevel35: TBevel
            Left = 8
            Top = 8
            Width = 569
            Height = 41
          end
          object BitBtn17: TBitBtn
            Left = 16
            Top = 16
            Width = 75
            Height = 25
            TabOrder = 0
            OnClick = BitBtn17Click
            Kind = bkCancel
          end
          object BitOperationTableauDetailArticleTiers: TBitBtn
            Left = 456
            Top = 16
            Width = 115
            Height = 25
            TabOrder = 1
            OnClick = BitOperationTableauDetailArticleTiersClick
            Kind = bkAll
          end
        end
      end
      object Diagramme: TChart
        Left = 624
        Top = 528
        Width = 1225
        Height = 617
        BackWall.Brush.Color = clWhite
        Title.Text.Strings = (
          'Titre Diagrame')
        LeftAxis.Grid.Visible = False
        LeftAxis.Title.Caption = 'Montant'
        LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
        LeftAxis.Title.Font.Color = clBlack
        LeftAxis.Title.Font.Height = -11
        LeftAxis.Title.Font.Name = 'Arial'
        LeftAxis.Title.Font.Style = [fsBold]
        Legend.LegendStyle = lsValues
        Legend.TextStyle = ltsRightPercent
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        TabOrder = 2
        Visible = False
        object BitBtn90: TBitBtn
          Left = 1136
          Top = 472
          Width = 75
          Height = 25
          Caption = 'Print'
          TabOrder = 0
          Kind = bkHelp
        end
        object BitBtn8: TBitBtn
          Left = 1112
          Top = 8
          Width = 99
          Height = 25
          TabOrder = 1
          OnClick = BitBtn8Click
          Kind = bkCancel
        end
        object Series1: TBarSeries
          ColorEachPoint = True
          Marks.ArrowLength = 20
          Marks.Style = smsPercent
          Marks.Visible = True
          SeriesColor = clRed
          XValues.DateTime = False
          XValues.Name = 'X '
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Histo. '
          YValues.Multiplier = 1
          YValues.Order = loNone
        end
      end
      object AfficheDetaildesArticlesArchive: TPanel
        Left = 1040
        Top = 336
        Width = 577
        Height = 313
        BevelInner = bvLowered
        TabOrder = 3
        Visible = False
        object Bevel19: TBevel
          Left = 376
          Top = 8
          Width = 25
          Height = 25
        end
        object Bevel20: TBevel
          Left = 136
          Top = 8
          Width = 153
          Height = 25
        end
        object BitBtn19: TBitBtn
          Left = 296
          Top = 8
          Width = 75
          Height = 25
          TabOrder = 0
          OnClick = BitBtn19Click
          Kind = bkCancel
        end
        object TableauDetailArticlePrelevementArchive: TStringGrid
          Left = 8
          Top = 40
          Width = 561
          Height = 265
          Ctl3D = False
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
          ParentCtl3D = False
          TabOrder = 1
          OnDblClick = TableauDetailArticlePrelevementArchiveDblClick
          OnDrawCell = TableauDetailArticlePrelevementArchiveDrawCell
          OnKeyDown = TableauDetailArticlePrelevementArchiveKeyDown
          OnKeyPress = TableauDetailArticlePrelevementArchiveKeyPress
          OnKeyUp = TableauDetailArticlePrelevementArchiveKeyUp
        end
        object BitBtn20: TBitBtn
          Left = 408
          Top = 8
          Width = 163
          Height = 25
          Caption = 'Valider'
          TabOrder = 2
          OnClick = BitBtn20Click
          Kind = bkAll
        end
        object EditMontantRestantArchive: TEdit
          Left = 8
          Top = 11
          Width = 121
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
      end
      object EditNbrListeNumPrelevementUFNew: TEdit
        Left = 64
        Top = 536
        Width = 49
        Height = 19
        Color = clSilver
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 5
      end
      object EditNbrListeNumPrelevementUFAdd: TEdit
        Left = 64
        Top = 560
        Width = 49
        Height = 19
        Color = clSilver
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 6
      end
      object RNCummulerMemeUniteFonds: TCheckBox
        Left = 120
        Top = 562
        Width = 209
        Height = 17
        Caption = 'Cummuler les m'#234'me  untit'#233's de fonds !'
        Checked = True
        State = cbChecked
        TabOrder = 7
        OnClick = RNCummulerMemeUniteFondsClick
      end
    end
    object TabSheet1: TTabSheet
      Caption = '   D'#233'tail Par Articles et Equipe   '
      ImageIndex = 2
      OnShow = TabSheet1Show
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1225
        Height = 353
        BevelInner = bvLowered
        Color = 8454143
        TabOrder = 0
        object TableauTitreDetailArticle: TStringGrid
          Left = 8
          Top = 8
          Width = 761
          Height = 33
          ColCount = 1
          Ctl3D = False
          DefaultColWidth = 590
          FixedCols = 0
          RowCount = 1
          FixedRows = 0
          ParentCtl3D = False
          TabOrder = 1
          ColWidths = (
            604)
        end
        object Panel3: TPanel
          Left = 8
          Top = 8
          Width = 1209
          Height = 33
          BevelInner = bvLowered
          Caption = 'D'#233'tail Articles'
          Color = 8454143
          TabOrder = 0
          object BitBtn21: TBitBtn
            Left = 8
            Top = 4
            Width = 241
            Height = 25
            Caption = 'Mise '#224' jour d'#233'tail stock divers tiers'
            TabOrder = 0
            OnClick = BitBtn21Click
            Kind = bkHelp
          end
        end
        object PageControl2: TPageControl
          Left = 8
          Top = 48
          Width = 1209
          Height = 297
          ActivePage = TabSheet3
          TabIndex = 0
          TabOrder = 2
          object TabSheet3: TTabSheet
            Caption = '     Aricle     '
            object Label15: TLabel
              Left = 984
              Top = 251
              Width = 75
              Height = 13
              Caption = 'Montant Global:'
            end
            object Label35: TLabel
              Left = 8
              Top = 248
              Width = 46
              Height = 13
              Caption = 'Structure:'
            end
            object TableauDetailArticle: TStringGrid
              Left = 0
              Top = 4
              Width = 1201
              Height = 237
              ColCount = 10
              Ctl3D = False
              DefaultColWidth = 30
              DefaultRowHeight = 20
              FixedColor = 8454143
              RowCount = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              OnClick = TableauDetailArticleClick
              OnDrawCell = TableauDetailArticleDrawCell
              OnKeyPress = TableauDetailArticleKeyPress
              ColWidths = (
                30
                30
                30
                30
                30
                30
                30
                30
                30
                30)
            end
            object EditMontantArticle: TMemo
              Left = 1064
              Top = 244
              Width = 137
              Height = 25
              Alignment = taRightJustify
              Color = clYellow
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
            end
            object EditNumStructure: TEdit
              Left = 56
              Top = 244
              Width = 121
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 2
            end
            object EditStructure: TEdit
              Left = 176
              Top = 244
              Width = 273
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 3
            end
            object AfficheOptionTableauDetailArticle: TPanel
              Left = 328
              Top = 24
              Width = 497
              Height = 193
              BevelInner = bvLowered
              TabOrder = 4
              Visible = False
              object Bevel41: TBevel
                Left = 8
                Top = 56
                Width = 481
                Height = 129
              end
              object Bevel40: TBevel
                Left = 8
                Top = 8
                Width = 481
                Height = 41
              end
              object Label62: TLabel
                Left = 16
                Top = 91
                Width = 53
                Height = 13
                Caption = 'Qte.Initiale:'
              end
              object Label64: TLabel
                Left = 16
                Top = 115
                Width = 59
                Height = 13
                Caption = 'Qte.Entr'#233'es:'
              end
              object Label65: TLabel
                Left = 16
                Top = 139
                Width = 55
                Height = 13
                Caption = 'Qte.Sorties:'
              end
              object Label67: TLabel
                Left = 16
                Top = 163
                Width = 51
                Height = 13
                Caption = 'Qte.Stock:'
              end
              object Label68: TLabel
                Left = 16
                Top = 67
                Width = 32
                Height = 13
                Caption = 'Article:'
              end
              object Bevel42: TBevel
                Left = 224
                Top = 88
                Width = 257
                Height = 89
              end
              object BitBtn23: TBitBtn
                Left = 408
                Top = 16
                Width = 75
                Height = 25
                TabOrder = 0
                OnClick = BitBtn23Click
                Kind = bkCancel
              end
              object BitBtn25: TBitBtn
                Left = 232
                Top = 96
                Width = 241
                Height = 73
                Caption = 'Valider'
                TabOrder = 1
                OnClick = BitBtn25Click
                Kind = bkAll
              end
              object EditQteInitialeDetailArticle: TEdit
                Left = 96
                Top = 88
                Width = 121
                Height = 19
                Ctl3D = False
                ParentCtl3D = False
                TabOrder = 2
                OnKeyUp = EditQteInitialeDetailArticleKeyUp
              end
              object EditQteEntreeDetailArticle: TEdit
                Left = 96
                Top = 112
                Width = 121
                Height = 19
                Color = clSilver
                Ctl3D = False
                ParentCtl3D = False
                ReadOnly = True
                TabOrder = 3
              end
              object EditQteSortieDetailArticle: TEdit
                Left = 96
                Top = 136
                Width = 121
                Height = 19
                Color = clSilver
                Ctl3D = False
                ParentCtl3D = False
                ReadOnly = True
                TabOrder = 4
              end
              object EditStockDetailArticle: TEdit
                Left = 96
                Top = 160
                Width = 121
                Height = 19
                Color = clSilver
                Ctl3D = False
                ParentCtl3D = False
                ReadOnly = True
                TabOrder = 5
              end
              object EditDesignationDetailArticle: TEdit
                Left = 216
                Top = 64
                Width = 265
                Height = 19
                Color = clSilver
                Ctl3D = False
                ParentCtl3D = False
                ReadOnly = True
                TabOrder = 6
              end
              object EditCodeDetailArticle: TEdit
                Left = 96
                Top = 64
                Width = 121
                Height = 19
                Color = clSilver
                Ctl3D = False
                ParentCtl3D = False
                ReadOnly = True
                TabOrder = 7
              end
            end
          end
          object TabSheet4: TTabSheet
            Caption = '     Arborescence     '
            ImageIndex = 1
            object Bevel15: TBevel
              Left = 928
              Top = 0
              Width = 273
              Height = 65
            end
            object Label31: TLabel
              Left = 944
              Top = 11
              Width = 123
              Height = 13
              Caption = 'Choisir le type d'#39'affichage:'
            end
            object Label32: TLabel
              Left = 1016
              Top = 35
              Width = 49
              Height = 13
              Caption = 'Extension:'
            end
            object TableauTitreArborescenceArticle: TStringGrid
              Left = 8
              Top = 8
              Width = 761
              Height = 33
              ColCount = 1
              Ctl3D = False
              DefaultColWidth = 590
              FixedCols = 0
              RowCount = 1
              FixedRows = 0
              ParentCtl3D = False
              TabOrder = 3
              ColWidths = (
                604)
            end
            object EditExtentionFichier: TComboBox
              Left = 1069
              Top = 32
              Width = 105
              Height = 21
              BevelInner = bvNone
              BevelKind = bkFlat
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 0
              Text = 'PlanComptable'
              OnKeyPress = EditExtentionFichierKeyPress
              OnSelect = EditExtentionFichierSelect
              Items.Strings = (
                'PlanComptable'
                'Marche')
            end
            object EditChoisAffichage: TComboBox
              Left = 1069
              Top = 8
              Width = 124
              Height = 21
              BevelInner = bvNone
              BevelKind = bkFlat
              ItemHeight = 13
              ItemIndex = 5
              TabOrder = 1
              Text = 'SousFamille'
              OnKeyPress = EditChoisAffichageKeyPress
              OnSelect = EditChoisAffichageSelect
              Items.Strings = (
                'Classe'
                'SousClasse'
                'Categorie'
                'SousCategorie'
                'Famille'
                'SousFamille')
            end
            object TableauArborescenceArticle: TStringGrid
              Left = 0
              Top = 0
              Width = 921
              Height = 265
              Ctl3D = False
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
              ParentCtl3D = False
              TabOrder = 2
              OnDrawCell = TableauArborescenceArticleDrawCell
            end
          end
          object TabSheet5: TTabSheet
            Caption = '     Etat Stock Pr'#233'l'#232'vement     '
            ImageIndex = 2
            object Label36: TLabel
              Left = 8
              Top = 8
              Width = 90
              Height = 13
              Caption = 'Calcule de valeurs:'
            end
            object TableauEtatStockPrelevement: TStringGrid
              Left = 0
              Top = 32
              Width = 1201
              Height = 233
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 0
              OnDrawCell = TableauEtatStockPrelevementDrawCell
            end
            object EditCalculeValeur: TComboBox
              Left = 106
              Top = 5
              Width = 145
              Height = 21
              BevelInner = bvNone
              BevelKind = bkFlat
              Ctl3D = False
              ItemHeight = 13
              ItemIndex = 0
              ParentCtl3D = False
              TabOrder = 1
              Text = 'Valeur par d'#233'faut'
              OnChange = EditCalculeValeurChange
              OnKeyPress = EditCalculeValeurKeyPress
              Items.Strings = (
                'Valeur par d'#233'faut'
                'Valeur prix de vente'
                'Valeur co'#251't d'#39'achat')
            end
            object BitBtn9: TBitBtn
              Left = 336
              Top = 3
              Width = 241
              Height = 25
              Caption = 'Mise '#224' jour  '#233'tat du stock pr'#233'l'#232'vement'
              TabOrder = 2
              OnClick = BitBtn9Click
              Kind = bkHelp
            end
          end
        end
      end
      object Panel16: TPanel
        Left = 2
        Top = 360
        Width = 777
        Height = 249
        BevelInner = bvLowered
        Color = 8454143
        TabOrder = 1
        object TableauTitreEquipe: TStringGrid
          Left = 16
          Top = 8
          Width = 345
          Height = 33
          ColCount = 1
          Ctl3D = False
          DefaultColWidth = 590
          FixedCols = 0
          RowCount = 1
          FixedRows = 0
          ParentCtl3D = False
          TabOrder = 4
          ColWidths = (
            604)
        end
        object TableauEquipe: TStringGrid
          Left = 8
          Top = 128
          Width = 761
          Height = 113
          ColCount = 7
          Ctl3D = False
          DefaultColWidth = 30
          DefaultRowHeight = 30
          FixedColor = 8454143
          RowCount = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
        end
        object TableauEffectifEquipe: TStringGrid
          Left = 8
          Top = 128
          Width = 761
          Height = 113
          ColCount = 9
          Ctl3D = False
          DefaultColWidth = 30
          DefaultRowHeight = 30
          FixedColor = 8454143
          RowCount = 3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          OnDrawCell = TableauEffectifEquipeDrawCell
        end
        object TableauTitreEffectifEquipe: TStringGrid
          Left = 16
          Top = 8
          Width = 345
          Height = 33
          ColCount = 1
          Ctl3D = False
          DefaultColWidth = 590
          FixedCols = 0
          RowCount = 1
          FixedRows = 0
          ParentCtl3D = False
          TabOrder = 2
          ColWidths = (
            604)
        end
        object TableauTitreUtilisateur: TStringGrid
          Left = 16
          Top = 8
          Width = 345
          Height = 33
          ColCount = 1
          Ctl3D = False
          DefaultColWidth = 590
          FixedCols = 0
          RowCount = 1
          FixedRows = 0
          ParentCtl3D = False
          TabOrder = 5
          ColWidths = (
            604)
        end
        object Panel17: TPanel
          Left = 8
          Top = 8
          Width = 761
          Height = 33
          BevelInner = bvLowered
          Caption = 'Equipe de pr'#233'l'#232'vement'
          Color = 8454143
          TabOrder = 0
        end
        object TableauUtilisateur: TStringGrid
          Left = 8
          Top = 48
          Width = 761
          Height = 73
          ColCount = 9
          Ctl3D = False
          DefaultColWidth = 30
          DefaultRowHeight = 30
          FixedColor = 8454143
          RowCount = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 6
          OnDrawCell = TableauUtilisateurDrawCell
          ColWidths = (
            30
            30
            30
            30
            30
            30
            30
            30
            30)
        end
      end
    end
    object PageRecapitulatif: TTabSheet
      Caption = '     R'#233'capitulatif     '
      ImageIndex = 4
      OnShow = PageRecapitulatifShow
      object Bevel32: TBevel
        Left = 1088
        Top = 8
        Width = 138
        Height = 42
      end
      object AfficheEcartsEtatsRecap: TPanel
        Left = 688
        Top = 4
        Width = 313
        Height = 237
        BevelInner = bvLowered
        Color = 16777145
        Enabled = False
        TabOrder = 7
        object AfficheDataCompteurRecap: TPanel
          Left = 8
          Top = 8
          Width = 297
          Height = 57
          Alignment = taLeftJustify
          BorderWidth = 10
          TabOrder = 0
          object Label58: TLabel
            Left = 178
            Top = 24
            Width = 28
            Height = 13
            Alignment = taRightJustify
            Caption = 'Ecart:'
          end
          object EditControleMontantCompteurTableauPrelevementCompteurRecap: TEdit
            Left = 80
            Top = 6
            Width = 89
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
          end
          object EditControleMontantCompteurTableauDetailTiersRecap: TEdit
            Left = 80
            Top = 30
            Width = 89
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
          end
          object EditSoldeCompteurRecap: TMemo
            Left = 208
            Top = 13
            Width = 81
            Height = 33
            Alignment = taRightJustify
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object Panel18: TPanel
            Left = 8
            Top = 8
            Width = 65
            Height = 41
            BevelInner = bvLowered
            Caption = 'Compteur'
            TabOrder = 3
          end
        end
        object AfficheDataUnitesFondsRecap: TPanel
          Left = 8
          Top = 72
          Width = 297
          Height = 57
          Alignment = taLeftJustify
          BorderWidth = 10
          TabOrder = 1
          object Label59: TLabel
            Left = 178
            Top = 24
            Width = 28
            Height = 13
            Alignment = taRightJustify
            Caption = 'Ecart:'
          end
          object EditControleMontantUFTableauPrelevementUniteFondsRecap: TEdit
            Left = 80
            Top = 6
            Width = 89
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
          end
          object EditControleMontantUFTableauDetailTiersRecap: TEdit
            Left = 80
            Top = 30
            Width = 89
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
          end
          object EditSoldeUnitesFondsRecap: TMemo
            Left = 208
            Top = 13
            Width = 81
            Height = 33
            Alignment = taRightJustify
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object Panel24: TPanel
            Left = 8
            Top = 8
            Width = 65
            Height = 41
            BevelInner = bvLowered
            Caption = 'U.Fonds'
            TabOrder = 3
          end
        end
        object AfficheSoldeRecap: TPanel
          Left = 8
          Top = 136
          Width = 297
          Height = 57
          Alignment = taLeftJustify
          BorderWidth = 10
          Color = clLime
          TabOrder = 2
          object Label61: TLabel
            Left = 178
            Top = 24
            Width = 28
            Height = 13
            Alignment = taRightJustify
            Caption = 'Ecart:'
          end
          object EditControleSoldeTableauEffectifEquipeRecap: TEdit
            Left = 80
            Top = 6
            Width = 89
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
          end
          object EditControleSoldeAfficherPrelevementRecap: TEdit
            Left = 80
            Top = 30
            Width = 89
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
          end
          object EditSoldedesSoldesRecap: TMemo
            Left = 208
            Top = 13
            Width = 81
            Height = 33
            Alignment = taRightJustify
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object Panel25: TPanel
            Left = 8
            Top = 8
            Width = 65
            Height = 41
            BevelInner = bvLowered
            Caption = 'Eff'#233'ctifs'
            TabOrder = 3
          end
        end
        object Panel26: TPanel
          Left = 8
          Top = 200
          Width = 297
          Height = 25
          BevelInner = bvLowered
          TabOrder = 3
        end
      end
      object TableauTitreRecapitulatif: TStringGrid
        Left = 8
        Top = 40
        Width = 665
        Height = 33
        ColCount = 1
        Ctl3D = False
        DefaultColWidth = 590
        FixedCols = 0
        RowCount = 1
        FixedRows = 0
        ParentCtl3D = False
        TabOrder = 1
        ColWidths = (
          604)
      end
      object TableauRecapitulatif: TStringGrid
        Left = 8
        Top = 40
        Width = 673
        Height = 201
        Ctl3D = False
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
        ParentCtl3D = False
        TabOrder = 0
        OnDrawCell = TableauRecapitulatifDrawCell
      end
      object Panel20: TPanel
        Left = 8
        Top = 4
        Width = 673
        Height = 33
        BevelInner = bvLowered
        Caption = 'R'#233'capitulatif'
        Color = 8454143
        TabOrder = 2
      end
      object TableauListeDetailArticleUnitesFonds: TStringGrid
        Left = 8
        Top = 264
        Width = 1217
        Height = 345
        Ctl3D = False
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
        ParentCtl3D = False
        TabOrder = 3
        OnClick = TableauListeDetailArticleUnitesFondsClick
        OnContextPopup = TableauListeDetailArticleUnitesFondsContextPopup
        OnDblClick = TableauListeDetailArticleUnitesFondsDblClick
        OnDrawCell = TableauListeDetailArticleUnitesFondsDrawCell
        OnKeyPress = TableauListeDetailArticleUnitesFondsKeyPress
      end
      object AfficheOperationTableauListeDetailArticleUnitesFonds: TPanel
        Left = 304
        Top = 352
        Width = 585
        Height = 57
        BevelInner = bvLowered
        TabOrder = 4
        Visible = False
        object Bevel16: TBevel
          Left = 8
          Top = 8
          Width = 569
          Height = 41
        end
        object BitBtn18: TBitBtn
          Left = 16
          Top = 16
          Width = 75
          Height = 25
          TabOrder = 0
          OnClick = BitBtn18Click
          Kind = bkCancel
        end
        object BitOperationTableauListeDetailArticleUnitesFonds: TBitBtn
          Left = 456
          Top = 16
          Width = 115
          Height = 25
          TabOrder = 1
          OnClick = BitOperationTableauListeDetailArticleUnitesFondsClick
          Kind = bkAll
        end
      end
      object RBDetailArticleCumuleArticle: TCheckBox
        Left = 9
        Top = 245
        Width = 120
        Height = 17
        Caption = 'Cumuler par article !'
        TabOrder = 5
        OnClick = RBDetailArticleCumuleArticleClick
      end
      object BitBtn16: TBitBtn
        Left = 1096
        Top = 16
        Width = 123
        Height = 25
        Caption = 'Tableau Excel'
        TabOrder = 6
        OnClick = BitBtn16Click
        Kind = bkHelp
      end
      object RBIndiceRubriqueTriCol: TCheckBox
        Left = 152
        Top = 245
        Width = 201
        Height = 17
        Caption = 'Triers par la Rubrique s'#233'lectionner !'
        TabOrder = 8
      end
      object EditIndiceRubriqueTriCol: TEdit
        Left = 360
        Top = 243
        Width = 25
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
        Text = '2'
      end
      object EditTypeDataTrie: TEdit
        Left = 384
        Top = 243
        Width = 49
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 10
      end
      object EditTypeTrie: TComboBox
        Left = 432
        Top = 242
        Width = 41
        Height = 21
        BevelKind = bkFlat
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ItemIndex = 0
        ParentFont = False
        TabOrder = 11
        Text = '+'
        Items.Strings = (
          '+'
          '-')
      end
    end
    object TabSheet2: TTabSheet
      Caption = '   Impression des Etats   '
      ImageIndex = 3
      OnShow = TabSheet2Show
      object Bevel21: TBevel
        Left = 0
        Top = 376
        Width = 265
        Height = 57
      end
      object Label33: TLabel
        Left = 8
        Top = 384
        Width = 208
        Height = 13
        Caption = 'Nombre chiffres apr'#233's la vergule Compteurs:'
      end
      object Bevel22: TBevel
        Left = 0
        Top = 440
        Width = 265
        Height = 49
      end
      object Bevel23: TBevel
        Left = 8
        Top = 560
        Width = 233
        Height = 41
      end
      object EditTypeProces: TEdit
        Left = 8
        Top = 496
        Width = 257
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 49
      end
      object EditFichierConcerne: TEdit
        Left = 8
        Top = 520
        Width = 257
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 50
      end
      object RadioGroup3: TRadioGroup
        Left = 0
        Top = 8
        Width = 1225
        Height = 361
        Caption = 'Options d'#39'impression:'
        TabOrder = 0
      end
      object RBDetailCompteur: TCheckBox
        Left = 16
        Top = 40
        Width = 201
        Height = 17
        Caption = 'D'#233'tail des Compteurs.'
        TabOrder = 1
        OnClick = RBDetailCompteurClick
      end
      object RBDetailUniteFonds: TCheckBox
        Left = 16
        Top = 72
        Width = 201
        Height = 17
        Caption = 'D'#233'tail des Unit'#233's de Fonds.'
        TabOrder = 2
        OnClick = RBDetailUniteFondsClick
      end
      object RBDetailTypeUniteFonds: TCheckBox
        Left = 16
        Top = 136
        Width = 201
        Height = 17
        Caption = 'D'#233'tail par type d'#39'Unit'#233's de Fonds.'
        TabOrder = 3
        OnClick = RBDetailTypeUniteFondsClick
      end
      object RBDetailTiers: TCheckBox
        Left = 16
        Top = 168
        Width = 201
        Height = 17
        Caption = 'D'#233'tail par Tiers.'
        TabOrder = 4
        OnClick = RBDetailTiersClick
      end
      object RBDetailArticle: TCheckBox
        Left = 16
        Top = 200
        Width = 113
        Height = 17
        Caption = 'D'#233'tail par Articles.'
        TabOrder = 5
        OnClick = RBDetailArticleClick
      end
      object RadioGroup4: TRadioGroup
        Left = 408
        Top = 16
        Width = 185
        Height = 345
        Caption = 'Ajustement du Tableau '#224' l'#39'Etat:'
        TabOrder = 6
      end
      object RBAjusterDetailCompteur: TCheckBox
        Left = 416
        Top = 40
        Width = 169
        Height = 17
        Caption = 'Ajuster !'
        Checked = True
        State = cbChecked
        TabOrder = 7
      end
      object RBAjusterDetailUniteFonds: TCheckBox
        Left = 416
        Top = 72
        Width = 169
        Height = 17
        Caption = 'Ajuster !'
        Checked = True
        State = cbChecked
        TabOrder = 8
      end
      object RBAjusterDetailTypeUniteFonds: TCheckBox
        Left = 416
        Top = 136
        Width = 169
        Height = 17
        Caption = 'Ajuster !'
        Checked = True
        State = cbChecked
        TabOrder = 9
      end
      object RBAjusterDetailTiers: TCheckBox
        Left = 416
        Top = 168
        Width = 169
        Height = 17
        Caption = 'Ajuster !'
        Checked = True
        State = cbChecked
        TabOrder = 10
      end
      object RBAjusterDetailArticle: TCheckBox
        Left = 416
        Top = 200
        Width = 169
        Height = 17
        Caption = 'Ajuster !'
        Checked = True
        State = cbChecked
        TabOrder = 11
      end
      object RadioGroup5: TRadioGroup
        Left = 224
        Top = 16
        Width = 169
        Height = 345
        Caption = 'Ordre d'#39'Impression: (Classement)'
        TabOrder = 12
      end
      object ClasseDetailCompteur: TEdit
        Left = 232
        Top = 40
        Width = 33
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 13
      end
      object ClasseDetailUniteFonds: TEdit
        Left = 232
        Top = 72
        Width = 33
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 14
      end
      object ClasseDetailTypeUniteFonds: TEdit
        Left = 232
        Top = 136
        Width = 33
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 15
      end
      object ClasseDetailTiers: TEdit
        Left = 232
        Top = 168
        Width = 33
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 16
      end
      object ClasseDetailArticle: TEdit
        Left = 232
        Top = 200
        Width = 33
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 17
      end
      object AfficheImprimerEtat: TPanel
        Left = 1056
        Top = 24
        Width = 161
        Height = 305
        BevelWidth = 5
        TabOrder = 18
        object BitImprimeEtatPrelevement: TBitBtn
          Left = 16
          Top = 16
          Width = 129
          Height = 185
          Caption = 'Imprimer l'#39'Etat'
          TabOrder = 0
          OnClick = BitImprimeEtatPrelevementClick
          Kind = bkAll
        end
        object StaticText2: TStaticText
          Left = 16
          Top = 211
          Width = 105
          Height = 17
          Caption = 'Orientation du papier:'
          TabOrder = 1
        end
        object RBOrientationPapierPrelevement: TComboBox
          Left = 16
          Top = 232
          Width = 129
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          Ctl3D = False
          ItemHeight = 13
          ItemIndex = 0
          ParentCtl3D = False
          TabOrder = 2
          Text = 'Portrait'
          Items.Strings = (
            'Portrait'
            'Paysage')
        end
        object RBArchiveModifier: TCheckBox
          Left = 16
          Top = 280
          Width = 17
          Height = 17
          Enabled = False
          TabOrder = 3
        end
        object RBUnTableauParPage: TCheckBox
          Left = 16
          Top = 258
          Width = 129
          Height = 17
          Caption = 'Un Tableau par page'
          TabOrder = 4
        end
      end
      object RBDetailEquipe: TCheckBox
        Left = 16
        Top = 328
        Width = 97
        Height = 17
        Caption = 'D'#233'tail Equipe.'
        Checked = True
        Enabled = False
        State = cbChecked
        TabOrder = 19
      end
      object ClasseDetailEquipe: TEdit
        Left = 232
        Top = 328
        Width = 33
        Height = 19
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 20
        Text = '2'
      end
      object RBAjusterDetailEquipe: TCheckBox
        Left = 416
        Top = 328
        Width = 169
        Height = 17
        Caption = 'Ajuster !'
        Checked = True
        State = cbChecked
        TabOrder = 21
      end
      object RBDetailUtilisateur: TCheckBox
        Left = 16
        Top = 296
        Width = 97
        Height = 17
        Caption = 'D'#233'tail Utilisateur.'
        Checked = True
        Enabled = False
        State = cbChecked
        TabOrder = 22
      end
      object ClasseDetailUtilisateur: TEdit
        Left = 232
        Top = 296
        Width = 33
        Height = 19
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 23
        Text = '1'
      end
      object RBAjusterDetailUtilisateur: TCheckBox
        Left = 416
        Top = 296
        Width = 169
        Height = 17
        Caption = 'Ajuster !'
        Checked = True
        State = cbChecked
        TabOrder = 24
      end
      object RBNbrEquipeImprimer: TCheckBox
        Left = 112
        Top = 328
        Width = 97
        Height = 17
        Caption = 'Global.'
        TabOrder = 25
        OnClick = RBNbrEquipeImprimerClick
      end
      object RBDetailFondRoulement: TCheckBox
        Left = 16
        Top = 104
        Width = 169
        Height = 17
        Caption = 'D'#233'tail Fonds de Roulement.'
        TabOrder = 26
        OnClick = RBDetailFondRoulementClick
      end
      object ClasseDetailFondRoulement: TEdit
        Left = 232
        Top = 104
        Width = 33
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 27
      end
      object RBAjusterDetailFondRoulement: TCheckBox
        Left = 416
        Top = 104
        Width = 169
        Height = 17
        Caption = 'Ajuster !'
        Checked = True
        State = cbChecked
        TabOrder = 28
      end
      object RBDetailArborescenceArticle: TCheckBox
        Left = 16
        Top = 232
        Width = 185
        Height = 17
        Caption = 'Arborescence Article'
        TabOrder = 29
        OnClick = RBDetailArborescenceArticleClick
      end
      object ClasseDetailArborescenceArticle: TEdit
        Left = 232
        Top = 232
        Width = 33
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 30
      end
      object RBAjusterDetailArborescenceArticle: TCheckBox
        Left = 416
        Top = 232
        Width = 169
        Height = 17
        Caption = 'Ajuster !'
        Checked = True
        State = cbChecked
        TabOrder = 31
      end
      object RBDetailRecapitulatif: TCheckBox
        Left = 16
        Top = 264
        Width = 185
        Height = 17
        Caption = 'R'#233'capitulatif'
        TabOrder = 32
        OnClick = RBDetailRecapitulatifClick
      end
      object ClasseDetailRecapitulatif: TEdit
        Left = 232
        Top = 264
        Width = 33
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 33
      end
      object RBAjusterDetailRecapitulatif: TCheckBox
        Left = 416
        Top = 264
        Width = 169
        Height = 17
        Caption = 'Ajuster !'
        Checked = True
        State = cbChecked
        TabOrder = 34
      end
      object EditNbrChiffreApreVerguleCompteur: TEdit
        Left = 223
        Top = 381
        Width = 17
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 35
        Text = '2'
      end
      object UpDown1: TUpDown
        Left = 240
        Top = 381
        Width = 16
        Height = 19
        Associate = EditNbrChiffreApreVerguleCompteur
        Min = 2
        Max = 5
        Position = 2
        TabOrder = 36
        Wrap = False
        OnClick = UpDown1Click
      end
      object EditRechercheTiers: TEdit
        Left = 8
        Top = 408
        Width = 121
        Height = 19
        Color = clSilver
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 37
      end
      object RBAutoriseModificationUnitesFonds: TCheckBox
        Left = 8
        Top = 456
        Width = 249
        Height = 17
        Caption = 'Autoris'#233' la modification  Unit'#233's de Fonds'
        TabOrder = 38
        OnClick = RBAutoriseModificationUnitesFondsClick
      end
      object BitBtn14: TBitBtn
        Left = 16
        Top = 568
        Width = 217
        Height = 25
        Caption = 'Actualiser le co'#251't !'
        TabOrder = 39
        Kind = bkHelp
      end
      object RBDetailArticleSimple: TCheckBox
        Left = 160
        Top = 200
        Width = 57
        Height = 17
        Caption = 'Simple'
        Checked = True
        State = cbChecked
        TabOrder = 40
      end
      object RBEmargementPageSepare: TCheckBox
        Left = 280
        Top = 312
        Width = 97
        Height = 17
        Caption = 'Page S'#233'par'#233' !'
        TabOrder = 41
        OnClick = RBEmargementPageSepareClick
      end
      object RBChargerPointeur: TCheckBox
        Left = 8
        Top = 540
        Width = 161
        Height = 17
        Caption = 'Chargement des pointeurs'
        Checked = True
        State = cbChecked
        TabOrder = 42
        Visible = False
      end
      object TableauEffectifEquipeArchivage: TStringGrid
        Left = 280
        Top = 440
        Width = 945
        Height = 169
        Ctl3D = False
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
        ParentCtl3D = False
        TabOrder = 43
      end
      object AfficheDataCompteur: TPanel
        Left = 600
        Top = 32
        Width = 449
        Height = 57
        Alignment = taLeftJustify
        BorderWidth = 10
        TabOrder = 44
        object Label39: TLabel
          Left = 36
          Top = 8
          Width = 90
          Height = 13
          Alignment = taRightJustify
          Caption = 'Calcule compteurs:'
        end
        object Label40: TLabel
          Left = 62
          Top = 32
          Width = 64
          Height = 13
          Alignment = taRightJustify
          Caption = 'Calcule Tiers:'
        end
        object Label48: TLabel
          Left = 288
          Top = 24
          Width = 30
          Height = 13
          Alignment = taRightJustify
          Caption = 'Solde:'
        end
        object EditControleMontantCompteurTableauPrelevementCompteur: TEdit
          Left = 136
          Top = 6
          Width = 137
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
        object EditControleMontantCompteurTableauDetailTiers: TEdit
          Left = 136
          Top = 30
          Width = 137
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object EditSoldeCompteur: TMemo
          Left = 328
          Top = 13
          Width = 113
          Height = 33
          Alignment = taRightJustify
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
      end
      object AfficheDataUnitesFonds: TPanel
        Left = 600
        Top = 96
        Width = 449
        Height = 57
        Alignment = taLeftJustify
        BorderWidth = 10
        TabOrder = 45
        object Label41: TLabel
          Left = 8
          Top = 8
          Width = 118
          Height = 13
          Alignment = taRightJustify
          Caption = 'Calcule Unit'#233's de Fonds:'
        end
        object Label42: TLabel
          Left = 62
          Top = 32
          Width = 64
          Height = 13
          Alignment = taRightJustify
          Caption = 'Calcule Tires:'
        end
        object Label51: TLabel
          Left = 288
          Top = 24
          Width = 30
          Height = 13
          Alignment = taRightJustify
          Caption = 'Solde:'
        end
        object EditControleMontantUFTableauPrelevementUniteFonds: TEdit
          Left = 136
          Top = 6
          Width = 137
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
        object EditControleMontantUFTableauDetailTiers: TEdit
          Left = 136
          Top = 30
          Width = 137
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object EditSoldeUnitesFonds: TMemo
          Left = 328
          Top = 13
          Width = 113
          Height = 33
          Alignment = taRightJustify
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
      end
      object AfficheSolde: TPanel
        Left = 600
        Top = 160
        Width = 449
        Height = 57
        Alignment = taLeftJustify
        BorderWidth = 10
        Color = clLime
        TabOrder = 46
        object Label43: TLabel
          Left = 47
          Top = 8
          Width = 79
          Height = 13
          Alignment = taRightJustify
          Caption = 'Calcule Eff'#233'ctifs:'
        end
        object Label44: TLabel
          Left = 55
          Top = 32
          Width = 71
          Height = 13
          Alignment = taRightJustify
          Caption = 'Calcule Global:'
        end
        object Label52: TLabel
          Left = 288
          Top = 24
          Width = 30
          Height = 13
          Alignment = taRightJustify
          Caption = 'Solde:'
        end
        object EditControleSoldeTableauEffectifEquipe: TEdit
          Left = 136
          Top = 6
          Width = 137
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
        object EditControleSoldeAfficherPrelevement: TEdit
          Left = 136
          Top = 30
          Width = 137
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object EditSoldedesSoldes: TMemo
          Left = 328
          Top = 13
          Width = 113
          Height = 33
          Alignment = taRightJustify
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
      end
      object AfficheValiderEcart: TPanel
        Left = 600
        Top = 224
        Width = 449
        Height = 41
        Alignment = taLeftJustify
        BorderWidth = 10
        Caption = 'Ecart de donn'#233'es autoris'#233' !'
        TabOrder = 47
        object EditEcartAutorise: TEdit
          Left = 408
          Top = 8
          Width = 33
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          Text = '5'
        end
        object BitValiderEcart: TBitBtn
          Left = 200
          Top = 8
          Width = 185
          Height = 25
          Caption = 'Valider ! (l'#39#39'Ecart est justifier) '
          TabOrder = 1
          OnClick = BitValiderEcartClick
          Kind = bkHelp
        end
      end
      object AffichePatienterSVP: TPanel
        Left = 176
        Top = 248
        Width = 449
        Height = 305
        BevelWidth = 5
        Caption = 'Patientez SVP !'
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 48
      end
      object RBControlerPrelevementAChaqueOperation: TCheckBox
        Left = 968
        Top = 376
        Width = 241
        Height = 17
        Caption = 'Contr'#244'ler le pr'#233'l'#232'vement  '#224' chaque op'#233'ration !'
        TabOrder = 51
      end
      object OKEffectifEquipe: TCheckBox
        Left = 632
        Top = 280
        Width = 153
        Height = 17
        Caption = 'OKEffectifEquipe'
        Checked = True
        State = cbChecked
        TabOrder = 52
      end
      object OKAffectationEffectifEquipe: TCheckBox
        Left = 632
        Top = 296
        Width = 161
        Height = 17
        Caption = 'OKAffectationEffectifEquipe'
        Checked = True
        State = cbChecked
        TabOrder = 53
      end
      object OKPrelevementUniteFonds: TCheckBox
        Left = 632
        Top = 312
        Width = 161
        Height = 17
        Caption = 'OKPrelevementUniteFonds'
        Checked = True
        State = cbChecked
        TabOrder = 54
      end
      object OKDetailArticle: TCheckBox
        Left = 632
        Top = 328
        Width = 161
        Height = 17
        Caption = 'OKDetailArticle'
        Checked = True
        State = cbChecked
        TabOrder = 55
      end
      object OKArborescenceArticle: TCheckBox
        Left = 632
        Top = 344
        Width = 161
        Height = 17
        Caption = 'OKArborescenceArticle'
        Checked = True
        State = cbChecked
        TabOrder = 56
      end
      object OKDetailTypeUniteFonds: TCheckBox
        Left = 808
        Top = 280
        Width = 153
        Height = 17
        Caption = 'OKDetailTypeUniteFonds'
        Checked = True
        State = cbChecked
        TabOrder = 57
      end
      object OKDetailTiers: TCheckBox
        Left = 808
        Top = 296
        Width = 161
        Height = 17
        Caption = 'OKDetailTiers'
        Checked = True
        State = cbChecked
        TabOrder = 58
      end
      object OKEtatStockPrelevement: TCheckBox
        Left = 808
        Top = 312
        Width = 161
        Height = 17
        Caption = 'OKEtatStockPrelevement'
        Checked = True
        State = cbChecked
        TabOrder = 59
      end
      object OKRecapitulatif: TCheckBox
        Left = 808
        Top = 328
        Width = 169
        Height = 17
        Caption = 'OKRecapitulatif'
        Checked = True
        State = cbChecked
        TabOrder = 60
      end
      object RBControlerSoldeAChaqueOperation: TCheckBox
        Left = 968
        Top = 392
        Width = 241
        Height = 17
        Caption = 'Contr'#244'ler le Solde '#224' chaque op'#233'ration !'
        Checked = True
        State = cbChecked
        TabOrder = 61
      end
    end
  end
  object AfficheDetailCompteurs: TPanel
    Left = 1144
    Top = 504
    Width = 697
    Height = 449
    BevelInner = bvLowered
    Color = clBlack
    TabOrder = 1
    Visible = False
    object TableauDetailCompteurs: TStringGrid
      Left = 8
      Top = 40
      Width = 681
      Height = 401
      ColCount = 9
      Ctl3D = False
      RowCount = 2
      ParentCtl3D = False
      TabOrder = 0
      OnDrawCell = TableauDetailCompteursDrawCell
    end
    object BitBtn4: TBitBtn
      Left = 616
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
      OnClick = BitBtn4Click
      Kind = bkCancel
    end
    object BitBtn10: TBitBtn
      Left = 8
      Top = 8
      Width = 185
      Height = 25
      Caption = 'Imprimer'
      TabOrder = 2
      OnClick = BitBtn10Click
      Kind = bkAll
    end
  end
  object AfficheTravauxPrelevementAchever: TPanel
    Left = 1141
    Top = 553
    Width = 1233
    Height = 620
    Color = 3784955
    TabOrder = 2
    Visible = False
    object Bevel33: TBevel
      Left = 8
      Top = 224
      Width = 193
      Height = 89
    end
    object Bevel34: TBevel
      Left = 367
      Top = 224
      Width = 482
      Height = 89
    end
    object Bevel36: TBevel
      Left = 1040
      Top = 224
      Width = 178
      Height = 89
    end
    object EditSourceCommande: TEdit
      Left = 48
      Top = 264
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 6
    end
    object BitPrint: TBitBtn
      Left = 376
      Top = 232
      Width = 465
      Height = 73
      Caption = 'Travaux de pr'#233'l'#232'vement achev'#233's ! "Print"'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitPrintClick
      Kind = bkAll
    end
    object BitSave: TBitBtn
      Left = 376
      Top = 232
      Width = 465
      Height = 73
      Caption = 'Travaux de pr'#233'l'#232'vement achev'#233's ! "Save"'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitSaveClick
      Kind = bkAll
    end
    object TableauControleAttributionArticleAuxUnitesFonds: TStringGrid
      Left = 8
      Top = 8
      Width = 1217
      Height = 161
      Ctl3D = False
      FixedColor = 3784955
      ParentCtl3D = False
      TabOrder = 2
      Visible = False
      OnDblClick = TableauControleAttributionArticleAuxUnitesFondsDblClick
      OnDrawCell = TableauControleAttributionArticleAuxUnitesFondsDrawCell
    end
    object BitBtn1: TBitBtn
      Left = 16
      Top = 232
      Width = 177
      Height = 73
      Caption = 'Ignorer le contr'#244'le !'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn1Click
      Kind = bkOK
    end
    object BitChargementEffectif: TBitBtn
      Left = 376
      Top = 232
      Width = 465
      Height = 73
      Caption = 'Travaux de pr'#233'l'#232'vement achev'#233's ! "Charger un '#233'ffectif"'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BitChargementEffectifClick
      Kind = bkAll
    end
    object BitBtn22: TBitBtn
      Left = 1048
      Top = 232
      Width = 163
      Height = 73
      Caption = 'Annuler'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn22Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  object AfficheAttenteAffichePrelevement: TPanel
    Left = 6
    Top = 316
    Width = 1225
    Height = 20
    Color = 4194304
    TabOrder = 3
    Visible = False
    OnEnter = AfficheAttenteAffichePrelevementEnter
    OnExit = AfficheAttenteAffichePrelevementExit
    object PourcentageAttenteAffichePrelevement: TLabel
      Left = 1160
      Top = 1
      Width = 30
      Height = 16
      Alignment = taRightJustify
      Caption = '..........'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object EditAttenteAffichePrelevement: TEdit
      Left = 144
      Top = 46
      Width = 9
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object ProgressAttenteAffichePrelevement: TProgressBar
      Left = 6
      Top = 5
      Width = 1131
      Height = 10
      Min = 0
      Max = 100
      Smooth = True
      Step = 1
      TabOrder = 0
    end
  end
  object TimerSoldePrelevement: TTimer
    Interval = 200
    OnTimer = TimerSoldePrelevementTimer
    Left = 304
    Top = 32
  end
  object ChoisirFont: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Device = fdPrinter
    MinFontSize = 0
    MaxFontSize = 0
    Left = 344
    Top = 32
  end
  object TimerLancerAfficheTiers: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerLancerAfficheTiersTimer
    Left = 912
    Top = 16
  end
  object TimerAfficheTiers: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerAfficheTiersTimer
    Left = 872
    Top = 16
  end
  object TimerArchivePrelevement: TTimer
    Enabled = False
    Interval = 150
    OnTimer = TimerArchivePrelevementTimer
    Left = 992
    Top = 32
  end
  object TimerProgressAttenteAffichePrelevement: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerProgressAttenteAffichePrelevementTimer
    Left = 784
    Top = 56
  end
end
