object FSPlanificateur: TFSPlanificateur
  Left = 1
  Top = 0
  Width = 1368
  Height = 731
  Caption = 'Planification des Finances'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel15: TBevel
    Left = 496
    Top = 8
    Width = 217
    Height = 81
  end
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 385
    Height = 81
  end
  object Label13: TLabel
    Left = 512
    Top = 40
    Width = 42
    Height = 13
    Caption = 'Montant:'
  end
  object Label14: TLabel
    Left = 512
    Top = 64
    Width = 34
    Height = 13
    Caption = 'Apport:'
  end
  object AffichePreselection: TLabel
    Left = 512
    Top = 16
    Width = 30
    Height = 13
    Caption = '..........'
  end
  object TitreEtat: TRichEdit
    Left = 16
    Top = 96
    Width = 185
    Height = 89
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 14
  end
  object EditTypeAvis: TEdit
    Left = 56
    Top = 40
    Width = 153
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 11
  end
  object EditNumRubrique: TEdit
    Left = 16
    Top = 64
    Width = 41
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 4
  end
  object EditNumFicheTechnique: TEdit
    Left = 16
    Top = 40
    Width = 41
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 2
  end
  object EditCodeProjet: TEdit
    Left = 16
    Top = 16
    Width = 41
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 0
  end
  object EditProjet: TEdit
    Left = 16
    Top = 16
    Width = 369
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
  end
  object EditFicheTechnique: TEdit
    Left = 16
    Top = 40
    Width = 369
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 3
  end
  object EditRubrique: TEdit
    Left = 16
    Top = 64
    Width = 369
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 5
  end
  object TableauPlanificateur: TStringGrid
    Left = 8
    Top = 96
    Width = 1337
    Height = 538
    ColCount = 12
    Ctl3D = False
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
    ParentCtl3D = False
    TabOrder = 6
    OnClick = TableauPlanificateurClick
    OnDrawCell = TableauPlanificateurDrawCell
    OnKeyDown = TableauPlanificateurKeyDown
    OnKeyPress = TableauPlanificateurKeyPress
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
      64)
  end
  object EditChargementFichierConcerne: TEdit
    Left = 848
    Top = 8
    Width = 113
    Height = 19
    Color = clSilver
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 9
  end
  object EditChargementTypeProces: TEdit
    Left = 720
    Top = 8
    Width = 121
    Height = 19
    Color = clSilver
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 10
  end
  object AffichageTiers: TPanel
    Left = 400
    Top = 8
    Width = 89
    Height = 81
    BevelInner = bvLowered
    TabOrder = 12
    object Bevel10: TBevel
      Left = 88
      Top = 7
      Width = 385
      Height = 34
    end
    object Bevel8: TBevel
      Left = 8
      Top = 32
      Width = 74
      Height = 42
    end
    object Label10: TLabel
      Left = 104
      Top = 19
      Width = 26
      Height = 13
      Caption = 'Tiers:'
    end
    object Bevel9: TBevel
      Left = 8
      Top = 8
      Width = 74
      Height = 17
    end
    object Bevel11: TBevel
      Left = 88
      Top = 48
      Width = 385
      Height = 25
    end
    object EditRechercheCodeTiers: TEdit
      Left = 136
      Top = 16
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
    end
    object BitTiersPlanificateur: TBitBtn
      Left = 16
      Top = 40
      Width = 59
      Height = 25
      Caption = 'Tiers'
      TabOrder = 0
      OnClick = BitTiersPlanificateurClick
      Kind = bkAll
    end
    object EditRechercheTiers: TEdit
      Left = 136
      Top = 16
      Width = 329
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnDblClick = EditRechercheTiersDblClick
      OnEnter = EditRechercheTiersEnter
      OnKeyDown = EditRechercheTiersKeyDown
      OnKeyUp = EditRechercheTiersKeyUp
    end
  end
  object AfficheOperationPlanificateur: TPanel
    Left = 128
    Top = 144
    Width = 481
    Height = 233
    BevelInner = bvLowered
    Color = 16777164
    TabOrder = 7
    Visible = False
    OnEnter = AfficheOperationPlanificateurEnter
    object Bevel5: TBevel
      Left = 8
      Top = 48
      Width = 465
      Height = 129
    end
    object Label15: TLabel
      Left = 60
      Top = 82
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tiers:'
    end
    object Label17: TLabel
      Left = 43
      Top = 106
      Width = 43
      Height = 13
      Alignment = taRightJustify
      Caption = 'Quantit'#233':'
    end
    object Label16: TLabel
      Left = 35
      Top = 130
      Width = 59
      Height = 13
      Alignment = taRightJustify
      Caption = 'Prix Unitaire:'
    end
    object Label19: TLabel
      Left = 40
      Top = 154
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = 'Structure:'
    end
    object Label6: TLabel
      Left = 289
      Top = 131
      Width = 45
      Height = 13
      Alignment = taRightJustify
      Caption = 'Total HT:'
    end
    object Bevel6: TBevel
      Left = 8
      Top = 184
      Width = 465
      Height = 41
    end
    object Bevel7: TBevel
      Left = 8
      Top = 8
      Width = 465
      Height = 33
    end
    object Label7: TLabel
      Left = 13
      Top = 18
      Width = 73
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#176' Planificateur'
    end
    object Label8: TLabel
      Left = 37
      Top = 59
      Width = 49
      Height = 13
      Alignment = taRightJustify
      Caption = 'Op'#233'ration:'
    end
    object Label9: TLabel
      Left = 192
      Top = 20
      Width = 86
      Height = 13
      Alignment = taRightJustify
      Caption = 'Date Planification:'
    end
    object EditCodeStructureProjet: TEdit
      Left = 104
      Top = 152
      Width = 121
      Height = 19
      Ctl3D = False
      MaxLength = 100
      ParentCtl3D = False
      TabOrder = 5
    end
    object EditCodeTiers: TEdit
      Left = 104
      Top = 80
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
    end
    object EditTiers: TEdit
      Left = 104
      Top = 80
      Width = 361
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnEnter = EditTiersEnter
      OnKeyDown = EditTiersKeyDown
      OnKeyUp = EditTiersKeyUp
    end
    object EditQuantiteOperation: TEdit
      Left = 104
      Top = 104
      Width = 145
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnEnter = EditQuantiteOperationEnter
      OnExit = EditQuantiteOperationExit
      OnKeyDown = EditQuantiteOperationKeyDown
    end
    object EditPrixOperation: TEdit
      Left = 104
      Top = 128
      Width = 145
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnEnter = EditPrixOperationEnter
      OnExit = EditPrixOperationExit
      OnKeyDown = EditPrixOperationKeyDown
    end
    object EditStructureProjet: TEdit
      Left = 104
      Top = 152
      Width = 361
      Height = 19
      Ctl3D = False
      MaxLength = 100
      ParentCtl3D = False
      TabOrder = 4
      OnEnter = EditStructureProjetEnter
      OnKeyDown = EditStructureProjetKeyDown
    end
    object EditTotal: TEdit
      Left = 336
      Top = 128
      Width = 129
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
    end
    object BitBtn1: TBitBtn
      Left = 16
      Top = 192
      Width = 75
      Height = 25
      TabOrder = 7
      OnClick = BitBtn1Click
      Kind = bkCancel
    end
    object BitOperationPlanificateur: TBitBtn
      Left = 368
      Top = 192
      Width = 99
      Height = 25
      Caption = 'Valider'
      TabOrder = 8
      OnClick = BitOperationPlanificateurClick
      Kind = bkAll
    end
    object EditNumPlanificateur: TEdit
      Left = 104
      Top = 16
      Width = 49
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 9
    end
    object EditTypeUniteOperation: TEdit
      Left = 248
      Top = 104
      Width = 89
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 10
    end
    object EditDesignationPlanificateur: TEdit
      Left = 104
      Top = 56
      Width = 361
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 11
      OnKeyDown = EditDesignationPlanificateurKeyDown
    end
    object EditDatePlanificateur: TDateTimePicker
      Left = 280
      Top = 16
      Width = 186
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvSpace
      BevelKind = bkFlat
      CalAlignment = dtaLeft
      Date = 41343.4777727083
      Time = 41343.4777727083
      DateFormat = dfLong
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 12
    end
  end
  object AfficheStructure: TPanel
    Left = 632
    Top = 147
    Width = 657
    Height = 398
    BevelInner = bvLowered
    Color = 16777088
    TabOrder = 13
    Visible = False
    OnEnter = AfficheStructureEnter
    OnExit = AfficheStructureExit
    object Label23: TLabel
      Left = 16
      Top = 16
      Width = 95
      Height = 13
      Caption = 'Composition Projets:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Bevel13: TBevel
      Left = 8
      Top = 8
      Width = 273
      Height = 33
    end
    object Label18: TLabel
      Left = 8
      Top = 280
      Width = 155
      Height = 13
      Caption = 'Liste des Pr'#233's'#233'lections par Tiers:'
    end
    object TableauPreselectionParTiers: TStringGrid
      Left = 8
      Top = 296
      Width = 641
      Height = 97
      ColCount = 4
      Ctl3D = False
      RowCount = 2
      ParentCtl3D = False
      TabOrder = 3
    end
    object TableauStructure: TStringGrid
      Left = 8
      Top = 48
      Width = 641
      Height = 225
      Ctl3D = False
      FixedColor = 16777088
      ParentCtl3D = False
      TabOrder = 0
      OnKeyDown = TableauStructureKeyDown
    end
    object EditRonStructure: TComboBox
      Left = 128
      Top = 13
      Width = 145
      Height = 21
      BevelInner = bvLowered
      BevelKind = bkFlat
      CharCase = ecLowerCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 1
      OnSelect = EditRonStructureSelect
    end
    object AfficheMessage: TPanel
      Left = 32
      Top = 104
      Width = 601
      Height = 129
      BevelInner = bvLowered
      BiDiMode = bdRightToLeftReadingOnly
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      Visible = False
      object Bevel38: TBevel
        Left = 10
        Top = 90
        Width = 121
        Height = 34
      end
      object Bevel14: TBevel
        Left = 474
        Top = 90
        Width = 121
        Height = 34
      end
      object BitNonAfficheMessage: TBitBtn
        Left = 480
        Top = 95
        Width = 110
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BitNonAfficheMessageClick
        Kind = bkNo
      end
      object BitOuiAfficheMessage: TBitBtn
        Left = 16
        Top = 95
        Width = 110
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BitOuiAfficheMessageClick
        Kind = bkYes
      end
    end
  end
  object AfficheTypeAvis: TPanel
    Left = 440
    Top = 96
    Width = 481
    Height = 81
    BevelInner = bvLowered
    TabOrder = 15
    Visible = False
    object Label12: TLabel
      Left = 16
      Top = 8
      Width = 250
      Height = 16
      Alignment = taCenter
      Caption = 'Important ! Choisissez le type d'#39'Avis'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel31: TBevel
      Left = 384
      Top = 8
      Width = 90
      Height = 41
    end
    object EditTypeAvisChoisir: TComboBox
      Left = 16
      Top = 30
      Width = 337
      Height = 37
      BevelKind = bkFlat
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 29
      ParentFont = False
      TabOrder = 0
      OnSelect = EditTypeAvisChoisirSelect
    end
    object BitBtn9: TBitBtn
      Left = 392
      Top = 16
      Width = 75
      Height = 25
      TabOrder = 1
      OnClick = BitBtn9Click
      Kind = bkCancel
    end
  end
  object AfficheRecapPlanificateur: TPanel
    Left = 8
    Top = 637
    Width = 1337
    Height = 49
    BevelInner = bvLowered
    TabOrder = 16
    object Bevel4: TBevel
      Left = 704
      Top = 8
      Width = 265
      Height = 33
    end
    object Bevel12: TBevel
      Left = 8
      Top = 8
      Width = 225
      Height = 33
    end
    object Label11: TLabel
      Left = 714
      Top = 17
      Width = 180
      Height = 16
      Caption = 'Caution de R'#233'servation %'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel3: TBevel
      Left = 240
      Top = 8
      Width = 209
      Height = 33
    end
    object Label3: TLabel
      Left = 248
      Top = 22
      Width = 98
      Height = 13
      Caption = 'La Quantit'#233' Planifier:'
    end
    object Bevel2: TBevel
      Left = 456
      Top = 8
      Width = 241
      Height = 33
    end
    object Label4: TLabel
      Left = 464
      Top = 22
      Width = 97
      Height = 13
      Caption = 'Le Montant Planifier:'
    end
    object Bevel19: TBevel
      Left = 976
      Top = 8
      Width = 161
      Height = 33
    end
    object BitBtn2: TBitBtn
      Left = 13
      Top = 12
      Width = 108
      Height = 25
      Caption = 'Documents'
      TabOrder = 0
      OnClick = BitBtn2Click
      Kind = bkHelp
    end
    object BitBtn3: TBitBtn
      Left = 136
      Top = 12
      Width = 89
      Height = 25
      Caption = 'Print Liste'
      TabOrder = 1
      OnClick = BitBtn3Click
      Kind = bkHelp
    end
    object EditCautionReservation: TEdit
      Left = 896
      Top = 15
      Width = 45
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      Text = '30'
      OnKeyPress = EditCautionReservationKeyPress
      OnKeyUp = EditCautionReservationKeyUp
    end
    object UpDown1: TUpDown
      Left = 941
      Top = 15
      Width = 20
      Height = 19
      Associate = EditCautionReservation
      Min = 0
      Position = 30
      TabOrder = 3
      Wrap = False
      OnClick = UpDown1Click
    end
    object EditQuantitePlanificateur: TEdit
      Left = 352
      Top = 16
      Width = 89
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
    end
    object EditMontantPlanificateur: TEdit
      Left = 568
      Top = 16
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
    end
    object RBAfficheValeurBien: TCheckBox
      Left = 992
      Top = 16
      Width = 153
      Height = 17
      Caption = 'Afficher la valeu du bien'
      TabOrder = 6
    end
    object RBChargerPointeur: TCheckBox
      Left = 1152
      Top = 16
      Width = 161
      Height = 17
      Caption = 'Chargement des pointeurs'
      Checked = True
      State = cbChecked
      TabOrder = 7
    end
  end
  object AfficheInfoPlanificateur: TPanel
    Left = 1056
    Top = 8
    Width = 289
    Height = 81
    BevelInner = bvLowered
    TabOrder = 17
    object Label1: TLabel
      Left = 6
      Top = 11
      Width = 107
      Height = 13
      Caption = 'La Quantit'#233' '#224' Planifier:'
    end
    object Label2: TLabel
      Left = 7
      Top = 59
      Width = 106
      Height = 13
      Caption = 'Le Montant '#224' Planifier:'
    end
    object Label5: TLabel
      Left = 9
      Top = 35
      Width = 96
      Height = 13
      Caption = 'Le Montant Unitaire:'
    end
    object EditMontantRubriqueFicheTechnique: TEdit
      Left = 120
      Top = 54
      Width = 161
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
    object EditQuantiteRubriqueFicheTechnique: TEdit
      Left = 120
      Top = 8
      Width = 89
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object EditMontantUnitaireRubriqueFicheTechnique: TEdit
      Left = 120
      Top = 32
      Width = 161
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object EditTypeUniteRubriqueFicheTechnique: TEdit
      Left = 208
      Top = 8
      Width = 73
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
  end
  object EditMontant: TEdit
    Left = 584
    Top = 40
    Width = 121
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 18
  end
  object EditApport: TEdit
    Left = 584
    Top = 64
    Width = 121
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 19
    OnEnter = EditApportEnter
    OnExit = EditApportExit
    OnKeyUp = EditApportKeyUp
  end
  object AfficheDocumentAssocierPlanificateur: TPanel
    Left = 696
    Top = 224
    Width = 361
    Height = 345
    BevelInner = bvLowered
    Color = clAqua
    TabOrder = 20
    Visible = False
    object Bevel16: TBevel
      Left = 256
      Top = 8
      Width = 98
      Height = 41
    end
    object Bevel17: TBevel
      Left = 7
      Top = 8
      Width = 242
      Height = 73
    end
    object Bevel18: TBevel
      Left = 256
      Top = 56
      Width = 97
      Height = 281
    end
    object Bevel20: TBevel
      Left = 7
      Top = 88
      Width = 242
      Height = 105
    end
    object Bevel26: TBevel
      Left = 7
      Top = 200
      Width = 242
      Height = 41
    end
    object Bevel28: TBevel
      Left = 7
      Top = 248
      Width = 242
      Height = 41
    end
    object Bevel29: TBevel
      Left = 7
      Top = 296
      Width = 242
      Height = 41
    end
    object BitBtn4: TBitBtn
      Left = 264
      Top = 16
      Width = 83
      Height = 25
      TabOrder = 0
      OnClick = BitBtn4Click
      Kind = bkCancel
    end
    object BitBtn5: TBitBtn
      Left = 16
      Top = 16
      Width = 225
      Height = 25
      BiDiMode = bdRightToLeft
      Caption = 'Convetion de Planification'
      ParentBiDiMode = False
      TabOrder = 1
      OnClick = BitBtn5Click
      Kind = bkHelp
      Margin = 5
    end
    object BitBtn6: TBitBtn
      Left = 16
      Top = 48
      Width = 225
      Height = 25
      Caption = 'Demande de Planification'
      TabOrder = 2
      OnClick = BitBtn6Click
      Kind = bkHelp
      Margin = 5
    end
    object BitBtn8: TBitBtn
      Left = 16
      Top = 96
      Width = 225
      Height = 25
      Caption = 'D'#233'cision d'#39'attribution financi'#232're'
      TabOrder = 3
      OnClick = BitBtn8Click
      Kind = bkHelp
      Margin = 5
    end
    object BitBtn14: TBitBtn
      Left = 16
      Top = 128
      Width = 225
      Height = 25
      Caption = 'Attestation de versement'
      TabOrder = 4
      OnClick = BitBtn14Click
      Kind = bkHelp
      Margin = 5
    end
    object BitBtn17: TBitBtn
      Left = 16
      Top = 160
      Width = 225
      Height = 25
      Caption = 'Facture de vente'
      TabOrder = 5
      OnClick = BitBtn17Click
      Kind = bkHelp
      Margin = 5
    end
    object BitBtn19: TBitBtn
      Left = 16
      Top = 208
      Width = 225
      Height = 25
      Caption = 'D'#233'cision d'#39'attribution physique'
      TabOrder = 6
      OnClick = BitBtn19Click
      Kind = bkHelp
      Margin = 5
    end
    object BitBtn20: TBitBtn
      Left = 16
      Top = 256
      Width = 225
      Height = 25
      Caption = 'Proc'#232's verbal de remise des cl'#233's'
      TabOrder = 7
      OnClick = BitBtn20Click
      Kind = bkHelp
      Margin = 5
    end
    object BitBtn21: TBitBtn
      Left = 16
      Top = 304
      Width = 225
      Height = 25
      Caption = 'D'#233'claration sur l'#39'honneur (Dettes)'
      TabOrder = 8
      OnClick = BitBtn21Click
      Kind = bkHelp
      Margin = 5
    end
  end
  object EditNumPlanificateurSelect: TEdit
    Left = 968
    Top = 8
    Width = 33
    Height = 19
    Color = clSilver
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 21
  end
  object BitAfficheSource: TBitBtn
    Left = 720
    Top = 32
    Width = 209
    Height = 25
    Caption = 'Afficher la pr'#233's'#233'lection '#224' la source !'
    TabOrder = 22
    OnClick = BitAfficheSourceClick
    Kind = bkHelp
  end
  object BitBtn7: TBitBtn
    Left = 720
    Top = 64
    Width = 209
    Height = 25
    Caption = 'Afficher la structure Projet'
    TabOrder = 23
    OnClick = BitBtn7Click
    Kind = bkHelp
  end
  object EditPositionFormulairePreselection: TEdit
    Left = 1008
    Top = 8
    Width = 33
    Height = 19
    Color = clSilver
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 24
  end
  object AfficheDecision: TPanel
    Left = 272
    Top = 64
    Width = 713
    Height = 577
    BevelOuter = bvLowered
    Color = clAqua
    TabOrder = 25
    Visible = False
    object Bevel21: TBevel
      Left = 8
      Top = 104
      Width = 601
      Height = 33
    end
    object Bevel24: TBevel
      Left = 8
      Top = 144
      Width = 601
      Height = 177
    end
    object CadreDate: TBevel
      Left = 8
      Top = 56
      Width = 601
      Height = 41
    end
    object Label20: TLabel
      Left = 88
      Top = 67
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'R'#233'f. N'#176':'
    end
    object Bevel22: TBevel
      Left = 616
      Top = 56
      Width = 89
      Height = 41
    end
    object Bevel23: TBevel
      Left = 616
      Top = 328
      Width = 89
      Height = 241
    end
    object Label21: TLabel
      Left = 376
      Top = 67
      Width = 29
      Height = 13
      Caption = 'Date: '
    end
    object TitreNRC: TLabel
      Left = 88
      Top = 163
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#176' R.C.:'
    end
    object TitreNAgrement: TLabel
      Left = 64
      Top = 195
      Width = 63
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#176' Agr'#233'ment:'
    end
    object TitreNITNPI: TLabel
      Left = 80
      Top = 227
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#176' ITNPI:'
    end
    object NPermisConstruire: TLabel
      Left = 10
      Top = 259
      Width = 119
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#176' Permis de Const. P01:'
    end
    object NConventionPretBanque: TLabel
      Left = 10
      Top = 291
      Width = 116
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#176' Convention Pr'#234't P01:'
    end
    object Bevel25: TBevel
      Left = 8
      Top = 328
      Width = 601
      Height = 241
    end
    object Label28: TLabel
      Left = 56
      Top = 363
      Width = 73
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nature du bien:'
    end
    object Label29: TLabel
      Left = 416
      Top = 363
      Width = 58
      Height = 13
      Caption = 'R'#233'f du bien:'
    end
    object Label30: TLabel
      Left = 72
      Top = 387
      Width = 59
      Height = 13
      Alignment = taRightJustify
      Caption = 'Localisation:'
    end
    object Label32: TLabel
      Left = 40
      Top = 411
      Width = 88
      Height = 13
      Alignment = taRightJustify
      Caption = 'Surface Habitable:'
    end
    object Label33: TLabel
      Left = 232
      Top = 411
      Width = 64
      Height = 13
      Caption = 'Surface Utile:'
    end
    object Label34: TLabel
      Left = 88
      Top = 515
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = 'Adresse:'
    end
    object Label35: TLabel
      Left = 440
      Top = 435
      Width = 33
      Height = 13
      Caption = 'MTTC:'
    end
    object Bevel27: TBevel
      Left = 616
      Top = 104
      Width = 89
      Height = 217
    end
    object Label36: TLabel
      Left = 72
      Top = 339
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Demandeur:'
    end
    object Label37: TLabel
      Left = 232
      Top = 363
      Width = 65
      Height = 13
      Caption = 'Type du bien:'
    end
    object Label44: TLabel
      Left = 56
      Top = 115
      Width = 69
      Height = 13
      Alignment = taRightJustify
      Caption = 'Source DATA:'
    end
    object Label25: TLabel
      Left = 12
      Top = 67
      Width = 29
      Height = 13
      Alignment = taRightJustify
      Caption = 'Ordre:'
    end
    object Label26: TLabel
      Left = 96
      Top = 435
      Width = 27
      Height = 13
      Caption = 'MHT:'
    end
    object Label27: TLabel
      Left = 256
      Top = 435
      Width = 41
      Height = 13
      Caption = 'TVA: (%)'
    end
    object Label31: TLabel
      Left = 64
      Top = 539
      Width = 67
      Height = 13
      Caption = 'Type d'#39'usage:'
    end
    object Label43: TLabel
      Left = 48
      Top = 459
      Width = 79
      Height = 13
      Caption = 'MTTC en lettres:'
    end
    object AttestationVersementModifier: TCheckBox
      Left = 624
      Top = 464
      Width = 73
      Height = 17
      Enabled = False
      TabOrder = 48
    end
    object RadioGroup2: TRadioGroup
      Left = 352
      Top = 531
      Width = 249
      Height = 34
      Caption = 'Nature:'
      TabOrder = 45
    end
    object RBValoircequedeDroitBis: TRadioButton
      Left = 472
      Top = 544
      Width = 121
      Height = 17
      Caption = 'Valoir ce que de droit'
      Checked = True
      TabOrder = 47
      TabStop = True
      OnClick = RBValoircequedeDroitBisClick
    end
    object RBDossierCreditBancaireBis: TRadioButton
      Left = 360
      Top = 544
      Width = 97
      Height = 17
      Caption = 'Cr'#233'dit Banque'
      TabOrder = 46
      OnClick = RBDossierCreditBancaireBisClick
    end
    object AfficheNumLot: TPanel
      Left = 624
      Top = 376
      Width = 73
      Height = 49
      BevelInner = bvLowered
      TabOrder = 43
      object Label48: TLabel
        Left = 8
        Top = 8
        Width = 33
        Height = 13
        Caption = 'N'#176' Lot:'
      end
      object EditNumLot: TEdit
        Left = 8
        Top = 24
        Width = 33
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        Text = '0'
      end
      object IncrimenteNumLot: TUpDown
        Left = 41
        Top = 24
        Width = 16
        Height = 19
        Associate = EditNumLot
        Min = 0
        Max = 1000
        Position = 0
        TabOrder = 1
        Wrap = False
      end
    end
    object RBAfficherNumLot: TCheckBox
      Left = 621
      Top = 352
      Width = 78
      Height = 17
      Caption = 'Avec N'#176' Lot'
      TabOrder = 42
      OnClick = RBAfficherNumLotClick
    end
    object RBImporteEditConventionPret: TCheckBox
      Left = 448
      Top = 288
      Width = 153
      Height = 17
      Caption = 'N'#176' Convention Pr'#234't P01'
      Checked = True
      State = cbChecked
      TabOrder = 16
      OnClick = RBImporteEditConventionPretClick
    end
    object RBImporteEditPK: TCheckBox
      Left = 448
      Top = 256
      Width = 153
      Height = 17
      Caption = 'N'#176' Permis de Const. P01'
      Checked = True
      State = cbChecked
      TabOrder = 14
      OnClick = RBImporteEditPKClick
    end
    object RBImporteEditNITNPI: TCheckBox
      Left = 448
      Top = 224
      Width = 153
      Height = 17
      Caption = 'N'#176' ITNPI'
      Checked = True
      State = cbChecked
      TabOrder = 12
      OnClick = RBImporteEditNITNPIClick
    end
    object RBImporteEditNumAgrement: TCheckBox
      Left = 448
      Top = 192
      Width = 153
      Height = 17
      Caption = 'N'#176' Agr'#233'ment'
      Checked = True
      State = cbChecked
      TabOrder = 9
      OnClick = RBImporteEditNumAgrementClick
    end
    object RBImporteEditNumRegistreCommerce: TCheckBox
      Left = 448
      Top = 160
      Width = 153
      Height = 17
      Caption = 'N'#176' R.C.'
      Checked = True
      State = cbChecked
      TabOrder = 7
      OnClick = RBImporteEditNumRegistreCommerceClick
    end
    object EditListeIdentificateurEntreprise: TComboBox
      Left = 448
      Top = 112
      Width = 153
      Height = 21
      ItemHeight = 13
      TabOrder = 6
      Visible = False
      OnChange = EditListeIdentificateurEntrepriseChange
    end
    object EditTypeDataEntreprise: TComboBox
      Left = 136
      Top = 112
      Width = 145
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      ItemHeight = 13
      TabOrder = 10
      OnChange = EditTypeDataEntrepriseChange
    end
    object AfficheDocumentBanque: TPanel
      Left = 8
      Top = 104
      Width = 601
      Height = 33
      BevelInner = bvLowered
      TabOrder = 41
      Visible = False
      object EditDocumentBanque: TEdit
        Left = 176
        Top = 6
        Width = 417
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
      end
      object EditTitreDocumentBanque: TComboBox
        Left = 8
        Top = 6
        Width = 161
        Height = 21
        BevelInner = bvNone
        BevelKind = bkFlat
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 1
        Text = 'Convention de cr'#233'dit client'
        Items.Strings = (
          'Convention de cr'#233'dit client'
          'Contrat de vente client')
      end
    end
    object BitBtn11: TBitBtn
      Left = 624
      Top = 504
      Width = 75
      Height = 25
      Caption = 'Modifier'
      TabOrder = 26
      OnClick = BitBtn11Click
      Kind = bkHelp
    end
    object EditTVA: TEdit
      Left = 304
      Top = 432
      Width = 49
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 36
      OnExit = EditTVAExit
      OnKeyPress = EditTVAKeyPress
      OnKeyUp = EditTVAKeyUp
    end
    object EditMontantHT: TEdit
      Left = 136
      Top = 432
      Width = 105
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 35
      OnExit = EditMontantTTCExit
      OnKeyPress = EditMontantHTKeyPress
      OnKeyUp = EditMontantHTKeyUp
    end
    object BitPrint: TBitBtn
      Left = 624
      Top = 112
      Width = 75
      Height = 201
      Caption = 'Imprimer'
      TabOrder = 0
      OnClick = BitPrintClick
      Kind = bkHelp
      Margin = 0
    end
    object AfficheNatureEtat: TPanel
      Left = 8
      Top = 8
      Width = 697
      Height = 41
      Caption = 'DECISION'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object EditTitreReference: TEdit
      Left = 136
      Top = 64
      Width = 153
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
    end
    object BitBtn10: TBitBtn
      Left = 624
      Top = 64
      Width = 75
      Height = 25
      TabOrder = 3
      OnClick = BitBtn10Click
      Kind = bkCancel
    end
    object EditTitreDate: TDateTimePicker
      Left = 416
      Top = 64
      Width = 186
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      CalAlignment = dtaLeft
      Date = 43746.1167923264
      Time = 43746.1167923264
      DateFormat = dfLong
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 4
      OnChange = EditTitreDateChange
    end
    object EditNumRegistreCommerce: TEdit
      Left = 136
      Top = 160
      Width = 305
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
    end
    object EditNumAgrement: TEdit
      Left = 136
      Top = 192
      Width = 305
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 8
    end
    object EditNITNPI: TEdit
      Left = 136
      Top = 224
      Width = 305
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 11
    end
    object EditPK: TEdit
      Left = 136
      Top = 256
      Width = 305
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 13
    end
    object EditConventionPret: TEdit
      Left = 136
      Top = 288
      Width = 305
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 15
    end
    object EditNatureBien: TEdit
      Left = 136
      Top = 360
      Width = 89
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 17
    end
    object EditReferenceBien: TEdit
      Left = 480
      Top = 360
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 18
    end
    object EditLocalisationPrecise: TEdit
      Left = 136
      Top = 384
      Width = 465
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 19
      OnChange = EditLocalisationPreciseChange
    end
    object EditSurfaceHabitable: TEdit
      Left = 136
      Top = 408
      Width = 89
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 20
      OnKeyPress = EditSurfaceHabitableKeyPress
    end
    object EditSurfaceUtile: TEdit
      Left = 304
      Top = 408
      Width = 97
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 21
      OnKeyPress = EditSurfaceUtileKeyPress
    end
    object EditAdresseProjet: TEdit
      Left = 136
      Top = 512
      Width = 465
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 22
    end
    object EditMontantTTC: TEdit
      Left = 480
      Top = 432
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 23
      OnExit = EditMontantTTCExit
      OnKeyPress = EditMontantTTCKeyPress
    end
    object EditDemandeur: TEdit
      Left = 136
      Top = 336
      Width = 465
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 24
    end
    object EditTypeBien: TEdit
      Left = 304
      Top = 360
      Width = 97
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 25
    end
    object RBDecisionModifier: TCheckBox
      Left = 624
      Top = 480
      Width = 73
      Height = 17
      Enabled = False
      TabOrder = 28
    end
    object EditMontantTTCLettre: TMemo
      Left = 136
      Top = 456
      Width = 465
      Height = 49
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 29
    end
    object RBCopieADM: TCheckBox
      Left = 621
      Top = 336
      Width = 75
      Height = 17
      Caption = 'Copie ADM'
      Checked = True
      State = cbChecked
      TabOrder = 30
    end
    object AfficheVerssement: TPanel
      Left = 8
      Top = 104
      Width = 601
      Height = 217
      BevelInner = bvLowered
      Color = clAqua
      TabOrder = 31
      object Label22: TLabel
        Left = 8
        Top = 9
        Width = 115
        Height = 13
        Caption = 'Montant du Verssement:'
      end
      object Label24: TLabel
        Left = 72
        Top = 156
        Width = 50
        Height = 13
        Caption = 'Signataire:'
      end
      object Label83: TLabel
        Left = 40
        Top = 192
        Width = 81
        Height = 13
        Caption = 'Liste des Proces:'
      end
      object EditTitreFichierConcerne: TLabel
        Left = 306
        Top = 192
        Width = 88
        Height = 13
        Caption = 'Fichier Cons'#233'rner !'
      end
      object EditMontantVersement: TEdit
        Left = 128
        Top = 6
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnExit = EditMontantVersementExit
        OnKeyDown = EditMontantVersementKeyDown
        OnKeyPress = EditMontantVersementKeyPress
        OnKeyUp = EditMontantVersementKeyUp
      end
      object EditMontantVersementLettre: TMemo
        Left = 128
        Top = 32
        Width = 465
        Height = 41
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
      end
      object EditFonctionSignataire: TComboBox
        Left = 128
        Top = 152
        Width = 121
        Height = 21
        BevelInner = bvNone
        BevelKind = bkFlat
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 2
        Text = 'g'#233'rant'
        OnChange = EditFonctionSignataireChange
        Items.Strings = (
          'g'#233'rant'
          'directeur')
      end
      object EditSignataire: TEdit
        Left = 256
        Top = 153
        Width = 337
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
      end
      object EditSelectTypeProces: TComboBox
        Left = 128
        Top = 188
        Width = 145
        Height = 21
        BevelKind = bkFlat
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 4
        Text = 'Business'
        OnChange = EditSelectTypeProcesChange
        Items.Strings = (
          'Business'
          'Commercial'
          'Paie'
          'Comptabilit'#233
          'Social')
      end
      object EditFichierConcerne: TComboBox
        Left = 400
        Top = 188
        Width = 161
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 5
        Text = 'FClient'
        OnChange = EditFichierConcerneChange
        Items.Strings = (
          'FClient'
          'FFournisseur'
          'FPersonnel')
      end
      object BitBtn23: TBitBtn
        Left = 8
        Top = 80
        Width = 209
        Height = 25
        Caption = 'Modifier l'#39'attestation de versement'
        TabOrder = 6
        OnClick = BitBtn23Click
        Kind = bkRetry
      end
      object BitBtn24: TBitBtn
        Left = 8
        Top = 112
        Width = 209
        Height = 25
        Caption = 'Modifier l'#39'ordre de versement'
        TabOrder = 7
        OnClick = BitBtn24Click
        Kind = bkRetry
      end
    end
    object EditNumOrdrePaiement: TEdit
      Left = 42
      Top = 64
      Width = 25
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 32
      Text = '1'
    end
    object UpDown2: TUpDown
      Left = 67
      Top = 64
      Width = 16
      Height = 19
      Associate = EditNumOrdrePaiement
      Min = 1
      Position = 1
      TabOrder = 33
      Wrap = False
    end
    object EditTypeUsage: TEdit
      Left = 136
      Top = 536
      Width = 209
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 37
      OnExit = EditMontantTTCExit
    end
    object BitBtn18: TBitBtn
      Left = 624
      Top = 432
      Width = 75
      Height = 25
      Caption = 'D'#233'duire'
      TabOrder = 38
      OnClick = BitBtn18Click
      Kind = bkHelp
    end
    object AfficheMontantTTCADeduire: TPanel
      Left = 248
      Top = 368
      Width = 273
      Height = 41
      Alignment = taLeftJustify
      BevelInner = bvLowered
      BorderWidth = 5
      Caption = 'Montant en TTC '#224' d'#233'duire:'
      Color = clSilver
      TabOrder = 39
      Visible = False
      object EditMontantTTCADeduire: TEdit
        Left = 138
        Top = 12
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnKeyDown = EditMontantTTCADeduireKeyDown
        OnKeyPress = EditMontantTTCADeduireKeyPress
      end
    end
    object AfficheOptionsTexte: TPanel
      Left = 8
      Top = 8
      Width = 153
      Height = 41
      BevelInner = bvLowered
      Caption = 'Options Texte'
      TabOrder = 40
      OnClick = AfficheOptionsTexteClick
      OnExit = AfficheOptionsTexteExit
      object Bevel30: TBevel
        Left = 8
        Top = 8
        Width = 137
        Height = 25
      end
      object Panel1: TPanel
        Left = 8
        Top = 48
        Width = 137
        Height = 81
        BevelInner = bvLowered
        TabOrder = 0
        object Label45: TLabel
          Left = 8
          Top = 11
          Width = 47
          Height = 13
          Caption = 'Font Size:'
        end
        object Label46: TLabel
          Left = 8
          Top = 33
          Width = 59
          Height = 13
          Caption = 'Height ligne:'
        end
        object Label47: TLabel
          Left = 8
          Top = 57
          Width = 58
          Height = 13
          Caption = 'Ecart Texte:'
        end
        object EditFontSize: TEdit
          Left = 72
          Top = 8
          Width = 25
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          Text = '12'
          OnKeyUp = EditFontSizeKeyUp
        end
        object UpDown5: TUpDown
          Left = 97
          Top = 8
          Width = 16
          Height = 19
          Associate = EditFontSize
          Min = 10
          Max = 20
          Position = 12
          TabOrder = 1
          Wrap = False
          OnClick = UpDown5Click
        end
        object EditFrequenceFontSize: TEdit
          Left = 72
          Top = 30
          Width = 25
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          Text = '20'
        end
        object EditEcartTexte: TEdit
          Left = 72
          Top = 54
          Width = 25
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          Text = '10'
        end
        object UpDown4: TUpDown
          Left = 97
          Top = 54
          Width = 16
          Height = 19
          Associate = EditEcartTexte
          Min = 0
          Position = 10
          TabOrder = 4
          Wrap = False
        end
      end
    end
    object AfficheModifierAttestationPaiement: TPanel
      Left = -568
      Top = 440
      Width = 697
      Height = 513
      BevelInner = bvLowered
      TabOrder = 34
      Visible = False
      object BitBtn15: TBitBtn
        Left = 8
        Top = 8
        Width = 75
        Height = 25
        TabOrder = 0
        OnClick = BitBtn15Click
        Kind = bkCancel
      end
      object BitBtn16: TBitBtn
        Left = 616
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Valider'
        TabOrder = 1
        OnClick = BitBtn16Click
        Kind = bkAll
      end
      object DataVersement: TMemo
        Left = 8
        Top = 40
        Width = 681
        Height = 465
        BevelInner = bvNone
        BiDiMode = bdLeftToRight
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Book Antiqua'
        Font.Style = []
        ParentBiDiMode = False
        ParentCtl3D = False
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 2
      end
    end
    object AfficheModifierDecision: TPanel
      Left = -608
      Top = 424
      Width = 697
      Height = 513
      BevelInner = bvLowered
      TabOrder = 27
      Visible = False
      object BitBtn12: TBitBtn
        Left = 616
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Valider'
        TabOrder = 0
        OnClick = BitBtn12Click
        Kind = bkAll
      end
      object BitBtn13: TBitBtn
        Left = 8
        Top = 8
        Width = 75
        Height = 25
        TabOrder = 1
        OnClick = BitBtn13Click
        Kind = bkCancel
      end
      object PageControl1: TPageControl
        Left = 8
        Top = 40
        Width = 681
        Height = 465
        ActivePage = TabSheet1
        TabIndex = 0
        TabOrder = 2
        object TabSheet1: TTabSheet
          Caption = '     Informations     '
          object DataVu: TMemo
            Left = 0
            Top = 0
            Width = 673
            Height = 433
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Book Antiqua'
            Font.Style = []
            Lines.Strings = (
              'L'#39'Entreprise de Promotion Immobili'#232're SARL SAPHIR PROMO:'
              ''
              '-Vu le registre de commerce n'#176' 13B0187725 du 18/04/2013'
              
                '-Vu le d'#233'cret l'#233'gislatif n'#176': 93/03 du 01/03/1993 modifi'#233' et comp' +
                'l'#233't'#233' relatif '
              #224' l'#39'activit'#233' Immobili'#232're.'
              
                '-Vu la d'#233'cision du Minist'#232're de l'#39'Habitat et de l'#39'Urbanisme port' +
                'ant '
              
                'Agr'#233'ment n'#176' 0625M0803 du 17/02/2013 pour l'#39'exercice de la profes' +
                'sion de '
              'promoteur immobilier'
              
                '-Vu l'#39'attestation d'#39'inscription au tableau national des promoteu' +
                'rs '
              'immobiliers sous le Num'#233'ro: 0482-0499-m14 du 08/07/2014'
              
                '-Vu l'#39'Arr'#234't'#233' portant permis de construire N'#176' 152/2015 du 04/06/2' +
                '015'
              '-Vu la convention de pr'#234't immobilier n'#176' 03/2016 du 25/12/2016'
              '-Vu la demande de Mr AMRICHE  HICHAM portant l'#39'acquisition d'#39'un '
              'Logement promotionnel collectif fini de type F4')
            ParentCtl3D = False
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
        object TabSheet2: TTabSheet
          Caption = '      Articles     '
          ImageIndex = 1
          object Label38: TLabel
            Left = 0
            Top = 8
            Width = 83
            Height = 23
            Caption = 'Article 1: '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Book Antiqua'
            Font.Style = [fsUnderline]
            ParentFont = False
          end
          object Label39: TLabel
            Left = 0
            Top = 88
            Width = 83
            Height = 23
            Caption = 'Article 2: '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Book Antiqua'
            Font.Style = [fsUnderline]
            ParentFont = False
          end
          object Label40: TLabel
            Left = 0
            Top = 184
            Width = 83
            Height = 23
            Caption = 'Article 3: '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Book Antiqua'
            Font.Style = [fsUnderline]
            ParentFont = False
          end
          object Label41: TLabel
            Left = 0
            Top = 272
            Width = 83
            Height = 23
            Caption = 'Article 4: '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Book Antiqua'
            Font.Style = [fsUnderline]
            ParentFont = False
          end
          object Label42: TLabel
            Left = 0
            Top = 352
            Width = 83
            Height = 23
            Caption = 'Article 5: '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Book Antiqua'
            Font.Style = [fsUnderline]
            ParentFont = False
          end
          object DataArticle1: TMemo
            Left = 88
            Top = 8
            Width = 585
            Height = 73
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Book Antiqua'
            Font.Style = []
            Lines.Strings = (
              'le Logement portant r'#233'f'#233'rence A43 est vendu '#224':'
              'Mr AMRICHE  HICHAM N'#233' le: 11/03/1989 '#224' HASI '
              'MESSAOUD, demeurent '#224' Rue de la gar, OUZELLAGUEN, C I '
              'N N'#176' 109891092001550001 d'#233'livr'#233'e le 09/01/2017 '#224' AKBOU')
            ParentCtl3D = False
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 0
          end
          object DataArticle2: TMemo
            Left = 88
            Top = 88
            Width = 585
            Height = 89
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Book Antiqua'
            Font.Style = []
            Lines.Strings = (
              'Typologie du Logement: F4, situ'#233' au 4 '#232'me '#233'tage du Bloc A du '
              
                'cot'#233' DROIT, dont le num'#233'ro identifiant est le A43, d'#39'une surface' +
                ' '
              'habitable de 102,83 m'#178' et d'#39'une surface utile de 123,40 m'#178', au '
              'projet de 19 Logements sise au CHIKHOUNE Cne '
              'OUZELAGUEN Wilaya de BEJAIA')
            ParentCtl3D = False
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 1
          end
          object DataArticle3: TMemo
            Left = 88
            Top = 184
            Width = 585
            Height = 81
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Book Antiqua'
            Font.Style = []
            Lines.Strings = (
              'Le prix de cession en TTC du bien immobilier est de: '
              '10.087.623,00 DA, soit en toute lettre DIX MILLIONS QUATRE-'
              'VINGT SEPT MILLE SIX CENT VINGT TROIS DINARS ET '
              'ZERO CENTIME (Hors frais du notaire)')
            ParentCtl3D = False
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 2
          end
          object DataArticle4: TMemo
            Left = 88
            Top = 272
            Width = 585
            Height = 81
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Book Antiqua'
            Font.Style = []
            Lines.Strings = (
              'Le bien en question reste la propri'#233't'#233' de l'#39'entreprise de '
              'promotion immobili'#232're SARL SAPHIR PROMO jusqu'#39'au '
              
                'payement total de ce d'#233'rnier, et l'#39#233'tablissement de l'#39'acte de ve' +
                'nte '
              'se fera devant le notaire')
            ParentCtl3D = False
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 3
          end
          object DataArticle5: TMemo
            Left = 88
            Top = 356
            Width = 585
            Height = 53
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Book Antiqua'
            Font.Style = []
            Lines.Strings = (
              'En fois de quoi, nous lui d'#233'livrons la pr'#233'sente d'#233'cision, pour '
              'servir et valoir ce que de droit.')
            ParentCtl3D = False
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 4
          end
          object RBInclureArticle1: TCheckBox
            Left = 0
            Top = 32
            Width = 65
            Height = 17
            Caption = 'Inclure.'
            Checked = True
            State = cbChecked
            TabOrder = 5
          end
          object RBInclureArticle2: TCheckBox
            Left = 0
            Top = 112
            Width = 65
            Height = 17
            Caption = 'Inclure.'
            Checked = True
            State = cbChecked
            TabOrder = 6
          end
          object RBInclureArticle3: TCheckBox
            Left = 0
            Top = 208
            Width = 65
            Height = 17
            Caption = 'Inclure.'
            Checked = True
            State = cbChecked
            TabOrder = 7
          end
          object RBInclureArticle4: TCheckBox
            Left = 0
            Top = 296
            Width = 65
            Height = 17
            Caption = 'Inclure.'
            Checked = True
            State = cbChecked
            TabOrder = 8
          end
          object RBInclureArticle5: TCheckBox
            Left = 0
            Top = 376
            Width = 65
            Height = 17
            Caption = 'Inclure.'
            Checked = True
            State = cbChecked
            TabOrder = 9
          end
          object RadioGroup1: TRadioGroup
            Left = 0
            Top = 409
            Width = 657
            Height = 27
            Caption = 'Type article 5:'
            TabOrder = 10
          end
          object RBDossierCreditBancaire: TRadioButton
            Left = 96
            Top = 416
            Width = 145
            Height = 17
            Caption = 'Dossier cr'#233'dit bancaire.'
            TabOrder = 11
            OnClick = RBDossierCreditBancaireClick
          end
          object RBValoircequedeDroit: TRadioButton
            Left = 304
            Top = 416
            Width = 137
            Height = 17
            Caption = 'Valoir ce que de droit.'
            Checked = True
            TabOrder = 12
            TabStop = True
            OnClick = RBValoircequedeDroitClick
          end
        end
      end
    end
    object AfficheDomiciliation: TPanel
      Left = 8
      Top = 104
      Width = 697
      Height = 257
      BevelInner = bvLowered
      Color = clGray
      TabOrder = 44
      Visible = False
      object Bevel32: TBevel
        Left = 8
        Top = 8
        Width = 681
        Height = 41
      end
      object BitBtn22: TBitBtn
        Left = 608
        Top = 16
        Width = 75
        Height = 25
        TabOrder = 0
        OnClick = BitBtn22Click
        Kind = bkCancel
      end
      object PageControl2: TPageControl
        Left = 8
        Top = 56
        Width = 681
        Height = 193
        ActivePage = PageAgence
        TabIndex = 0
        TabOrder = 1
        object PageAgence: TTabSheet
          Caption = 'Choisir l'#39'agence'
          object TableauDomiciliation: TStringGrid
            Left = 0
            Top = 0
            Width = 673
            Height = 161
            Color = 14024703
            ColCount = 7
            Ctl3D = False
            FixedColor = 8454143
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
            ParentCtl3D = False
            TabOrder = 0
            OnClick = TableauDomiciliationClick
            OnDblClick = TableauDomiciliationDblClick
            OnKeyDown = TableauDomiciliationKeyDown
            ColWidths = (
              64
              64
              64
              64
              64
              64
              64)
          end
        end
        object PageTexteAutorisation: TTabSheet
          Caption = 'Texte Autorisation'
          ImageIndex = 1
          object EditTexteAutorisation: TRichEdit
            Left = 0
            Top = 0
            Width = 673
            Height = 161
            ScrollBars = ssBoth
            TabOrder = 0
            OnKeyPress = EditTexteAutorisationKeyPress
          end
        end
      end
      object AutorisationVersementModifier: TCheckBox
        Left = 208
        Top = 56
        Width = 73
        Height = 17
        Enabled = False
        TabOrder = 2
      end
    end
  end
  object Panel2: TPanel
    Left = 936
    Top = 32
    Width = 113
    Height = 57
    BevelInner = bvLowered
    TabOrder = 26
    object Label49: TLabel
      Left = 8
      Top = 8
      Width = 74
      Height = 13
      Caption = 'Chiffre D'#233'cimal:'
    end
    object EditPartieDecimale: TEdit
      Left = 24
      Top = 27
      Width = 25
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      Text = '4'
      OnKeyPress = EditPartieDecimaleKeyPress
    end
    object IncrimenteEditPartieDecimale: TUpDown
      Left = 49
      Top = 27
      Width = 16
      Height = 19
      Associate = EditPartieDecimale
      Min = 0
      Position = 4
      TabOrder = 1
      Wrap = False
    end
  end
  object TableauTiers: TStringGrid
    Left = -376
    Top = 340
    Width = 505
    Height = 236
    ColCount = 10
    Ctl3D = False
    DefaultColWidth = 40
    DefaultRowHeight = 18
    RowCount = 20
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
    ParentCtl3D = False
    TabOrder = 8
    Visible = False
    OnDrawCell = TableauTiersDrawCell
    OnKeyDown = TableauTiersKeyDown
    ColWidths = (
      40
      70
      363
      245
      242
      205
      200
      212
      213
      206)
    RowHeights = (
      18
      18
      18
      18
      18
      18
      18
      18
      18
      18
      18
      18
      18
      18
      18
      18
      18
      18
      18
      18)
  end
  object TimerAfficheMessage: TTimer
    Enabled = False
    Interval = 150
    OnTimer = TimerAfficheMessageTimer
    Left = 16
    Top = 96
  end
  object TimerLancerAfficheTiers: TTimer
    Enabled = False
    Interval = 200
    OnTimer = TimerLancerAfficheTiersTimer
    Left = 872
    Top = 16
  end
  object TimerAfficheTiers: TTimer
    Enabled = False
    Interval = 50
    OnTimer = TimerAfficheTiersTimer
    Left = 840
    Top = 16
  end
end
