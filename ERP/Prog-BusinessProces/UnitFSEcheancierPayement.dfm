object FSEcheancierPayement: TFSEcheancierPayement
  Left = 0
  Top = 0
  Width = 1365
  Height = 729
  Caption = 'Ech'#233'ancier de payement'
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
  object TableauInformationEcheancier: TStringGrid
    Left = 8
    Top = 432
    Width = 1001
    Height = 97
    Color = 8454143
    ColCount = 2
    Ctl3D = False
    DefaultColWidth = 200
    DefaultRowHeight = 18
    FixedColor = 8454143
    RowCount = 2
    ParentCtl3D = False
    TabOrder = 6
    ColWidths = (
      200
      776)
    RowHeights = (
      18
      18)
  end
  object EditPenaliteJour: TEdit
    Left = 880
    Top = 176
    Width = 121
    Height = 19
    Color = clSilver
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 8
  end
  object AfficheMessagePenalite: TPanel
    Left = 8
    Top = 160
    Width = 1001
    Height = 41
    Alignment = taLeftJustify
    BevelInner = bvLowered
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object TableauDetailEcheancierPayement: TStringGrid
    Left = 8
    Top = 208
    Width = 1001
    Height = 473
    Ctl3D = False
    RowCount = 2
    ParentCtl3D = False
    TabOrder = 0
    OnClick = TableauDetailEcheancierPayementClick
    RowHeights = (
      24
      24)
  end
  object Panel2: TPanel
    Left = 512
    Top = 2
    Width = 497
    Height = 153
    BevelInner = bvLowered
    Color = 8454143
    TabOrder = 1
    object Bevel5: TBevel
      Left = 8
      Top = 8
      Width = 145
      Height = 41
    end
    object Bevel6: TBevel
      Left = 160
      Top = 8
      Width = 161
      Height = 41
    end
    object Bevel7: TBevel
      Left = 328
      Top = 8
      Width = 161
      Height = 41
    end
    object Bevel8: TBevel
      Left = 328
      Top = 56
      Width = 161
      Height = 41
    end
    object Bevel9: TBevel
      Left = 8
      Top = 56
      Width = 145
      Height = 89
    end
    object Bevel10: TBevel
      Left = 160
      Top = 56
      Width = 161
      Height = 89
    end
    object Bevel11: TBevel
      Left = 328
      Top = 104
      Width = 161
      Height = 41
    end
    object Bevel12: TBevel
      Left = 168
      Top = 96
      Width = 145
      Height = 41
    end
    object BitNouveauEcheancierPayement: TBitBtn
      Left = 16
      Top = 16
      Width = 113
      Height = 25
      Caption = 'Nouveau'
      TabOrder = 0
      OnClick = BitNouveauEcheancierPayementClick
      Kind = bkAll
    end
    object BitModifierEcheancierPayement: TBitBtn
      Left = 168
      Top = 16
      Width = 145
      Height = 25
      Caption = 'Modifier'
      TabOrder = 1
      OnClick = BitModifierEcheancierPayementClick
      Kind = bkRetry
    end
    object BitSupprimerEcheancierPayement: TBitBtn
      Left = 336
      Top = 16
      Width = 145
      Height = 25
      Caption = 'Supprimer'
      TabOrder = 2
      OnClick = BitSupprimerEcheancierPayementClick
      Kind = bkCancel
    end
    object BitBtn2: TBitBtn
      Left = 16
      Top = 64
      Width = 129
      Height = 25
      Caption = 'Imprimer Tableau'
      TabOrder = 3
      OnClick = BitBtn2Click
      Kind = bkHelp
    end
    object RBOrientationPapier: TComboBox
      Left = 16
      Top = 115
      Width = 129
      Height = 21
      BevelInner = bvLowered
      BevelKind = bkFlat
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 1
      ParentCtl3D = False
      TabOrder = 4
      Text = 'Paysage'
      Items.Strings = (
        'Portrait'
        'Paysage')
    end
    object RBAjusterTableau: TCheckBox
      Left = 16
      Top = 92
      Width = 105
      Height = 17
      Caption = 'Ajuster le tableau.'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object RBRecapitulatifEcheancier: TCheckBox
      Left = 344
      Top = 68
      Width = 129
      Height = 17
      Caption = 'Afficher les r'#233'glements'
      TabOrder = 6
      OnClick = RBRecapitulatifEcheancierClick
    end
    object BitBtn3: TBitBtn
      Left = 168
      Top = 64
      Width = 145
      Height = 25
      Caption = 'Imprimer l'#39'Engagement'
      TabOrder = 7
      OnClick = BitBtn3Click
      Kind = bkHelp
      Margin = 0
    end
    object BitBtn4: TBitBtn
      Left = 176
      Top = 104
      Width = 129
      Height = 25
      Caption = 'Voir les closes '
      TabOrder = 8
      OnClick = BitBtn4Click
      Kind = bkHelp
    end
  end
  object TableauListeEcheancierPayement: TStringGrid
    Left = 8
    Top = 2
    Width = 497
    Height = 153
    Color = 13828050
    Ctl3D = False
    FixedColor = 8454016
    RowCount = 2
    ParentCtl3D = False
    TabOrder = 4
    OnClick = TableauListeEcheancierPayementClick
    OnDblClick = TableauListeEcheancierPayementDblClick
    RowHeights = (
      24
      24)
  end
  object TableauRecapitulatifEcheancierPaiement: TStringGrid
    Left = 8
    Top = 208
    Width = 1001
    Height = 481
    Ctl3D = False
    RowCount = 2
    ParentCtl3D = False
    TabOrder = 7
    Visible = False
    OnClick = TableauRecapitulatifEcheancierPaiementClick
  end
  object AfficheEcheancierPayement: TPanel
    Left = 256
    Top = 120
    Width = 513
    Height = 553
    BevelInner = bvLowered
    Color = 8454016
    TabOrder = 2
    Visible = False
    object Panel5: TPanel
      Left = 8
      Top = 352
      Width = 497
      Height = 129
      BevelInner = bvLowered
      Color = 8454143
      TabOrder = 0
      object Bevel2: TBevel
        Left = 8
        Top = 32
        Width = 481
        Height = 89
      end
      object Label5: TLabel
        Left = 16
        Top = 43
        Width = 130
        Height = 13
        Caption = 'Pourcentage de la p'#233'nalit'#233':'
      end
      object Label6: TLabel
        Left = 16
        Top = 68
        Width = 87
        Height = 13
        Caption = 'Diff'#233'r'#233' P'#233'riodique:'
      end
      object Label8: TLabel
        Left = 8
        Top = 8
        Width = 129
        Height = 16
        Caption = 'P'#233'nalit'#233' de retard:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 16
        Top = 90
        Width = 63
        Height = 13
        Caption = 'P'#233'nalit'#233' max:'
      end
      object Label7: TLabel
        Left = 280
        Top = 93
        Width = 120
        Height = 13
        Caption = 'sur le capitale p'#233'riodique.'
      end
      object Label16: TLabel
        Left = 196
        Top = 43
        Width = 14
        Height = 13
        Caption = '(%)'
      end
      object EditPourcentagePenalite: TEdit
        Left = 152
        Top = 40
        Width = 41
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        Text = '0'
        OnEnter = EditPourcentagePenaliteEnter
        OnExit = EditPourcentagePenaliteExit
        OnKeyDown = EditPourcentagePenaliteKeyDown
        OnKeyUp = EditPourcentagePenaliteKeyUp
      end
      object EditDiffereApplicationPenalite: TEdit
        Left = 152
        Top = 64
        Width = 57
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnKeyDown = EditDiffereApplicationPenaliteKeyDown
      end
      object EditNatureDureeApplicationPenalite: TComboBox
        Left = 210
        Top = 64
        Width = 65
        Height = 21
        BevelKind = bkFlat
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 2
        Text = 'Jour'
        OnKeyDown = EditNatureDureeApplicationPenaliteKeyDown
        OnKeyPress = EditNatureDureeApplicationPenaliteKeyPress
        Items.Strings = (
          'Jour'
          'Mois'
          'Ann'#233'e')
      end
      object EditMontantMaxPenalite: TEdit
        Left = 152
        Top = 88
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        OnEnter = EditMontantMaxPenaliteEnter
        OnExit = EditMontantMaxPenaliteExit
        OnKeyDown = EditMontantMaxPenaliteKeyDown
      end
    end
    object EditChargementTypeProces: TEdit
      Left = 32
      Top = 40
      Width = 105
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
      Text = 'Commercial'
    end
    object EditChargementFichierConcerne: TEdit
      Left = 32
      Top = 64
      Width = 105
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
      Text = 'FClient'
    end
    object Panel1: TPanel
      Left = 8
      Top = 8
      Width = 497
      Height = 129
      BevelInner = bvLowered
      Color = 8454143
      TabOrder = 1
      object Label10: TLabel
        Left = 8
        Top = 10
        Width = 26
        Height = 13
        Caption = 'Date:'
      end
      object Label11: TLabel
        Left = 8
        Top = 34
        Width = 26
        Height = 13
        Caption = 'Tiers:'
      end
      object Label12: TLabel
        Left = 8
        Top = 58
        Width = 111
        Height = 13
        Caption = 'Liste Num Planificateur:'
      end
      object Label13: TLabel
        Left = 8
        Top = 82
        Width = 122
        Height = 13
        Caption = 'Montant Globale (Capital):'
      end
      object Label14: TLabel
        Left = 333
        Top = 12
        Width = 25
        Height = 13
        Caption = 'Num:'
      end
      object Label15: TLabel
        Left = 40
        Top = 107
        Width = 85
        Height = 13
        Caption = 'Apport:   1)  Initial:'
      end
      object Label21: TLabel
        Left = 264
        Top = 107
        Width = 57
        Height = 13
        Caption = '2) Bancaire:'
      end
      object EditCodeTiers: TEdit
        Left = 136
        Top = 32
        Width = 121
        Height = 19
        Color = clSilver
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
      object EditMontantGlobale: TEdit
        Left = 136
        Top = 80
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnEnter = EditMontantGlobaleEnter
        OnExit = EditMontantGlobaleExit
        OnKeyDown = EditMontantGlobaleKeyDown
      end
      object EditDateEcheancier: TDateTimePicker
        Left = 136
        Top = 8
        Width = 186
        Height = 21
        BevelKind = bkFlat
        CalAlignment = dtaLeft
        Date = 41837.5970285301
        Time = 41837.5970285301
        DateFormat = dfLong
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        TabOrder = 2
        OnKeyDown = EditDateEcheancierKeyDown
      end
      object EditNumEcheancier: TEdit
        Left = 368
        Top = 8
        Width = 121
        Height = 19
        Color = clSilver
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
      end
      object EditApportInitial: TEdit
        Left = 136
        Top = 104
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        OnEnter = EditApportInitialEnter
        OnExit = EditApportInitialExit
        OnKeyDown = EditApportInitialKeyDown
      end
      object EditApportBancaire: TEdit
        Left = 336
        Top = 104
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
      end
    end
    object Panel3: TPanel
      Left = 8
      Top = 144
      Width = 497
      Height = 65
      BevelInner = bvLowered
      Color = 8454143
      TabOrder = 4
      object Label17: TLabel
        Left = 8
        Top = 13
        Width = 98
        Height = 13
        Caption = 'En cas de Virement: '
      end
      object Label18: TLabel
        Left = 8
        Top = 37
        Width = 54
        Height = 13
        Caption = 'Compte N'#176':'
      end
      object EditCompteDomiciliation: TEdit
        Left = 136
        Top = 36
        Width = 353
        Height = 19
        Color = clSilver
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object Panel6: TPanel
      Left = 8
      Top = 488
      Width = 497
      Height = 57
      BevelInner = bvLowered
      Color = 8454143
      TabOrder = 5
      object Label19: TLabel
        Left = 8
        Top = 37
        Width = 169
        Height = 13
        Caption = #201'tablissement l'#233'galisation signature:'
      end
      object Label20: TLabel
        Left = 8
        Top = 13
        Width = 123
        Height = 13
        Caption = 'Qualit'#233' de l'#39'Etablissement:'
      end
      object EditCodeLocalisationGeographique: TEdit
        Left = 184
        Top = 32
        Width = 57
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
      object EditFichierLocalisationGeographique: TComboBox
        Left = 184
        Top = 8
        Width = 145
        Height = 21
        BevelInner = bvLowered
        BevelKind = bkFlat
        Ctl3D = False
        ItemHeight = 13
        ItemIndex = 3
        ParentCtl3D = False
        TabOrder = 1
        Text = 'Commune'
        OnChange = EditFichierLocalisationGeographiqueChange
        Items.Strings = (
          'Pays'
          'Wylaia'
          'Daira'
          'Commune'
          'Zone')
      end
    end
    object EditTiers: TEdit
      Left = 144
      Top = 40
      Width = 353
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      OnEnter = EditTiersEnter
      OnKeyDown = EditTiersKeyDown
      OnKeyUp = EditTiersKeyUp
    end
    object EditListeNumPlanificateur: TEdit
      Left = 144
      Top = 64
      Width = 353
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 7
      OnEnter = EditListeNumPlanificateurEnter
      OnKeyDown = EditListeNumPlanificateurKeyDown
    end
    object EditDomiciliation: TEdit
      Left = 144
      Top = 156
      Width = 353
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 8
      OnEnter = EditDomiciliationEnter
      OnKeyDown = EditDomiciliationKeyDown
    end
    object EditEtablissementlegalisationsignature: TEdit
      Left = 192
      Top = 520
      Width = 305
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 9
      OnEnter = EditEtablissementlegalisationsignatureEnter
      OnKeyDown = EditEtablissementlegalisationsignatureKeyDown
    end
    object PageTrancheEcheancier: TPageControl
      Left = 8
      Top = 216
      Width = 361
      Height = 129
      ActivePage = ParTrancheFixe
      TabIndex = 0
      TabOrder = 10
      object ParTrancheFixe: TTabSheet
        Caption = ' Montant de  la tranche fixe !  '
        object Bevel1: TBevel
          Left = 8
          Top = 4
          Width = 337
          Height = 89
        end
        object Label3: TLabel
          Left = 20
          Top = 69
          Width = 107
          Height = 13
          Caption = 'Montant de la tranche:'
        end
        object Label1: TLabel
          Left = 20
          Top = 16
          Width = 78
          Height = 13
          Caption = 'Dur'#233'e  Tranche:'
        end
        object Label2: TLabel
          Left = 20
          Top = 40
          Width = 65
          Height = 13
          Caption = 'Nature dur'#233'e:'
        end
        object EditMontantTranche: TEdit
          Left = 137
          Top = 63
          Width = 114
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnEnter = EditMontantTrancheEnter
          OnExit = EditMontantTrancheExit
          OnKeyDown = EditMontantTrancheKeyDown
        end
        object RBActiveMontantTranche: TCheckBox
          Left = 264
          Top = 64
          Width = 57
          Height = 17
          Caption = 'Activer'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = RBActiveMontantTrancheClick
        end
      end
      object PageDureeFixe: TTabSheet
        Caption = ' Dur'#233'e de l'#39#233'chancier fixe !  '
        ImageIndex = 1
        object Bevel13: TBevel
          Left = 8
          Top = 4
          Width = 337
          Height = 89
        end
        object Label4: TLabel
          Left = 20
          Top = 16
          Width = 78
          Height = 13
          Caption = 'Dur'#233'e  Tranche:'
        end
        object Label22: TLabel
          Left = 20
          Top = 40
          Width = 65
          Height = 13
          Caption = 'Nature dur'#233'e:'
        end
        object Label23: TLabel
          Left = 20
          Top = 69
          Width = 104
          Height = 13
          Caption = 'Dur'#233'e de l'#39'ech'#233'ancier'
        end
        object EditDureeEcheancier: TEdit
          Left = 136
          Top = 64
          Width = 57
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentCtl3D = False
          TabOrder = 0
          OnExit = EditDureeEcheancierExit
          OnKeyPress = EditDureeEcheancierKeyPress
        end
        object EditNaturedureeEcheancier: TEdit
          Left = 196
          Top = 64
          Width = 57
          Height = 19
          Color = clSilver
          Ctl3D = False
          Enabled = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object RBActiveDureeEcheancier: TCheckBox
          Left = 264
          Top = 64
          Width = 57
          Height = 17
          Caption = 'Activer'
          TabOrder = 2
          OnClick = RBActiveDureeEcheancierClick
        end
      end
    end
    object EditDureeTranche: TEdit
      Left = 148
      Top = 253
      Width = 117
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 11
      OnKeyDown = EditDureeTrancheKeyDown
      OnKeyPress = EditDureeTrancheKeyPress
    end
    object EditNaturedureeTranche: TComboBox
      Left = 148
      Top = 277
      Width = 117
      Height = 21
      BevelKind = bkFlat
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 12
      Text = 'Jour'
      OnChange = EditNaturedureeTrancheChange
      OnKeyDown = EditNaturedureeTrancheKeyDown
      OnKeyPress = EditNaturedureeTrancheKeyPress
      Items.Strings = (
        'Jour'
        'Mois'
        'Ann'#233'e')
    end
    object Panel4: TPanel
      Left = 376
      Top = 216
      Width = 129
      Height = 129
      BevelInner = bvLowered
      Color = 8454143
      TabOrder = 13
      object Bevel4: TBevel
        Left = 8
        Top = 8
        Width = 113
        Height = 49
      end
      object Bevel3: TBevel
        Left = 8
        Top = 80
        Width = 113
        Height = 41
      end
      object BitOperationEcheancierPayement: TBitBtn
        Left = 16
        Top = 16
        Width = 97
        Height = 33
        Caption = 'Valider'
        TabOrder = 0
        OnClick = BitOperationEcheancierPayementClick
        Kind = bkAll
      end
      object BitBtn1: TBitBtn
        Left = 16
        Top = 88
        Width = 99
        Height = 25
        Caption = 'Annuler'
        TabOrder = 1
        OnClick = BitBtn1Click
        Kind = bkNo
      end
    end
  end
  object TableauSelection: TStringGrid
    Left = 896
    Top = 263
    Width = 537
    Height = 265
    Color = 16777173
    Ctl3D = False
    FixedColor = 16777088
    RowCount = 2
    ParentCtl3D = False
    TabOrder = 3
    Visible = False
    OnDblClick = TableauSelectionDblClick
    OnKeyDown = TableauSelectionKeyDown
    OnKeyPress = TableauSelectionKeyPress
    RowHeights = (
      24
      24)
  end
  object AfficheDomiciliation: TPanel
    Left = 912
    Top = 304
    Width = 561
    Height = 257
    BevelInner = bvLowered
    Color = clGray
    TabOrder = 9
    Visible = False
    object Bevel17: TBevel
      Left = 8
      Top = 8
      Width = 545
      Height = 41
    end
    object TableauDomiciliation: TStringGrid
      Left = 8
      Top = 56
      Width = 545
      Height = 193
      Color = 14024703
      ColCount = 7
      Ctl3D = False
      FixedColor = 8454143
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
      ParentCtl3D = False
      TabOrder = 0
      OnDblClick = TableauDomiciliationDblClick
      OnKeyDown = TableauDomiciliationKeyDown
    end
    object BitBtn9: TBitBtn
      Left = 472
      Top = 16
      Width = 75
      Height = 25
      TabOrder = 1
      OnClick = BitBtn9Click
      Kind = bkCancel
    end
  end
  object AfficheApportGlobal: TPanel
    Left = 48
    Top = 14
    Width = 921
    Height = 105
    BevelInner = bvLowered
    Color = clBlack
    TabOrder = 10
    Visible = False
    object TableauApportGlobal: TStringGrid
      Left = 8
      Top = 8
      Width = 905
      Height = 89
      Color = clBtnFace
      Ctl3D = False
      RowCount = 2
      ParentCtl3D = False
      TabOrder = 0
    end
  end
  object EditEcheancierTexte: TMemo
    Left = 24
    Top = 16
    Width = 569
    Height = 665
    Color = clBlack
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Lucida Calligraphy'
    Font.Style = []
    Lines.Strings = (
      'M'#39'engage '#224' honorer le paiement de l'#39'achat du produit suivant :'
      
        '{R'#233'servation d'#39'un Logement Type F4 N'#176' A44, Montant: 8.052.285,00' +
        ' DA.}'
      '- Apport Initial:                        600.000,00 DA'
      '- Apport Bancaire:                    7.052.285,00 DA'
      '- Reste Objet d'#39#233'ch'#233'ancier:         400.000,00 DA'
      ''
      '- Pour un montantd'#39#233'ch'#233'ancier Global de:'
      
        '                                                  En chiffres : ' +
        '400.000,00 DA'
      
        '                                                  En lettre    :' +
        ' QUATRE CENT DINARS ZERO CENTIME'
      ''
      
        '- Agissant pour le compte de SARL SAPHIR PROMO, par paiement par' +
        ' tranche, Je '
      'm'#39'engage '#224' respecter les modalit'#233's suivantes : '
      ''
      
        '- Le strict respect du tableau d'#39#233'ch'#233'ancier '#233'tabli par la soci'#233't' +
        #233' sus nomm'#233'e ;'
      ''
      
        '- Un montant de 60.000,00DA, sera pay'#233' par p'#233'riode de 3 Mois; Je' +
        ' m'#39'engage '#224' les '
      
        'r'#233'gler par virement au compte BDL AKBOU  N'#176' 00500153400220152066' +
        ' ou en esp'#232'ce ;'
      ''
      
        '- La premi'#232're '#233'ch'#233'ance, devra d'#233'buter au plus tard '#224' la date du ' +
        'd'#233'but de la '
      
        'r'#233'alisation qui sera indiqu'#233' dans le tableau d'#39#233'ch'#233'ancier dument' +
        ' sign'#233' par les deux '
      'parties ;'
      ''
      
        '- En cas de non respect de ma part de l'#39'une ou de plusieurs '#233'ch'#233 +
        'ances, je m'#39'engage '#224' '
      'rembourser par anticipation la totalit'#233' du montant restant d'#251' ;'
      ''
      
        '- En cas d'#39'annulation de mon cr'#233'dit bancaire, je m'#39'engage '#224'  adr' +
        'esser, '#224' '
      
        'l'#39'administration de SARL SAPHIR PROMO, un courrier pour approbat' +
        'ion, portant '
      
        'mise '#224' jour de mon '#233'ch'#233'ancier, cas '#233'ch'#233'ant, la relation contract' +
        'uelle sera annuler.'
      ''
      
        '- Je m'#39'engage '#224' supporter tous les frais directs ou indirects qu' +
        'i peuvent r'#233'sulter des '
      
        'poursuites de recouvrement ainsi que les p'#233'nalit'#233's de retards in' +
        'diqu'#233's dans le tableau '
      'd'#39#233'ch'#233'ancier ;'
      ''
      
        '- En cas de litige, seul le tribunal que d'#233'signera SARL SAPHIR P' +
        'ROMO sera '
      'comp'#233'tant pour le traitement du dossier.'
      ''
      
        '     Signature l'#233'galis'#233'e du client                         Fait ' +
        #224' : AKBOU Le : 25/08/2015')
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 11
    Visible = False
  end
end
