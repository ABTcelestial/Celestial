object FSFormuleComposition: TFSFormuleComposition
  Left = 156
  Top = 60
  Width = 953
  Height = 584
  Caption = 'Formules de Composition'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PagePrincipale: TPageControl
    Left = 8
    Top = 8
    Width = 929
    Height = 537
    ActivePage = PageFormulesCompositions
    TabIndex = 0
    TabOrder = 0
    object PageFormulesCompositions: TTabSheet
      Caption = '     Formules de compositions     '
      object AfficheFormule: TPanel
        Left = 0
        Top = 4
        Width = 913
        Height = 497
        BevelInner = bvLowered
        TabOrder = 0
        object CadreBouton: TBevel
          Left = 8
          Top = 64
          Width = 753
          Height = 41
        end
        object Bevel3: TBevel
          Left = 768
          Top = 8
          Width = 137
          Height = 81
        end
        object Bevel6: TBevel
          Left = 768
          Top = 96
          Width = 137
          Height = 41
        end
        object Bevel7: TBevel
          Left = 768
          Top = 144
          Width = 137
          Height = 49
        end
        object EditCodeTrancateFormuleComposition: TEdit
          Left = 800
          Top = 152
          Width = 81
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 13
          OnKeyUp = EditCodeTrancateFormuleCompositionKeyUp
        end
        object AfficheInfoArticle: TPanel
          Left = 8
          Top = 8
          Width = 753
          Height = 49
          BevelInner = bvLowered
          TabOrder = 1
          object Bevel13: TBevel
            Left = 8
            Top = 8
            Width = 737
            Height = 33
          end
          object Label44: TLabel
            Left = 14
            Top = 18
            Width = 64
            Height = 13
            Alignment = taRightJustify
            Caption = 'Code Produit:'
          end
          object Label45: TLabel
            Left = 274
            Top = 18
            Width = 36
            Height = 13
            Alignment = taRightJustify
            Caption = 'D'#233'sign:'
          end
          object Label46: TLabel
            Left = 687
            Top = 19
            Width = 23
            Height = 13
            Alignment = taRightJustify
            Caption = 'U.M:'
          end
          object EditFCodeProd: TEdit
            Left = 80
            Top = 16
            Width = 185
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
          end
          object EditFDesignProd: TEdit
            Left = 312
            Top = 16
            Width = 345
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
          end
          object EditFUMProd: TEdit
            Left = 712
            Top = 16
            Width = 25
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 2
          end
        end
        object TableauFormuleComposition: TStringGrid
          Left = 8
          Top = 112
          Width = 753
          Height = 377
          ColCount = 11
          Ctl3D = False
          DefaultColWidth = 40
          DefaultRowHeight = 20
          RowCount = 18
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
          ParentCtl3D = False
          TabOrder = 0
          OnClick = TableauFormuleCompositionClick
          OnContextPopup = TableauFormuleCompositionContextPopup
          OnKeyDown = TableauFormuleCompositionKeyDown
          OnKeyPress = TableauFormuleCompositionKeyPress
          ColWidths = (
            40
            2
            2
            2
            50
            51
            2
            80
            355
            49
            96)
          RowHeights = (
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20)
        end
        object AfficheOptionsFormule: TControlBar
          Left = 80
          Top = 160
          Width = 137
          Height = 153
          Color = clWhite
          ParentColor = False
          TabOrder = 2
          Visible = False
          OnClick = AfficheOptionsFormuleClick
          object StaticText8: TStaticText
            Left = 11
            Top = 2
            Width = 120
            Height = 22
            Caption = 'Nouvelle formule             '
            TabOrder = 0
            OnClick = StaticText8Click
            OnMouseMove = StaticText8MouseMove
          end
          object StaticText9: TStaticText
            Left = 11
            Top = 28
            Width = 120
            Height = 22
            Caption = 'Modifier la formule           '
            TabOrder = 1
            OnClick = StaticText9Click
            OnMouseMove = StaticText9MouseMove
          end
          object StaticText10: TStaticText
            Left = 11
            Top = 54
            Width = 120
            Height = 22
            Caption = 'Supprimer la formule       '
            TabOrder = 2
            OnClick = StaticText10Click
            OnMouseMove = StaticText10MouseMove
          end
          object StaticText11: TStaticText
            Left = 11
            Top = 80
            Width = 120
            Height = 22
            Caption = '                                       '
            TabOrder = 3
            OnClick = StaticText11Click
          end
          object StaticText12: TStaticText
            Left = 11
            Top = 106
            Width = 120
            Height = 22
            Caption = '                                       '
            TabOrder = 4
            OnClick = StaticText12Click
          end
        end
        object BitBtn11: TBitBtn
          Left = 16
          Top = 72
          Width = 137
          Height = 25
          Caption = 'Nouvelle formule'
          ModalResult = 1
          TabOrder = 3
          OnClick = BitBtn11Click
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333330000333333333333333333333333F33333333333
            00003333344333333333333333388F3333333333000033334224333333333333
            338338F3333333330000333422224333333333333833338F3333333300003342
            222224333333333383333338F3333333000034222A22224333333338F338F333
            8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
            33333338F83338F338F33333000033A33333A222433333338333338F338F3333
            0000333333333A222433333333333338F338F33300003333333333A222433333
            333333338F338F33000033333333333A222433333333333338F338F300003333
            33333333A222433333333333338F338F00003333333333333A22433333333333
            3338F38F000033333333333333A223333333333333338F830000333333333333
            333A333333333333333338330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
        end
        object BitBtn10: TBitBtn
          Left = 632
          Top = 72
          Width = 121
          Height = 25
          Caption = 'Terminer'
          TabOrder = 4
          OnClick = BitBtn10Click
          Kind = bkCancel
        end
        object BitBtn12: TBitBtn
          Left = 168
          Top = 72
          Width = 145
          Height = 25
          Caption = 'Lui m'#234'me'
          TabOrder = 5
          OnClick = BitBtn12Click
          Kind = bkHelp
        end
        object EditListeComptesRechrcher: TEdit
          Left = 776
          Top = 106
          Width = 121
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 6
          Text = '31;6'
        end
        object BitTruncateFormuleComposition: TBitBtn
          Left = 776
          Top = 152
          Width = 121
          Height = 33
          Caption = 'Effacer les donn'#233'es'
          TabOrder = 7
          OnClick = BitTruncateFormuleCompositionClick
          Kind = bkRetry
        end
        object AfficheSFamilleMatFormule: TPanel
          Left = 144
          Top = 234
          Width = 505
          Height = 479
          BevelInner = bvLowered
          Color = 16777088
          TabOrder = 8
          Visible = False
          object Label1: TLabel
            Left = 317
            Top = 14
            Width = 52
            Height = 13
            Caption = 'Type PCN:'
          end
          object Bevel2: TBevel
            Left = 288
            Top = 8
            Width = 137
            Height = 25
          end
          object BitFermerAfficheSFamilleMatFormule: TBitBtn
            Left = 472
            Top = 6
            Width = 25
            Height = 25
            Caption = '.'
            ModalResult = 2
            TabOrder = 0
            OnClick = BitFermerAfficheSFamilleMatFormuleClick
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
            Margin = 0
            NumGlyphs = 2
          end
          object TableauMatFormule: TStringGrid
            Left = 8
            Top = 247
            Width = 489
            Height = 226
            ColCount = 17
            Ctl3D = False
            DefaultColWidth = 40
            DefaultRowHeight = 20
            RowCount = 15
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
            ParentCtl3D = False
            TabOrder = 1
            OnKeyDown = TableauMatFormuleKeyDown
            ColWidths = (
              40
              67
              281
              69
              26
              62
              60
              58
              58
              55
              54
              60
              2
              2
              2
              2
              2)
          end
          object Panel2: TPanel
            Left = 8
            Top = 8
            Width = 273
            Height = 25
            BevelInner = bvLowered
            Caption = 'Liste des S/Familles des Mati'#232'res.'
            Color = clCream
            TabOrder = 2
          end
          object Panel3: TPanel
            Left = 8
            Top = 216
            Width = 489
            Height = 25
            BevelInner = bvLowered
            Caption = 'Liste des Mati'#232'res.'
            Color = clCream
            TabOrder = 3
          end
          object TableauSFamilleMatFormule: TStringGrid
            Left = 8
            Top = 37
            Width = 489
            Height = 172
            Ctl3D = False
            DefaultColWidth = 40
            DefaultRowHeight = 20
            RowCount = 10
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
            ParentCtl3D = False
            TabOrder = 4
            OnClick = TableauSFamilleMatFormuleClick
            OnEnter = TableauSFamilleMatFormuleEnter
            OnKeyDown = TableauSFamilleMatFormuleKeyDown
            ColWidths = (
              40
              69
              351
              2
              2)
            RowHeights = (
              20
              20
              20
              20
              20
              20
              20
              20
              20
              20)
          end
          object EditTypePCN: TEdit
            Left = 376
            Top = 11
            Width = 25
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 5
            Text = '2'
          end
          object IncrimenteEditTypePCN: TUpDown
            Left = 401
            Top = 11
            Width = 16
            Height = 19
            Associate = EditTypePCN
            Min = 1
            Max = 6
            Position = 2
            TabOrder = 6
            Wrap = False
            OnClick = IncrimenteEditTypePCNClick
          end
        end
        object AfficheComposition: TPanel
          Left = 528
          Top = 312
          Width = 753
          Height = 425
          BevelInner = bvLowered
          Color = 8454143
          TabOrder = 9
          Visible = False
          object Bevel14: TBevel
            Left = 8
            Top = 88
            Width = 737
            Height = 329
          end
          object Bevel15: TBevel
            Left = 8
            Top = 8
            Width = 737
            Height = 73
          end
          object Label47: TLabel
            Left = 73
            Top = 128
            Width = 45
            Height = 13
            Alignment = taRightJustify
            Caption = 'Nbr Prod:'
          end
          object Label48: TLabel
            Left = 77
            Top = 176
            Width = 41
            Height = 13
            Alignment = taRightJustify
            Caption = 'Nbr Mat:'
          end
          object Label49: TLabel
            Left = 12
            Top = 19
            Width = 66
            Height = 13
            Alignment = taRightJustify
            Caption = 'Code Mati'#232're:'
          end
          object Label50: TLabel
            Left = 42
            Top = 39
            Width = 36
            Height = 13
            Alignment = taRightJustify
            Caption = 'D'#233'sign:'
          end
          object Label51: TLabel
            Left = 52
            Top = 59
            Width = 23
            Height = 13
            Alignment = taRightJustify
            Caption = 'U.M:'
          end
          object Label52: TLabel
            Left = 22
            Top = 225
            Width = 96
            Height = 13
            Alignment = taRightJustify
            Caption = 'Coefficient de Perte:'
          end
          object Label43: TLabel
            Left = 136
            Top = 150
            Width = 100
            Height = 14
            Caption = 'Est Compos'#233' de:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial Rounded MT Bold'
            Font.Style = [fsUnderline]
            ParentFont = False
          end
          object Label56: TLabel
            Left = 136
            Top = 200
            Width = 110
            Height = 14
            Caption = 'Avec une Perte de:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial Rounded MT Bold'
            Font.Style = [fsUnderline]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 426
            Top = 39
            Width = 20
            Height = 13
            Alignment = taRightJustify
            Caption = 'R'#233'f:'
          end
          object EditCoefficientPerte: TEdit
            Left = 140
            Top = 223
            Width = 49
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 5
          end
          object EditFCodeMatModif: TEdit
            Left = 80
            Top = 16
            Width = 81
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
          end
          object EditFCoefficient: TEdit
            Left = 140
            Top = 173
            Width = 49
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 4
          end
          object EditFCodeMat: TEdit
            Left = 80
            Top = 16
            Width = 81
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
          end
          object EditFDesignMat: TEdit
            Left = 80
            Top = 36
            Width = 321
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 2
          end
          object EditFUMMat: TEdit
            Left = 80
            Top = 56
            Width = 25
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 3
          end
          object BitFormulation: TBitBtn
            Left = 128
            Top = 272
            Width = 129
            Height = 41
            Caption = '.'
            TabOrder = 6
            OnClick = BitFormulationClick
            Kind = bkRetry
          end
          object BitBtn9: TBitBtn
            Left = 717
            Top = 10
            Width = 25
            Height = 25
            Caption = '.'
            TabOrder = 7
            OnClick = BitBtn9Click
            Kind = bkCancel
            Margin = 0
          end
          object Memo1: TMemo
            Left = 112
            Top = 344
            Width = 233
            Height = 65
            Color = clBtnFace
            Ctl3D = False
            Lines.Strings = (
              '(Nbr Prod) U.M de produit fini'
              'est compos'#233' de:'
              '(Nbr Mat) U.M en mati'#232're premi'#232're'
              'et (Coefficient %) de perte en mati'#232're premi'#232're ')
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 8
          end
          object EditFNbrProd: TMemo
            Left = 136
            Top = 120
            Width = 57
            Height = 25
            Alignment = taRightJustify
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 9
            WantReturns = False
            OnKeyDown = EditFNbrProdKeyDown
            OnKeyPress = EditFNbrProdKeyPress
            OnKeyUp = EditFNbrProdKeyUp
          end
          object EditFNbrMat: TMemo
            Left = 136
            Top = 170
            Width = 57
            Height = 25
            Alignment = taRightJustify
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 10
            WantReturns = False
            OnKeyDown = EditFNbrMatKeyDown
            OnKeyPress = EditFNbrMatKeyPress
            OnKeyUp = EditFNbrMatKeyUp
          end
          object EditCoefficientPerteM: TMemo
            Left = 136
            Top = 220
            Width = 57
            Height = 25
            Alignment = taRightJustify
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 11
            WantReturns = False
            OnKeyDown = EditCoefficientPerteMKeyDown
            OnKeyPress = EditCoefficientPerteMKeyPress
            OnKeyUp = EditCoefficientPerteMKeyUp
          end
          object TexteProduit: TMemo
            Left = 192
            Top = 120
            Width = 545
            Height = 25
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 12
          end
          object TexteMatiere: TMemo
            Left = 192
            Top = 170
            Width = 545
            Height = 25
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 13
          end
          object TextePerte: TMemo
            Left = 192
            Top = 220
            Width = 545
            Height = 25
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 14
          end
          object EditFRefMat: TEdit
            Left = 456
            Top = 36
            Width = 153
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 15
          end
        end
        object EditTypeStock: TComboBox
          Left = 776
          Top = 16
          Width = 121
          Height = 21
          BevelKind = bkFlat
          Ctl3D = False
          ItemHeight = 13
          ItemIndex = 0
          ParentCtl3D = False
          TabOrder = 10
          Text = 'Article'
          OnChange = EditTypeStockChange
          OnKeyPress = EditTypeStockKeyPress
          Items.Strings = (
            'Article'
            'Marche')
        end
        object EditExtention: TEdit
          Left = 776
          Top = 40
          Width = 121
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 11
          Text = 'PlanComptable'
        end
        object EditExtentionCodeProduit: TEdit
          Left = 776
          Top = 64
          Width = 121
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 12
        end
      end
    end
    object PageDetailFormuleComposition: TTabSheet
      Caption = '     D'#233'tail Formule de Composition     '
      ImageIndex = 1
      object Bevel4: TBevel
        Left = 744
        Top = 152
        Width = 169
        Height = 97
      end
      object Bevel5: TBevel
        Left = 744
        Top = 448
        Width = 169
        Height = 49
      end
      object EditCodeTrancateOperationFC: TEdit
        Left = 784
        Top = 464
        Width = 81
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 11
        OnKeyUp = EditCodeTrancateOperationFCKeyUp
      end
      object TableauDetailOperationFormuleComposition: TStringGrid
        Left = 0
        Top = 152
        Width = 729
        Height = 353
        Cursor = crHandPoint
        Color = cl3DLight
        ColCount = 8
        Ctl3D = False
        DefaultColWidth = 30
        RowCount = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSizing, goColSizing, goEditing, goAlwaysShowEditor]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnClick = TableauDetailOperationFormuleCompositionClick
        RowHeights = (
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24)
      end
      object TableauListeOperationFormuleComposition: TStringGrid
        Left = 0
        Top = 0
        Width = 729
        Height = 121
        Ctl3D = False
        FixedCols = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnClick = TableauListeOperationFormuleCompositionClick
        ColWidths = (
          64
          64
          63
          64
          63)
        RowHeights = (
          24
          24
          24
          24
          24)
      end
      object RadioGroup1: TRadioGroup
        Left = 744
        Top = 264
        Width = 169
        Height = 121
        Caption = 'Type Op'#233'ration:'
        Enabled = False
        TabOrder = 2
      end
      object RBEntreeStock: TRadioButton
        Left = 752
        Top = 288
        Width = 113
        Height = 17
        Caption = 'Entr'#233'e stock (+)'
        Enabled = False
        TabOrder = 3
      end
      object RBSortieStock: TRadioButton
        Left = 752
        Top = 312
        Width = 113
        Height = 17
        Caption = 'Sortie Stock (-)'
        Enabled = False
        TabOrder = 4
      end
      object EditRowEditing: TEdit
        Left = 872
        Top = 416
        Width = 41
        Height = 19
        Color = clSilver
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 5
      end
      object RBConfirmeFormuleCompositionApplique: TCheckBox
        Left = 744
        Top = 392
        Width = 185
        Height = 17
        Caption = 'Confirm'#233' formulation Appliqu'#233' !'
        Enabled = False
        TabOrder = 6
      end
      object RBRegularisationEntreeStock: TRadioButton
        Left = 752
        Top = 336
        Width = 153
        Height = 17
        Caption = 'R'#233'gularisation Entr'#233'e stock'
        Enabled = False
        TabOrder = 7
      end
      object RBRegularisationSortieStock: TRadioButton
        Left = 752
        Top = 360
        Width = 153
        Height = 17
        Caption = 'R'#233'gularisation Sortie stock'
        Enabled = False
        TabOrder = 8
      end
      object BitBtn2: TBitBtn
        Left = 752
        Top = 160
        Width = 153
        Height = 81
        Caption = 'Valider'
        TabOrder = 9
        OnClick = BitBtn2Click
        Kind = bkAll
      end
      object BitTruncateOperationFC: TBitBtn
        Left = 760
        Top = 456
        Width = 147
        Height = 33
        Caption = 'Effacer les donn'#233'es'
        TabOrder = 10
        OnClick = BitTruncateOperationFCClick
        Kind = bkRetry
      end
      object AfficheOptionPrint: TPanel
        Left = 744
        Top = 8
        Width = 169
        Height = 240
        BevelInner = bvLowered
        Caption = 'Imprimer'
        Color = 8454143
        TabOrder = 12
        OnClick = AfficheOptionPrintClick
        object Bevel30: TBevel
          Left = 8
          Top = 40
          Width = 153
          Height = 193
        end
        object RadioGroup4: TRadioGroup
          Left = 16
          Top = 80
          Width = 137
          Height = 145
          Caption = 'Options d'#39'Impression:'
          TabOrder = 0
        end
        object StaticText1: TStaticText
          Left = 24
          Top = 107
          Width = 105
          Height = 17
          Caption = 'Orientation du papier:'
          TabOrder = 1
        end
        object RBOrientationPapier: TComboBox
          Left = 24
          Top = 128
          Width = 121
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          Ctl3D = False
          ItemHeight = 13
          ItemIndex = 1
          ParentCtl3D = False
          TabOrder = 2
          Text = 'Portrait'
          Items.Strings = (
            'Automatique'
            'Portrait'
            'Paysage')
        end
        object RBAjustement: TCheckBox
          Left = 24
          Top = 160
          Width = 113
          Height = 17
          Caption = 'Ajustement !'
          Checked = True
          State = cbChecked
          TabOrder = 3
        end
        object BitBtn18: TBitBtn
          Left = 16
          Top = 48
          Width = 137
          Height = 25
          Caption = 'Print'
          TabOrder = 4
          OnClick = BitBtn18Click
          Kind = bkAll
        end
      end
      object TableauTitreDetailOperationFormuleComposition: TStringGrid
        Left = 0
        Top = 123
        Width = 729
        Height = 28
        ColCount = 1
        Ctl3D = False
        DefaultColWidth = 590
        FixedCols = 0
        RowCount = 1
        FixedRows = 0
        ParentCtl3D = False
        TabOrder = 13
        ColWidths = (
          604)
      end
    end
  end
end
