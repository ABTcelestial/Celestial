object FSFormulairePreselection: TFSFormulairePreselection
  Left = -1
  Top = 0
  Width = 1362
  Height = 738
  Caption = 'Formulaire de Pr'#233's'#233'lection'
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
  object PageControl1: TPageControl
    Left = 5
    Top = 3
    Width = 1340
    Height = 678
    ActivePage = PageFormulairePreselection
    TabIndex = 0
    TabOrder = 0
    OnChange = PageControl1Change
    object PageFormulairePreselection: TTabSheet
      Caption = '     Formulaire de Pr'#233's'#233'lection     '
      OnShow = PageFormulairePreselectionShow
      object Bevel15: TBevel
        Left = 0
        Top = 0
        Width = 156
        Height = 33
      end
      object Bevel18: TBevel
        Left = 176
        Top = 0
        Width = 116
        Height = 33
      end
      object Bevel30: TBevel
        Left = 448
        Top = 0
        Width = 141
        Height = 33
      end
      object Bevel31: TBevel
        Left = 312
        Top = 0
        Width = 117
        Height = 33
      end
      object Bevel35: TBevel
        Left = 608
        Top = 0
        Width = 157
        Height = 33
      end
      object Bevel36: TBevel
        Left = 160
        Top = 0
        Width = 12
        Height = 33
      end
      object Bevel37: TBevel
        Left = 296
        Top = 0
        Width = 12
        Height = 33
      end
      object Bevel38: TBevel
        Left = 432
        Top = 0
        Width = 12
        Height = 33
      end
      object Bevel39: TBevel
        Left = 592
        Top = 0
        Width = 12
        Height = 33
      end
      object Bevel40: TBevel
        Left = 768
        Top = 0
        Width = 20
        Height = 33
      end
      object EditRowSelect: TEdit
        Left = 8
        Top = 86
        Width = 57
        Height = 19
        Color = clSilver
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 13
      end
      object TableauFormulairePreselection: TStringGrid
        Left = 0
        Top = 80
        Width = 1329
        Height = 565
        ColCount = 26
        Ctl3D = False
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
        ParentCtl3D = False
        TabOrder = 7
        OnClick = TableauFormulairePreselectionClick
        OnKeyDown = TableauFormulairePreselectionKeyDown
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
          24)
      end
      object BitBtn1: TBitBtn
        Left = 5
        Top = 4
        Width = 148
        Height = 25
        Caption = 'Nouvelle Pr'#233's'#233'lection !'
        TabOrder = 0
        OnClick = BitBtn1Click
        Kind = bkAll
      end
      object BitBtn8: TBitBtn
        Left = 453
        Top = 4
        Width = 132
        Height = 25
        Caption = 'Voir l'#39'approt Initial !'
        TabOrder = 3
        OnClick = BitBtn8Click
        Kind = bkHelp
      end
      object RBEtatAfficheTraitement: TCheckBox
        Left = 712
        Top = 48
        Width = 73
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Formulaire'
        TabOrder = 6
        OnClick = RBEtatAfficheTraitementClick
      end
      object AfficheOperationFOrmulairePreselection: TPanel
        Left = 168
        Top = 104
        Width = 689
        Height = 513
        BevelInner = bvLowered
        Color = 14671839
        TabOrder = 4
        Visible = False
        object Bevel9: TBevel
          Left = 400
          Top = 8
          Width = 89
          Height = 33
        end
        object Bevel27: TBevel
          Left = 8
          Top = 336
          Width = 673
          Height = 49
        end
        object Bevel4: TBevel
          Left = 456
          Top = 128
          Width = 225
          Height = 33
        end
        object Bevel1: TBevel
          Left = 8
          Top = 48
          Width = 481
          Height = 33
        end
        object TiersUtilise: TLabel
          Left = 16
          Top = 58
          Width = 29
          Height = 13
          Caption = 'Client:'
        end
        object Label2: TLabel
          Left = 16
          Top = 98
          Width = 30
          Height = 13
          Caption = 'Projet:'
        end
        object Bevel2: TBevel
          Left = 8
          Top = 88
          Width = 481
          Height = 33
        end
        object Bevel3: TBevel
          Left = 8
          Top = 128
          Width = 313
          Height = 33
        end
        object Label3: TLabel
          Left = 16
          Top = 138
          Width = 92
          Height = 13
          Caption = 'Type de Logement:'
        end
        object Label4: TLabel
          Left = 464
          Top = 138
          Width = 83
          Height = 13
          Caption = 'Etat du logement:'
        end
        object Bevel7: TBevel
          Left = 8
          Top = 280
          Width = 673
          Height = 49
        end
        object Bevel6: TBevel
          Left = 8
          Top = 224
          Width = 673
          Height = 49
        end
        object Bevel5: TBevel
          Left = 8
          Top = 168
          Width = 673
          Height = 49
        end
        object Label5: TLabel
          Left = 16
          Top = 178
          Width = 103
          Height = 13
          Caption = 'Montant du logement:'
        end
        object Label6: TLabel
          Left = 16
          Top = 235
          Width = 96
          Height = 13
          Caption = 'Simulation Bancaire:'
        end
        object Label7: TLabel
          Left = 16
          Top = 290
          Width = 84
          Height = 13
          Caption = 'Apport Personnel:'
        end
        object Label14: TLabel
          Left = 40
          Top = 346
          Width = 61
          Height = 13
          Caption = 'Apport Initial:'
        end
        object Bevel13: TBevel
          Left = 496
          Top = 56
          Width = 185
          Height = 41
        end
        object Bevel28: TBevel
          Left = 8
          Top = 8
          Width = 257
          Height = 33
        end
        object Label27: TLabel
          Left = 16
          Top = 18
          Width = 26
          Height = 13
          Caption = 'Date:'
        end
        object Bevel29: TBevel
          Left = 496
          Top = 8
          Width = 185
          Height = 41
        end
        object Label26: TLabel
          Left = 405
          Top = 19
          Width = 33
          Height = 13
          Caption = 'P'#176' F.P:'
        end
        object RBApportPersonnelFixe: TCheckBox
          Left = 128
          Top = 309
          Width = 161
          Height = 17
          Caption = 'Apport Personnel Fixe !'
          TabOrder = 30
          OnClick = RBApportPersonnelFixeClick
        end
        object AfficheSignataire: TPanel
          Left = 8
          Top = 468
          Width = 209
          Height = 37
          BevelInner = bvLowered
          Color = 12058623
          TabOrder = 29
          object Label8: TLabel
            Left = 8
            Top = 11
            Width = 50
            Height = 13
            Caption = 'Signataire:'
          end
          object EditSignataire: TComboBox
            Left = 72
            Top = 6
            Width = 113
            Height = 21
            BevelInner = bvLowered
            BevelKind = bkFlat
            ItemHeight = 13
            ItemIndex = 1
            TabOrder = 0
            Text = 'Le G'#233'rant'
            Items.Strings = (
              'Le Directeur'
              'Le G'#233'rant')
          end
        end
        object EditCodeTiers: TEdit
          Left = 72
          Top = 56
          Width = 81
          Height = 19
          Color = 14671839
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
        end
        object EditTiers: TEdit
          Left = 152
          Top = 56
          Width = 305
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnKeyDown = EditTiersKeyDown
          OnKeyUp = EditTiersKeyUp
        end
        object BitBtn3: TBitBtn
          Left = 459
          Top = 53
          Width = 27
          Height = 25
          Caption = '.'
          TabOrder = 1
          OnClick = BitBtn3Click
          Kind = bkHelp
          Margin = 0
        end
        object EditNumProjet: TEdit
          Left = 72
          Top = 96
          Width = 129
          Height = 19
          Color = 14671839
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object EditDesignationProjet: TEdit
          Left = 200
          Top = 96
          Width = 257
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
          OnKeyDown = EditDesignationProjetKeyDown
        end
        object BitBtn6: TBitBtn
          Left = 459
          Top = 93
          Width = 27
          Height = 25
          Caption = '.'
          TabOrder = 5
          OnClick = BitBtn6Click
          Kind = bkHelp
        end
        object EditTypeLogement: TComboBox
          Left = 112
          Top = 136
          Width = 201
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          Ctl3D = False
          ItemHeight = 13
          ItemIndex = 0
          ParentCtl3D = False
          TabOrder = 6
          Text = 'Logement type F1'
          OnKeyDown = EditTypeLogementKeyDown
          Items.Strings = (
            'Logement type F1'
            'Logement type F2'
            'Logement type F3'
            'Logement type F4'
            'Logement type F5'
            'Duplexe')
        end
        object EditEtatLogement: TComboBox
          Left = 552
          Top = 136
          Width = 121
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          Ctl3D = False
          ItemHeight = 13
          ItemIndex = 0
          ParentCtl3D = False
          TabOrder = 7
          Text = 'Fini'
          OnKeyDown = EditEtatLogementKeyDown
          Items.Strings = (
            'Fini'
            'Semi-Fini')
        end
        object EditMontantLogement: TEdit
          Left = 128
          Top = 176
          Width = 161
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 8
          OnEnter = EditMontantLogementEnter
          OnExit = EditMontantLogementExit
          OnKeyDown = EditMontantLogementKeyDown
          OnKeyPress = EditMontantLogementKeyPress
          OnKeyUp = EditMontantLogementKeyUp
        end
        object EditMontantLogementLettre: TMemo
          Left = 296
          Top = 176
          Width = 377
          Height = 33
          Color = 14342874
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 9
        end
        object EditSimulationBanque: TEdit
          Left = 128
          Top = 232
          Width = 161
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 10
          OnEnter = EditSimulationBanqueEnter
          OnExit = EditSimulationBanqueExit
          OnKeyDown = EditSimulationBanqueKeyDown
          OnKeyPress = EditSimulationBanqueKeyPress
          OnKeyUp = EditSimulationBanqueKeyUp
        end
        object EditSimulationBanqueLettre: TMemo
          Left = 296
          Top = 232
          Width = 377
          Height = 33
          Color = 14342874
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 11
        end
        object EditApportPersonnel: TEdit
          Left = 128
          Top = 288
          Width = 161
          Height = 19
          Color = 14342874
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 12
          OnEnter = EditApportPersonnelEnter
          OnExit = EditApportPersonnelExit
          OnKeyDown = EditApportPersonnelKeyDown
          OnKeyPress = EditApportPersonnelKeyPress
          OnKeyUp = EditApportPersonnelKeyUp
        end
        object EditApportPersonnelLettre: TMemo
          Left = 296
          Top = 288
          Width = 377
          Height = 33
          Color = 14342874
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 13
        end
        object EditApportInitial: TEdit
          Left = 128
          Top = 344
          Width = 161
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 14
          OnEnter = EditApportInitialEnter
          OnExit = EditApportInitialExit
          OnKeyDown = EditApportInitialKeyDown
          OnKeyPress = EditApportInitialKeyPress
        end
        object EditApportInitialLettre: TMemo
          Left = 296
          Top = 344
          Width = 377
          Height = 33
          Color = 14342874
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 15
        end
        object RadioGroup1: TRadioGroup
          Left = 8
          Top = 392
          Width = 673
          Height = 73
          Caption = 'Accord:'
          TabOrder = 16
        end
        object RBFavorable: TRadioButton
          Left = 128
          Top = 408
          Width = 113
          Height = 17
          Caption = 'Favorable'
          TabOrder = 17
          OnClick = RBFavorableClick
          OnKeyDown = RBFavorableKeyDown
        end
        object RBDefavorable: TRadioButton
          Left = 264
          Top = 408
          Width = 113
          Height = 17
          Caption = 'D'#233'favorable'
          TabOrder = 18
          OnClick = RBDefavorableClick
          OnKeyDown = RBDefavorableKeyDown
        end
        object RBInstance: TRadioButton
          Left = 416
          Top = 408
          Width = 113
          Height = 17
          Caption = 'Instance'
          TabOrder = 19
          OnClick = RBInstanceClick
          OnKeyDown = RBInstanceKeyDown
        end
        object Panel1: TPanel
          Left = 16
          Top = 422
          Width = 105
          Height = 21
          BevelInner = bvLowered
          Caption = 'Motif'
          TabOrder = 20
        end
        object EditAccord: TEdit
          Left = 128
          Top = 424
          Width = 81
          Height = 19
          Color = 14342874
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 21
        end
        object EditMotifAccord: TMemo
          Left = 208
          Top = 424
          Width = 465
          Height = 33
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 22
        end
        object BitValiderPreselection: TBitBtn
          Left = 504
          Top = 64
          Width = 169
          Height = 25
          Caption = 'Valider la Pr'#233's'#233'lection !'
          TabOrder = 23
          OnClick = BitValiderPreselectionClick
          Kind = bkRetry
        end
        object EditDateFormulairePreselection: TDateTimePicker
          Left = 72
          Top = 16
          Width = 186
          Height = 21
          BevelInner = bvNone
          BevelKind = bkFlat
          CalAlignment = dtaLeft
          Date = 41696.6266024653
          Time = 41696.6266024653
          DateFormat = dfLong
          DateMode = dmComboBox
          Kind = dtkDate
          ParseInput = False
          TabOrder = 24
          OnClick = EditDateFormulairePreselectionClick
        end
        object BitBtn2: TBitBtn
          Left = 504
          Top = 16
          Width = 169
          Height = 25
          TabOrder = 25
          OnClick = BitBtn2Click
          Kind = bkCancel
        end
        object EditPositionFormulairePreselection: TEdit
          Left = 443
          Top = 16
          Width = 41
          Height = 19
          Color = 14342874
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 26
        end
        object AfficheDetailApportInitial: TPanel
          Left = 8
          Top = 8
          Width = 673
          Height = 497
          BevelInner = bvLowered
          Color = 8454143
          TabOrder = 27
          object Bevel20: TBevel
            Left = 8
            Top = 104
            Width = 657
            Height = 129
          end
          object Bevel19: TBevel
            Left = 8
            Top = 8
            Width = 657
            Height = 41
          end
          object Label19: TLabel
            Left = 61
            Top = 137
            Width = 99
            Height = 13
            Alignment = taRightJustify
            Caption = 'Mode de R'#232'glement:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label20: TLabel
            Left = 94
            Top = 161
            Width = 62
            Height = 13
            Alignment = taRightJustify
            Caption = 'Domiciliation:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 110
            Top = 188
            Width = 45
            Height = 13
            Alignment = taRightJustify
            Caption = 'N'#176' Pi'#232'ce:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 93
            Top = 208
            Width = 60
            Height = 13
            Alignment = taRightJustify
            Caption = 'Observation:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 65
            Top = 113
            Width = 95
            Height = 13
            Alignment = taRightJustify
            Caption = 'Date du R'#232'glement:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Bevel21: TBevel
            Left = 8
            Top = 56
            Width = 153
            Height = 41
          end
          object Bevel22: TBevel
            Left = 168
            Top = 56
            Width = 337
            Height = 41
          end
          object Bevel23: TBevel
            Left = 512
            Top = 56
            Width = 153
            Height = 41
          end
          object ClickModifDateReglementApportInitial: TLabel
            Left = 264
            Top = 115
            Width = 166
            Height = 13
            Caption = 'Double Clicke pour Modifier !'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            OnDblClick = ClickModifDateReglementApportInitialDblClick
          end
          object Bevel41: TBevel
            Left = 8
            Top = 240
            Width = 657
            Height = 249
          end
          object BitBtn10: TBitBtn
            Left = 584
            Top = 16
            Width = 75
            Height = 25
            TabOrder = 0
            OnClick = BitBtn10Click
            Kind = bkCancel
          end
          object BitValiderDetailApportInitial: TBitBtn
            Left = 16
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Valider'
            TabOrder = 1
            OnClick = BitValiderDetailApportInitialClick
            Kind = bkAll
          end
          object EditModeReglementApportInitial: TComboBox
            Left = 168
            Top = 134
            Width = 89
            Height = 21
            BevelInner = bvLowered
            BevelKind = bkFlat
            Enabled = False
            ItemHeight = 13
            TabOrder = 2
            OnKeyDown = EditModeReglementApportInitialKeyDown
            OnSelect = EditModeReglementApportInitialSelect
            Items.Strings = (
              'Ch'#232'que'
              'Esp'#232'ce'
              'Virement'
              'Bon')
          end
          object EditDomiciliation: TComboBox
            Left = 168
            Top = 158
            Width = 185
            Height = 21
            BevelInner = bvNone
            BevelKind = bkFlat
            Enabled = False
            ItemHeight = 13
            TabOrder = 3
            OnKeyDown = EditDomiciliationKeyDown
          end
          object EditNumPiece: TEdit
            Left = 168
            Top = 184
            Width = 185
            Height = 19
            Ctl3D = False
            Enabled = False
            ParentCtl3D = False
            TabOrder = 4
            OnKeyDown = EditNumPieceKeyDown
          end
          object EditObservation: TEdit
            Left = 168
            Top = 206
            Width = 489
            Height = 19
            Ctl3D = False
            Enabled = False
            MaxLength = 100
            ParentCtl3D = False
            TabOrder = 5
            OnKeyDown = EditObservationKeyDown
          end
          object RBOKReglementApportInitial: TCheckBox
            Left = 160
            Top = 21
            Width = 201
            Height = 17
            Caption = 'R'#232'glement de l'#39'apport initial effectu'#233
            Enabled = False
            TabOrder = 6
          end
          object EditDateReglementApportInitial: TMaskEdit
            Left = 168
            Top = 112
            Width = 89
            Height = 19
            Color = 14737632
            Ctl3D = False
            EditMask = '!99/99/9999;1;_'
            MaxLength = 10
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 7
            Text = '  /  /    '
            OnDblClick = EditDateReglementApportInitialDblClick
          end
          object BitOKReglementApportInitial: TBitBtn
            Left = 176
            Top = 64
            Width = 321
            Height = 25
            Caption = 'Effectuer le r'#232'glement de l'#39'apport initial !'
            TabOrder = 9
            OnClick = BitOKReglementApportInitialClick
            Kind = bkHelp
          end
          object EditDateReglementApportInitialInsert: TDateTimePicker
            Left = 168
            Top = 112
            Width = 265
            Height = 20
            CalAlignment = dtaLeft
            Date = 41703.4804143056
            Time = 41703.4804143056
            DateFormat = dfLong
            DateMode = dmComboBox
            Kind = dtkDate
            ParseInput = False
            TabOrder = 10
            Visible = False
            OnChange = EditDateReglementApportInitialInsertChange
            OnKeyDown = EditDateReglementApportInitialInsertKeyDown
          end
          object CacheDetailApportInitial: TPanel
            Left = 8
            Top = 104
            Width = 657
            Height = 129
            BevelInner = bvLowered
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            Visible = False
          end
        end
        object AfficheOperationDureePreselection: TPanel
          Left = 8
          Top = 8
          Width = 673
          Height = 497
          BevelInner = bvLowered
          BevelOuter = bvSpace
          Color = 8454143
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 28
          object Bevel25: TBevel
            Left = 8
            Top = 16
            Width = 177
            Height = 97
          end
          object Label16: TLabel
            Left = 16
            Top = 35
            Width = 32
            Height = 13
            Caption = 'Dur'#233'e:'
          end
          object Label17: TLabel
            Left = 16
            Top = 60
            Width = 28
            Height = 13
            Caption = 'Unit'#233':'
          end
          object Label18: TLabel
            Left = 15
            Top = 84
            Width = 43
            Height = 13
            Caption = 'Date Fin:'
          end
          object Label23: TLabel
            Left = 16
            Top = 8
            Width = 107
            Height = 13
            Caption = 'Dur'#233'e de pr'#233's'#233'lection:'
          end
          object Bevel33: TBevel
            Left = 192
            Top = 16
            Width = 177
            Height = 41
          end
          object Bevel34: TBevel
            Left = 544
            Top = 16
            Width = 121
            Height = 41
          end
          object Bevel42: TBevel
            Left = 8
            Top = 120
            Width = 657
            Height = 369
          end
          object Bevel43: TBevel
            Left = 192
            Top = 64
            Width = 473
            Height = 49
          end
          object Bevel44: TBevel
            Left = 376
            Top = 16
            Width = 161
            Height = 41
          end
          object EditDureePreselection: TEdit
            Left = 64
            Top = 32
            Width = 113
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            OnKeyDown = EditDureePreselectionKeyDown
            OnKeyPress = EditDureePreselectionKeyPress
            OnKeyUp = EditDureePreselectionKeyUp
          end
          object EditUniteDureePreselection: TComboBox
            Left = 64
            Top = 56
            Width = 113
            Height = 21
            BevelKind = bkFlat
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 1
            Text = 'Jour'
            OnClick = EditUniteDureePreselectionClick
            OnKeyDown = EditUniteDureePreselectionKeyDown
            OnKeyPress = EditUniteDureePreselectionKeyPress
            Items.Strings = (
              'Jour'
              'Mois'
              'Ann'#233'e')
          end
          object EditDateFinPreselection: TEdit
            Left = 64
            Top = 80
            Width = 113
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 2
            OnKeyDown = EditDateFinPreselectionKeyDown
          end
          object BitOperationDureePreselection: TBitBtn
            Left = 200
            Top = 24
            Width = 161
            Height = 25
            Caption = 'Valider'
            TabOrder = 3
            OnClick = BitOperationDureePreselectionClick
            Kind = bkAll
          end
          object BitBtn12: TBitBtn
            Left = 552
            Top = 24
            Width = 107
            Height = 25
            TabOrder = 4
            OnClick = BitBtn12Click
            Kind = bkCancel
          end
        end
      end
      object AfficheDureePreselection: TPanel
        Left = 0
        Top = 40
        Width = 209
        Height = 33
        Caption = 'Confirmation Avant 15 jours !'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnClick = AfficheDureePreselectionClick
      end
      object BitBtn7: TBitBtn
        Left = 179
        Top = 3
        Width = 110
        Height = 25
        Caption = 'Modifier'
        TabOrder = 10
        OnClick = BitBtn7Click
        Kind = bkRetry
      end
      object BitBtn11: TBitBtn
        Left = 316
        Top = 4
        Width = 109
        Height = 25
        Caption = 'Supprimer'
        TabOrder = 11
        OnClick = BitBtn11Click
        Kind = bkCancel
      end
      object AfficheDomiciliation: TPanel
        Left = 176
        Top = 232
        Width = 737
        Height = 257
        BevelInner = bvLowered
        Color = clGray
        TabOrder = 2
        Visible = False
        object Bevel17: TBevel
          Left = 8
          Top = 8
          Width = 721
          Height = 41
        end
        object BitBtn9: TBitBtn
          Left = 648
          Top = 16
          Width = 75
          Height = 25
          TabOrder = 0
          OnClick = BitBtn9Click
          Kind = bkCancel
        end
        object PageControl2: TPageControl
          Left = 8
          Top = 56
          Width = 721
          Height = 193
          ActivePage = PageAgence
          TabIndex = 0
          TabOrder = 1
          object PageAgence: TTabSheet
            Caption = 'Choisir l'#39'agence'
            object TableauDomiciliation: TStringGrid
              Left = 0
              Top = 0
              Width = 713
              Height = 161
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
              Width = 713
              Height = 162
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              WantTabs = True
            end
          end
        end
      end
      object CacheAfficheDetailApportInitial: TPanel
        Left = 216
        Top = 40
        Width = 489
        Height = 33
        BevelInner = bvLowered
        BevelOuter = bvNone
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = CacheAfficheDetailApportInitialClick
      end
      object AfficheImprimer: TPanel
        Left = 792
        Top = 0
        Width = 208
        Height = 145
        BevelInner = bvLowered
        Caption = 'Imprimer'
        Color = 8454143
        TabOrder = 9
        OnClick = AfficheImprimerClick
        object Bevel8: TBevel
          Left = 8
          Top = 48
          Width = 193
          Height = 41
        end
        object Bevel11: TBevel
          Left = 7
          Top = 96
          Width = 193
          Height = 41
        end
        object Bevel24: TBevel
          Left = 7
          Top = 144
          Width = 193
          Height = 65
        end
        object BitPrintFormulairePreselection: TBitBtn
          Left = 16
          Top = 56
          Width = 177
          Height = 25
          HelpType = htKeyword
          Caption = 'Formulaire de pr'#233's'#233'lection !'
          TabOrder = 0
          OnClick = BitPrintFormulairePreselectionClick
          Kind = bkHelp
        end
        object BitPrintAutorisationVersement: TBitBtn
          Left = 16
          Top = 104
          Width = 177
          Height = 25
          HelpType = htKeyword
          Caption = 'Autorisation de Verssement'
          TabOrder = 1
          OnClick = BitPrintAutorisationVersementClick
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333336633
            3333333333333FF3333333330000333333364463333333333333388F33333333
            00003333333E66433333333333338F38F3333333000033333333E66333333333
            33338FF8F3333333000033333333333333333333333338833333333300003333
            3333446333333333333333FF3333333300003333333666433333333333333888
            F333333300003333333E66433333333333338F38F333333300003333333E6664
            3333333333338F38F3333333000033333333E6664333333333338F338F333333
            0000333333333E6664333333333338F338F3333300003333344333E666433333
            333F338F338F3333000033336664333E664333333388F338F338F33300003333
            E66644466643333338F38FFF8338F333000033333E6666666663333338F33888
            3338F3330000333333EE666666333333338FF33333383333000033333333EEEE
            E333333333388FFFFF8333330000333333333333333333333333388888333333
            0000}
          NumGlyphs = 2
        end
        object BitPrintAvisVersement: TBitBtn
          Left = 16
          Top = 152
          Width = 177
          Height = 25
          Caption = 'Avis de Versement'
          TabOrder = 2
          OnClick = BitPrintAvisVersementClick
          Kind = bkHelp
        end
        object RBImpressionDouble: TCheckBox
          Left = 16
          Top = 184
          Width = 169
          Height = 17
          Caption = 'Double Impression !'
          TabOrder = 3
        end
      end
      object BitBtn13: TBitBtn
        Left = 612
        Top = 4
        Width = 149
        Height = 25
        Caption = 'Voir la dur'#233'e d'#39'attente'
        TabOrder = 12
        OnClick = BitBtn13Click
        Kind = bkHelp
      end
      object AfficheOperation: TPanel
        Left = 208
        Top = 232
        Width = 561
        Height = 60
        BevelInner = bvLowered
        Color = clRed
        TabOrder = 1
        Visible = False
        OnEnter = AfficheOperationEnter
        object Bevel14: TBevel
          Left = 8
          Top = 8
          Width = 425
          Height = 44
        end
        object MessageAfficheOperation: TMemo
          Left = 8
          Top = 8
          Width = 545
          Height = 44
          Alignment = taCenter
          Color = 8454143
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Bell MT'
          Font.Style = [fsBold]
          Lines.Strings = (
            'Des modifications op'#233'r'#233'es !'
            'Voulez vous les enregistrer ?')
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object BitValiderOperation: TBitBtn
          Left = 448
          Top = 14
          Width = 97
          Height = 33
          Caption = 'Valider'
          TabOrder = 0
          OnClick = BitValiderOperationClick
          Kind = bkAll
        end
        object BitNonOperation: TBitBtn
          Left = 16
          Top = 14
          Width = 75
          Height = 33
          TabOrder = 1
          OnClick = BitNonOperationClick
          Kind = bkNo
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = '     Traitement des Pr'#233's'#233'lections:     '
      ImageIndex = 1
      OnShow = TabSheet1Show
      object Bevel32: TBevel
        Left = 800
        Top = 16
        Width = 199
        Height = 57
      end
      object Bevel16: TBevel
        Left = 432
        Top = 16
        Width = 193
        Height = 57
      end
      object Bevel10: TBevel
        Left = 0
        Top = 16
        Width = 425
        Height = 57
      end
      object Label9: TLabel
        Left = 0
        Top = 0
        Width = 90
        Height = 13
        Caption = 'Option d'#39'Affichage:'
      end
      object Label11: TLabel
        Left = 8
        Top = 24
        Width = 30
        Height = 13
        Caption = 'Projet:'
      end
      object Label12: TLabel
        Left = 10
        Top = 52
        Width = 27
        Height = 13
        Caption = 'Type:'
      end
      object Label13: TLabel
        Left = 439
        Top = 26
        Width = 51
        Height = 13
        Caption = 'Etat Logts:'
      end
      object Label10: TLabel
        Left = 439
        Top = 50
        Width = 37
        Height = 13
        Caption = 'Accord:'
      end
      object Bevel45: TBevel
        Left = 632
        Top = 16
        Width = 161
        Height = 57
      end
      object Label25: TLabel
        Left = 639
        Top = 26
        Width = 137
        Height = 13
        Caption = 'Etat R'#233'glement Apport Initial.'
      end
      object TitreEtat: TMemo
        Left = 0
        Top = 80
        Width = 369
        Height = 89
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 9
      end
      object TableauFormulairePreselectionAffiche: TStringGrid
        Left = 0
        Top = 80
        Width = 1329
        Height = 564
        ColCount = 23
        Ctl3D = False
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
        ParentCtl3D = False
        TabOrder = 0
        OnClick = TableauFormulairePreselectionAfficheClick
        OnDblClick = TableauFormulairePreselectionAfficheDblClick
      end
      object EditNumProjetAffiche: TEdit
        Left = 40
        Top = 24
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
      object EditDesignationProjetAffiche: TEdit
        Left = 40
        Top = 24
        Width = 345
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
      end
      object EditTypeLogementAffiche: TComboBox
        Left = 40
        Top = 48
        Width = 145
        Height = 21
        BevelInner = bvNone
        BevelKind = bkFlat
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 3
        Text = 'Tous'
        OnChange = EditTypeLogementAfficheChange
        Items.Strings = (
          'Tous'
          'Logement type F1'
          'Logement type F2'
          'Logement type F3'
          'Logement type F4'
          'Logement type F5'
          'Duplexe')
      end
      object EditEtatLogementAffiche: TComboBox
        Left = 496
        Top = 24
        Width = 121
        Height = 21
        BevelInner = bvNone
        BevelKind = bkFlat
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 4
        Text = 'Tous'
        OnChange = EditEtatLogementAfficheChange
        Items.Strings = (
          'Tous'
          'Fini'
          'Semi-Fini')
      end
      object EditAccordAffiche: TComboBox
        Left = 496
        Top = 47
        Width = 97
        Height = 21
        BevelInner = bvLowered
        BevelKind = bkFlat
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 5
        Text = 'Tous'
        OnChange = EditAccordAfficheChange
        OnKeyPress = EditAccordAfficheKeyPress
        Items.Strings = (
          'Tous'
          'Favorable'
          'D'#233'favorable'
          'Instance')
      end
      object RBRubriqueTrieTableauAvis: TCheckBox
        Left = 804
        Top = 53
        Width = 172
        Height = 17
        Caption = 'Triers / Rubrique s'#233'lectionner !'
        TabOrder = 7
      end
      object EditRubriqueTrie: TEdit
        Left = 973
        Top = 50
        Width = 23
        Height = 19
        Color = clSilver
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 8
        Text = '1'
      end
      object AfficheOptionPrint: TPanel
        Left = 803
        Top = 18
        Width = 193
        Height = 31
        BevelInner = bvLowered
        Caption = 'Imprimer'
        Color = 8454143
        TabOrder = 6
        OnClick = AfficheOptionPrintClick
        object Bevel12: TBevel
          Left = 8
          Top = 40
          Width = 177
          Height = 225
        end
        object RadioGroup3: TRadioGroup
          Left = 16
          Top = 80
          Width = 161
          Height = 177
          Caption = 'Options d'#39'Impression:'
          TabOrder = 0
        end
        object StaticText7: TStaticText
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
          Width = 145
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          Ctl3D = False
          ItemHeight = 13
          ItemIndex = 0
          ParentCtl3D = False
          TabOrder = 2
          Text = 'Automatique'
          Items.Strings = (
            'Automatique'
            'Portrait'
            'Paysage')
        end
        object RBAjustement: TCheckBox
          Left = 24
          Top = 168
          Width = 113
          Height = 17
          Caption = 'Ajustement !'
          Checked = True
          State = cbChecked
          TabOrder = 3
        end
        object BitBtn4: TBitBtn
          Left = 16
          Top = 48
          Width = 161
          Height = 25
          Caption = 'Print'
          TabOrder = 4
          OnClick = BitBtn4Click
          Kind = bkAll
        end
        object RBAlignementTitre: TComboBox
          Left = 24
          Top = 224
          Width = 145
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          Ctl3D = False
          ItemHeight = 13
          ItemIndex = 1
          ParentCtl3D = False
          TabOrder = 5
          Text = 'Center'
          Items.Strings = (
            'Left'
            'Center'
            'Right')
        end
        object StaticText1: TStaticText
          Left = 24
          Top = 203
          Width = 68
          Height = 17
          Caption = 'Position Titre:'
          TabOrder = 6
        end
      end
      object BitBtn5: TBitBtn
        Left = 392
        Top = 20
        Width = 25
        Height = 25
        Caption = '.'
        TabOrder = 10
        OnClick = BitBtn5Click
        Kind = bkHelp
        Margin = 0
      end
      object RBEtatAffiche: TCheckBox
        Left = 344
        Top = 52
        Width = 73
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Formulaire'
        TabOrder = 11
        OnClick = RBEtatAfficheClick
      end
      object EditEtatReglementApportInitial: TComboBox
        Left = 640
        Top = 48
        Width = 145
        Height = 21
        BevelInner = bvNone
        BevelKind = bkFlat
        ItemHeight = 13
        TabOrder = 12
        Text = 'Tous'
        OnChange = EditEtatReglementApportInitialChange
        OnKeyPress = EditEtatReglementApportInitialKeyPress
        Items.Strings = (
          'Tous'
          'R'#233'gl'#233
          'Non R'#233'gl'#233)
      end
    end
    object PageOptions: TTabSheet
      Caption = '     Options     '
      ImageIndex = 2
      object GroupBox1: TGroupBox
        Left = 0
        Top = 8
        Width = 345
        Height = 225
        Caption = 'Options Affichage Structure'
        TabOrder = 0
        object RBOKProjet: TCheckBox
          Left = 8
          Top = 32
          Width = 329
          Height = 17
          Caption = 'Indiquer le nom du projet.'
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = RBOKProjetClick
        end
        object RBOKStructure: TCheckBox
          Left = 8
          Top = 64
          Width = 329
          Height = 17
          Caption = 'Indiquer le nom de la structure.'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = RBOKStructureClick
        end
        object RBOKNature: TCheckBox
          Left = 8
          Top = 96
          Width = 329
          Height = 17
          Caption = 'Indiquer la nature de la structure.'
          Checked = True
          State = cbChecked
          TabOrder = 2
          OnClick = RBOKNatureClick
        end
        object RBOKCodification: TCheckBox
          Left = 8
          Top = 128
          Width = 329
          Height = 17
          Caption = 'Indiquer la codification de la structure.'
          Checked = True
          State = cbChecked
          TabOrder = 3
          OnClick = RBOKCodificationClick
        end
      end
      object RBOKSurface: TCheckBox
        Left = 8
        Top = 168
        Width = 329
        Height = 17
        Caption = 'Indiquer la surface de la structure.'
        Checked = True
        State = cbChecked
        TabOrder = 1
        OnClick = RBOKSurfaceClick
      end
      object Panel4: TPanel
        Left = 360
        Top = 48
        Width = 297
        Height = 65
        BevelInner = bvLowered
        TabOrder = 2
        object Label1: TLabel
          Left = 8
          Top = 10
          Width = 63
          Height = 13
          Caption = 'Type Proces:'
        end
        object EditTitreChargementFichierConcerne: TLabel
          Left = 8
          Top = 34
          Width = 86
          Height = 13
          Caption = 'Fichier Concerner:'
        end
        object EditChargementTypeProces: TComboBox
          Left = 144
          Top = 8
          Width = 145
          Height = 21
          ItemHeight = 13
          ItemIndex = 1
          TabOrder = 0
          Text = 'Commercial'
          OnChange = EditChargementTypeProcesChange
          Items.Strings = (
            'Business'
            'Commercial'
            'Paie'
            'Comptabilit'#233
            'Social')
        end
        object EditChargementFichierConcerne: TComboBox
          Left = 144
          Top = 32
          Width = 145
          Height = 21
          ItemHeight = 0
          TabOrder = 1
          Text = 'FClient'
        end
      end
      object Panel5: TPanel
        Left = 360
        Top = 16
        Width = 297
        Height = 33
        BevelInner = bvLowered
        Caption = 'Param'#232'tres Tiers Utilis'#233':'
        TabOrder = 3
      end
      object AfficheInfoPlus: TPanel
        Left = 360
        Top = 128
        Width = 209
        Height = 41
        BevelOuter = bvLowered
        Color = clSilver
        TabOrder = 4
        object Bevel26: TBevel
          Left = 8
          Top = 8
          Width = 193
          Height = 25
        end
        object Cible: TLabel
          Left = 158
          Top = 12
          Width = 30
          Height = 13
          Alignment = taRightJustify
          Caption = '..........'
        end
        object Label24: TLabel
          Left = 16
          Top = 13
          Width = 29
          Height = 13
          Caption = 'Cible: '
        end
      end
      object RBIndiquerReservationStructure: TCheckBox
        Left = 8
        Top = 200
        Width = 329
        Height = 17
        Caption = 'Indiquer les r'#233's'#233'rvation des tructures !'
        Checked = True
        State = cbChecked
        TabOrder = 5
      end
    end
  end
  object TableauTiers: TStringGrid
    Left = -647
    Top = 575
    Width = 720
    Height = 426
    ColCount = 10
    Ctl3D = False
    DefaultColWidth = 40
    DefaultRowHeight = 18
    RowCount = 20
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
    ParentCtl3D = False
    TabOrder = 1
    Visible = False
    OnKeyDown = TableauTiersKeyDown
    ColWidths = (
      40
      70
      354
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
  object TableauProjet: TStringGrid
    Left = -703
    Top = 551
    Width = 721
    Height = 386
    Color = 16777190
    ColCount = 2
    Ctl3D = False
    DefaultColWidth = 50
    DefaultRowHeight = 18
    FixedColor = 16777147
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
    ParentCtl3D = False
    TabOrder = 2
    Visible = False
    OnDblClick = TableauProjetDblClick
    OnKeyDown = TableauProjetKeyDown
    ColWidths = (
      50
      50)
    RowHeights = (
      18
      18
      18
      18
      18)
  end
  object TimerCliqueColor: TTimer
    Interval = 300
    OnTimer = TimerCliqueColorTimer
    Left = 976
  end
end
