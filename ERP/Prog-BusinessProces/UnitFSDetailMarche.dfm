object FSDetailMarche: TFSDetailMarche
  Left = 0
  Top = 0
  Width = 1370
  Height = 738
  BorderIcons = []
  Caption = 'D'#233'tail quantitatif et estimatif du march'#233
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdresseDetailMarche: TPanel
    Left = 8
    Top = 664
    Width = 1313
    Height = 25
    BevelInner = bvLowered
    TabOrder = 39
  end
  object Panel3: TPanel
    Left = 8
    Top = 120
    Width = 1313
    Height = 30
    BevelInner = bvLowered
    Caption = 'D'#233'tail quantitatif et estimatif'
    Color = 8454143
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object MontantMarcheHT: TLabel
      Left = 1280
      Top = 8
      Width = 30
      Height = 16
      Alignment = taRightJustify
      Caption = '..........'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object EditMaxLetreDesignation: TEdit
      Left = 203
      Top = 5
      Width = 50
      Height = 22
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Text = '60'
    end
    object UpDown1: TUpDown
      Left = 253
      Top = 5
      Width = 16
      Height = 22
      Associate = EditMaxLetreDesignation
      Min = 20
      Max = 1000
      Position = 60
      TabOrder = 1
      Wrap = False
    end
  end
  object TableauNotNumArticle: TStringGrid
    Left = 88
    Top = 224
    Width = 320
    Height = 120
    ColCount = 1
    Ctl3D = False
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    ParentCtl3D = False
    TabOrder = 35
  end
  object EditDesignationArticleTesteListe: TMemo
    Left = 16
    Top = 232
    Width = 409
    Height = 65
    TabOrder = 8
    OnKeyDown = EditDesignationArticleKeyDown
    OnKeyUp = EditDesignationArticleKeyUp
  end
  object EditMarcheControle: TMemo
    Left = 16
    Top = 304
    Width = 497
    Height = 105
    TabOrder = 34
  end
  object EditDesignationArticleTeste: TMemo
    Left = 16
    Top = 160
    Width = 409
    Height = 65
    TabOrder = 7
    OnKeyDown = EditDesignationArticleKeyDown
    OnKeyUp = EditDesignationArticleKeyUp
  end
  object TableauDetailMarche: TStringGrid
    Left = 8
    Top = 152
    Width = 1313
    Height = 505
    Ctl3D = False
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goEditing, goAlwaysShowEditor]
    ParentCtl3D = False
    TabOrder = 4
    OnClick = TableauDetailMarcheClick
    OnKeyDown = TableauDetailMarcheKeyDown
    OnKeyPress = TableauDetailMarcheKeyPress
    ColWidths = (
      64
      63
      64
      64
      64)
    RowHeights = (
      24
      24)
  end
  object IndiceAfficheStatistique: TEdit
    Left = 1176
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object IndiceAfficheStructure: TEdit
    Left = 1184
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object Panel4: TPanel
    Left = 560
    Top = 8
    Width = 209
    Height = 105
    BevelOuter = bvLowered
    Caption = 'Panel4'
    TabOrder = 23
    object Label3: TLabel
      Left = 28
      Top = 75
      Width = 112
      Height = 13
      Alignment = taRightJustify
      Caption = 'Num March'#233' r'#233'f'#233'rence:'
    end
    object BitBtn18: TBitBtn
      Left = 8
      Top = 8
      Width = 193
      Height = 25
      Caption = 'Valider les Modifications'
      TabOrder = 0
      OnClick = BitBtn18Click
      Kind = bkAll
    end
    object BitBtn16: TBitBtn
      Left = 8
      Top = 38
      Width = 193
      Height = 25
      Caption = 'Annuler les Modifications'
      ModalResult = 2
      TabOrder = 1
      OnClick = BitBtn16Click
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
    object EditNumMarcheReference: TEdit
      Left = 144
      Top = 72
      Width = 57
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
  end
  object AfficheMarche: TPanel
    Left = 152
    Top = 8
    Width = 401
    Height = 105
    BevelInner = bvLowered
    TabOrder = 0
    object LabelNatureProjet: TLabel
      Left = 16
      Top = 35
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = 'March'#233':'
    end
    object Label1: TLabel
      Left = 9
      Top = 59
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = 'Structure:'
    end
    object Label25: TLabel
      Left = 8
      Top = 83
      Width = 52
      Height = 13
      Caption = 'Statistique:'
    end
    object Label4: TLabel
      Left = 6
      Top = 11
      Width = 57
      Height = 13
      Alignment = taRightJustify
      Caption = 'Type Projet:'
    end
    object EditNSMarche: TEdit
      Left = 64
      Top = 32
      Width = 73
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
      OnEnter = EditNSMarcheEnter
    end
    object EditMarche: TEdit
      Left = 136
      Top = 32
      Width = 257
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnEnter = EditMarcheEnter
    end
    object EditNStructureMarche: TEdit
      Left = 64
      Top = 56
      Width = 73
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
      OnEnter = EditNStructureMarcheEnter
    end
    object EditStructureMarche: TEdit
      Left = 136
      Top = 56
      Width = 257
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnEnter = EditStructureMarcheEnter
    end
    object EditNStatistiqueMarche: TEdit
      Left = 64
      Top = 80
      Width = 73
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
      OnEnter = EditNStatistiqueMarcheEnter
    end
    object EditStatistiqueMarche: TEdit
      Left = 136
      Top = 80
      Width = 257
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      OnEnter = EditStatistiqueMarcheEnter
    end
    object EditTypeProjet: TComboBox
      Left = 64
      Top = 8
      Width = 145
      Height = 21
      BevelKind = bkFlat
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 6
      Text = 'Marche'
      OnChange = EditTypeProjetChange
      OnEnter = EditTypeProjetEnter
      OnKeyPress = EditTypeProjetKeyPress
      Items.Strings = (
        'Marche'
        'Avenant')
    end
    object EditTypeDecision: TEdit
      Left = 272
      Top = 8
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
    end
  end
  object AfficheOperationDetailMarche: TPanel
    Left = 352
    Top = 176
    Width = 537
    Height = 233
    BevelInner = bvLowered
    Color = 8454143
    TabOrder = 5
    Visible = False
    OnEnter = AfficheOperationDetailMarcheEnter
    object Bevel9: TBevel
      Left = 8
      Top = 8
      Width = 521
      Height = 161
    end
    object Label22: TLabel
      Left = 10
      Top = 20
      Width = 60
      Height = 13
      Alignment = taRightJustify
      Caption = 'Code Article:'
    end
    object Label23: TLabel
      Left = 38
      Top = 44
      Width = 32
      Height = 13
      Alignment = taRightJustify
      Caption = 'Article:'
    end
    object Label24: TLabel
      Left = 27
      Top = 114
      Width = 43
      Height = 13
      Alignment = taRightJustify
      Caption = 'Quantit'#233':'
    end
    object Label2: TLabel
      Left = 36
      Top = 138
      Width = 34
      Height = 13
      Alignment = taRightJustify
      Caption = 'Prix U.:'
    end
    object Label26: TLabel
      Left = 27
      Top = 90
      Width = 43
      Height = 13
      Alignment = taRightJustify
      Caption = 'Unit'#233' M.:'
    end
    object Bevel1: TBevel
      Left = 8
      Top = 176
      Width = 521
      Height = 50
    end
    object CaptionNbrChar: TLabel
      Left = 512
      Top = 96
      Width = 6
      Height = 13
      Caption = '0'
    end
    object CaptionNbrCharLigne: TLabel
      Left = 512
      Top = 112
      Width = 6
      Height = 13
      Caption = '0'
    end
    object BitBtn1: TBitBtn
      Left = 448
      Top = 184
      Width = 75
      Height = 25
      TabOrder = 0
      OnClick = BitBtn1Click
      Kind = bkCancel
    end
    object DESING: TMemo
      Left = 80
      Top = 40
      Width = 273
      Height = 21
      TabOrder = 1
      WantReturns = False
    end
    object EditQuantite: TMemo
      Left = 80
      Top = 110
      Width = 121
      Height = 21
      Alignment = taRightJustify
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      WantReturns = False
      OnKeyDown = EditQuantiteKeyDown
      OnKeyPress = EditQuantiteKeyPress
    end
    object EditPrixUnitaire: TMemo
      Left = 80
      Top = 134
      Width = 121
      Height = 21
      Alignment = taRightJustify
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      WantReturns = False
      OnKeyDown = EditPrixUnitaireKeyDown
      OnKeyPress = EditPrixUnitaireKeyPress
    end
    object BitValideDetailMarche: TBitBtn
      Left = 16
      Top = 184
      Width = 137
      Height = 33
      TabOrder = 4
      OnClick = BitValideDetailMarcheClick
      Kind = bkAll
    end
    object EditCodeArticle: TMemo
      Left = 80
      Top = 16
      Width = 121
      Height = 21
      Alignment = taCenter
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      WantReturns = False
      OnExit = EditCodeArticleExit
      OnKeyDown = EditCodeArticleKeyDown
      OnKeyUp = EditCodeArticleKeyUp
    end
    object EditUnitM: TMemo
      Left = 80
      Top = 86
      Width = 73
      Height = 21
      Alignment = taCenter
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      WantReturns = False
      OnKeyDown = EditUnitMKeyDown
    end
    object EditTrie: TEdit
      Left = 264
      Top = 131
      Width = 257
      Height = 19
      Color = clScrollBar
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 7
    end
    object EditDesignationArticle: TMemo
      Left = 80
      Top = 40
      Width = 409
      Height = 43
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 8
      OnChange = EditDesignationArticleChange
      OnEnter = EditDesignationArticleEnter
      OnExit = EditDesignationArticleExit
      OnKeyDown = EditDesignationArticleKeyDown
      OnKeyPress = EditDesignationArticleKeyPress
      OnKeyUp = EditDesignationArticleKeyUp
    end
    object TrackBar1: TTrackBar
      Left = 492
      Top = 35
      Width = 33
      Height = 61
      Max = 14
      Orientation = trVertical
      Frequency = 1
      Position = 0
      SelEnd = 0
      SelStart = 0
      TabOrder = 9
      TickMarks = tmTopLeft
      TickStyle = tsAuto
    end
    object EditCodeProduit: TEdit
      Left = 264
      Top = 110
      Width = 113
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 10
    end
    object RBAutoriserSautLigneDesignation: TCheckBox
      Left = 320
      Top = 16
      Width = 201
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Autoriser le saut de ligne d'#233'signation !'
      TabOrder = 11
    end
    object RBMarcheReference: TCheckBox
      Left = 176
      Top = 192
      Width = 169
      Height = 17
      Caption = 'March'#233' de r'#233'f'#233'rence activ'#233' !'
      TabOrder = 12
    end
  end
  object AfficheDesignationArticles: TPanel
    Left = 432
    Top = 261
    Width = 641
    Height = 267
    BevelInner = bvLowered
    Color = 8454143
    TabOrder = 6
    Visible = False
    object BitBtn20: TBitBtn
      Left = 8
      Top = 8
      Width = 625
      Height = 25
      Cancel = True
      Caption = 'Quitter'
      ModalResult = 2
      TabOrder = 1
      OnClick = BitBtn20Click
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
    object TableauDesignationArticles: TStringGrid
      Left = 8
      Top = 40
      Width = 625
      Height = 217
      Color = 13041663
      ColCount = 7
      Ctl3D = False
      DefaultColWidth = 40
      FixedColor = 8454143
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goEditing, goAlwaysShowEditor]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnClick = TableauDesignationArticlesClick
      OnKeyDown = TableauDesignationArticlesKeyDown
      OnKeyPress = TableauDesignationArticlesKeyPress
      ColWidths = (
        72
        406
        36
        95
        2
        2
        82)
      RowHeights = (
        24
        24
        24
        24
        24)
    end
  end
  object EditNumLot: TEdit
    Left = 1208
    Top = 40
    Width = 65
    Height = 21
    TabOrder = 11
  end
  object EditSauvegardeDetailMarche: TEdit
    Left = 1192
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 12
  end
  object EditStructuresDOptions: TEdit
    Left = 1192
    Top = 48
    Width = 65
    Height = 21
    TabOrder = 13
  end
  object AfficheOptionFormule: TPanel
    Left = 88
    Top = 192
    Width = 257
    Height = 249
    BevelInner = bvLowered
    Color = 11599871
    TabOrder = 14
    Visible = False
    object Bevel36: TBevel
      Left = 56
      Top = 200
      Width = 153
      Height = 41
    end
    object BitValiderFormule: TBitBtn
      Left = 64
      Top = 208
      Width = 137
      Height = 25
      Caption = 'Valider'
      TabOrder = 0
      OnClick = BitValiderFormuleClick
      Kind = bkAll
    end
    object Panel14: TPanel
      Left = 8
      Top = 8
      Width = 241
      Height = 89
      Color = 11599871
      TabOrder = 1
      object RadioGroup6: TRadioGroup
        Left = 8
        Top = 8
        Width = 225
        Height = 73
        Caption = 'Options de Formulation:'
        TabOrder = 0
      end
      object RBFormuleGlobale: TRadioButton
        Left = 16
        Top = 32
        Width = 209
        Height = 17
        Caption = 'Formulation Globale: March'#233' / Avenant'
        TabOrder = 1
      end
      object RBFormuleDistincte: TRadioButton
        Left = 16
        Top = 56
        Width = 209
        Height = 17
        Caption = 'Formulation distincte:  March'#233' / Avenant'
        TabOrder = 2
      end
    end
    object Panel15: TPanel
      Left = 8
      Top = 104
      Width = 241
      Height = 89
      Color = 11599871
      TabOrder = 2
      object RadioGroup8: TRadioGroup
        Left = 8
        Top = 8
        Width = 225
        Height = 73
        Caption = 'D'#233'tail Formulation:'
        TabOrder = 0
      end
      object RBFormuleParStructure: TRadioButton
        Left = 16
        Top = 56
        Width = 209
        Height = 17
        Caption = 'Formulation par structure'
        TabOrder = 1
      end
      object RBFormuleParStatistique: TRadioButton
        Left = 16
        Top = 32
        Width = 209
        Height = 17
        Caption = 'Formulation par Sous Structure'
        TabOrder = 2
      end
    end
  end
  object OptionDetailleParClasse: TPanel
    Left = 80
    Top = 336
    Width = 377
    Height = 209
    Color = 8454143
    TabOrder = 17
    Visible = False
    object Bevel37: TBevel
      Left = 240
      Top = 16
      Width = 129
      Height = 65
    end
    object Bevel2: TBevel
      Left = 240
      Top = 136
      Width = 129
      Height = 65
    end
    object Bevel3: TBevel
      Left = 240
      Top = 88
      Width = 129
      Height = 41
    end
    object RadioGroup10: TRadioGroup
      Left = 8
      Top = 8
      Width = 225
      Height = 121
      Caption = 'Options d'#39'Affichage:'
      TabOrder = 0
    end
    object RBDetailGlobal: TRadioButton
      Left = 24
      Top = 32
      Width = 201
      Height = 17
      Caption = 'March'#233' Global.'
      TabOrder = 1
    end
    object RBDetailParFamille: TRadioButton
      Left = 24
      Top = 56
      Width = 201
      Height = 17
      Caption = 'Par Famille.'
      TabOrder = 2
    end
    object RBDetailParSFamille: TRadioButton
      Left = 24
      Top = 80
      Width = 201
      Height = 17
      Caption = 'Par Sous Famille.'
      TabOrder = 3
    end
    object BitBtn81: TBitBtn
      Left = 248
      Top = 24
      Width = 113
      Height = 49
      Caption = 'Voir'
      TabOrder = 4
      OnClick = BitBtn81Click
      Kind = bkAll
    end
    object RBDetailParArticle: TRadioButton
      Left = 24
      Top = 104
      Width = 201
      Height = 17
      Caption = 'Par Article.'
      TabOrder = 5
    end
    object Panel7: TPanel
      Left = 8
      Top = 134
      Width = 225
      Height = 67
      BevelInner = bvLowered
      TabOrder = 6
      object RadioGroup2: TRadioGroup
        Left = 8
        Top = 8
        Width = 209
        Height = 49
        Caption = 'Fichier Utilis'#233':'
        TabOrder = 0
      end
      object RBUtiliseFamilleMarcheDM: TRadioButton
        Left = 16
        Top = 32
        Width = 97
        Height = 17
        Caption = 'Famille March'#233
        Checked = True
        TabOrder = 1
        TabStop = True
      end
      object RBUtiliseDetailMarcheDM: TRadioButton
        Left = 120
        Top = 32
        Width = 89
        Height = 17
        Caption = 'D'#233'tail March'#233
        TabOrder = 2
      end
    end
  end
  object AfficheStructureMarche: TPanel
    Left = 1120
    Top = 320
    Width = 521
    Height = 281
    BevelInner = bvLowered
    Color = 10485663
    TabOrder = 20
    Visible = False
    object Edit1: TEdit
      Left = 24
      Top = 8
      Width = 65
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object TableauStructureMarche: TStringGrid
      Left = 8
      Top = 40
      Width = 505
      Height = 235
      ColCount = 4
      DefaultColWidth = 30
      DefaultRowHeight = 20
      FixedColor = 10485663
      FixedCols = 3
      RowCount = 11
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
      TabOrder = 0
      OnKeyDown = TableauStructureMarcheKeyDown
      ColWidths = (
        30
        2
        2
        447)
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
        20)
    end
    object BitBtn36: TBitBtn
      Left = 8
      Top = 8
      Width = 505
      Height = 25
      Caption = 'Quitter'
      TabOrder = 1
      OnClick = BitBtn36Click
      Kind = bkCancel
    end
  end
  object AfficheStatistiqueMarche: TPanel
    Left = 1176
    Top = 176
    Width = 521
    Height = 281
    BevelInner = bvLowered
    Color = 10485663
    TabOrder = 21
    Visible = False
    object EditStatistiquesDOptions: TEdit
      Left = 32
      Top = 10
      Width = 73
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object TableauStatistiqueMarche: TStringGrid
      Left = 8
      Top = 40
      Width = 505
      Height = 233
      ColCount = 4
      DefaultColWidth = 30
      FixedColor = 10485663
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
      TabOrder = 0
      OnKeyDown = TableauStatistiqueMarcheKeyDown
      ColWidths = (
        30
        2
        2
        444)
    end
    object BitBtn77: TBitBtn
      Left = 8
      Top = 8
      Width = 505
      Height = 25
      Caption = 'Quitter'
      TabOrder = 1
      OnClick = BitBtn77Click
      Kind = bkCancel
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 8
    Width = 137
    Height = 105
    BevelOuter = bvLowered
    TabOrder = 22
    object BitBtn21: TBitBtn
      Left = 8
      Top = 8
      Width = 121
      Height = 25
      Caption = 'March'#233
      TabOrder = 0
      OnClick = BitBtn21Click
      Kind = bkHelp
      Margin = 20
    end
    object BitBtn22: TBitBtn
      Left = 8
      Top = 40
      Width = 121
      Height = 25
      Caption = 'Structure'
      TabOrder = 1
      OnClick = BitBtn22Click
      Kind = bkHelp
      Margin = 20
    end
    object BRefaireMarche: TCheckBox
      Left = 8
      Top = 80
      Width = 121
      Height = 17
      Caption = 'Refaire le march'#233
      Enabled = False
      TabOrder = 2
    end
  end
  object Panel1: TPanel
    Left = 776
    Top = 8
    Width = 353
    Height = 65
    BevelInner = bvLowered
    TabOrder = 1
    object Label46: TLabel
      Left = 10
      Top = 14
      Width = 84
      Height = 13
      Alignment = taRightJustify
      Caption = 'Code M.Ouvrage:'
    end
    object Label14: TLabel
      Left = 11
      Top = 39
      Width = 84
      Height = 13
      Alignment = taRightJustify
      Caption = 'Maitre d'#39'Ouvrage:'
    end
    object EditCodeMaitreOuvrage: TEdit
      Left = 104
      Top = 12
      Width = 73
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
    end
    object EditMaitreOuvrage: TEdit
      Left = 104
      Top = 36
      Width = 241
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
    end
  end
  object Panel5: TPanel
    Left = 1168
    Top = 8
    Width = 153
    Height = 81
    Caption = 'Panel5'
    TabOrder = 24
    object BitBtn2: TBitBtn
      Left = 6
      Top = 8
      Width = 139
      Height = 65
      Caption = 'Quitter'
      ModalResult = 2
      TabOrder = 0
      OnClick = BitBtn2Click
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
  object AfficheOptionsDevisQE: TPanel
    Left = 488
    Top = 176
    Width = 257
    Height = 409
    BevelInner = bvLowered
    Color = 8454143
    TabOrder = 25
    Visible = False
    object Bevel44: TBevel
      Left = 8
      Top = 80
      Width = 241
      Height = 113
    end
    object Bevel45: TBevel
      Left = 8
      Top = 216
      Width = 241
      Height = 81
    end
    object Label60: TLabel
      Left = 8
      Top = 200
      Width = 44
      Height = 13
      Caption = 'Remplire:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object Label61: TLabel
      Left = 8
      Top = 304
      Width = 39
      Height = 13
      Caption = 'Options:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object Bevel40: TBevel
      Left = 8
      Top = 320
      Width = 241
      Height = 81
    end
    object LabelTypeDevis: TLabel
      Left = 216
      Top = 264
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = '..........'
    end
    object RadioGroup12: TRadioGroup
      Left = 8
      Top = 8
      Width = 241
      Height = 65
      Caption = 'Options Devis:'
      TabOrder = 1
    end
    object RBOptionsDevisQEGlobal: TRadioButton
      Left = 16
      Top = 24
      Width = 225
      Height = 17
      Caption = 'Devis March'#233' Global'
      TabOrder = 2
    end
    object RBOptionsDevisQEDetailAffiche: TRadioButton
      Left = 16
      Top = 48
      Width = 225
      Height = 17
      Caption = 'Devis D'#233'tail affich'#233
      TabOrder = 3
    end
    object RBListelots: TCheckBox
      Left = 16
      Top = 88
      Width = 105
      Height = 17
      Caption = 'Choisire les Lots'
      TabOrder = 4
      OnClick = RBListelotsClick
    end
    object RBRemplireQuantite: TCheckBox
      Left = 16
      Top = 224
      Width = 181
      Height = 17
      Caption = 'Quantit'#233' : ......................................'
      TabOrder = 5
    end
    object RBRemplirePrixU: TCheckBox
      Left = 16
      Top = 248
      Width = 181
      Height = 17
      Caption = 'Prix U : ..........................................'
      TabOrder = 6
    end
    object RBRemplireMontantG: TCheckBox
      Left = 16
      Top = 272
      Width = 73
      Height = 17
      Caption = 'Montant G.'
      TabOrder = 7
    end
    object BitValiderOptionsDevisQE: TBitBtn
      Left = 160
      Top = 40
      Width = 83
      Height = 25
      Caption = 'Valider'
      TabOrder = 0
      OnClick = BitValiderOptionsDevisQEClick
      Kind = bkAll
    end
    object RBAfficherSousTotaux: TCheckBox
      Left = 16
      Top = 376
      Width = 225
      Height = 17
      Caption = 'Afficher Sous Totaux'
      TabOrder = 8
    end
    object RBAfficherTotaux: TCheckBox
      Left = 16
      Top = 352
      Width = 225
      Height = 17
      Caption = 'Afficher les Totaux'
      TabOrder = 9
    end
    object RBAfficherTotalStructure: TCheckBox
      Left = 16
      Top = 328
      Width = 225
      Height = 17
      Caption = 'Afficher Global Structure'
      TabOrder = 10
    end
    object RBArticlesDisponible: TCheckBox
      Left = 136
      Top = 88
      Width = 105
      Height = 17
      Caption = 'Articles disponible.'
      TabOrder = 11
    end
    object EditPourcentageQte: TEdit
      Left = 200
      Top = 221
      Width = 25
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 12
      Text = '100'
    end
    object UpDown2: TUpDown
      Left = 225
      Top = 221
      Width = 16
      Height = 19
      Associate = EditPourcentageQte
      Min = 0
      Max = 200
      Position = 100
      TabOrder = 13
      Wrap = False
    end
    object EditPourcentagePrix: TEdit
      Left = 200
      Top = 245
      Width = 25
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 14
      Text = '100'
    end
    object UpDown3: TUpDown
      Left = 225
      Top = 245
      Width = 16
      Height = 19
      Associate = EditPourcentagePrix
      Min = 0
      Max = 200
      Position = 100
      TabOrder = 15
      Wrap = False
    end
    object RBCumuleArticle: TCheckBox
      Left = 160
      Top = 24
      Width = 81
      Height = 17
      Caption = 'Cumul'#233'.'
      TabOrder = 16
    end
    object BitBtn10: TBitBtn
      Left = 168
      Top = 328
      Width = 75
      Height = 65
      Caption = 'Analyse'
      TabOrder = 17
      OnClick = BitBtn10Click
      Kind = bkHelp
    end
    object Panel6: TPanel
      Left = 16
      Top = 118
      Width = 225
      Height = 67
      BevelInner = bvLowered
      TabOrder = 18
      object RadioGroup1: TRadioGroup
        Left = 8
        Top = 8
        Width = 209
        Height = 49
        Caption = 'Fichier Utilis'#233':'
        TabOrder = 0
      end
      object RBUtiliseFamilleMarche: TRadioButton
        Left = 16
        Top = 32
        Width = 97
        Height = 17
        Caption = 'Famille March'#233
        TabOrder = 1
        OnClick = RBListelotsClick
      end
      object RBUtiliseDetailMarche: TRadioButton
        Left = 120
        Top = 32
        Width = 89
        Height = 17
        Caption = 'D'#233'tail March'#233
        Checked = True
        TabOrder = 2
        TabStop = True
        OnClick = RBListelotsClick
      end
    end
  end
  object AfficheChoixLots: TPanel
    Left = 818
    Top = 288
    Width = 479
    Height = 249
    BevelInner = bvLowered
    TabOrder = 26
    Visible = False
    object BitBtn3: TBitBtn
      Left = 8
      Top = 8
      Width = 73
      Height = 25
      TabOrder = 0
      OnClick = BitBtn3Click
      Kind = bkCancel
    end
    object TableauChoixLots: TStringGrid
      Left = 8
      Top = 40
      Width = 465
      Height = 201
      ColCount = 4
      Ctl3D = False
      DefaultColWidth = 30
      DefaultRowHeight = 20
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
      ParentCtl3D = False
      TabOrder = 1
      OnContextPopup = TableauChoixLotsContextPopup
      OnDblClick = TableauChoixLotsDblClick
      ColWidths = (
        30
        78
        316
        63)
    end
  end
  object EditMaxColWidth: TEdit
    Left = 1264
    Top = 96
    Width = 41
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 31
    Text = '900'
  end
  object IncrimentEditMaxColWidth: TUpDown
    Left = 1305
    Top = 96
    Width = 17
    Height = 19
    Associate = EditMaxColWidth
    Min = 10
    Max = 1000
    Position = 900
    TabOrder = 32
    Thousands = False
    Wrap = False
    OnClick = IncrimentEditMaxColWidthClick
  end
  object BitBtn7: TBitBtn
    Left = 1048
    Top = 88
    Width = 113
    Height = 25
    Caption = 'Actualisation !'
    TabOrder = 33
    OnClick = BitBtn7Click
    Kind = bkHelp
  end
  object TableauAvenantMarche: TStringGrid
    Left = 776
    Top = 8
    Width = 353
    Height = 65
    ColCount = 2
    Ctl3D = False
    RowCount = 2
    ParentCtl3D = False
    TabOrder = 36
  end
  object TableauDevisQE: TStringGrid
    Left = 1024
    Top = 640
    Width = 1313
    Height = 515
    Color = 14548991
    ColCount = 10
    Ctl3D = False
    DefaultColWidth = 40
    DefaultRowHeight = 18
    FixedColor = 8454143
    FixedCols = 2
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSizing, goColSizing, goEditing, goAlwaysShowEditor]
    ParentCtl3D = False
    ScrollBars = ssVertical
    TabOrder = 27
    Visible = False
    ColWidths = (
      40
      2
      79
      343
      41
      66
      68
      2
      2
      105)
  end
  object TableauDevisRestant: TStringGrid
    Left = 1112
    Top = 600
    Width = 1313
    Height = 515
    Color = 14548991
    ColCount = 14
    Ctl3D = False
    DefaultColWidth = 40
    DefaultRowHeight = 18
    FixedColor = 8454143
    FixedCols = 5
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSizing, goColSizing, goEditing, goAlwaysShowEditor]
    ParentCtl3D = False
    TabOrder = 28
    Visible = False
    OnContextPopup = TableauDevisRestantContextPopup
    OnDblClick = TableauDevisRestantDblClick
    ColWidths = (
      40
      2
      79
      343
      27
      66
      66
      68
      60
      78
      74
      91
      2
      2)
    RowHeights = (
      18
      18)
  end
  object AffichePCNDetailMarche: TStringGrid
    Left = 1168
    Top = 568
    Width = 1313
    Height = 515
    Color = 8454143
    ColCount = 13
    Ctl3D = False
    DefaultRowHeight = 18
    DragCursor = crHandPoint
    FixedColor = 7471103
    FixedCols = 0
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goAlwaysShowEditor]
    ParentCtl3D = False
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 29
    Visible = False
    OnClick = AffichePCNDetailMarcheClick
    OnContextPopup = AffichePCNDetailMarcheContextPopup
    OnDblClick = AffichePCNDetailMarcheDblClick
    OnKeyDown = AffichePCNDetailMarcheKeyDown
    OnKeyPress = AffichePCNDetailMarcheKeyPress
    ColWidths = (
      14
      2
      166
      13
      2
      165
      14
      2
      263
      35
      68
      2
      2)
  end
  object TableauDevisRestantCumule: TStringGrid
    Left = 1232
    Top = 544
    Width = 1321
    Height = 521
    Ctl3D = False
    FixedColor = 8454016
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSizing, goColSizing, goEditing, goAlwaysShowEditor]
    ParentCtl3D = False
    TabOrder = 38
    Visible = False
    OnContextPopup = TableauDevisRestantCumuleContextPopup
    OnDblClick = TableauDevisRestantCumuleDblClick
    RowHeights = (
      24
      24
      24
      24
      24)
  end
  object AfficheRecapitulationParStructure: TPanel
    Left = 1112
    Top = 239
    Width = 761
    Height = 105
    BevelInner = bvLowered
    Color = 14546128
    TabOrder = 15
    Visible = False
    object Bevel41: TBevel
      Left = 608
      Top = 8
      Width = 146
      Height = 91
    end
    object TestePrintDevis: TMemo
      Left = 8
      Top = 8
      Width = 241
      Height = 73
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
    end
    object TableauRecapitulationParStructure: TStringGrid
      Left = 8
      Top = 8
      Width = 593
      Height = 89
      Color = 15858668
      Ctl3D = False
      DefaultColWidth = 50
      DefaultRowHeight = 18
      FixedColor = 14546128
      FixedCols = 0
      RowCount = 2
      ParentCtl3D = False
      ScrollBars = ssVertical
      TabOrder = 0
      ColWidths = (
        2
        2
        36
        387
        125)
    end
    object BitBtn84: TBitBtn
      Left = 616
      Top = 16
      Width = 73
      Height = 25
      Caption = 'Imp. Devis'
      TabOrder = 1
      OnClick = BitBtn84Click
      Kind = bkHelp
      Margin = 0
    end
    object BitBtn85: TBitBtn
      Left = 616
      Top = 48
      Width = 73
      Height = 25
      Caption = 'Imp.R'#233'c'
      TabOrder = 3
      OnClick = BitBtn85Click
      Kind = bkHelp
      Margin = 0
    end
    object BitBtn8: TBitBtn
      Left = 696
      Top = 16
      Width = 51
      Height = 25
      Caption = 'Excel'
      TabOrder = 4
      OnClick = BitBtn8Click
      Kind = bkHelp
      Margin = 0
    end
    object BitBtn9: TBitBtn
      Left = 696
      Top = 48
      Width = 49
      Height = 25
      Caption = 'Excel'
      TabOrder = 5
      OnClick = BitBtn9Click
      Kind = bkHelp
    end
    object RBSuspendePrint: TCheckBox
      Left = 616
      Top = 80
      Width = 97
      Height = 17
      Caption = 'Suspendre'
      TabOrder = 6
      OnClick = RBSuspendePrintClick
    end
  end
  object AfficheDetailleParClasse: TPanel
    Left = 56
    Top = 232
    Width = 761
    Height = 105
    BevelInner = bvLowered
    Color = 8454143
    TabOrder = 16
    Visible = False
    object EditTitreParClasse: TEdit
      Left = 680
      Top = 72
      Width = 73
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object TableauDetailleParClasse: TStringGrid
      Left = 8
      Top = 8
      Width = 665
      Height = 89
      ColCount = 4
      Ctl3D = False
      DefaultColWidth = 50
      DefaultRowHeight = 20
      FixedColor = 8454143
      RowCount = 2
      ParentCtl3D = False
      TabOrder = 0
      ColWidths = (
        50
        121
        352
        116)
    end
    object BitBtn6: TBitBtn
      Left = 680
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 1
      OnClick = BitBtn6Click
      Kind = bkAll
      Margin = 0
    end
  end
  object AfficheSauvegarderDetailMarche: TPanel
    Left = 264
    Top = 176
    Width = 497
    Height = 57
    BevelInner = bvLowered
    Caption = 'Sauvegarder !'
    Color = 11599871
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 18
    Visible = False
    object Bevel10: TBevel
      Left = 8
      Top = 8
      Width = 481
      Height = 41
    end
    object EditOptionSauvegarde: TEdit
      Left = 32
      Top = 18
      Width = 49
      Height = 21
      TabOrder = 2
    end
    object BitOuiSauvegardeDetailMarche: TBitBtn
      Left = 398
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Oui'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitOuiSauvegardeDetailMarcheClick
      Kind = bkAll
    end
    object BitNonSauvegardeDetailMarche: TBitBtn
      Left = 24
      Top = 16
      Width = 75
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitNonSauvegardeDetailMarcheClick
      Kind = bkNo
    end
  end
  object AfficheOptionPrintDetailMarche: TPanel
    Left = 11
    Top = 123
    Width = 193
    Height = 22
    BevelInner = bvLowered
    Caption = 'Imprimer'
    Color = 59110
    TabOrder = 37
    OnClick = AfficheOptionPrintDetailMarcheClick
    object Bevel32: TBevel
      Left = 8
      Top = 40
      Width = 177
      Height = 169
    end
    object RadioGroup5: TRadioGroup
      Left = 16
      Top = 80
      Width = 161
      Height = 121
      Caption = 'Options d'#39'Impression:'
      TabOrder = 0
    end
    object StaticText2: TStaticText
      Left = 24
      Top = 107
      Width = 105
      Height = 17
      Caption = 'Orientation du papier:'
      TabOrder = 1
    end
    object RBOrientationPapierDetailMarche: TComboBox
      Left = 24
      Top = 128
      Width = 145
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
        'Paysage'
        'Automatique')
    end
    object RBAjustementDetailMarche: TCheckBox
      Left = 24
      Top = 168
      Width = 113
      Height = 17
      Caption = 'Ajustement !'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object BitBtn11: TBitBtn
      Left = 16
      Top = 48
      Width = 161
      Height = 25
      Caption = 'Imprimer'
      TabOrder = 4
      OnClick = BitBtn11Click
      Kind = bkHelp
    end
  end
  object AfficheOperationsDM: TPanel
    Left = 776
    Top = 83
    Width = 233
    Height = 350
    BevelInner = bvLowered
    Color = 11599871
    TabOrder = 30
    object Bevel28: TBevel
      Left = 8
      Top = 40
      Width = 217
      Height = 297
    end
    object BitBtn71: TBitBtn
      Left = 5
      Top = 5
      Width = 220
      Height = 25
      Caption = 'Op'#233'ration'
      TabOrder = 0
      OnClick = BitBtn71Click
      Kind = bkHelp
    end
    object BitBtn68: TBitBtn
      Left = 16
      Top = 48
      Width = 204
      Height = 25
      Caption = 'Liste des Lots'
      TabOrder = 1
      OnClick = BitBtn68Click
      Kind = bkAll
      Margin = 5
    end
    object BitBtn61: TBitBtn
      Left = 16
      Top = 80
      Width = 204
      Height = 25
      Caption = 'D'#233'tail'
      TabOrder = 2
      OnClick = BitBtn61Click
      Kind = bkHelp
      Margin = 5
    end
    object BitBtn65: TBitBtn
      Left = 16
      Top = 112
      Width = 204
      Height = 25
      Caption = 'Approvisionnement'
      TabOrder = 3
      OnClick = BitBtn65Click
      Kind = bkHelp
      Margin = 5
    end
    object BitBtn76: TBitBtn
      Left = 16
      Top = 144
      Width = 204
      Height = 25
      Caption = 'Formulation'
      TabOrder = 4
      OnClick = BitBtn76Click
      Kind = bkHelp
      Margin = 5
    end
    object BitBtn82: TBitBtn
      Left = 16
      Top = 176
      Width = 204
      Height = 25
      Caption = 'Authentification'
      TabOrder = 5
      OnClick = BitBtn82Click
      Kind = bkHelp
      Margin = 5
    end
    object BitBtn83: TBitBtn
      Left = 16
      Top = 208
      Width = 204
      Height = 25
      Caption = 'Devis Estimatif et Qte.'
      TabOrder = 6
      OnClick = BitBtn83Click
      Kind = bkRetry
      Margin = 5
    end
    object BitBtn89: TBitBtn
      Left = 16
      Top = 240
      Width = 204
      Height = 25
      Caption = 'Devis des Travaux R.A.R'
      TabOrder = 7
      OnClick = BitBtn89Click
      Kind = bkHelp
      Margin = 5
    end
    object BitBtn4: TBitBtn
      Left = 16
      Top = 272
      Width = 204
      Height = 25
      Caption = 'Impoeter d'#39'un Fichier  Excel'
      TabOrder = 8
      OnClick = BitBtn4Click
      Kind = bkHelp
      Margin = 5
    end
    object BitBtn5: TBitBtn
      Left = 16
      Top = 304
      Width = 204
      Height = 25
      Caption = 'Exporter en Fichier Excel'
      TabOrder = 9
      OnClick = BitBtn5Click
      Kind = bkHelp
      Margin = 5
    end
  end
  object TableauSelection: TStringGrid
    Left = -585
    Top = 465
    Width = 657
    Height = 281
    Ctl3D = False
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goEditing, goAlwaysShowEditor]
    ParentCtl3D = False
    TabOrder = 2
    Visible = False
    OnClick = TableauSelectionClick
    OnKeyDown = TableauSelectionKeyDown
    OnKeyPress = TableauSelectionKeyPress
  end
  object MemoDetailMarche: TMemo
    Left = -680
    Top = 192
    Width = 761
    Height = 105
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 19
    Visible = False
    WantTabs = True
  end
end
