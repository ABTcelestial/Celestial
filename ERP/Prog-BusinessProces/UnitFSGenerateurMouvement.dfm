object FSGenerateurMouvement: TFSGenerateurMouvement
  Left = 0
  Top = 6
  Width = 1359
  Height = 729
  Caption = 'G'#233'n'#233'rateur de Mouvements'
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
  object TableauTypeMouvement: TStringGrid
    Left = 8
    Top = 80
    Width = 1305
    Height = 241
    ColCount = 6
    Ctl3D = False
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSelect]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    OnClick = TableauTypeMouvementClick
    OnKeyPress = TableauTypeMouvementKeyPress
    RowHeights = (
      24
      24)
  end
  object TableauMouvement: TStringGrid
    Left = 8
    Top = 352
    Width = 1089
    Height = 329
    ColCount = 14
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    OnClick = TableauMouvementClick
    OnKeyPress = TableauMouvementKeyPress
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
  object AfficheMouvement: TPanel
    Left = 96
    Top = 384
    Width = 977
    Height = 265
    BevelInner = bvLowered
    Color = 8454143
    TabOrder = 2
    Visible = False
    object Bevel1: TBevel
      Left = 8
      Top = 8
      Width = 745
      Height = 185
    end
    object Bevel7: TBevel
      Left = 264
      Top = 16
      Width = 201
      Height = 68
    end
    object Bevel2: TBevel
      Left = 8
      Top = 216
      Width = 745
      Height = 42
    end
    object Label2: TLabel
      Left = 60
      Top = 19
      Width = 70
      Height = 13
      Alignment = taRightJustify
      Caption = 'P'#176'Mouvement:'
    end
    object Label3: TLabel
      Left = 43
      Top = 43
      Width = 87
      Height = 13
      Alignment = taRightJustify
      Caption = 'Code Mouvement:'
    end
    object Label4: TLabel
      Left = 12
      Top = 67
      Width = 118
      Height = 13
      Alignment = taRightJustify
      Caption = 'Designation Mouvement:'
    end
    object EditTitreFichierTiersConserne: TLabel
      Left = 22
      Top = 115
      Width = 108
      Height = 13
      Alignment = taRightJustify
      Caption = 'Fichier Tiers Conserne:'
    end
    object Label6: TLabel
      Left = 499
      Top = 19
      Width = 95
      Height = 13
      Alignment = taRightJustify
      Caption = 'Code Type Formule:'
    end
    object Label1: TLabel
      Left = 38
      Top = 139
      Width = 92
      Height = 13
      Alignment = taRightJustify
      Caption = 'Comptes Conserne:'
    end
    object Label33: TLabel
      Left = 50
      Top = 92
      Width = 78
      Height = 13
      Alignment = taRightJustify
      Caption = 'Type de Proces:'
    end
    object Label8: TLabel
      Left = 24
      Top = 163
      Width = 106
      Height = 13
      Alignment = taRightJustify
      Caption = 'Type Prix Mouvement:'
    end
    object Label13: TLabel
      Left = 491
      Top = 43
      Width = 103
      Height = 13
      Alignment = taRightJustify
      Caption = 'Mouvement'#233' compte:'
    end
    object Label14: TLabel
      Left = 541
      Top = 88
      Width = 53
      Height = 13
      Caption = 'Etat Utilis'#233':'
    end
    object Label5: TLabel
      Left = 488
      Top = 112
      Width = 104
      Height = 13
      Caption = 'Avec Date Ex'#233'cution:'
    end
    object Label15: TLabel
      Left = 520
      Top = 163
      Width = 70
      Height = 13
      Caption = 'Appartenance:'
    end
    object Label16: TLabel
      Left = 480
      Top = 136
      Width = 113
      Height = 13
      Caption = 'Avec Localisation G'#233'o.:'
    end
    object Bevel5: TBevel
      Left = 208
      Top = 134
      Width = 233
      Height = 24
    end
    object Label17: TLabel
      Left = 488
      Top = 59
      Width = 106
      Height = 13
      Alignment = taRightJustify
      Caption = 'Mouvement'#233' Finance:'
    end
    object Label18: TLabel
      Left = 270
      Top = 27
      Width = 60
      Height = 13
      Alignment = taRightJustify
      Caption = 'D'#233'bit/Cr'#233'dit:'
    end
    object Label19: TLabel
      Left = 759
      Top = 11
      Width = 59
      Height = 13
      Alignment = taRightJustify
      Caption = 'P'#176'LM Begin:'
    end
    object Label20: TLabel
      Left = 871
      Top = 11
      Width = 51
      Height = 13
      Alignment = taRightJustify
      Caption = 'P'#176'LM End:'
    end
    object EditEtatUtilise: TComboBox
      Left = 600
      Top = 85
      Width = 145
      Height = 21
      HelpType = htKeyword
      BevelKind = bkFlat
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 11
      Text = 'Facture'
      OnKeyDown = EditEtatUtiliseKeyDown
      OnKeyPress = EditEtatUtiliseKeyPress
      Items.Strings = (
        'Facture'
        'Bon Quantitatif'
        'Bon Valoris'#233
        'Etat standard'
        'Etat Double'
        'Ticket'
        'Ticket Pont Bascule'
        'Bon de Route'
        'Pont Bascule')
    end
    object BitBtn1: TBitBtn
      Left = 16
      Top = 224
      Width = 75
      Height = 25
      Caption = 'Annuler'
      ModalResult = 2
      TabOrder = 0
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
    object BitMouvement: TBitBtn
      Left = 624
      Top = 224
      Width = 123
      Height = 25
      TabOrder = 1
      OnClick = BitMouvementClick
      Kind = bkAll
    end
    object EditPositionMouvement: TEdit
      Left = 136
      Top = 16
      Width = 33
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
      OnKeyDown = EditPositionMouvementKeyDown
    end
    object EditCodeMouvement: TEdit
      Left = 136
      Top = 40
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnKeyDown = EditCodeMouvementKeyDown
    end
    object EditDesignationMouvement: TEdit
      Left = 136
      Top = 64
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      OnKeyDown = EditDesignationMouvementKeyDown
    end
    object EditFichierTiersConserne: TComboBox
      Left = 136
      Top = 112
      Width = 337
      Height = 21
      BevelKind = bkFlat
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 5
      Text = 'FFournisseur'
      OnKeyDown = EditFichierTiersConserneKeyDown
      OnKeyPress = EditFichierTiersConserneKeyPress
      OnSelect = EditFichierTiersConserneSelect
      Items.Strings = (
        'FFournisseur'
        'FClient'
        'FPersonnel'
        'FProjetFinance')
    end
    object EditCodeTypeFormuleBase: TEdit
      Left = 600
      Top = 16
      Width = 145
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 6
      OnEnter = EditCodeTypeFormuleBaseEnter
      OnKeyDown = EditCodeTypeFormuleBaseKeyDown
    end
    object EditCompteConserne: TEdit
      Left = 216
      Top = 136
      Width = 169
      Height = 19
      Color = 8454016
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
      OnEnter = EditCompteConserneEnter
      OnKeyDown = EditCompteConserneKeyDown
      OnKeyUp = EditCompteConserneKeyUp
    end
    object EditTypeProces: TComboBox
      Left = 136
      Top = 88
      Width = 121
      Height = 21
      BevelKind = bkFlat
      ItemHeight = 13
      TabOrder = 8
      Text = 'Commercial'
      OnChange = EditTypeProcesChange
      OnKeyDown = EditTypeProcesKeyDown
      Items.Strings = (
        'Business'
        'Commercial'
        'Paie'
        'Comptabilit'#233
        'Social')
    end
    object EditTypePrixMouvement: TComboBox
      Left = 136
      Top = 160
      Width = 145
      Height = 21
      HelpType = htKeyword
      BevelKind = bkFlat
      Ctl3D = True
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 9
      Text = 'Prix Vente'
      OnKeyDown = EditTypePrixMouvementKeyDown
      OnKeyPress = EditTypePrixMouvementKeyPress
      Items.Strings = (
        'Prix Vente'
        'Prix D'#233'tail'
        'Prix Gros'
        'Prix DemiGros'
        'Prix Achat')
    end
    object RBMouvementeCompte: TCheckBox
      Left = 600
      Top = 40
      Width = 145
      Height = 17
      Caption = 'Oui'
      Checked = True
      State = cbChecked
      TabOrder = 10
      OnClick = RBMouvementeCompteClick
      OnKeyDown = RBMouvementeCompteKeyDown
    end
    object RBAvecDateExecution: TCheckBox
      Left = 600
      Top = 112
      Width = 145
      Height = 17
      Caption = 'Non'
      TabOrder = 12
      OnClick = RBAvecDateExecutionClick
      OnKeyDown = RBAvecDateExecutionKeyDown
    end
    object EditListeAppartenancePositionMouvement: TEdit
      Left = 600
      Top = 160
      Width = 145
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 13
      OnEnter = EditListeAppartenancePositionMouvementEnter
      OnKeyDown = EditListeAppartenancePositionMouvementKeyDown
    end
    object RBAvecLocalisationGeographique: TCheckBox
      Left = 600
      Top = 136
      Width = 97
      Height = 17
      Caption = 'Non'
      TabOrder = 14
      OnClick = RBAvecLocalisationGeographiqueClick
      OnKeyDown = RBAvecLocalisationGeographiqueKeyDown
    end
    object EditOrdreCompteComptable: TEdit
      Left = 391
      Top = 136
      Width = 25
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 15
      Text = '6'
    end
    object IncrimentOrdreCompteComptable: TUpDown
      Left = 416
      Top = 136
      Width = 16
      Height = 19
      Associate = EditOrdreCompteComptable
      Min = 1
      Max = 6
      Position = 6
      TabOrder = 16
      Wrap = False
      OnClick = IncrimentOrdreCompteComptableClick
    end
    object RBMouvementeFinance: TCheckBox
      Left = 600
      Top = 56
      Width = 145
      Height = 17
      Caption = 'Oui'
      Checked = True
      State = cbChecked
      TabOrder = 17
      OnClick = RBMouvementeFinanceClick
    end
    object EditTypeStock: TComboBox
      Left = 136
      Top = 136
      Width = 65
      Height = 21
      BevelKind = bkFlat
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 18
      Text = 'Article'
      OnChange = EditTypeStockChange
      OnKeyDown = EditTypeStockKeyDown
      Items.Strings = (
        'Article'
        'Marche')
    end
    object EditDebitCreditMouvement: TComboBox
      Left = 336
      Top = 24
      Width = 121
      Height = 21
      HelpType = htKeyword
      BevelKind = bkFlat
      Ctl3D = True
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 19
      Text = 'D'#233'bit'
      OnKeyDown = EditDebitCreditMouvementKeyDown
      Items.Strings = (
        'D'#233'bit'
        'Cr'#233'dit')
    end
    object EditOperationFichierTiersConserne: TEdit
      Left = 264
      Top = 88
      Width = 17
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 20
    end
    object EditAddFichierTiersConserne: TEdit
      Left = 280
      Top = 88
      Width = 185
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 21
    end
    object EditPositionListeMouvementBegin: TEdit
      Left = 824
      Top = 8
      Width = 41
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 22
      OnKeyDown = EditPositionMouvementKeyDown
    end
    object EditPositionListeMouvementEnd: TEdit
      Left = 928
      Top = 8
      Width = 41
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 23
      OnKeyDown = EditPositionMouvementKeyDown
    end
    object TableauPositionListeMouvementPeriode: TStringGrid
      Left = 760
      Top = 32
      Width = 209
      Height = 225
      ColCount = 3
      Ctl3D = False
      DefaultColWidth = 60
      DefaultRowHeight = 16
      RowCount = 13
      ParentCtl3D = False
      TabOrder = 24
      RowHeights = (
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16
        16)
    end
    object RadioGroup3: TRadioGroup
      Left = 272
      Top = 46
      Width = 185
      Height = 35
      Caption = 'Sige d'#39'imputation:'
      TabOrder = 25
    end
    object RBSigneDebitCreditPositive: TRadioButton
      Left = 279
      Top = 61
      Width = 74
      Height = 17
      Caption = 'Positive.'
      Checked = True
      TabOrder = 26
      TabStop = True
      OnClick = RBSigneDebitCreditPositiveClick
    end
    object RBSigneDebitCreditNigative: TRadioButton
      Left = 352
      Top = 60
      Width = 73
      Height = 17
      Caption = 'Nigative.'
      TabOrder = 27
      OnClick = RBSigneDebitCreditNigativeClick
    end
    object EditSigneDebitCredit: TEdit
      Left = 432
      Top = 58
      Width = 17
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 28
      Text = '1'
    end
  end
  object AfficheTypeMouvement: TPanel
    Left = 376
    Top = 96
    Width = 489
    Height = 193
    BevelInner = bvLowered
    Color = 8454143
    TabOrder = 3
    Visible = False
    object Bevel3: TBevel
      Left = 8
      Top = 8
      Width = 473
      Height = 129
    end
    object Bevel4: TBevel
      Left = 8
      Top = 144
      Width = 473
      Height = 42
    end
    object Label7: TLabel
      Left = 70
      Top = 19
      Width = 100
      Height = 13
      Alignment = taRightJustify
      Caption = 'P'#176' Type Mouvement:'
    end
    object Label9: TLabel
      Left = 56
      Top = 43
      Width = 114
      Height = 13
      Alignment = taRightJustify
      Caption = 'Code Type Mouvement:'
    end
    object Label10: TLabel
      Left = 25
      Top = 67
      Width = 145
      Height = 13
      Alignment = taRightJustify
      Caption = 'Designation Type Mouvement:'
    end
    object Label11: TLabel
      Left = 117
      Top = 91
      Width = 53
      Height = 13
      Alignment = taRightJustify
      Caption = 'Signe (+/-):'
    end
    object Label12: TLabel
      Left = 19
      Top = 115
      Width = 151
      Height = 13
      Alignment = taRightJustify
      Caption = 'Autoriser les mouvement '#224' Vide:'
    end
    object RadioGroup1: TRadioGroup
      Left = 176
      Top = 107
      Width = 297
      Height = 27
      TabOrder = 6
    end
    object BitTypeMouvement: TBitBtn
      Left = 352
      Top = 152
      Width = 123
      Height = 25
      TabOrder = 0
      OnClick = BitTypeMouvementClick
      Kind = bkAll
    end
    object EditPositionTypeMouvement: TEdit
      Left = 176
      Top = 16
      Width = 49
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
      OnKeyDown = EditPositionTypeMouvementKeyDown
    end
    object EditCodeTypeMouvement: TEdit
      Left = 176
      Top = 40
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnKeyDown = EditCodeTypeMouvementKeyDown
    end
    object EditDesignationTypeMouvement: TEdit
      Left = 176
      Top = 64
      Width = 297
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnKeyDown = EditDesignationTypeMouvementKeyDown
    end
    object BitBtn2: TBitBtn
      Left = 16
      Top = 152
      Width = 75
      Height = 25
      TabOrder = 4
      OnClick = BitBtn2Click
      Kind = bkCancel
    end
    object EditSigneTypeMouvement: TComboBox
      Left = 176
      Top = 88
      Width = 97
      Height = 21
      BevelKind = bkFlat
      ItemHeight = 13
      TabOrder = 5
      Text = '+'
      OnKeyDown = EditSigneTypeMouvementKeyDown
      OnKeyPress = EditSigneTypeMouvementKeyPress
      OnSelect = EditSigneTypeMouvementSelect
      Items.Strings = (
        '+'
        '-'
        '*')
    end
    object RBAutoriserVide: TRadioButton
      Left = 183
      Top = 115
      Width = 113
      Height = 17
      Caption = 'Oui'
      TabOrder = 7
    end
    object RBNePasAutoriserVide: TRadioButton
      Left = 343
      Top = 115
      Width = 113
      Height = 17
      Caption = 'Non'
      TabOrder = 8
    end
  end
  object TableauTypeFormule: TStringGrid
    Left = 736
    Top = 355
    Width = 305
    Height = 129
    ColCount = 4
    Ctl3D = False
    DefaultColWidth = 40
    DefaultRowHeight = 20
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSelect]
    ParentCtl3D = False
    TabOrder = 4
    Visible = False
    OnDblClick = TableauTypeFormuleDblClick
    OnKeyDown = TableauTypeFormuleKeyDown
    ColWidths = (
      40
      2
      40
      40)
  end
  object TableauCompteConserne: TStringGrid
    Left = -312
    Top = 576
    Width = 465
    Height = 165
    Color = 8454016
    Ctl3D = False
    DefaultColWidth = 30
    DefaultRowHeight = 20
    FixedColor = 6029147
    RowCount = 2
    ParentCtl3D = False
    TabOrder = 5
    Visible = False
    OnDblClick = TableauCompteConserneDblClick
    OnKeyDown = TableauCompteConserneKeyDown
    RowHeights = (
      20
      20)
  end
  object PanelOperationMouvement: TPanel
    Left = 8
    Top = 8
    Width = 1305
    Height = 41
    BevelInner = bvLowered
    TabOrder = 7
    object Bevel6: TBevel
      Left = 585
      Top = 4
      Width = 195
      Height = 33
    end
    object Bevel8: TBevel
      Left = 791
      Top = 4
      Width = 273
      Height = 33
    end
    object Bevel9: TBevel
      Left = 1076
      Top = 4
      Width = 219
      Height = 33
    end
    object BitBtn3: TBitBtn
      Left = 8
      Top = 8
      Width = 185
      Height = 25
      Caption = 'Actualisation des Positions (P'#176')'
      TabOrder = 0
      OnClick = BitBtn3Click
      Kind = bkHelp
    end
    object BitBtn4: TBitBtn
      Left = 1080
      Top = 8
      Width = 211
      Height = 25
      Caption = 'Crier et Sauvegarder un fichier Excel '
      TabOrder = 1
      OnClick = BitBtn4Click
      Kind = bkHelp
    end
    object BitBtn5: TBitBtn
      Left = 589
      Top = 8
      Width = 187
      Height = 25
      Caption = 'Afficher tous les mouvements'
      TabOrder = 2
      OnClick = BitBtn5Click
      Kind = bkHelp
    end
    object BitBtn6: TBitBtn
      Left = 795
      Top = 8
      Width = 265
      Height = 25
      Caption = 'Crier et Sauvegarder un fichier Excel dans ...'
      TabOrder = 3
      OnClick = BitBtn6Click
      Kind = bkHelp
    end
    object BitBtn7: TBitBtn
      Left = 288
      Top = 8
      Width = 161
      Height = 25
      Caption = 'Publier'
      TabOrder = 4
      OnClick = BitBtn7Click
      Kind = bkAll
    end
    object RBModificationOperer: TCheckBox
      Left = 200
      Top = 12
      Width = 17
      Height = 17
      Enabled = False
      TabOrder = 5
    end
  end
  object PanelAdresseFMouvement: TPanel
    Left = 8
    Top = 323
    Width = 865
    Height = 27
    Alignment = taLeftJustify
    BevelInner = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object TableauPositionListeMouvementPeriodeAffiche: TStringGrid
    Left = 1104
    Top = 376
    Width = 209
    Height = 270
    ColCount = 3
    Ctl3D = False
    DefaultColWidth = 60
    DefaultRowHeight = 19
    RowCount = 13
    ParentCtl3D = False
    TabOrder = 9
  end
  object Panel1: TPanel
    Left = 680
    Top = 56
    Width = 633
    Height = 17
    BevelInner = bvLowered
    TabOrder = 10
  end
  object PanelAdresseFTypeMouvement: TPanel
    Left = 8
    Top = 56
    Width = 665
    Height = 17
    Alignment = taLeftJustify
    BevelInner = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
  object Panel2: TPanel
    Left = 880
    Top = 323
    Width = 217
    Height = 27
    BevelInner = bvLowered
    Color = clSilver
    TabOrder = 12
    object RBFixeColonne: TCheckBox
      Left = 8
      Top = 5
      Width = 153
      Height = 17
      Caption = 'Fix'#233' les premi'#232'res colonne:'
      TabOrder = 0
    end
    object EditFixeColonne: TEdit
      Left = 160
      Top = 4
      Width = 33
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
      Text = '4'
    end
    object IncrimentFixeColonne: TUpDown
      Left = 193
      Top = 4
      Width = 16
      Height = 19
      Associate = EditFixeColonne
      Min = 1
      Max = 10
      Position = 4
      TabOrder = 2
      Wrap = False
    end
  end
  object Panel3: TPanel
    Left = 1104
    Top = 648
    Width = 209
    Height = 33
    BevelInner = bvLowered
    TabOrder = 13
    object Label87: TLabel
      Left = 8
      Top = 8
      Width = 44
      Height = 13
      Caption = 'P'#176' Begin:'
    end
    object Label88: TLabel
      Left = 112
      Top = 8
      Width = 36
      Height = 13
      Caption = 'P'#176' End:'
    end
  end
  object Panel4: TPanel
    Left = 1104
    Top = 323
    Width = 209
    Height = 46
    BevelInner = bvLowered
    TabOrder = 14
    object Label21: TLabel
      Left = 12
      Top = 16
      Width = 37
      Height = 13
      Caption = 'Ann'#233'e: '
    end
    object EditAnneeSelect: TComboBox
      Left = 56
      Top = 12
      Width = 145
      Height = 21
      BevelKind = bkFlat
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 0
      OnChange = EditAnneeSelectChange
    end
  end
  object TableauListeAppartenanceCodeMouvement: TStringGrid
    Left = 848
    Top = 544
    Width = 465
    Height = 121
    Color = 12320767
    ColCount = 6
    Ctl3D = False
    FixedColor = 7733247
    RowCount = 2
    ParentCtl3D = False
    TabOrder = 6
    Visible = False
    OnDblClick = TableauListeAppartenanceCodeMouvementDblClick
    OnKeyDown = TableauListeAppartenanceCodeMouvementKeyDown
    RowHeights = (
      24
      24)
  end
  object TimerADDFichierConcerne: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerADDFichierConcerneTimer
    Left = 104
    Top = 200
  end
end
