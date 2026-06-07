object FSAttachements: TFSAttachements
  Left = 2
  Top = 2
  Width = 1363
  Height = 733
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Attachements'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 1248
    Top = 8
    Width = 90
    Height = 41
  end
  object Bevel3: TBevel
    Left = 1000
    Top = 8
    Width = 185
    Height = 65
  end
  object Bevel4: TBevel
    Left = 824
    Top = 8
    Width = 169
    Height = 65
  end
  object AfficheAdresseAttachement: TPanel
    Left = 416
    Top = 664
    Width = 921
    Height = 25
    BevelInner = bvLowered
    TabOrder = 30
  end
  object EditMarcheControle: TMemo
    Left = 448
    Top = 176
    Width = 497
    Height = 105
    TabOrder = 22
  end
  object TestePrintDevis: TMemo
    Left = 440
    Top = 288
    Width = 409
    Height = 65
    TabOrder = 20
  end
  object EditDesignationArticleAttachementTesteListe: TMemo
    Left = 440
    Top = 208
    Width = 409
    Height = 65
    TabOrder = 17
  end
  object EditDesignationArticleAttachementTeste: TMemo
    Left = 440
    Top = 128
    Width = 409
    Height = 65
    TabOrder = 16
  end
  object TableauDetailAttachement: TStringGrid
    Left = 416
    Top = 112
    Width = 921
    Height = 545
    ColCount = 13
    Ctl3D = False
    FixedCols = 3
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
    ParentCtl3D = False
    TabOrder = 4
    OnClick = TableauDetailAttachementClick
    OnKeyDown = TableauDetailAttachementKeyDown
    OnKeyPress = TableauDetailAttachementKeyPress
  end
  object Panel1: TPanel
    Left = 416
    Top = 8
    Width = 401
    Height = 65
    BevelInner = bvLowered
    TabOrder = 3
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
      Left = 96
      Top = 12
      Width = 73
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
    end
    object EditMaitreOuvrage: TEdit
      Left = 96
      Top = 36
      Width = 289
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
    end
  end
  object AfficheMarche: TPanel
    Left = 8
    Top = 8
    Width = 401
    Height = 137
    BevelInner = bvLowered
    TabOrder = 1
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
    object Label2: TLabel
      Left = 8
      Top = 107
      Width = 40
      Height = 13
      Caption = 'Attache:'
    end
    object Label5: TLabel
      Left = 152
      Top = 107
      Width = 15
      Height = 13
      Caption = 'du:'
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
      TabOrder = 2
      OnEnter = EditNSMarcheEnter
    end
    object EditMarche: TEdit
      Left = 136
      Top = 32
      Width = 241
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
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
      TabOrder = 4
      OnEnter = EditNStructureMarcheEnter
    end
    object EditStructureMarche: TEdit
      Left = 136
      Top = 56
      Width = 241
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
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
      TabOrder = 6
      OnEnter = EditNStatistiqueMarcheEnter
    end
    object EditStatistiqueMarche: TEdit
      Left = 136
      Top = 80
      Width = 241
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
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
      TabOrder = 1
      Text = 'Marche'
      OnChange = EditTypeProjetChange
      OnEnter = EditTypeProjetEnter
      OnKeyPress = EditTypeProjetKeyPress
      Items.Strings = (
        'Marche'
        'Avenant')
    end
    object EditNAttachementMarche: TEdit
      Left = 64
      Top = 104
      Width = 73
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 8
    end
    object EditDateAttachementA: TMaskEdit
      Left = 184
      Top = 104
      Width = 73
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 9
      Text = '  /  /    '
    end
    object IndiceAfficheStructure: TEdit
      Left = 380
      Top = 56
      Width = 17
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 10
      Text = '0'
    end
    object IndiceAfficheStatistique: TEdit
      Left = 380
      Top = 80
      Width = 17
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 11
      Text = '0'
    end
    object IndiceAfficheAttachement: TEdit
      Left = 380
      Top = 104
      Width = 17
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 12
      Text = '0'
    end
    object BitBtn3: TBitBtn
      Left = 308
      Top = 4
      Width = 89
      Height = 25
      Caption = 'Photos'
      TabOrder = 0
      OnClick = BitBtn3Click
      Kind = bkHelp
    end
  end
  object TableauLAttachement: TStringGrid
    Left = 8
    Top = 184
    Width = 401
    Height = 497
    Ctl3D = False
    FixedColor = 8454143
    FixedCols = 3
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
    ParentCtl3D = False
    TabOrder = 6
    OnClick = TableauLAttachementClick
    OnKeyPress = TableauLAttachementKeyPress
    ColWidths = (
      64
      64
      64
      64
      64)
    RowHeights = (
      24
      24)
  end
  object Panel2: TPanel
    Left = 8
    Top = 152
    Width = 401
    Height = 25
    BevelInner = bvLowered
    Caption = 'Liste des Attachements'
    Color = 8454143
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object Panel3: TPanel
    Left = 416
    Top = 80
    Width = 921
    Height = 25
    BevelInner = bvLowered
    Caption = 'D'#233'tail de l'#39'attachement s'#233'lectionn'#233
    Color = 8454143
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object AfficheOperationAttachement: TPanel
    Left = 24
    Top = 248
    Width = 361
    Height = 153
    BevelInner = bvLowered
    TabOrder = 5
    Visible = False
    object Label3: TLabel
      Left = 17
      Top = 10
      Width = 71
      Height = 13
      Alignment = taRightJustify
      Caption = 'NAttachement:'
    end
    object Label6: TLabel
      Left = 62
      Top = 35
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = 'Date:'
    end
    object Bevel1: TBevel
      Left = 8
      Top = 104
      Width = 345
      Height = 41
    end
    object Label7: TLabel
      Left = 29
      Top = 67
      Width = 59
      Height = 13
      Alignment = taRightJustify
      Caption = 'D'#233'signation:'
    end
    object Bevel5: TBevel
      Left = 8
      Top = 56
      Width = 345
      Height = 41
    end
    object EditNAttachement: TEdit
      Left = 96
      Top = 8
      Width = 121
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
    object EditDateAttachement: TDateTimePicker
      Left = 96
      Top = 32
      Width = 186
      Height = 21
      BevelInner = bvLowered
      BevelKind = bkFlat
      CalAlignment = dtaLeft
      Date = 0.0382940162016894
      Time = 0.0382940162016894
      DateFormat = dfLong
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 1
      OnKeyDown = EditDateAttachementKeyDown
    end
    object BitBtn1: TBitBtn
      Left = 16
      Top = 112
      Width = 75
      Height = 25
      Caption = 'Annuler'
      ModalResult = 2
      TabOrder = 2
      OnClick = BitBtn1Click
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
    object BitOptionAttachement: TBitBtn
      Left = 216
      Top = 112
      Width = 129
      Height = 25
      Caption = 'Valider'
      TabOrder = 3
      OnClick = BitOptionAttachementClick
      Kind = bkAll
    end
    object BitBtn5: TBitBtn
      Left = 120
      Top = 112
      Width = 75
      Height = 25
      Caption = 'Autres'
      TabOrder = 4
      OnClick = BitBtn5Click
      Kind = bkHelp
    end
    object EditNNewAttachement: TEdit
      Left = 320
      Top = 8
      Width = 33
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
    end
    object EditDesignationAttachement: TEdit
      Left = 96
      Top = 64
      Width = 249
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      OnKeyDown = EditDesignationAttachementKeyDown
    end
  end
  object TableauSelection: TStringGrid
    Left = -128
    Top = 457
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
  object AfficheSaisieAttachement: TPanel
    Left = 504
    Top = 184
    Width = 537
    Height = 297
    BevelInner = bvLowered
    TabOrder = 9
    Visible = False
    OnEnter = AfficheSaisieAttachementEnter
    OnExit = AfficheSaisieAttachementExit
    object Bevel13: TBevel
      Left = 8
      Top = 40
      Width = 521
      Height = 161
    end
    object Label28: TLabel
      Left = 42
      Top = 52
      Width = 60
      Height = 13
      Alignment = taRightJustify
      Caption = 'Code Article:'
    end
    object Label29: TLabel
      Left = 70
      Top = 76
      Width = 32
      Height = 13
      Alignment = taRightJustify
      Caption = 'Article:'
    end
    object Label30: TLabel
      Left = 21
      Top = 124
      Width = 81
      Height = 13
      Alignment = taRightJustify
      Caption = 'Quantit'#233' R'#233'alis'#233':'
    end
    object Label32: TLabel
      Left = 59
      Top = 100
      Width = 43
      Height = 13
      Alignment = taRightJustify
      Caption = 'Unit'#233' M.:'
    end
    object Label33: TLabel
      Left = 20
      Top = 148
      Width = 82
      Height = 13
      Alignment = taRightJustify
      Caption = 'Quantit'#233' March'#233':'
    end
    object Label34: TLabel
      Left = 16
      Top = 172
      Width = 86
      Height = 13
      Alignment = taRightJustify
      Caption = 'Quantit'#233' Avenant:'
    end
    object Label31: TLabel
      Left = 35
      Top = 268
      Width = 43
      Height = 13
      Alignment = taRightJustify
      Caption = 'Avenant:'
    end
    object EditCodeProduitAttachement: TEdit
      Left = 8
      Top = 208
      Width = 89
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 9
    end
    object BitBtn28: TBitBtn
      Left = 8
      Top = 8
      Width = 521
      Height = 25
      Caption = 'Quitter'
      TabOrder = 0
      OnClick = BitBtn28Click
      Kind = bkCancel
    end
    object EditDesignationArticleAttachement: TMemo
      Left = 112
      Top = 72
      Width = 385
      Height = 21
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      WantReturns = False
      OnKeyDown = EditDesignationArticleAttachementKeyDown
      OnKeyUp = EditDesignationArticleAttachementKeyUp
    end
    object EditQuantiteAttachementRealise: TMemo
      Left = 112
      Top = 120
      Width = 121
      Height = 21
      Alignment = taRightJustify
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      WantReturns = False
      OnExit = EditQuantiteAttachementRealiseExit
      OnKeyDown = EditQuantiteAttachementRealiseKeyDown
      OnKeyPress = EditQuantiteAttachementRealiseKeyPress
    end
    object EditPrixUnitaireAttachement: TMemo
      Left = 104
      Top = 208
      Width = 65
      Height = 19
      Alignment = taRightJustify
      Color = clScrollBar
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
      WantReturns = False
    end
    object BitValideAttachement: TBitBtn
      Left = 256
      Top = 104
      Width = 137
      Height = 57
      TabOrder = 4
      OnClick = BitValideAttachementClick
      Kind = bkAll
    end
    object EditCodeArticleAttachement: TMemo
      Left = 112
      Top = 48
      Width = 121
      Height = 21
      Alignment = taCenter
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      WantReturns = False
      OnKeyDown = EditCodeArticleAttachementKeyDown
      OnKeyUp = EditCodeArticleAttachementKeyUp
    end
    object EditUnitMAttachement: TMemo
      Left = 112
      Top = 96
      Width = 73
      Height = 21
      Alignment = taCenter
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 6
      WantReturns = False
    end
    object EditTrieAttachement: TEdit
      Left = 176
      Top = 208
      Width = 225
      Height = 19
      Color = clScrollBar
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 7
    end
    object EditQuantiteRealiseObjetMarche: TMemo
      Left = 112
      Top = 144
      Width = 121
      Height = 21
      Alignment = taRightJustify
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 8
      WantReturns = False
      OnExit = EditQuantiteRealiseObjetMarcheExit
      OnKeyDown = EditQuantiteRealiseObjetMarcheKeyDown
      OnKeyPress = EditQuantiteRealiseObjetMarcheKeyPress
      OnKeyUp = EditQuantiteRealiseObjetMarcheKeyUp
    end
    object EditQuantiteRealiseObjetAvenant: TMemo
      Left = 112
      Top = 168
      Width = 121
      Height = 21
      Alignment = taRightJustify
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 10
      WantReturns = False
      OnKeyPress = EditQuantiteRealiseObjetAvenantKeyPress
    end
    object EditNumAvenantAttachement: TEdit
      Left = 88
      Top = 264
      Width = 33
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 11
    end
    object EditAvenantAttachement: TEdit
      Left = 120
      Top = 264
      Width = 249
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 12
    end
    object RBControleQteActive: TCheckBox
      Left = 376
      Top = 264
      Width = 153
      Height = 17
      Caption = 'Cont'#244'le "Quantit'#233's" Activ'#233' !'
      Checked = True
      State = cbChecked
      TabOrder = 13
    end
  end
  object AfficheQteMarche: TPanel
    Left = 1041
    Top = 184
    Width = 280
    Height = 89
    BevelInner = bvLowered
    Color = 12779209
    TabOrder = 10
    Visible = False
    object EditAfficheQteMarche: TMemo
      Left = 8
      Top = 8
      Width = 265
      Height = 73
      Color = clBlack
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object AfficheEtatMarche: TPanel
    Left = 504
    Top = 88
    Width = 497
    Height = 89
    Color = 12114417
    TabOrder = 11
    Visible = False
    object Bevel16: TBevel
      Left = 384
      Top = 8
      Width = 97
      Height = 41
    end
    object EditQte: TEdit
      Left = 408
      Top = 16
      Width = 49
      Height = 21
      TabOrder = 2
    end
    object BitOKEtatMarche: TBitBtn
      Left = 392
      Top = 16
      Width = 83
      Height = 25
      Caption = 'OK'
      TabOrder = 0
      OnClick = BitOKEtatMarcheClick
      Kind = bkAll
    end
    object EditEtatMarche: TMemo
      Left = 8
      Top = 8
      Width = 369
      Height = 73
      Color = clBlack
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  object EditSauvegardeAttachement: TEdit
    Left = 1272
    Top = 16
    Width = 49
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 12
  end
  object AfficheAvenantAttachement: TPanel
    Left = 16
    Top = 384
    Width = 537
    Height = 305
    BevelInner = bvLowered
    Color = 12058551
    TabOrder = 13
    Visible = False
    object TableauAvenantAttachement: TStringGrid
      Left = 8
      Top = 40
      Width = 521
      Height = 257
      ColCount = 2
      DefaultColWidth = 30
      FixedColor = 9240460
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goEditing]
      TabOrder = 0
      ColWidths = (
        30
        467)
    end
    object BitBtn29: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Quitter'
      ModalResult = 2
      TabOrder = 1
      OnClick = BitBtn29Click
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
  object AfficheDesignationArticlesAttachement: TPanel
    Left = 616
    Top = 374
    Width = 649
    Height = 252
    BevelInner = bvLowered
    Color = 8454143
    TabOrder = 14
    Visible = False
    object BitBtn30: TBitBtn
      Left = 8
      Top = 8
      Width = 633
      Height = 25
      Caption = 'Quitter'
      ModalResult = 2
      TabOrder = 1
      OnClick = BitBtn30Click
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
    object TableauDesignationArticlesAttachement: TStringGrid
      Left = 8
      Top = 40
      Width = 633
      Height = 204
      Color = 13041663
      ColCount = 6
      Ctl3D = False
      DefaultColWidth = 40
      FixedColor = 8454143
      FixedCols = 0
      RowCount = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goEditing, goAlwaysShowEditor]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnClick = TableauDesignationArticlesAttachementClick
      OnKeyDown = TableauDesignationArticlesAttachementKeyDown
      OnKeyPress = TableauDesignationArticlesAttachementKeyPress
      ColWidths = (
        66
        382
        65
        87
        2
        2)
      RowHeights = (
        24
        24)
    end
  end
  object AfficheSauvegarderAttachement: TPanel
    Left = 568
    Top = 184
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
    TabOrder = 15
    Visible = False
    object Bevel14: TBevel
      Left = 8
      Top = 8
      Width = 481
      Height = 41
    end
    object EditOptionSauvegardeAttachement: TEdit
      Left = 32
      Top = 18
      Width = 49
      Height = 21
      TabOrder = 2
    end
    object BitOuiSauvegardeAttachement: TBitBtn
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
      OnClick = BitOuiSauvegardeAttachementClick
      Kind = bkAll
    end
    object BitNonSauvegardeAttachement: TBitBtn
      Left = 24
      Top = 16
      Width = 75
      Height = 25
      Caption = '&Non'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ModalResult = 7
      ParentFont = False
      TabOrder = 1
      OnClick = BitNonSauvegardeAttachementClick
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
  end
  object BitBtn31: TBitBtn
    Left = 832
    Top = 13
    Width = 153
    Height = 25
    Caption = 'Valider les Modifications'
    TabOrder = 0
    OnClick = BitBtn31Click
    Kind = bkAll
  end
  object BitBtn32: TBitBtn
    Left = 832
    Top = 42
    Width = 153
    Height = 25
    Caption = 'Annuler les Modifications'
    ModalResult = 2
    TabOrder = 18
    OnClick = BitBtn32Click
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
  object BitBtn2: TBitBtn
    Left = 1008
    Top = 13
    Width = 169
    Height = 25
    Caption = 'Imprimer'
    TabOrder = 19
    OnClick = BitBtn2Click
    Kind = bkHelp
  end
  object BitBtn13: TBitBtn
    Left = 1256
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Quitter'
    ModalResult = 2
    TabOrder = 21
    OnClick = BitBtn13Click
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
  object TableauAvenantMarche: TStringGrid
    Left = 416
    Top = 8
    Width = 401
    Height = 65
    ColCount = 2
    Ctl3D = False
    RowCount = 2
    ParentCtl3D = False
    TabOrder = 23
  end
  object AfficheIndiqueArchivePhoto: TPanel
    Left = 792
    Top = 576
    Width = 473
    Height = 369
    BevelInner = bvLowered
    Color = clSilver
    TabOrder = 24
    Visible = False
    object ArchivePhoto: TImage
      Left = 8
      Top = 40
      Width = 457
      Height = 321
      Stretch = True
    end
    object BitBtn78: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Annuler'
      ModalResult = 2
      TabOrder = 0
      OnClick = BitBtn78Click
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
  object TableauxListePositionArchivePhoto: TStringGrid
    Left = 336
    Top = 576
    Width = 447
    Height = 369
    Ctl3D = False
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
    ParentCtl3D = False
    TabOrder = 25
    Visible = False
    OnClick = TableauxListePositionArchivePhotoClick
  end
  object EditMaxColWidth: TEdit
    Left = 1280
    Top = 56
    Width = 41
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 26
    Text = '500'
  end
  object IncrimentEditMaxColWidth: TUpDown
    Left = 1321
    Top = 56
    Width = 17
    Height = 19
    Associate = EditMaxColWidth
    Min = 10
    Max = 1000
    Position = 500
    TabOrder = 27
    Thousands = False
    Wrap = False
    OnClick = IncrimentEditMaxColWidthClick
  end
  object BitBtn4: TBitBtn
    Left = 1008
    Top = 40
    Width = 169
    Height = 27
    Caption = 'Importer d'#233'tail Attachement'
    TabOrder = 28
    OnClick = BitBtn4Click
    Kind = bkHelp
  end
  object TableauAutresAttachements: TStringGrid
    Left = 136
    Top = 400
    Width = 609
    Height = 233
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 29
    Visible = False
    OnExit = TableauAutresAttachementsExit
    OnKeyDown = TableauAutresAttachementsKeyDown
  end
  object TimerClic: TTimer
    Enabled = False
    Interval = 200
    OnTimer = TimerClicTimer
    Left = 768
    Top = 16
  end
  object OuvrirFichier: TOpenDialog
    Left = 240
    Top = 8
  end
end
