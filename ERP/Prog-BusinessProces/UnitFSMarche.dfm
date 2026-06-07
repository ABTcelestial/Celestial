object FSMarche: TFSMarche
  Left = 0
  Top = 1
  Width = 1366
  Height = 738
  Caption = 'Fiche de Saisie March'#233
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
  object Panel6: TPanel
    Left = 0
    Top = 0
    Width = 1345
    Height = 697
    BevelInner = bvLowered
    TabOrder = 0
    object AfficheAdresseMarche: TPanel
      Left = 8
      Top = 666
      Width = 1297
      Height = 25
      Alignment = taLeftJustify
      BevelInner = bvLowered
      TabOrder = 17
    end
    object EditTypeProjet: TComboBox
      Left = 440
      Top = 13
      Width = 173
      Height = 29
      BevelKind = bkFlat
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Lucida Calligraphy'
      Font.Style = [fsBold]
      ItemHeight = 21
      ItemIndex = 0
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Text = 'Marche'
      OnChange = EditTypeProjetChange
      OnKeyPress = EditTypeProjetKeyPress
      Items.Strings = (
        'Marche'
        'Avenant')
    end
    object EditChoixNumMarcheReference: TEdit
      Left = 656
      Top = 62
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object EditMarcheControle: TMemo
      Left = 88
      Top = 136
      Width = 497
      Height = 105
      TabOrder = 2
    end
    object AfficheListeMarche: TPanel
      Left = 8
      Top = 51
      Width = 777
      Height = 41
      Alignment = taLeftJustify
      BevelInner = bvLowered
      Caption = '  Liste des March'#233's'
      Color = 8454143
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Lucida Calligraphy'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = AfficheListeMarcheClick
      OnDblClick = AfficheListeMarcheDblClick
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 2
      Width = 777
      Height = 47
      TabOrder = 4
      object Bevel1: TBevel
        Left = 152
        Top = 8
        Width = 97
        Height = 35
      end
      object Bevel2: TBevel
        Left = 256
        Top = 8
        Width = 97
        Height = 35
      end
      object Bevel3: TBevel
        Left = 3
        Top = 8
        Width = 142
        Height = 35
      end
      object BitBtn8: TBitBtn
        Left = 8
        Top = 12
        Width = 129
        Height = 25
        Caption = 'Nouveau'
        TabOrder = 0
        OnClick = BitBtn8Click
        Kind = bkAll
      end
      object BitBtn2: TBitBtn
        Left = 160
        Top = 12
        Width = 81
        Height = 25
        Caption = 'Modifier'
        TabOrder = 1
        OnClick = BitBtn2Click
        Kind = bkRetry
      end
      object BitBtn3: TBitBtn
        Left = 264
        Top = 12
        Width = 81
        Height = 25
        Caption = 'Supprimer'
        TabOrder = 2
        OnClick = BitBtn3Click
        Kind = bkCancel
      end
      object AfficheEditMarcheReference: TPanel
        Left = 360
        Top = 8
        Width = 409
        Height = 33
        BevelInner = bvLowered
        TabOrder = 3
        object EditMarcheReference: TLabel
          Left = 243
          Top = 9
          Width = 30
          Height = 13
          Alignment = taRightJustify
          Caption = '..........'
        end
        object EditRefMarcheEnReference: TEdit
          Left = 280
          Top = 8
          Width = 121
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
    object TableauMarche: TStringGrid
      Left = 8
      Top = 96
      Width = 777
      Height = 393
      ColCount = 17
      Ctl3D = False
      DefaultRowHeight = 20
      FixedColor = 11468799
      FixedCols = 2
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goEditing, goAlwaysShowEditor]
      ParentCtl3D = False
      ScrollBars = ssVertical
      TabOrder = 5
      OnClick = TableauMarcheClick
      OnDblClick = TableauMarcheDblClick
      OnKeyDown = TableauMarcheKeyDown
      OnKeyPress = TableauMarcheKeyPress
      ColWidths = (
        64
        3
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
    end
    object AfficheSaisieChantier: TPanel
      Left = 88
      Top = 104
      Width = 625
      Height = 369
      BevelInner = bvLowered
      BevelWidth = 3
      Color = 13434879
      TabOrder = 6
      Visible = False
      OnClick = AfficheSaisieChantierClick
      OnEnter = AfficheSaisieChantierEnter
      object Label1: TLabel
        Left = 66
        Top = 24
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'N'#176'.Seq:'
      end
      object Label2: TLabel
        Left = 47
        Top = 96
        Width = 56
        Height = 13
        Alignment = taRightJustify
        Caption = 'D'#233'signation'
      end
      object Label3: TLabel
        Left = 73
        Top = 168
        Width = 30
        Height = 13
        Alignment = taRightJustify
        Caption = 'L.O.T:'
      end
      object Label4: TLabel
        Left = 16
        Top = 192
        Width = 87
        Height = 13
        Alignment = taRightJustify
        Caption = 'Lieu des traveaux:'
      end
      object Label5: TLabel
        Left = 61
        Top = 216
        Width = 42
        Height = 13
        Alignment = taRightJustify
        Caption = 'Montant:'
      end
      object Label7: TLabel
        Left = 67
        Top = 240
        Width = 36
        Height = 13
        Alignment = taRightJustify
        Caption = 'Rabaix:'
      end
      object Label8: TLabel
        Left = 12
        Top = 264
        Width = 91
        Height = 13
        Alignment = taRightJustify
        Caption = 'Retenu de garantie'
      end
      object Label11: TLabel
        Left = 221
        Top = 216
        Width = 50
        Height = 13
        Alignment = taRightJustify
        Caption = 'R'#233'f.Devis:'
      end
      object Label12: TLabel
        Left = 182
        Top = 237
        Width = 89
        Height = 13
        Alignment = taRightJustify
        Caption = 'D'#233'lais d'#39'execution:'
      end
      object Label13: TLabel
        Left = 80
        Top = 48
        Width = 23
        Height = 13
        Alignment = taRightJustify
        Caption = 'R'#233'f.:'
      end
      object Label14: TLabel
        Left = 19
        Top = 140
        Width = 84
        Height = 13
        Alignment = taRightJustify
        Caption = 'Maitre d'#39'Ouvrage:'
      end
      object Label15: TLabel
        Left = 77
        Top = 72
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = 'Date:'
      end
      object Label17: TLabel
        Left = 148
        Top = 240
        Width = 11
        Height = 13
        Caption = '%.'
      end
      object Label18: TLabel
        Left = 148
        Top = 264
        Width = 11
        Height = 13
        Caption = '%.'
      end
      object Label9: TLabel
        Left = 193
        Top = 261
        Width = 78
        Height = 13
        Alignment = taRightJustify
        Caption = 'Date R'#233'ception:'
      end
      object Bevel4: TBevel
        Left = 448
        Top = 248
        Width = 169
        Height = 42
      end
      object Bevel5: TBevel
        Left = 448
        Top = 168
        Width = 169
        Height = 73
      end
      object Label6: TLabel
        Left = 8
        Top = 340
        Width = 96
        Height = 13
        Alignment = taRightJustify
        Caption = 'Type de formulation:'
      end
      object Label20: TLabel
        Left = 184
        Top = 342
        Width = 63
        Height = 13
        Alignment = taRightJustify
        Caption = 'Avertir avant:'
      end
      object Label22: TLabel
        Left = 323
        Top = 342
        Width = 76
        Height = 13
        Alignment = taRightJustify
        Caption = 'Dur'#233'e d'#39'attente:'
      end
      object Label29: TLabel
        Left = 42
        Top = 284
        Width = 62
        Height = 13
        Alignment = taRightJustify
        Caption = 'Domiciliation:'
      end
      object Label31: TLabel
        Left = 50
        Top = 308
        Width = 54
        Height = 13
        Alignment = taRightJustify
        Caption = 'Compte N'#176':'
      end
      object EditNumDomiciliation: TEdit
        Left = 112
        Top = 280
        Width = 57
        Height = 21
        TabOrder = 23
        OnKeyDown = EditNumDomiciliationKeyDown
      end
      object EditTypeFormulation: TEdit
        Left = 112
        Top = 338
        Width = 57
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 19
      end
      object EditCodeMaitreOuvrage: TEdit
        Left = 112
        Top = 136
        Width = 73
        Height = 21
        TabOrder = 18
        OnEnter = EditCodeMaitreOuvrageEnter
        OnKeyDown = EditCodeMaitreOuvrageKeyDown
        OnKeyPress = EditCodeMaitreOuvrageKeyPress
        OnKeyUp = EditCodeMaitreOuvrageKeyUp
      end
      object EditAvertirAvant: TEdit
        Left = 256
        Top = 339
        Width = 57
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 17
      end
      object EditDureeAttente: TEdit
        Left = 408
        Top = 339
        Width = 81
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 16
      end
      object EditNSMarche: TEdit
        Left = 112
        Top = 16
        Width = 56
        Height = 21
        Color = clSilver
        ReadOnly = True
        TabOrder = 0
      end
      object EditLOT: TEdit
        Left = 112
        Top = 160
        Width = 233
        Height = 21
        TabOrder = 4
        OnKeyDown = EditLOTKeyDown
      end
      object EditLieuTrav: TEdit
        Left = 112
        Top = 184
        Width = 288
        Height = 21
        TabOrder = 5
        OnKeyDown = EditLieuTravKeyDown
      end
      object EditRefDevis: TEdit
        Left = 280
        Top = 208
        Width = 120
        Height = 21
        TabOrder = 9
        OnKeyDown = EditRefDevisKeyDown
      end
      object EditDelaisExecut: TEdit
        Left = 280
        Top = 232
        Width = 120
        Height = 21
        TabOrder = 10
        OnKeyDown = EditDelaisExecutKeyDown
      end
      object EditRefMarche: TEdit
        Left = 112
        Top = 40
        Width = 144
        Height = 21
        TabOrder = 1
        OnKeyDown = EditRefMarcheKeyDown
      end
      object EditMaitreOuvrage: TEdit
        Left = 184
        Top = 136
        Width = 425
        Height = 21
        TabOrder = 3
        OnEnter = EditMaitreOuvrageEnter
        OnKeyDown = EditMaitreOuvrageKeyDown
        OnKeyPress = EditMaitreOuvrageKeyPress
        OnKeyUp = EditMaitreOuvrageKeyUp
      end
      object EditDateMarche: TMaskEdit
        Left = 112
        Top = 64
        Width = 73
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 2
        Text = '  /  /    '
        OnKeyDown = EditDateMarcheKeyDown
      end
      object EditMontantMarche: TEdit
        Left = 112
        Top = 208
        Width = 89
        Height = 21
        TabOrder = 6
        OnDblClick = EditMontantMarcheDblClick
        OnKeyDown = EditMontantMarcheKeyDown
        OnKeyPress = EditMontantMarcheKeyPress
      end
      object EditRabaix: TEdit
        Left = 112
        Top = 232
        Width = 33
        Height = 21
        MaxLength = 3
        TabOrder = 7
        OnKeyDown = EditRabaixKeyDown
        OnKeyPress = EditRabaixKeyPress
      end
      object EditRetenueGarantie: TEdit
        Left = 112
        Top = 256
        Width = 33
        Height = 21
        MaxLength = 3
        TabOrder = 8
        OnKeyDown = EditRetenueGarantieKeyDown
        OnKeyPress = EditRetenueGarantieKeyPress
      end
      object BitActions: TBitBtn
        Left = 456
        Top = 176
        Width = 153
        Height = 57
        Caption = 'Valider'
        ModalResult = 1
        TabOrder = 11
        OnClick = BitActionsClick
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
      object BitBtn4: TBitBtn
        Left = 8
        Top = 8
        Width = 25
        Height = 25
        TabOrder = 12
        OnClick = BitBtn4Click
        Kind = bkCancel
        Margin = 1
      end
      object EditDateReceptionMarche: TMaskEdit
        Left = 280
        Top = 256
        Width = 73
        Height = 21
        EditMask = '!99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 13
        Text = '  /  /    '
        OnKeyDown = EditDateReceptionMarcheKeyDown
      end
      object BitBtn58: TBitBtn
        Left = 456
        Top = 256
        Width = 153
        Height = 25
        Caption = 'Param'#232'tres'
        TabOrder = 15
        OnClick = BitBtn58Click
        Kind = bkHelp
      end
      object AfficheLienMarcheAvenant: TPanel
        Left = 264
        Top = 16
        Width = 353
        Height = 57
        BevelInner = bvLowered
        TabOrder = 20
        Visible = False
        object Label30: TLabel
          Left = 8
          Top = 11
          Width = 102
          Height = 13
          Caption = 'March'#233' de r'#233'f'#233'rence:'
        end
        object EditNumMarcheReference: TEdit
          Left = 112
          Top = 8
          Width = 73
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          OnEnter = EditNumMarcheReferenceEnter
        end
        object MarcheReference: TEdit
          Left = 8
          Top = 32
          Width = 337
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
          OnEnter = EditNumMarcheReferenceEnter
        end
      end
      object EditDomiciliation: TEdit
        Left = 112
        Top = 280
        Width = 281
        Height = 21
        TabOrder = 21
        OnEnter = EditDomiciliationEnter
        OnKeyDown = EditDomiciliationKeyDown
      end
      object EditNumIdentificationDomiciliation: TEdit
        Left = 112
        Top = 304
        Width = 281
        Height = 21
        TabOrder = 22
        OnKeyDown = EditNumIdentificationDomiciliationKeyDown
      end
      object EditMarche: TMemo
        Left = 112
        Top = 88
        Width = 497
        Height = 47
        TabOrder = 24
        OnKeyDown = EditMarcheKeyDown
      end
      object AfficheOptionRGarantie: TPanel
        Left = 472
        Top = 304
        Width = 609
        Height = 353
        BevelWidth = 2
        TabOrder = 14
        Visible = False
        object Bevel24: TBevel
          Left = 8
          Top = 8
          Width = 289
          Height = 57
        end
        object Label10: TLabel
          Left = 16
          Top = 20
          Width = 76
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dur'#233'e d'#39'attente:'
        end
        object Label16: TLabel
          Left = 49
          Top = 44
          Width = 43
          Height = 13
          Alignment = taRightJustify
          Caption = 'M'#39'avertir:'
        end
        object Label39: TLabel
          Left = 144
          Top = 20
          Width = 150
          Height = 13
          Caption = 'Jour Apr'#233's la date de r'#233'ception.'
        end
        object Label40: TLabel
          Left = 144
          Top = 44
          Width = 53
          Height = 13
          Caption = 'Jour avant.'
        end
        object Bevel6: TBevel
          Left = 496
          Top = 8
          Width = 105
          Height = 41
        end
        object Bevel7: TBevel
          Left = 400
          Top = 272
          Width = 193
          Height = 57
        end
        object Label53: TLabel
          Left = 280
          Top = 139
          Width = 78
          Height = 13
          Alignment = taRightJustify
          Caption = 'Type de Proces:'
        end
        object TitreEditTiersFichierConserne: TLabel
          Left = 280
          Top = 163
          Width = 81
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fichier consern'#233':'
        end
        object Label55: TLabel
          Left = 328
          Top = 188
          Width = 30
          Height = 13
          Alignment = taRightJustify
          Caption = 'Projet:'
        end
        object Label32: TLabel
          Left = 298
          Top = 116
          Width = 60
          Height = 13
          Alignment = taRightJustify
          Caption = 'D'#233'bit/Cr'#233'dit:'
        end
        object BitBtn59: TBitBtn
          Left = 504
          Top = 16
          Width = 89
          Height = 25
          Caption = 'Quitter'
          TabOrder = 0
          OnClick = BitBtn59Click
          Kind = bkCancel
        end
        object EditDureeAttenteM: TEdit
          Left = 96
          Top = 16
          Width = 41
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnKeyDown = EditDureeAttenteMKeyDown
          OnKeyPress = EditDureeAttenteMKeyPress
        end
        object EditAvertirAvantM: TEdit
          Left = 96
          Top = 40
          Width = 41
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          OnKeyDown = EditAvertirAvantMKeyDown
          OnKeyPress = EditAvertirAvantMKeyPress
        end
        object BitValiderOptionsRGarantie: TBitBtn
          Left = 408
          Top = 280
          Width = 177
          Height = 41
          Caption = 'Valider'
          TabOrder = 3
          OnClick = BitValiderOptionsRGarantieClick
          Kind = bkAll
        end
        object Panel12: TPanel
          Left = 8
          Top = 80
          Width = 241
          Height = 89
          TabOrder = 4
          object RadioGroup9: TRadioGroup
            Left = 8
            Top = 8
            Width = 225
            Height = 73
            Caption = 'D'#233'tail Formulation:'
            TabOrder = 1
          end
          object RBFormuleGlobaleM: TRadioButton
            Left = 16
            Top = 32
            Width = 209
            Height = 17
            Caption = 'Formulation Globale: March'#233' / Avenant'
            TabOrder = 2
          end
          object RBFormuleDistincteM: TRadioButton
            Left = 16
            Top = 56
            Width = 209
            Height = 17
            Caption = 'Formulation distincte:  March'#233' / Avenant'
            TabOrder = 0
          end
        end
        object Panel13: TPanel
          Left = 8
          Top = 184
          Width = 241
          Height = 89
          TabOrder = 5
          object RadioGroup7: TRadioGroup
            Left = 8
            Top = 8
            Width = 225
            Height = 73
            Caption = 'Options de Formulation:'
            TabOrder = 0
          end
          object RBFormuleParStructureM: TRadioButton
            Left = 16
            Top = 56
            Width = 209
            Height = 17
            Caption = 'Formulation par structure'
            TabOrder = 1
          end
          object RBFormuleParStatistiqueM: TRadioButton
            Left = 16
            Top = 32
            Width = 209
            Height = 17
            Caption = 'Formulation par Sous Structure'
            TabOrder = 2
          end
        end
        object Panel4: TPanel
          Left = 8
          Top = 288
          Width = 289
          Height = 41
          TabOrder = 6
          object Label28: TLabel
            Left = 8
            Top = 10
            Width = 128
            Height = 13
            Caption = 'Source Statistique Marche:'
          end
          object EditSourceStatistiqueMarche: TComboBox
            Left = 152
            Top = 8
            Width = 121
            Height = 21
            BevelInner = bvLowered
            BevelKind = bkFlat
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 0
            Text = 'March'#233
            OnKeyPress = EditSourceStatistiqueMarcheKeyPress
            Items.Strings = (
              'March'#233
              'StructureMarch'#233)
          end
        end
        object EditFichierConserneTiers: TComboBox
          Left = 368
          Top = 159
          Width = 225
          Height = 21
          BevelKind = bkFlat
          Ctl3D = True
          ItemHeight = 13
          ItemIndex = 0
          ParentCtl3D = False
          TabOrder = 7
          Text = 'FFournisseur'
          Items.Strings = (
            'FFournisseur'
            'FClient'
            'FPersonnel')
        end
        object EditTypeProces: TComboBox
          Left = 368
          Top = 135
          Width = 161
          Height = 21
          BevelKind = bkFlat
          ItemHeight = 13
          TabOrder = 8
          Text = 'Commercial'
          OnSelect = EditTypeProcesSelect
          Items.Strings = (
            'Business'
            'Commercial'
            'Paie'
            'Comptabilit'#233
            'Social')
        end
        object EditNumProjet: TEdit
          Left = 368
          Top = 184
          Width = 193
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 9
        end
        object EditNomProjet: TEdit
          Left = 368
          Top = 184
          Width = 225
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 10
          OnEnter = EditNomProjetEnter
        end
        object EditDebitCredit: TComboBox
          Left = 368
          Top = 112
          Width = 145
          Height = 21
          BevelKind = bkFlat
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 11
          Text = 'D'#233'bit'
          Items.Strings = (
            'D'#233'bit'
            'Cr'#233'dit')
        end
      end
    end
    object AfficheStructureMarche: TPanel
      Left = 792
      Top = 51
      Width = 513
      Height = 273
      BevelInner = bvLowered
      Color = 10485663
      TabOrder = 7
      object EditSauvegardeStructureMarche: TEdit
        Left = 11
        Top = 10
        Width = 38
        Height = 21
        ReadOnly = True
        TabOrder = 3
      end
      object TableauStructureMarche: TStringGrid
        Left = 8
        Top = 40
        Width = 497
        Height = 225
        Color = 10485663
        ColCount = 4
        Ctl3D = False
        DefaultColWidth = 30
        FixedColor = 10485663
        FixedCols = 3
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnClick = TableauStructureMarcheClick
        OnKeyPress = TableauStructureMarcheKeyPress
        ColWidths = (
          30
          30
          30
          148)
        RowHeights = (
          24
          24)
      end
      object Panel2: TPanel
        Left = 8
        Top = 4
        Width = 497
        Height = 33
        BevelInner = bvLowered
        Caption = 'Structures'
        TabOrder = 1
      end
      object AfficheStructureMarcheActions: TPanel
        Left = 96
        Top = 96
        Width = 329
        Height = 113
        BevelInner = bvLowered
        Color = clMoneyGreen
        TabOrder = 2
        Visible = False
        object Label19: TLabel
          Left = 16
          Top = 11
          Width = 61
          Height = 13
          Caption = 'N'#176' Structure:'
        end
        object Label21: TLabel
          Left = 16
          Top = 36
          Width = 46
          Height = 13
          Caption = 'Structure:'
        end
        object Bevel9: TBevel
          Left = 8
          Top = 64
          Width = 313
          Height = 41
        end
        object BitBtn1: TBitBtn
          Left = 16
          Top = 72
          Width = 75
          Height = 25
          TabOrder = 0
          OnClick = BitBtn1Click
          Kind = bkNo
        end
        object BitOptionStructureMarche: TBitBtn
          Left = 240
          Top = 72
          Width = 75
          Height = 25
          TabOrder = 1
          OnClick = BitOptionStructureMarcheClick
          Kind = bkRetry
        end
        object EditNStructureMarche: TEdit
          Left = 80
          Top = 8
          Width = 73
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
        end
        object EditStructureMarche: TEdit
          Left = 80
          Top = 32
          Width = 241
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          OnKeyDown = EditStructureMarcheKeyDown
        end
      end
    end
    object AfficheStatistiqueMarche: TPanel
      Left = 792
      Top = 361
      Width = 513
      Height = 273
      BevelInner = bvLowered
      Color = 16777139
      TabOrder = 8
      object EditSauvegardeStatistiqueMarche: TEdit
        Left = 11
        Top = 10
        Width = 38
        Height = 21
        ReadOnly = True
        TabOrder = 3
      end
      object Panel3: TPanel
        Left = 8
        Top = 4
        Width = 497
        Height = 33
        BevelInner = bvLowered
        Caption = 'Statistiques'
        TabOrder = 0
      end
      object TableauStatistiqueMarche: TStringGrid
        Left = 8
        Top = 38
        Width = 497
        Height = 227
        Color = 16777139
        ColCount = 6
        Ctl3D = False
        DefaultColWidth = 30
        FixedColor = 16777139
        FixedCols = 4
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnClick = TableauStatistiqueMarcheClick
        OnContextPopup = TableauStatistiqueMarcheContextPopup
        OnKeyPress = TableauStatistiqueMarcheKeyPress
        RowHeights = (
          24
          24)
      end
      object AfficheStatistiqueMarcheActions: TPanel
        Left = 96
        Top = 48
        Width = 329
        Height = 193
        BevelInner = bvLowered
        Color = clMoneyGreen
        TabOrder = 2
        Visible = False
        object Label23: TLabel
          Left = 8
          Top = 34
          Width = 64
          Height = 13
          Caption = 'N'#176'Statistique:'
        end
        object Label24: TLabel
          Left = 8
          Top = 11
          Width = 58
          Height = 13
          Caption = 'N'#176'Structure:'
        end
        object Bevel10: TBevel
          Left = 8
          Top = 144
          Width = 313
          Height = 41
        end
        object Label25: TLabel
          Left = 8
          Top = 59
          Width = 52
          Height = 13
          Caption = 'Statistique:'
        end
        object Label26: TLabel
          Left = 8
          Top = 82
          Width = 86
          Height = 13
          Caption = 'Pourcentage Part:'
        end
        object Label27: TLabel
          Left = 8
          Top = 106
          Width = 24
          Height = 13
          Caption = 'TVA:'
        end
        object Bevel11: TBevel
          Left = 184
          Top = 8
          Width = 137
          Height = 41
        end
        object BitBtn6: TBitBtn
          Left = 16
          Top = 152
          Width = 75
          Height = 25
          TabOrder = 0
          OnClick = BitBtn6Click
          Kind = bkNo
        end
        object BitOptionStatistiqueMarche: TBitBtn
          Left = 240
          Top = 152
          Width = 75
          Height = 25
          Caption = 'Oui'
          TabOrder = 1
          OnClick = BitOptionStatistiqueMarcheClick
          Kind = bkAll
        end
        object EditNStatistiqueMarche: TEdit
          Left = 104
          Top = 32
          Width = 73
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
        end
        object EditNStructureMarcheStatistique: TEdit
          Left = 104
          Top = 8
          Width = 73
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object EditStatistiqueMarche: TEdit
          Left = 104
          Top = 56
          Width = 217
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
          OnKeyDown = EditStatistiqueMarcheKeyDown
        end
        object EditPourcentageStatistiqueMarche: TEdit
          Left = 104
          Top = 80
          Width = 73
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 5
          Text = '100'
          OnKeyDown = EditPourcentageStatistiqueMarcheKeyDown
        end
        object EditTVAStatistiqueMarche: TEdit
          Left = 104
          Top = 104
          Width = 73
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 6
          OnKeyDown = EditTVAStatistiqueMarcheKeyDown
        end
        object UpDown1: TUpDown
          Left = 177
          Top = 80
          Width = 16
          Height = 19
          Associate = EditPourcentageStatistiqueMarche
          Min = 0
          Position = 100
          TabOrder = 7
          Wrap = False
        end
        object BitRafraichir: TBitBtn
          Left = 192
          Top = 16
          Width = 121
          Height = 25
          Caption = 'Rafraichir !'
          TabOrder = 8
          Visible = False
          OnClick = BitRafraichirClick
          Kind = bkHelp
        end
      end
    end
    object Panel1: TPanel
      Left = 792
      Top = 8
      Width = 513
      Height = 41
      BevelInner = bvLowered
      TabOrder = 9
      object AfficheListeMarcheCopie: TLabel
        Left = 421
        Top = 11
        Width = 27
        Height = 13
        Caption = '.........'
      end
      object EditIncrimenteDefileTexte: TEdit
        Left = 464
        Top = 8
        Width = 33
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        Text = '0'
      end
      object EditIMax: TEdit
        Left = 352
        Top = 8
        Width = 49
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        Text = '70'
      end
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 511
        Height = 39
        BevelInner = bvLowered
        TabOrder = 2
        object BitStructureStatistiqueAuto: TBitBtn
          Left = 8
          Top = 4
          Width = 185
          Height = 25
          Caption = 'Charger Structure et statistique'
          TabOrder = 0
          OnClick = BitStructureStatistiqueAutoClick
          Kind = bkHelp
        end
        object RBAutoriserGenerationStructureStatistiqueAvenant: TCheckBox
          Left = 480
          Top = 11
          Width = 25
          Height = 17
          Caption = '.'
          TabOrder = 1
        end
      end
    end
    object TableauAnalyseMontantMarche: TStringGrid
      Left = 8
      Top = 519
      Width = 777
      Height = 143
      ColCount = 6
      Ctl3D = False
      DefaultRowHeight = 20
      RowCount = 6
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
      ParentCtl3D = False
      TabOrder = 10
      OnClick = TableauAnalyseMontantMarcheClick
    end
    object AfficheValeureStatistiqueMarche: TPanel
      Left = 8
      Top = 491
      Width = 777
      Height = 25
      BevelInner = bvLowered
      Caption = 'D'#233'tail valeures Statistique'
      Color = 11468799
      TabOrder = 11
    end
    object TableauDomiciliation: TStringGrid
      Left = 200
      Top = 432
      Width = 505
      Height = 193
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 12
      Visible = False
      OnKeyDown = TableauDomiciliationKeyDown
      RowHeights = (
        24
        24
        24
        24
        24)
    end
    object AfficheDistination: TPanel
      Left = 200
      Top = 424
      Width = 545
      Height = 237
      Color = 8454143
      TabOrder = 13
      Visible = False
      object PageControl10: TPageControl
        Left = 8
        Top = 11
        Width = 529
        Height = 220
        ActivePage = PageClient
        TabIndex = 0
        TabOrder = 1
        object PageClient: TTabSheet
          Caption = 'Maitre de l'#39'Ouvrage'
          object TableauClient: TStringGrid
            Left = 1
            Top = 2
            Width = 520
            Height = 189
            ColCount = 11
            Ctl3D = False
            DefaultColWidth = 30
            DefaultRowHeight = 20
            FixedColor = 11468799
            RowCount = 15
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
            ParentCtl3D = False
            TabOrder = 0
            OnKeyDown = TableauClientKeyDown
            ColWidths = (
              30
              63
              161
              154
              85
              120
              124
              124
              124
              124
              127)
          end
        end
      end
      object AfficheNouveauClient: TPanel
        Left = 6
        Top = 7
        Width = 531
        Height = 223
        BevelInner = bvLowered
        Color = 8454016
        TabOrder = 0
        Visible = False
        object Bevel29: TBevel
          Left = 8
          Top = 8
          Width = 513
          Height = 153
        end
        object Label48: TLabel
          Left = 16
          Top = 24
          Width = 28
          Height = 13
          Caption = 'Code:'
        end
        object Label124: TLabel
          Left = 16
          Top = 46
          Width = 25
          Height = 13
          Caption = 'Nom:'
        end
        object Label125: TLabel
          Left = 16
          Top = 68
          Width = 39
          Height = 13
          Caption = 'Pr'#233'nom:'
        end
        object Label126: TLabel
          Left = 16
          Top = 90
          Width = 41
          Height = 13
          Caption = 'Adresse:'
        end
        object Bevel30: TBevel
          Left = 64
          Top = 112
          Width = 97
          Height = 41
        end
        object Bevel8: TBevel
          Left = 408
          Top = 112
          Width = 105
          Height = 41
        end
        object Bevel12: TBevel
          Left = 8
          Top = 168
          Width = 513
          Height = 49
        end
        object BitValiderN: TBitBtn
          Left = 72
          Top = 120
          Width = 81
          Height = 25
          Caption = 'Valider'
          TabOrder = 4
          OnClick = BitValiderNClick
          Kind = bkAll
        end
        object EditCodeClientN: TEdit
          Left = 64
          Top = 16
          Width = 73
          Height = 21
          TabOrder = 0
        end
        object EditNomClientN: TEdit
          Left = 64
          Top = 38
          Width = 449
          Height = 21
          TabOrder = 1
          OnKeyDown = EditNomClientNKeyDown
        end
        object EditPrenomClientN: TEdit
          Left = 64
          Top = 60
          Width = 449
          Height = 21
          TabOrder = 2
          OnKeyDown = EditPrenomClientNKeyDown
        end
        object EditAdresseClientN: TEdit
          Left = 64
          Top = 82
          Width = 449
          Height = 21
          TabOrder = 3
          OnKeyDown = EditAdresseClientNKeyDown
        end
        object BitBtn63: TBitBtn
          Left = 418
          Top = 120
          Width = 87
          Height = 25
          Caption = 'Quitter'
          TabOrder = 5
          OnClick = BitBtn63Click
          Kind = bkCancel
        end
      end
    end
    object TableauMarcheReference: TStringGrid
      Left = 1136
      Top = 552
      Width = 513
      Height = 281
      Ctl3D = False
      RowCount = 2
      ParentCtl3D = False
      TabOrder = 14
      Visible = False
      OnKeyDown = TableauMarcheReferenceKeyDown
    end
    object AfficheShoixMarcheReference: TPanel
      Left = 1192
      Top = 528
      Width = 1329
      Height = 665
      BevelInner = bvLowered
      TabOrder = 15
      OnEnter = AfficheShoixMarcheReferenceEnter
      OnExit = AfficheShoixMarcheReferenceExit
      object AfficheTitreShoixMarcheReference: TPanel
        Left = 8
        Top = 8
        Width = 1313
        Height = 41
        BevelInner = bvLowered
        Caption = 'Veuillez choisir le march'#233' de r'#233'f'#233'rence !'
        Color = 13434879
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Lucida Calligraphy'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object TableauCoixMarcheReference: TStringGrid
        Left = 8
        Top = 56
        Width = 1313
        Height = 601
        Ctl3D = False
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
        ParentCtl3D = False
        TabOrder = 1
        OnClick = TableauCoixMarcheReferenceClick
        OnKeyDown = TableauCoixMarcheReferenceKeyDown
      end
    end
    object TableauProjet: TStringGrid
      Left = 1084
      Top = 578
      Width = 501
      Height = 191
      Color = 16777192
      ColCount = 2
      Ctl3D = False
      DefaultColWidth = 50
      DefaultRowHeight = 20
      FixedColor = 16777181
      RowCount = 2
      ParentCtl3D = False
      TabOrder = 16
      Visible = False
      OnKeyDown = TableauProjetKeyDown
      ColWidths = (
        50
        50)
    end
    object AdresseStructureMarche: TPanel
      Left = 792
      Top = 324
      Width = 513
      Height = 25
      Alignment = taLeftJustify
      BevelInner = bvLowered
      TabOrder = 18
    end
    object AdresseStatistiqueMarche: TPanel
      Left = 792
      Top = 634
      Width = 513
      Height = 25
      Alignment = taLeftJustify
      BevelInner = bvLowered
      TabOrder = 19
    end
  end
  object TimerClic: TTimer
    Enabled = False
    Interval = 200
    OnTimer = TimerClicTimer
    Left = 824
    Top = 16
  end
  object TimerAlerteMarche: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerAlerteMarcheTimer
    Left = 880
    Top = 16
  end
  object TimerDefilerAffichage: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerDefilerAffichageTimer
    Left = 928
    Top = 16
  end
end
