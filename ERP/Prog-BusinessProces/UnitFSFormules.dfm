object FSFormules: TFSFormules
  Left = 0
  Top = 2
  Width = 1366
  Height = 727
  Caption = 'Formules de Calcul'
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
  object Bevel5: TBevel
    Left = 1216
    Top = 48
    Width = 121
    Height = 41
  end
  object Bevel4: TBevel
    Left = 8
    Top = 48
    Width = 145
    Height = 41
  end
  object Bevel6: TBevel
    Left = 168
    Top = 48
    Width = 145
    Height = 41
  end
  object Bevel11: TBevel
    Left = 680
    Top = 48
    Width = 145
    Height = 41
  end
  object Bevel12: TBevel
    Left = 840
    Top = 48
    Width = 145
    Height = 41
  end
  object Bevel17: TBevel
    Left = 328
    Top = 48
    Width = 145
    Height = 41
  end
  object TableauFormulesCopie: TStringGrid
    Left = 16
    Top = 136
    Width = 1321
    Height = 65
    HelpType = htKeyword
    Color = 16117218
    ColCount = 14
    Ctl3D = False
    DefaultColWidth = 180
    DefaultRowHeight = 20
    FixedColor = clInactiveCaptionText
    FixedCols = 2
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 19
    ColWidths = (
      31
      3
      180
      180
      180
      180
      180
      180
      180
      180
      180
      180
      180
      180)
  end
  object EditClose: TEdit
    Left = 1280
    Top = 59
    Width = 17
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 0
  end
  object EditModification: TEdit
    Left = 1269
    Top = 59
    Width = 33
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
  end
  object TableauFormules: TStringGrid
    Left = 8
    Top = 128
    Width = 1329
    Height = 553
    HelpType = htKeyword
    Color = 16117218
    ColCount = 14
    Ctl3D = False
    DefaultColWidth = 180
    DefaultRowHeight = 20
    FixedCols = 2
    RowCount = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goAlwaysShowEditor]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    OnClick = TableauFormulesClick
    OnContextPopup = TableauFormulesContextPopup
    OnDrawCell = TableauFormulesDrawCell
    OnKeyDown = TableauFormulesKeyDown
    OnKeyPress = TableauFormulesKeyPress
    OnMouseMove = TableauFormulesMouseMove
    ColWidths = (
      24
      2
      180
      180
      180
      180
      180
      180
      180
      180
      180
      180
      180
      180)
  end
  object BitNouvelleFormule: TBitBtn
    Left = 16
    Top = 56
    Width = 129
    Height = 25
    Caption = 'Nouvelle'
    TabOrder = 3
    OnClick = BitNouvelleFormuleClick
    Kind = bkAll
  end
  object BitBtn9: TBitBtn
    Left = 848
    Top = 56
    Width = 129
    Height = 25
    Caption = 'D'#233'sactiver'
    TabOrder = 4
    OnClick = BitBtn9Click
    Kind = bkNo
  end
  object BitBtn11: TBitBtn
    Left = 176
    Top = 56
    Width = 129
    Height = 25
    Caption = 'Modifier'
    TabOrder = 5
    OnClick = BitBtn11Click
    Kind = bkRetry
  end
  object BitBtn8: TBitBtn
    Left = 1224
    Top = 56
    Width = 107
    Height = 25
    Caption = 'Fermer'
    TabOrder = 6
    OnClick = BitBtn8Click
    Kind = bkCancel
  end
  object AfficheRubPers: TControlBar
    Left = 176
    Top = 448
    Width = 169
    Height = 30
    Color = 16121555
    ParentColor = False
    TabOrder = 7
    Visible = False
    object EditListeRub: TComboBox
      Left = 11
      Top = 2
      Width = 150
      Height = 21
      BevelInner = bvNone
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 0
      Text = 'Valeur Initiale'
      OnSelect = EditListeRubSelect
      Items.Strings = (
        'Valeur Initiale'
        'Mode de payement'
        'Liste Valeurs')
    end
  end
  object AfficheFonctions: TControlBar
    Left = 288
    Top = 280
    Width = 193
    Height = 185
    Color = 16121555
    ParentColor = False
    TabOrder = 8
    Visible = False
    OnClick = AfficheFonctionsClick
    OnMouseMove = AfficheFonctionsMouseMove
    object StaticText7: TStaticText
      Left = 11
      Top = 2
      Width = 176
      Height = 22
      Caption = #167'ImporteData                                      '
      TabOrder = 0
      OnMouseMove = StaticText7MouseMove
    end
    object StaticText6: TStaticText
      Left = 11
      Top = 28
      Width = 176
      Height = 22
      Caption = #167'MaxNum                                          '
      TabOrder = 1
      OnMouseMove = StaticText6MouseMove
    end
    object StaticText8: TStaticText
      Left = 11
      Top = 54
      Width = 176
      Height = 22
      Caption = #167'MinNum                                           '
      TabOrder = 2
      OnMouseMove = StaticText8MouseMove
    end
    object StaticText9: TStaticText
      Left = 11
      Top = 80
      Width = 176
      Height = 22
      Caption = #167'ImporteDataIdentificateurEntreprise'
      TabOrder = 3
      OnMouseMove = StaticText9MouseMove
    end
    object StaticText10: TStaticText
      Left = 11
      Top = 106
      Width = 176
      Height = 22
      Caption = #167'FonctionCalculeFormule                  '
      TabOrder = 4
      OnMouseMove = StaticText10MouseMove
    end
    object StaticText11: TStaticText
      Left = 11
      Top = 132
      Width = 176
      Height = 22
      Caption = #167'ValePositive                                    '
      TabOrder = 5
      OnClick = StaticText11Click
      OnMouseMove = StaticText11MouseMove
    end
  end
  object AfficheOptions: TControlBar
    Left = 88
    Top = 192
    Width = 129
    Height = 136
    Color = 16121555
    ParentColor = False
    TabOrder = 9
    Visible = False
    object StaticText1: TStaticText
      Left = 11
      Top = 2
      Width = 112
      Height = 22
      Caption = 'Liste des Formules       '
      Color = 16121555
      ParentColor = False
      TabOrder = 0
      OnClick = StaticText1Click
      OnMouseMove = StaticText1MouseMove
    end
    object StaticText2: TStaticText
      Left = 11
      Top = 106
      Width = 112
      Height = 22
      Caption = '                                    '
      TabOrder = 1
      OnClick = StaticText2Click
      OnMouseMove = StaticText2MouseMove
    end
    object StaticText3: TStaticText
      Left = 11
      Top = 54
      Width = 112
      Height = 22
      Caption = 'Edition                          '
      TabOrder = 2
      OnClick = StaticText3Click
      OnMouseMove = StaticText3MouseMove
    end
    object StaticText4: TStaticText
      Left = 11
      Top = 80
      Width = 112
      Height = 22
      Caption = '                                    '
      TabOrder = 3
      OnClick = StaticText4Click
      OnMouseMove = StaticText4MouseMove
    end
    object StaticText5: TStaticText
      Left = 11
      Top = 28
      Width = 112
      Height = 22
      Caption = 'Liste des Fonctions        '
      TabOrder = 4
      OnMouseMove = StaticText5MouseMove
    end
  end
  object AfficheSuppModifTrier: TPanel
    Left = 400
    Top = 224
    Width = 529
    Height = 57
    Color = clSkyBlue
    TabOrder = 10
    Visible = False
    object Bevel2: TBevel
      Left = 8
      Top = 8
      Width = 513
      Height = 41
    end
    object BitOKSuppModifTrier: TBitBtn
      Left = 16
      Top = 16
      Width = 105
      Height = 25
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
      OnClick = BitOKSuppModifTrierClick
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
    object BitNonSuppModifTrier: TBitBtn
      Left = 408
      Top = 16
      Width = 105
      Height = 25
      TabOrder = 1
      OnClick = BitNonSuppModifTrierClick
      Kind = bkNo
    end
  end
  object AfficheTexte: TPanel
    Left = 8
    Top = 93
    Width = 1329
    Height = 33
    BevelInner = bvLowered
    TabOrder = 11
    object EditACol: TEdit
      Left = 40
      Top = 8
      Width = 25
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object EditARow: TEdit
      Left = 16
      Top = 8
      Width = 25
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object BitRecherche: TBitBtn
      Left = 8
      Top = 4
      Width = 105
      Height = 25
      Caption = 'Recherche !'
      TabOrder = 3
      OnClick = BitRechercheClick
      Kind = bkHelp
    end
    object EditRechercheFormule: TEdit
      Left = 120
      Top = 8
      Width = 161
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
    end
    object BitBtn5: TBitBtn
      Left = 1208
      Top = 4
      Width = 115
      Height = 25
      Caption = 'Ins'#233'rer le model !'
      TabOrder = 4
      OnClick = BitBtn5Click
      Kind = bkHelp
    end
  end
  object BitBtn1: TBitBtn
    Left = 688
    Top = 56
    Width = 129
    Height = 25
    Caption = 'Activer'
    TabOrder = 12
    OnClick = BitBtn1Click
    Kind = bkAll
  end
  object TypeFormuleAfficher: TPanel
    Left = 8
    Top = 3
    Width = 1329
    Height = 39
    BevelWidth = 3
    Color = 8454143
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
    OnClick = TypeFormuleAfficherClick
    object EditCodeTypeFormuleAfficher: TEdit
      Left = 1200
      Top = 8
      Width = 121
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
      OnEnter = EditCodeTypeFormuleAfficherEnter
    end
  end
  object AfficheMaxMin: TPanel
    Left = 176
    Top = 488
    Width = 329
    Height = 33
    BevelInner = bvLowered
    Color = 16121555
    TabOrder = 17
    Visible = False
    object TextMaxMin: TLabel
      Left = 8
      Top = 8
      Width = 48
      Height = 13
      Caption = #167'MaxNum'
    end
    object Label4: TLabel
      Left = 58
      Top = 8
      Width = 34
      Height = 13
      Caption = '( Num1'
    end
    object Label5: TLabel
      Left = 151
      Top = 8
      Width = 103
      Height = 13
      Caption = '! Num2                      )'
    end
    object EditMaxMin1: TEdit
      Left = 95
      Top = 7
      Width = 52
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnKeyDown = EditMaxMin1KeyDown
    end
    object EditMaxMin2: TEdit
      Left = 190
      Top = 8
      Width = 57
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnKeyDown = EditMaxMin2KeyDown
    end
    object BitOKMaxMin: TBitBtn
      Left = 261
      Top = 5
      Width = 65
      Height = 25
      Caption = 'OK'
      TabOrder = 2
      OnClick = BitOKMaxMinClick
      Kind = bkAll
    end
  end
  object AfficheTypeFormule: TPanel
    Left = 492
    Top = 208
    Width = 609
    Height = 257
    BevelInner = bvLowered
    TabOrder = 14
    Visible = False
    OnMouseDown = AfficheTypeFormuleMouseDown
    object Bevel3: TBevel
      Left = 480
      Top = 8
      Width = 122
      Height = 105
    end
    object Bevel7: TBevel
      Left = 479
      Top = 208
      Width = 122
      Height = 41
    end
    object TableauTypeFormule: TStringGrid
      Left = 8
      Top = 8
      Width = 465
      Height = 240
      ColCount = 4
      Ctl3D = False
      DefaultColWidth = 40
      DefaultRowHeight = 20
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goAlwaysShowEditor]
      ParentCtl3D = False
      TabOrder = 0
      OnClick = TableauTypeFormuleClick
      OnDblClick = TableauTypeFormuleDblClick
      ColWidths = (
        40
        2
        40
        40)
    end
    object BitNouveauTF: TBitBtn
      Left = 488
      Top = 16
      Width = 105
      Height = 25
      Caption = 'Nouveau'
      TabOrder = 1
      OnClick = BitNouveauTFClick
      Kind = bkAll
    end
    object BitModifierTF: TBitBtn
      Left = 488
      Top = 48
      Width = 105
      Height = 25
      Caption = 'Modifier'
      TabOrder = 2
      OnClick = BitModifierTFClick
      Kind = bkRetry
    end
    object BitSupprimerTF: TBitBtn
      Left = 488
      Top = 80
      Width = 105
      Height = 25
      Caption = 'Supprimer'
      ModalResult = 2
      TabOrder = 3
      OnClick = BitSupprimerTFClick
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
    object BitBtn7: TBitBtn
      Left = 488
      Top = 216
      Width = 105
      Height = 25
      Caption = 'Quitter'
      TabOrder = 4
      OnClick = BitBtn7Click
      Kind = bkNo
    end
    object AfficheOperationTypeFormule: TPanel
      Left = 24
      Top = 64
      Width = 433
      Height = 105
      BevelWidth = 2
      Color = 8454143
      TabOrder = 5
      Visible = False
      object Bevel8: TBevel
        Left = 8
        Top = 8
        Width = 417
        Height = 89
      end
      object Label1: TLabel
        Left = 35
        Top = 19
        Width = 101
        Height = 13
        Alignment = taRightJustify
        Caption = 'PositionTypeFormule:'
      end
      object Label2: TLabel
        Left = 47
        Top = 43
        Width = 89
        Height = 13
        Alignment = taRightJustify
        Caption = 'CodeTypeFormule:'
      end
      object Label3: TLabel
        Left = 16
        Top = 67
        Width = 120
        Height = 13
        Alignment = taRightJustify
        Caption = 'DesignationTypeFormule:'
      end
      object Bevel9: TBevel
        Left = 232
        Top = 16
        Width = 186
        Height = 41
      end
      object EditPositionTypeFormule: TEdit
        Left = 144
        Top = 16
        Width = 81
        Height = 19
        Color = clSilver
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
      object EditCodeTypeFormule: TEdit
        Left = 144
        Top = 40
        Width = 81
        Height = 19
        Color = clSilver
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
      object EditDesignationTypeFormule: TEdit
        Left = 144
        Top = 64
        Width = 273
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
      end
      object BitOperationTypeFormule: TBitBtn
        Left = 240
        Top = 24
        Width = 171
        Height = 25
        TabOrder = 3
        OnClick = BitOperationTypeFormuleClick
        Kind = bkAll
      end
    end
  end
  object AfficheInsererModele: TPanel
    Left = 400
    Top = 224
    Width = 529
    Height = 57
    BevelInner = bvLowered
    Color = 8454143
    TabOrder = 16
    Visible = False
    object BitNonInsererModel: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 41
      TabOrder = 0
      OnClick = BitNonInsererModelClick
      Kind = bkCancel
    end
    object BitOKInsererModel: TBitBtn
      Left = 176
      Top = 8
      Width = 345
      Height = 41
      Caption = 'Voulez vous remplacer la liste des formules affich'#233'es'
      TabOrder = 1
      OnClick = BitOKInsererModelClick
      Kind = bkAll
      Margin = 5
    end
    object RBOKInsererModel: TCheckBox
      Left = 472
      Top = 20
      Width = 41
      Height = 17
      Caption = 'OK !'
      TabOrder = 2
    end
  end
  object Panel1: TPanel
    Left = 40
    Top = 584
    Width = 361
    Height = 81
    BevelInner = bvLowered
    Enabled = False
    TabOrder = 18
    Visible = False
    object Label6: TLabel
      Left = 112
      Top = 24
      Width = 31
      Height = 13
      Caption = 'Num1:'
    end
    object Label7: TLabel
      Left = 240
      Top = 24
      Width = 31
      Height = 13
      Caption = 'Num2:'
    end
    object Label8: TLabel
      Left = 96
      Top = 64
      Width = 42
      Height = 13
      Caption = 'R'#233'sultat:'
    end
    object Edit1: TEdit
      Left = 152
      Top = 16
      Width = 81
      Height = 21
      TabOrder = 0
      Text = '((5/2)-(6/4))/2'
    end
    object Edit2: TEdit
      Left = 280
      Top = 16
      Width = 73
      Height = 21
      TabOrder = 1
      Text = '7'
    end
    object BitBtn6: TBitBtn
      Left = 8
      Top = 48
      Width = 75
      Height = 25
      Caption = 'MaxNum'
      TabOrder = 2
      OnClick = BitBtn6Click
    end
    object Edit3: TEdit
      Left = 152
      Top = 56
      Width = 201
      Height = 21
      TabOrder = 3
    end
    object BitBtn10: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'MinNum'
      TabOrder = 4
      OnClick = BitBtn10Click
    end
  end
  object AfficheCopie: TControlBar
    Left = 176
    Top = 208
    Width = 121
    Height = 85
    Color = 16121555
    ParentColor = False
    TabOrder = 20
    Visible = False
    object StaticCopierSelection: TStaticText
      Left = 11
      Top = 2
      Width = 104
      Height = 22
      Caption = 'Copier la s'#233'lection     '
      TabOrder = 0
      OnClick = StaticCopierSelectionClick
      OnMouseMove = StaticCopierSelectionMouseMove
    end
    object StaticCopierTous: TStaticText
      Left = 11
      Top = 28
      Width = 104
      Height = 22
      Caption = 'Copier Tous               '
      TabOrder = 1
      OnClick = StaticCopierTousClick
      OnMouseMove = StaticCopierTousMouseMove
    end
    object StaticColler: TStaticText
      Left = 11
      Top = 54
      Width = 104
      Height = 22
      Caption = 'Coller                         '
      TabOrder = 2
      OnClick = StaticCollerClick
      OnMouseMove = StaticCollerMouseMove
    end
  end
  object AfficheIdentificateurEntreprise: TControlBar
    Left = 64
    Top = 392
    Width = 169
    Height = 30
    Color = 16121555
    ParentColor = False
    TabOrder = 21
    Visible = False
    object EditListeIdentificateurEntreprise: TComboBox
      Left = 11
      Top = 2
      Width = 150
      Height = 21
      BevelInner = bvNone
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 0
      OnSelect = EditListeIdentificateurEntrepriseSelect
      Items.Strings = (
        '')
    end
  end
  object AfficheOperationDupliqueTypeFormule: TPanel
    Left = 760
    Top = 104
    Width = 625
    Height = 329
    Caption = 'AfficheOperationDupliqueTypeFormule'
    TabOrder = 22
    Visible = False
    OnMouseDown = AfficheOperationDupliqueTypeFormuleMouseDown
    object Bevel13: TBevel
      Left = 8
      Top = 8
      Width = 105
      Height = 41
    end
    object TableauDupliqueTypeFormule: TStringGrid
      Left = 8
      Top = 56
      Width = 609
      Height = 265
      Ctl3D = False
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
      ParentCtl3D = False
      TabOrder = 0
      OnKeyDown = TableauDupliqueTypeFormuleKeyDown
      RowHeights = (
        24
        24
        24
        24
        24)
    end
    object BitBtn13: TBitBtn
      Left = 16
      Top = 16
      Width = 89
      Height = 25
      TabOrder = 1
      OnClick = BitBtn13Click
      Kind = bkCancel
    end
  end
  object AfficheOperationTrieSupp: TPanel
    Left = 992
    Top = 51
    Width = 217
    Height = 233
    Caption = 'AfficheOperationTrieSupp'
    TabOrder = 13
    object Bevel1: TBevel
      Left = 8
      Top = 40
      Width = 201
      Height = 41
    end
    object Bevel10: TBevel
      Left = 8
      Top = 136
      Width = 201
      Height = 41
    end
    object Bevel15: TBevel
      Left = 8
      Top = 184
      Width = 201
      Height = 41
    end
    object Bevel16: TBevel
      Left = 8
      Top = 88
      Width = 201
      Height = 41
    end
    object BitBtn12: TBitBtn
      Left = 16
      Top = 48
      Width = 185
      Height = 25
      Caption = 'Trier'
      TabOrder = 0
      OnClick = BitBtn12Click
      Kind = bkRetry
    end
    object BitBtn2: TBitBtn
      Left = 16
      Top = 96
      Width = 185
      Height = 25
      Caption = 'Supprimer'
      TabOrder = 1
      OnClick = BitBtn2Click
      Kind = bkCancel
    end
    object BitBtn3: TBitBtn
      Left = 8
      Top = 5
      Width = 201
      Height = 25
      Caption = 'Op'#233'rations'
      TabOrder = 2
      OnClick = BitBtn3Click
      Kind = bkHelp
    end
    object BitBtn4: TBitBtn
      Left = 16
      Top = 144
      Width = 185
      Height = 25
      Caption = 'Dupliquer un type Formule'
      TabOrder = 3
      OnClick = BitBtn4Click
      Kind = bkHelp
      Margin = 0
    end
    object BitBtn15: TBitBtn
      Left = 16
      Top = 192
      Width = 185
      Height = 25
      Caption = 'Enregistrer dans un autre fichier'
      TabOrder = 4
      OnClick = BitBtn15Click
      Kind = bkHelp
    end
  end
  object AfficheTypeAffichageNonVisible: TPanel
    Left = 688
    Top = 168
    Width = 249
    Height = 257
    BevelInner = bvLowered
    TabOrder = 23
    Visible = False
    OnMouseDown = AfficheTypeAffichageNonVisibleMouseDown
    object Bevel18: TBevel
      Left = 8
      Top = 56
      Width = 233
      Height = 41
    end
    object Bevel14: TBevel
      Left = 8
      Top = 8
      Width = 233
      Height = 41
    end
    object Label9: TLabel
      Left = 16
      Top = 72
      Width = 125
      Height = 13
      Caption = 'Liste des Type non visible.'
    end
    object BitBtn14: TBitBtn
      Left = 160
      Top = 64
      Width = 75
      Height = 25
      TabOrder = 0
      OnClick = BitBtn14Click
      Kind = bkCancel
    end
    object TableauTypeAffichage: TStringGrid
      Left = 9
      Top = 104
      Width = 232
      Height = 145
      ColCount = 3
      Ctl3D = False
      RowCount = 2
      ParentCtl3D = False
      TabOrder = 1
      OnDblClick = TableauTypeAffichageDblClick
    end
    object EditListeTableauConserne: TComboBox
      Left = 16
      Top = 19
      Width = 217
      Height = 21
      BevelInner = bvLowered
      BevelKind = bkFlat
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 2
      Text = 'TableauDetailMouvement'
      OnChange = EditListeTableauConserneChange
      OnKeyPress = EditListeTableauConserneKeyPress
      Items.Strings = (
        'TableauDetailMouvement'
        'TableauFormules')
    end
  end
  object BitTypeNonVisible: TBitBtn
    Left = 336
    Top = 56
    Width = 129
    Height = 25
    Caption = 'Type Non visible'
    TabOrder = 24
    OnClick = BitTypeNonVisibleClick
    Kind = bkHelp
  end
  object TableauTypeFormulesBaremes: TStringGrid
    Left = 704
    Top = 432
    Width = 529
    Height = 249
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 25
    Visible = False
    OnDblClick = TableauTypeFormulesBaremesDblClick
    OnMouseDown = TableauTypeFormulesBaremesMouseDown
  end
  object OuvrirFichier: TOpenDialog
    Left = 392
    Top = 48
  end
  object EnregistrerUnFichier: TSaveDialog
    Left = 440
    Top = 48
  end
end
