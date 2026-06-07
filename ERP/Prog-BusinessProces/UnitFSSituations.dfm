object FSSituations: TFSSituations
  Left = -1
  Top = 0
  Width = 1364
  Height = 735
  Caption = 'Fiche Saisie Situations'
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
    Left = 3
    Top = 1
    Width = 1334
    Height = 688
    ActivePage = PageSituation
    TabIndex = 0
    TabOrder = 0
    OnChange = PageControl1Change
    object PageSituation: TTabSheet
      Caption = '     D'#233'compte     '
      OnShow = PageSituationShow
      object Bevel1: TBevel
        Left = 864
        Top = 8
        Width = 137
        Height = 33
      end
      object Label6: TLabel
        Left = 873
        Top = 20
        Width = 59
        Height = 13
        Caption = 'N'#176' Situation:'
      end
      object Bevel19: TBevel
        Left = 864
        Top = 51
        Width = 137
        Height = 33
      end
      object Bevel20: TBevel
        Left = 1008
        Top = 8
        Width = 185
        Height = 77
      end
      object Bevel24: TBevel
        Left = 864
        Top = 88
        Width = 457
        Height = 33
      end
      object Panel1: TPanel
        Left = 416
        Top = 8
        Width = 441
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
      object TableauAvenantMarche: TStringGrid
        Left = 416
        Top = 8
        Width = 441
        Height = 65
        ColCount = 2
        Ctl3D = False
        RowCount = 2
        ParentCtl3D = False
        TabOrder = 19
      end
      object EditMarcheControle: TMemo
        Left = 24
        Top = 168
        Width = 497
        Height = 105
        TabOrder = 18
      end
      object TestePrintDevis: TMemo
        Left = 1008
        Top = 152
        Width = 241
        Height = 73
        TabOrder = 14
      end
      object AfficheMarche: TPanel
        Left = 8
        Top = 8
        Width = 401
        Height = 113
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
          Width = 241
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnEnter = EditNSMarcheEnter
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
          Width = 241
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          OnEnter = EditNStructureMarcheEnter
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
          Width = 241
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 5
          OnEnter = EditNStatistiqueMarcheEnter
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
        object IndiceAfficheStructure: TEdit
          Left = 380
          Top = 56
          Width = 17
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 7
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
          TabOrder = 8
          Text = '0'
        end
        object EditSourceStatistiqueMarche: TEdit
          Left = 256
          Top = 8
          Width = 121
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 9
        end
      end
      object Panel2: TPanel
        Left = 416
        Top = 80
        Width = 441
        Height = 41
        BevelInner = bvLowered
        Color = 8454143
        TabOrder = 2
        object Label2: TLabel
          Left = 8
          Top = 20
          Width = 40
          Height = 13
          Caption = 'Attache:'
        end
        object Label5: TLabel
          Left = 152
          Top = 20
          Width = 15
          Height = 13
          Caption = 'du:'
        end
        object EditNAttachementMarche: TEdit
          Left = 64
          Top = 14
          Width = 73
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
        end
        object EditDateAttachement: TMaskEdit
          Left = 176
          Top = 14
          Width = 81
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 1
          Text = '  /  /    '
        end
        object IndiceAfficheAttachement: TEdit
          Left = 257
          Top = 14
          Width = 17
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
          Text = '0'
        end
        object BitBtn1: TBitBtn
          Left = 296
          Top = 8
          Width = 137
          Height = 25
          Caption = 'Attachement'
          TabOrder = 3
          OnClick = BitBtn1Click
          Kind = bkHelp
        end
      end
      object TableauDecompteSituation: TStringGrid
        Left = 8
        Top = 128
        Width = 1313
        Height = 521
        ColCount = 14
        Ctl3D = False
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
        ParentCtl3D = False
        TabOrder = 3
        OnClick = TableauDecompteSituationClick
        OnDblClick = TableauDecompteSituationDblClick
      end
      object TableauSelection: TStringGrid
        Left = -160
        Top = 403
        Width = 657
        Height = 281
        Ctl3D = False
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goEditing, goAlwaysShowEditor]
        ParentCtl3D = False
        TabOrder = 4
        Visible = False
        OnClick = TableauSelectionClick
        OnKeyDown = TableauSelectionKeyDown
        OnKeyPress = TableauSelectionKeyPress
      end
      object TableauLAttachement: TStringGrid
        Left = 712
        Top = 114
        Width = 401
        Height = 513
        Ctl3D = False
        FixedColor = 8454143
        FixedCols = 3
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
        ParentCtl3D = False
        TabOrder = 5
        Visible = False
        OnClick = TableauLAttachementClick
        OnKeyDown = TableauLAttachementKeyDown
        OnMouseWheelDown = TableauLAttachementMouseWheelDown
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
      object AfficheOptionsSituation: TPanel
        Left = 448
        Top = 160
        Width = 305
        Height = 385
        BevelInner = bvLowered
        Color = 10223615
        TabOrder = 6
        Visible = False
        OnMouseDown = AfficheOptionsSituationMouseDown
        object Bevel38: TBevel
          Left = 8
          Top = 336
          Width = 289
          Height = 41
        end
        object BitValiderOptionsSituation: TBitBtn
          Left = 96
          Top = 344
          Width = 113
          Height = 25
          Caption = 'Valider'
          TabOrder = 0
          OnClick = BitValiderOptionsSituationClick
          Kind = bkAll
        end
        object BitBtn27: TBitBtn
          Left = 232
          Top = 7
          Width = 63
          Height = 25
          Caption = 'Quitter'
          TabOrder = 1
          OnClick = BitBtn27Click
          Kind = bkCancel
        end
        object RadioGroup13: TRadioGroup
          Left = 8
          Top = 160
          Width = 289
          Height = 73
          Caption = 'Options Attachements:'
          TabOrder = 2
        end
        object RBCummulerAttachements: TRadioButton
          Left = 16
          Top = 184
          Width = 257
          Height = 17
          Caption = 'Cumuler les Attachements du m'#234'me mois'
          TabOrder = 3
        end
        object RBDistinguerAttachements: TRadioButton
          Left = 16
          Top = 208
          Width = 257
          Height = 17
          Caption = 'Distinguer entre les attachements du m'#234'me mois'
          TabOrder = 4
        end
        object Panel16: TPanel
          Left = 8
          Top = 40
          Width = 289
          Height = 113
          BevelInner = bvLowered
          Color = 10223615
          TabOrder = 5
          object RadioGroup11: TRadioGroup
            Left = 8
            Top = 8
            Width = 273
            Height = 97
            Caption = 'Options d'#233'tail d'#39'affichage:'
            TabOrder = 0
          end
          object RBSituationParMarche: TRadioButton
            Left = 16
            Top = 32
            Width = 257
            Height = 17
            Caption = 'D'#233'tail Par March'#233's'
            TabOrder = 1
          end
          object RBSituationParStructure: TRadioButton
            Left = 16
            Top = 56
            Width = 257
            Height = 17
            Caption = 'D'#233'tail Par Structures'
            TabOrder = 2
          end
          object RBSituationParStatistique: TRadioButton
            Left = 16
            Top = 80
            Width = 257
            Height = 17
            Caption = 'D'#233'tail Par Sous Structures'
            TabOrder = 3
          end
        end
        object Panel6: TPanel
          Left = 8
          Top = 240
          Width = 289
          Height = 89
          BevelInner = bvLowered
          Color = 10223615
          TabOrder = 6
          object RadioGroup2: TRadioGroup
            Left = 8
            Top = 8
            Width = 273
            Height = 73
            Caption = 'Option inclure D'#233'tail situation march'#233':'
            TabOrder = 0
          end
          object RBCalculeABaseDetailSituationMarcheAnterieure: TRadioButton
            Left = 16
            Top = 32
            Width = 257
            Height = 17
            Caption = 'Calcule '#224' base du d'#233'tail situation ant'#233'rieure'
            Checked = True
            TabOrder = 1
            TabStop = True
          end
          object RBCalculeABaseTousAttachements: TRadioButton
            Left = 16
            Top = 56
            Width = 249
            Height = 17
            Caption = 'Calcule '#224' base de tous les attachements'
            TabOrder = 2
          end
        end
      end
      object EditOptionSituationParStructure: TEdit
        Left = 1200
        Top = 8
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 7
      end
      object EditOptionSituationParStatistique: TEdit
        Left = 1200
        Top = 28
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 8
      end
      object EditCummulerAttachement: TEdit
        Left = 1200
        Top = 48
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 9
      end
      object EditSituationNAvenant: TEdit
        Left = 1200
        Top = 68
        Width = 25
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 10
      end
      object IndiceAffichageAvenantSituation: TEdit
        Left = 1304
        Top = 68
        Width = 17
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 11
        Text = '0'
      end
      object EditSituationAvenant: TEdit
        Left = 1224
        Top = 68
        Width = 81
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 12
      end
      object EditNSituationMarche: TEdit
        Left = 936
        Top = 16
        Width = 57
        Height = 19
        Color = 14215660
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 13
      end
      object AfficheOptionPrintApprovisionnementSituation: TPanel
        Left = 152
        Top = 192
        Width = 257
        Height = 185
        BevelInner = bvLowered
        Color = 11599871
        TabOrder = 15
        Visible = False
        OnMouseDown = AfficheOptionPrintApprovisionnementSituationMouseDown
        object Bevel39: TBevel
          Left = 8
          Top = 136
          Width = 241
          Height = 41
        end
        object RadioGroup5: TRadioGroup
          Left = 8
          Top = 32
          Width = 241
          Height = 97
          Caption = 'Options d'#39'Approvisionnement:'
          TabOrder = 0
        end
        object RBTravauxPrecedent: TRadioButton
          Left = 16
          Top = 56
          Width = 225
          Height = 17
          Caption = 'Travaux r'#233'alis'#233's pr'#233'c'#233'demment'
          TabOrder = 1
        end
        object RBTravauxMois: TRadioButton
          Left = 16
          Top = 80
          Width = 225
          Height = 17
          Caption = 'Travaux du mois'
          TabOrder = 2
        end
        object RBTravauxCumule: TRadioButton
          Left = 16
          Top = 104
          Width = 225
          Height = 17
          Caption = 'Travaux cumul'#233's'
          TabOrder = 3
        end
        object BitBtn67: TBitBtn
          Left = 24
          Top = 144
          Width = 209
          Height = 25
          Caption = 'Voir'
          TabOrder = 4
          OnClick = BitBtn67Click
          Kind = bkHelp
        end
        object BitBtn26: TBitBtn
          Left = 176
          Top = 7
          Width = 75
          Height = 25
          TabOrder = 5
          OnClick = BitBtn26Click
          Kind = bkCancel
        end
      end
      object BitBtn64: TBitBtn
        Left = 1016
        Top = 51
        Width = 169
        Height = 25
        Caption = 'Approvisionnement'
        TabOrder = 16
        OnClick = BitBtn64Click
        Kind = bkHelp
      end
      object BitBtn5: TBitBtn
        Left = 1016
        Top = 16
        Width = 169
        Height = 25
        Caption = 'Transformer en Fichier Excel'
        TabOrder = 17
        OnClick = BitBtn5Click
        Kind = bkHelp
      end
      object IncrimentEditMaxColWidth: TUpDown
        Left = 977
        Top = 59
        Width = 16
        Height = 19
        Associate = EditMaxColWidth
        Min = 10
        Max = 1000
        Position = 715
        TabOrder = 20
        Thousands = False
        Wrap = False
        OnClick = IncrimentEditMaxColWidthClick
      end
      object EditMaxColWidth: TEdit
        Left = 936
        Top = 59
        Width = 41
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 21
        Text = '715'
      end
      object RBNumerotationParAnnee: TCheckBox
        Left = 1176
        Top = 96
        Width = 137
        Height = 17
        Caption = 'Num'#233'rotation par ann'#233'e.'
        Checked = True
        State = cbChecked
        TabOrder = 22
      end
    end
    object PageStatistique: TTabSheet
      Caption = '     Statistique     '
      ImageIndex = 1
      object AfficheSituationStructureStatistique: TPanel
        Left = 0
        Top = 0
        Width = 1321
        Height = 617
        Color = 8454143
        TabOrder = 0
        object TableauSituationStructureStatistique: TStringGrid
          Left = 8
          Top = 8
          Width = 1305
          Height = 473
          ColCount = 8
          Ctl3D = False
          DefaultColWidth = 40
          DefaultRowHeight = 16
          FixedColor = 8454143
          FixedCols = 2
          RowCount = 2
          ParentCtl3D = False
          TabOrder = 0
          OnDblClick = TableauSituationStructureStatistiqueDblClick
          ColWidths = (
            2
            2
            256
            99
            97
            94
            93
            95)
        end
        object TableauAvance: TStringGrid
          Left = 8
          Top = 488
          Width = 1305
          Height = 120
          ColCount = 6
          Ctl3D = False
          DefaultColWidth = 40
          DefaultRowHeight = 18
          FixedColor = 8454143
          RowCount = 2
          ParentCtl3D = False
          TabOrder = 1
          ColWidths = (
            40
            250
            100
            113
            106
            114)
        end
      end
    end
    object PagePricipale: TTabSheet
      Caption = '     Valeur Principale     '
      ImageIndex = 3
      OnShow = PagePricipaleShow
      object Bevel22: TBevel
        Left = 1120
        Top = 8
        Width = 201
        Height = 73
      end
      object Bevel23: TBevel
        Left = 1120
        Top = 88
        Width = 201
        Height = 137
      end
      object AdresseSituationMarche: TPanel
        Left = 0
        Top = 628
        Width = 1321
        Height = 28
        BevelInner = bvLowered
        TabOrder = 16
      end
      object TableauAnalyseMontantMarche: TStringGrid
        Left = 0
        Top = 500
        Width = 1105
        Height = 125
        ColCount = 6
        Ctl3D = False
        DefaultRowHeight = 20
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
        ParentCtl3D = False
        TabOrder = 10
        OnClick = TableauAnalyseMontantMarcheClick
      end
      object TableauPrincipal: TStringGrid
        Left = 0
        Top = 0
        Width = 1105
        Height = 497
        ColCount = 7
        Ctl3D = False
        DefaultColWidth = 40
        DefaultRowHeight = 20
        FixedColor = 8454143
        FixedCols = 5
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
        ParentCtl3D = False
        TabOrder = 0
        OnClick = TableauPrincipalClick
        ColWidths = (
          2
          2
          2
          2
          2
          386
          139)
      end
      object BitBtn47: TBitBtn
        Left = 1128
        Top = 16
        Width = 185
        Height = 25
        Caption = 'Valider la Situation'
        TabOrder = 1
        OnClick = BitBtn47Click
        Kind = bkAll
      end
      object BitVoirListeSituation: TBitBtn
        Left = 1128
        Top = 48
        Width = 185
        Height = 25
        Caption = 'Voir les Situations du March'#233
        TabOrder = 4
        OnClick = BitVoirListeSituationClick
        Kind = bkHelp
      end
      object BitBtn37: TBitBtn
        Left = 1128
        Top = 96
        Width = 185
        Height = 25
        Caption = 'Imprimer le D'#233'compte'
        TabOrder = 5
        OnClick = BitBtn37Click
        Kind = bkHelp
      end
      object BitBtn54: TBitBtn
        Left = 1128
        Top = 128
        Width = 185
        Height = 25
        Caption = 'Imprimer l'#39'Etat Principale'
        TabOrder = 6
        OnClick = BitBtn54Click
        Kind = bkHelp
      end
      object BitBtn55: TBitBtn
        Left = 1128
        Top = 160
        Width = 185
        Height = 25
        Caption = 'Imprimer les Statistique'
        TabOrder = 7
        OnClick = BitBtn55Click
        Kind = bkHelp
      end
      object PageControl2: TPageControl
        Left = 1108
        Top = 328
        Width = 213
        Height = 297
        ActivePage = PageMemoire
        TabIndex = 0
        TabOrder = 9
        object PageMemoire: TTabSheet
          Caption = ' Afficher m'#233'moire '
          object Memoire: TMemo
            Left = 0
            Top = 4
            Width = 205
            Height = 205
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
          end
          object RadioGroup15: TRadioGroup
            Left = 0
            Top = 216
            Width = 201
            Height = 49
            Caption = 'Intitul'#233' de l'#39'Etat:'
            TabOrder = 1
          end
        end
        object PageDetailCredit: TTabSheet
          Caption = ' D'#233'tail Cr'#233'dit '
          ImageIndex = 1
          object TableauDetailCredit: TStringGrid
            Left = 0
            Top = 0
            Width = 204
            Height = 193
            ColCount = 1
            Ctl3D = False
            DefaultColWidth = 200
            DefaultRowHeight = 20
            FixedCols = 0
            RowCount = 8
            FixedRows = 0
            ParentCtl3D = False
            TabOrder = 0
          end
          object RadioGroup14: TRadioGroup
            Left = 0
            Top = 200
            Width = 201
            Height = 65
            Caption = 'Option Cr'#233'dit:'
            TabOrder = 1
          end
        end
      end
      object BitBtn2: TBitBtn
        Left = 1128
        Top = 192
        Width = 185
        Height = 25
        Caption = 'Imprimer l'#39'Attachement'
        TabOrder = 11
        OnClick = BitBtn2Click
        Kind = bkHelp
      end
      object AffcicheTransfertExecl: TPanel
        Left = 1120
        Top = 240
        Width = 201
        Height = 193
        BevelOuter = bvLowered
        Color = 8454143
        TabOrder = 12
        object Bevel5: TBevel
          Left = 8
          Top = 40
          Width = 185
          Height = 137
        end
        object BitBtn3: TBitBtn
          Left = 16
          Top = 48
          Width = 169
          Height = 25
          Caption = 'D'#233'compte '
          TabOrder = 0
          OnClick = BitBtn3Click
          Kind = bkHelp
        end
        object BitBtn4: TBitBtn
          Left = 16
          Top = 80
          Width = 169
          Height = 25
          Caption = 'Structure'
          TabOrder = 1
          OnClick = BitBtn4Click
          Kind = bkHelp
        end
        object BitBtn6: TBitBtn
          Left = 16
          Top = 112
          Width = 169
          Height = 25
          Caption = 'Principale'
          TabOrder = 2
          OnClick = BitBtn6Click
          Kind = bkHelp
        end
        object Panel3: TPanel
          Left = 8
          Top = 8
          Width = 185
          Height = 25
          Caption = 'G'#233'n'#233'rateur fichier Excel'
          TabOrder = 3
          OnClick = Panel3Click
        end
        object BitBtn7: TBitBtn
          Left = 16
          Top = 144
          Width = 169
          Height = 25
          Caption = 'Attachement'
          TabOrder = 4
          OnClick = BitBtn7Click
          Kind = bkHelp
        end
      end
      object AfficheListeSituation: TPanel
        Left = 160
        Top = 72
        Width = 769
        Height = 409
        BevelInner = bvLowered
        Color = 8454143
        TabOrder = 3
        Visible = False
        OnMouseDown = AfficheListeSituationMouseDown
        object Bevel6: TBevel
          Left = 8
          Top = 8
          Width = 497
          Height = 33
        end
        object TableauListeSituation: TStringGrid
          Left = 8
          Top = 48
          Width = 753
          Height = 356
          ColCount = 12
          Ctl3D = False
          DefaultColWidth = 40
          DefaultRowHeight = 20
          FixedColor = 8454143
          RowCount = 2
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
          ParentCtl3D = False
          ScrollBars = ssVertical
          TabOrder = 0
          OnClick = TableauListeSituationClick
          OnKeyDown = TableauListeSituationKeyDown
          OnKeyPress = TableauListeSituationKeyPress
          ColWidths = (
            40
            40
            40
            40
            40
            40
            40
            40
            40
            40
            40
            40)
        end
        object AfficheActionListeSituation: TPanel
          Left = 160
          Top = 96
          Width = 329
          Height = 57
          BevelInner = bvLowered
          Color = 8454143
          TabOrder = 1
          Visible = False
          OnMouseDown = AfficheActionListeSituationMouseDown
          object Bevel18: TBevel
            Left = 8
            Top = 8
            Width = 313
            Height = 42
          end
          object BitBtn52: TBitBtn
            Left = 16
            Top = 16
            Width = 75
            Height = 25
            TabOrder = 0
            OnClick = BitBtn52Click
            Kind = bkNo
          end
          object BitActionSituation: TBitBtn
            Left = 224
            Top = 16
            Width = 91
            Height = 25
            Caption = '&Oui'
            ModalResult = 6
            TabOrder = 1
            OnClick = BitActionSituationClick
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
        end
        object BitBtn53: TBitBtn
          Left = 14
          Top = 12
          Width = 75
          Height = 25
          Caption = 'Quitter'
          TabOrder = 2
          OnClick = BitBtn53Click
          Kind = bkCancel
        end
        object AfficheOperationSituation: TPanel
          Left = 512
          Top = 8
          Width = 249
          Height = 273
          BevelInner = bvLowered
          Caption = 'Op'#233'ration Situation !'
          Color = 8454016
          TabOrder = 3
          OnClick = AfficheOperationSituationClick
          object Bevel7: TBevel
            Left = 8
            Top = 43
            Width = 233
            Height = 33
          end
          object Bevel8: TBevel
            Left = 8
            Top = 86
            Width = 233
            Height = 33
          end
          object Bevel9: TBevel
            Left = 8
            Top = 128
            Width = 233
            Height = 129
          end
          object BitBtn57: TBitBtn
            Left = 13
            Top = 47
            Width = 223
            Height = 25
            Caption = 'Voir l'#39'Etat de la Retenue de Garantie'
            TabOrder = 0
            OnClick = BitBtn57Click
            Kind = bkHelp
          end
          object BitBtn8: TBitBtn
            Left = 13
            Top = 132
            Width = 224
            Height = 25
            Caption = 'Imprimer'
            TabOrder = 1
            OnClick = BitBtn8Click
            Kind = bkHelp
          end
          object BitBtn10: TBitBtn
            Left = 13
            Top = 90
            Width = 224
            Height = 25
            Caption = 'G'#233'n'#233'rateur fichier Excel'
            TabOrder = 2
            OnClick = BitBtn10Click
            Kind = bkHelp
          end
          object RadioGroup7: TRadioGroup
            Left = 16
            Top = 160
            Width = 217
            Height = 89
            Caption = 'Options d'#39'Impression:'
            TabOrder = 3
          end
          object RBOrientationPapierSituation: TComboBox
            Left = 24
            Top = 184
            Width = 201
            Height = 21
            BevelInner = bvLowered
            BevelKind = bkFlat
            Ctl3D = False
            ItemHeight = 13
            ItemIndex = 0
            ParentCtl3D = False
            TabOrder = 4
            Text = 'Automatique'
            Items.Strings = (
              'Automatique'
              'Portrait'
              'Paysage')
          end
          object RBAjustementSituation: TCheckBox
            Left = 24
            Top = 216
            Width = 113
            Height = 17
            Caption = 'Ajustement !'
            Checked = True
            State = cbChecked
            TabOrder = 5
          end
        end
      end
      object AffichePrintParStructure: TPanel
        Left = 528
        Top = 208
        Width = 345
        Height = 321
        BevelInner = bvLowered
        Color = 8454143
        TabOrder = 8
        Visible = False
        OnMouseDown = AffichePrintParStructureMouseDown
        object Bevel43: TBevel
          Left = 8
          Top = 56
          Width = 329
          Height = 41
        end
        object TableauDecompteStructures: TStringGrid
          Left = 8
          Top = 101
          Width = 329
          Height = 213
          ColCount = 2
          Ctl3D = False
          DefaultColWidth = 70
          DefaultRowHeight = 20
          FixedColor = 8454143
          RowCount = 2
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
          ParentCtl3D = False
          TabOrder = 0
          ColWidths = (
            70
            231)
        end
        object BitBtn87: TBitBtn
          Left = 168
          Top = 64
          Width = 163
          Height = 25
          Caption = 'Valider'
          TabOrder = 1
          OnClick = BitBtn87Click
          Kind = bkAll
        end
        object RBSelectDecompte: TCheckBox
          Left = 16
          Top = 68
          Width = 137
          Height = 17
          Caption = 'Par Structure'
          TabOrder = 2
          OnClick = RBSelectDecompteClick
        end
        object AfficheTitreStructure: TPanel
          Left = 8
          Top = 8
          Width = 329
          Height = 41
          BevelInner = bvLowered
          TabOrder = 3
          object BitBtn86: TBitBtn
            Left = 8
            Top = 8
            Width = 75
            Height = 25
            TabOrder = 0
            OnClick = BitBtn86Click
            Kind = bkCancel
          end
        end
      end
      object AfficheModifierSituation: TPanel
        Left = 328
        Top = 224
        Width = 569
        Height = 201
        BevelInner = bvLowered
        Color = 8454016
        TabOrder = 13
        Visible = False
        OnMouseDown = AfficheModifierSituationMouseDown
        object Bevel12: TBevel
          Left = 8
          Top = 152
          Width = 553
          Height = 41
        end
        object Bevel11: TBevel
          Left = 8
          Top = 48
          Width = 553
          Height = 97
        end
        object Label11: TLabel
          Left = 227
          Top = 68
          Width = 76
          Height = 13
          Caption = 'Mode paiement:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 243
          Top = 92
          Width = 62
          Height = 13
          Caption = 'Domiciliation:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 259
          Top = 116
          Width = 45
          Height = 13
          Caption = 'N'#176' Pi'#232'ce:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 19
          Top = 164
          Width = 45
          Height = 13
          Caption = 'N'#176' Pi'#232'ce:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RBChargerMontantAvisPourSituation: TCheckBox
          Left = 410
          Top = 163
          Width = 13
          Height = 17
          TabOrder = 11
        end
        object RadioGroup9: TRadioGroup
          Left = 16
          Top = 56
          Width = 185
          Height = 81
          Caption = 'Validit'#233' !'
          TabOrder = 4
        end
        object BitModifierSituation: TBitBtn
          Left = 432
          Top = 8
          Width = 131
          Height = 25
          Caption = 'Modifier la situation'
          TabOrder = 0
          OnClick = BitModifierSituationClick
          Kind = bkAll
        end
        object BitBtn9: TBitBtn
          Left = 8
          Top = 8
          Width = 89
          Height = 25
          TabOrder = 1
          OnClick = BitBtn9Click
          Kind = bkCancel
        end
        object RBValiditeSituationModifier: TRadioButton
          Left = 32
          Top = 80
          Width = 113
          Height = 17
          Caption = 'Valider'
          Checked = True
          TabOrder = 2
          TabStop = True
        end
        object RBAnnulerModifier: TRadioButton
          Left = 32
          Top = 104
          Width = 113
          Height = 17
          Caption = 'Annuler'
          TabOrder = 3
        end
        object EditModePaiementModifier: TComboBox
          Left = 312
          Top = 62
          Width = 89
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          ItemHeight = 13
          TabOrder = 5
          Text = 'Ch'#232'que'
          Items.Strings = (
            'Ch'#232'que'
            'Esp'#232'ce'
            'Virement'
            'Bon'
            'Frais'
            'Non Acquitt'#233)
        end
        object EditNumDomiciliationPieceModifier: TEdit
          Left = 312
          Top = 86
          Width = 121
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 6
        end
        object EditNumPieceModifier: TEdit
          Left = 312
          Top = 110
          Width = 99
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 7
        end
        object EditDomiciliationPieceModifier: TComboBox
          Left = 312
          Top = 86
          Width = 193
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          ItemHeight = 0
          TabOrder = 8
        end
        object EditListeNumAvisModifier: TEdit
          Left = 72
          Top = 162
          Width = 337
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 9
          OnDblClick = EditListeNumAvisModifierDblClick
        end
        object BitBtn11: TBitBtn
          Left = 424
          Top = 160
          Width = 131
          Height = 25
          Caption = 'Avis correspondant'
          TabOrder = 10
          OnClick = BitBtn11Click
          Kind = bkHelp
        end
        object EditMontantAvisModifier: TEdit
          Left = 416
          Top = 110
          Width = 137
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 12
          OnEnter = EditMontantAvisModifierEnter
          OnExit = EditMontantAvisModifierExit
        end
      end
      object AfficheValiderSituation: TPanel
        Left = 264
        Top = 96
        Width = 537
        Height = 257
        BevelInner = bvLowered
        Color = 8454143
        TabOrder = 2
        Visible = False
        OnMouseDown = AfficheValiderSituationMouseDown
        object Bevel14: TBevel
          Left = 8
          Top = 112
          Width = 521
          Height = 89
        end
        object Bevel21: TBevel
          Left = 8
          Top = 8
          Width = 521
          Height = 50
        end
        object Bevel10: TBevel
          Left = 8
          Top = 64
          Width = 521
          Height = 42
        end
        object Label7: TLabel
          Left = 16
          Top = 78
          Width = 59
          Height = 13
          Caption = 'D'#233'signation:'
        end
        object Label8: TLabel
          Left = 251
          Top = 172
          Width = 45
          Height = 13
          Caption = 'N'#176' Pi'#232'ce:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 219
          Top = 124
          Width = 76
          Height = 13
          Caption = 'Mode paiement:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 235
          Top = 148
          Width = 62
          Height = 13
          Caption = 'Domiciliation:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Bevel13: TBevel
          Left = 8
          Top = 208
          Width = 521
          Height = 41
        end
        object Label16: TLabel
          Left = 43
          Top = 220
          Width = 45
          Height = 13
          Caption = 'N'#176' Pi'#232'ce:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object EditPositionSituation: TEdit
          Left = 464
          Top = 24
          Width = 25
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
        end
        object BitBtn51: TBitBtn
          Left = 16
          Top = 21
          Width = 75
          Height = 25
          TabOrder = 0
          OnClick = BitBtn51Click
          Kind = bkNo
        end
        object BitValiderSituation: TBitBtn
          Left = 448
          Top = 16
          Width = 75
          Height = 30
          Caption = '&Oui'
          ModalResult = 6
          TabOrder = 1
          OnClick = BitValiderSituationClick
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
        object EditDesignationSituation: TEdit
          Left = 80
          Top = 75
          Width = 297
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
        end
        object AfficheValiderMessageSituation: TPanel
          Left = 96
          Top = 16
          Width = 345
          Height = 33
          BevelInner = bvLowered
          Color = 8454143
          TabOrder = 4
        end
        object RadioGroup8: TRadioGroup
          Left = 16
          Top = 120
          Width = 185
          Height = 73
          Caption = 'Validit'#233' !'
          TabOrder = 5
        end
        object RBValiditeSituation: TRadioButton
          Left = 24
          Top = 136
          Width = 113
          Height = 17
          Caption = 'Valider'
          Checked = True
          TabOrder = 6
          TabStop = True
        end
        object RBAnnuler: TRadioButton
          Left = 24
          Top = 160
          Width = 113
          Height = 17
          Caption = 'Annuler'
          TabOrder = 7
        end
        object EditModePaiement: TComboBox
          Left = 304
          Top = 118
          Width = 89
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          ItemHeight = 13
          TabOrder = 8
          Text = 'Ch'#232'que'
          Items.Strings = (
            'Ch'#232'que'
            'Esp'#232'ce'
            'Virement'
            'Bon'
            'Frais'
            'Non Acquitt'#233)
        end
        object EditNumDomiciliationPiece: TEdit
          Left = 304
          Top = 142
          Width = 121
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 9
        end
        object EditDomiciliationPiece: TComboBox
          Left = 304
          Top = 142
          Width = 193
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          ItemHeight = 0
          TabOrder = 10
        end
        object EditNumPiece: TEdit
          Left = 304
          Top = 166
          Width = 99
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 11
        end
        object EditListeNumAvis: TEdit
          Left = 96
          Top = 218
          Width = 241
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 12
          OnDblClick = EditListeNumAvisDblClick
        end
        object BitBtn12: TBitBtn
          Left = 390
          Top = 216
          Width = 131
          Height = 25
          Caption = 'Avis correspondant'
          TabOrder = 13
          OnClick = BitBtn12Click
          Kind = bkHelp
        end
      end
      object AfficheListeAvis: TPanel
        Left = 200
        Top = 299
        Width = 777
        Height = 313
        BevelInner = bvLowered
        Color = 8454143
        TabOrder = 14
        Visible = False
        OnMouseDown = AfficheListeAvisMouseDown
        object Bevel35: TBevel
          Left = 8
          Top = 8
          Width = 489
          Height = 41
        end
        object Label56: TLabel
          Left = 16
          Top = 19
          Width = 67
          Height = 13
          Caption = 'Date Avis du: '
        end
        object Label57: TLabel
          Left = 280
          Top = 19
          Width = 15
          Height = 13
          Caption = 'au:'
        end
        object Bevel36: TBevel
          Left = 680
          Top = 8
          Width = 89
          Height = 41
        end
        object Bevel37: TBevel
          Left = 504
          Top = 8
          Width = 169
          Height = 41
        end
        object TableauListeAvis: TStringGrid
          Left = 8
          Top = 64
          Width = 761
          Height = 241
          Ctl3D = False
          RowCount = 2
          ParentCtl3D = False
          TabOrder = 0
          OnDblClick = TableauListeAvisDblClick
          OnKeyDown = TableauListeAvisKeyDown
        end
        object EditDateDebutAvis: TDateTimePicker
          Left = 88
          Top = 16
          Width = 186
          Height = 21
          BevelKind = bkFlat
          CalAlignment = dtaLeft
          Date = 42393.1473637731
          Time = 42393.1473637731
          DateFormat = dfLong
          DateMode = dmComboBox
          Kind = dtkDate
          ParseInput = False
          TabOrder = 1
          OnChange = EditDateDebutAvisChange
        end
        object EditDateFinAvis: TDateTimePicker
          Left = 304
          Top = 16
          Width = 186
          Height = 21
          BevelKind = bkFlat
          CalAlignment = dtaLeft
          Date = 42393.1473637731
          Time = 42393.1473637731
          DateFormat = dfLong
          DateMode = dmComboBox
          Kind = dtkDate
          ParseInput = False
          TabOrder = 2
        end
        object BitBtn13: TBitBtn
          Left = 688
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Annuler'
          ModalResult = 2
          TabOrder = 3
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
        object EditEtatOrigineImputationAvis: TComboBox
          Left = 512
          Top = 16
          Width = 153
          Height = 21
          BevelKind = bkFlat
          ItemHeight = 13
          TabOrder = 4
          Text = 'Avis Non Imput'#233's !'
          Items.Strings = (
            'Avis Non Imput'#233's !'
            'Avis Imput'#233's !'
            'Avis Imput'#233's et Non !')
        end
        object EditSourceDemande: TEdit
          Left = 8
          Top = 40
          Width = 121
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
        end
      end
      object AfficheNouvelleSituation: TPanel
        Left = 392
        Top = 360
        Width = 457
        Height = 457
        BevelInner = bvLowered
        Color = 16777088
        TabOrder = 15
        Visible = False
        OnMouseDown = AfficheNouvelleSituationMouseDown
        object Bevel15: TBevel
          Left = 8
          Top = 8
          Width = 441
          Height = 441
        end
        object Label17: TLabel
          Left = 16
          Top = 19
          Width = 103
          Height = 13
          Caption = 'D'#233'signation Situation:'
        end
        object Label18: TLabel
          Left = 16
          Top = 43
          Width = 56
          Height = 13
          Caption = 'N'#176'Situation:'
        end
        object Label19: TLabel
          Left = 16
          Top = 67
          Width = 54
          Height = 13
          Caption = 'N'#176' Marche:'
        end
        object Label20: TLabel
          Left = 16
          Top = 91
          Width = 75
          Height = 13
          Caption = 'N'#176' Attachemen:'
        end
        object Label21: TLabel
          Left = 16
          Top = 115
          Width = 81
          Height = 13
          Caption = 'Validit'#233' Situation:'
        end
        object Label22: TLabel
          Left = 16
          Top = 139
          Width = 26
          Height = 13
          Caption = 'Date:'
        end
        object Label23: TLabel
          Left = 16
          Top = 163
          Width = 77
          Height = 13
          Caption = 'Mode Paiement:'
        end
        object Label24: TLabel
          Left = 16
          Top = 187
          Width = 87
          Height = 13
          Caption = 'Num Domiciliation:'
        end
        object Label26: TLabel
          Left = 16
          Top = 211
          Width = 62
          Height = 13
          Caption = 'Domiciliation:'
        end
        object Label27: TLabel
          Left = 16
          Top = 235
          Width = 55
          Height = 13
          Caption = 'Num Pi'#232'ce:'
        end
        object Label28: TLabel
          Left = 16
          Top = 259
          Width = 132
          Height = 13
          Caption = 'Montant Situation TTC Brut:'
        end
        object Label29: TLabel
          Left = 16
          Top = 283
          Width = 87
          Height = 13
          Caption = 'Retenue Garantie:'
        end
        object Label30: TLabel
          Left = 16
          Top = 307
          Width = 129
          Height = 13
          Caption = 'Montant Retenue Garantie:'
        end
        object Label31: TLabel
          Left = 16
          Top = 331
          Width = 130
          Height = 13
          Caption = 'Montant Situation TTC Net:'
        end
        object Label32: TLabel
          Left = 16
          Top = 355
          Width = 65
          Height = 13
          Caption = 'Par Structure:'
        end
        object Label33: TLabel
          Left = 16
          Top = 427
          Width = 40
          Height = 13
          Caption = 'N'#176' Avis/'
        end
        object Label34: TLabel
          Left = 16
          Top = 379
          Width = 71
          Height = 13
          Caption = 'Par Statistique:'
        end
        object Label35: TLabel
          Left = 16
          Top = 403
          Width = 117
          Height = 13
          Caption = 'Cummuler Attachements:'
        end
        object Bevel16: TBevel
          Left = 264
          Top = 40
          Width = 178
          Height = 65
        end
        object Bevel17: TBevel
          Left = 352
          Top = 368
          Width = 89
          Height = 41
        end
        object Label36: TLabel
          Left = 205
          Top = 284
          Width = 8
          Height = 13
          Caption = '%'
        end
        object BitValiderNewSituation: TBitBtn
          Left = 272
          Top = 48
          Width = 163
          Height = 49
          Caption = 'Valider'
          TabOrder = 0
          OnClick = BitValiderNewSituationClick
          Kind = bkAll
        end
        object EditDesignationSituationNew: TEdit
          Left = 168
          Top = 16
          Width = 273
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnKeyDown = EditDesignationSituationNewKeyDown
        end
        object EditNSituationMarcheNew: TEdit
          Left = 168
          Top = 40
          Width = 65
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          OnKeyDown = EditNSituationMarcheNewKeyDown
        end
        object EditNSMarcheNew: TEdit
          Left = 168
          Top = 64
          Width = 65
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          OnKeyDown = EditNSMarcheNewKeyDown
        end
        object EditNAttachementNew: TEdit
          Left = 168
          Top = 88
          Width = 65
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
          OnKeyDown = EditNAttachementNewKeyDown
        end
        object EditModePaiementNew: TEdit
          Left = 168
          Top = 160
          Width = 185
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 5
          OnKeyDown = EditModePaiementNewKeyDown
        end
        object EditNumDomiciliationNew: TEdit
          Left = 168
          Top = 184
          Width = 185
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 6
          OnKeyDown = EditNumDomiciliationNewKeyDown
        end
        object EditDomiciliationNew: TEdit
          Left = 168
          Top = 208
          Width = 185
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 7
          OnKeyDown = EditDomiciliationNewKeyDown
        end
        object EditNumPieceNew: TEdit
          Left = 168
          Top = 232
          Width = 121
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 8
          OnKeyDown = EditNumPieceNewKeyDown
        end
        object EditMontantSituationTTCBrutNew: TEdit
          Left = 168
          Top = 256
          Width = 121
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 9
          OnEnter = EditMontantSituationTTCBrutNewEnter
          OnExit = EditMontantSituationTTCBrutNewExit
          OnKeyDown = EditMontantSituationTTCBrutNewKeyDown
          OnKeyUp = EditMontantSituationTTCBrutNewKeyUp
        end
        object EditRetenueGarantieNew: TEdit
          Left = 168
          Top = 280
          Width = 33
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 10
          OnKeyDown = EditRetenueGarantieNewKeyDown
          OnKeyUp = EditRetenueGarantieNewKeyUp
        end
        object EditMontantRetenueGarantieNew: TEdit
          Left = 168
          Top = 304
          Width = 121
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 11
          OnKeyDown = EditMontantRetenueGarantieNewKeyDown
        end
        object EditMontantSituationTTCNetNew: TEdit
          Left = 168
          Top = 328
          Width = 121
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 12
          OnKeyDown = EditMontantSituationTTCNetNewKeyDown
        end
        object EditListeNumAvisNew: TEdit
          Left = 168
          Top = 424
          Width = 281
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 13
          OnKeyDown = EditListeNumAvisNewKeyDown
        end
        object RBValiditeSituationNew: TCheckBox
          Left = 168
          Top = 112
          Width = 97
          Height = 17
          Caption = 'EditValiditeSituationNew'
          TabOrder = 14
          OnKeyDown = RBValiditeSituationNewKeyDown
        end
        object EditDateSituationMarcheNew: TDateTimePicker
          Left = 168
          Top = 136
          Width = 186
          Height = 21
          CalAlignment = dtaLeft
          Date = 43556.4033126042
          Time = 43556.4033126042
          DateFormat = dfLong
          DateMode = dmComboBox
          Kind = dtkDate
          ParseInput = False
          TabOrder = 15
          OnKeyDown = EditDateSituationMarcheNewKeyDown
        end
        object RBParStructureNew: TCheckBox
          Left = 168
          Top = 352
          Width = 97
          Height = 17
          Caption = 'RBParStructureNew'
          TabOrder = 16
          OnKeyDown = RBParStructureNewKeyDown
        end
        object RBParStatistiqueNew: TCheckBox
          Left = 168
          Top = 376
          Width = 97
          Height = 17
          Caption = 'RBParStatistiqueNew'
          TabOrder = 17
          OnKeyDown = RBParStatistiqueNewKeyDown
        end
        object RBCummulerAttachementNew: TCheckBox
          Left = 168
          Top = 400
          Width = 97
          Height = 17
          Caption = 'RBCummulerAttachementNew'
          TabOrder = 18
          OnKeyDown = RBCummulerAttachementNewKeyDown
        end
        object BitBtn15: TBitBtn
          Left = 360
          Top = 376
          Width = 75
          Height = 25
          TabOrder = 19
          OnClick = BitBtn15Click
          Kind = bkCancel
        end
      end
    end
    object PageDiagramme: TTabSheet
      Caption = '     Diagramme     '
      ImageIndex = 2
      OnShow = PageDiagrammeShow
      object AfficheDiagrammeSituation: TPanel
        Left = 9
        Top = 9
        Width = 1320
        Height = 640
        TabOrder = 0
        object Bevel4: TBevel
          Left = 1048
          Top = 8
          Width = 258
          Height = 33
        end
        object Label3: TLabel
          Left = 1056
          Top = 20
          Width = 182
          Height = 13
          Caption = 'Intervalle P'#233'riode avancement en jour:'
        end
        object TableauEvolutionMarche: TStringGrid
          Left = 32
          Top = 72
          Width = 425
          Height = 193
          ColCount = 2
          Ctl3D = False
          DefaultColWidth = 70
          DefaultRowHeight = 16
          RowCount = 2
          ParentCtl3D = False
          TabOrder = 1
        end
        object RadioGroup3: TRadioGroup
          Left = 328
          Top = 8
          Width = 65
          Height = 41
          Caption = 'Interval:'
          TabOrder = 7
        end
        object EditARowEvolutionMarche: TEdit
          Left = 601
          Top = 27
          Width = 17
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          Text = '3'
        end
        object BitEvolutionMarche: TBitBtn
          Left = 624
          Top = 8
          Width = 145
          Height = 41
          Caption = 'Evolution'
          TabOrder = 2
          OnClick = BitEvolutionMarcheClick
          Kind = bkHelp
        end
        object Diagramme: TChart
          Left = 8
          Top = 56
          Width = 1305
          Height = 577
          AllowPanning = pmHorizontal
          AllowZoom = False
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          Title.Text.Strings = (
            'Structures March'#233)
          LeftAxis.Grid.Visible = False
          LeftAxis.Title.Caption = 'Montant'
          LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
          LeftAxis.Title.Font.Color = clBlack
          LeftAxis.Title.Font.Height = -11
          LeftAxis.Title.Font.Name = 'Arial'
          LeftAxis.Title.Font.Style = [fsBold]
          Legend.LegendStyle = lsValues
          Legend.TextStyle = ltsRightPercent
          TabOrder = 0
          object EditValeurMarche: TMemo
            Left = 8
            Top = 8
            Width = 153
            Height = 25
            BorderStyle = bsNone
            Color = clBtnFace
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            WantTabs = True
          end
          object EditARowEvolutionMarchePrint: TEdit
            Left = 1056
            Top = 555
            Width = 22
            Height = 19
            Color = clBtnFace
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 2
            Text = '3'
          end
          object EditNStructurePrint: TEdit
            Left = 1079
            Top = 555
            Width = 90
            Height = 19
            Color = clBtnFace
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
          end
          object EditStructurePrint: TEdit
            Left = 1170
            Top = 555
            Width = 129
            Height = 19
            Color = clBtnFace
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 4
          end
          object BitBtn90: TBitBtn
            Left = 1216
            Top = 8
            Width = 75
            Height = 25
            Caption = 'Print'
            TabOrder = 1
            OnClick = BitBtn90Click
            Kind = bkHelp
          end
          object Series1: TBarSeries
            ColorEachPoint = True
            Marks.ArrowLength = 20
            Marks.Style = smsPercent
            Marks.Visible = True
            SeriesColor = clRed
            BarStyle = bsRectGradient
            XValues.DateTime = False
            XValues.Name = 'X '
            XValues.Multiplier = 1
            XValues.Order = loAscending
            YValues.DateTime = False
            YValues.Name = 'Histo. '
            YValues.Multiplier = 1
            YValues.Order = loNone
          end
          object Series2: TBarSeries
            Marks.ArrowLength = 20
            Marks.Style = smsPercent
            Marks.Visible = True
            SeriesColor = 14342874
            BarBrush.Color = clWhite
            BarBrush.Style = bsBDiagonal
            BarPen.Style = psDashDotDot
            BarPen.SmallDots = True
            BarStyle = bsRectGradient
            OffsetPercent = 10
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
        object RadioGroup4: TRadioGroup
          Left = 408
          Top = 8
          Width = 185
          Height = 41
          Caption = 'Options:'
          TabOrder = 4
        end
        object EditIntervalEvolution: TEdit
          Left = 334
          Top = 24
          Width = 35
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 5
          Text = '100'
          OnKeyPress = EditIntervalEvolutionKeyPress
        end
        object UpDown1: TUpDown
          Left = 369
          Top = 24
          Width = 16
          Height = 19
          Associate = EditIntervalEvolution
          Min = 10
          Max = 10000
          Increment = 10
          Position = 100
          TabOrder = 6
          Thousands = False
          Wrap = False
        end
        object RBPasaPas: TCheckBox
          Left = 414
          Top = 24
          Width = 68
          Height = 17
          Caption = 'Pas '#224' Pas'
          TabOrder = 8
          OnClick = RBPasaPasClick
        end
        object RadioGroup6: TRadioGroup
          Left = 8
          Top = 13
          Width = 313
          Height = 29
          Caption = 'Options:'
          TabOrder = 9
        end
        object RBMarche: TRadioButton
          Left = 56
          Top = 21
          Width = 113
          Height = 17
          Caption = 'Situation / March'#233'.'
          TabOrder = 10
          OnClick = RBMarcheClick
        end
        object RBArticle: TRadioButton
          Left = 168
          Top = 21
          Width = 146
          Height = 17
          Caption = 'Situation / Articles Utilis'#233's'
          TabOrder = 11
          OnClick = RBArticleClick
        end
        object AfficheDiagrammeStructures: TPanel
          Left = 624
          Top = 56
          Width = 313
          Height = 313
          BevelInner = bvLowered
          Color = 16777156
          TabOrder = 12
          Visible = False
          object Bevel2: TBevel
            Left = 216
            Top = 8
            Width = 90
            Height = 41
          end
          object Bevel3: TBevel
            Left = 7
            Top = 8
            Width = 202
            Height = 41
          end
          object BitBtn56: TBitBtn
            Left = 224
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Quitter'
            TabOrder = 0
            OnClick = BitBtn56Click
            Kind = bkCancel
          end
          object TableauDiagrammeStructures: TStringGrid
            Left = 8
            Top = 56
            Width = 297
            Height = 249
            ColCount = 2
            Ctl3D = False
            DefaultColWidth = 40
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
            ParentCtl3D = False
            TabOrder = 1
            OnKeyDown = TableauDiagrammeStructuresKeyDown
            ColWidths = (
              40
              229)
          end
        end
        object RBParStructure: TCheckBox
          Left = 496
          Top = 24
          Width = 89
          Height = 17
          Caption = 'Par Structure'
          TabOrder = 13
        end
        object EditIntervallePeriodeAvancement: TEdit
          Left = 1248
          Top = 16
          Width = 33
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 14
          Text = '1'
        end
        object IntervallePeriodeAvancement: TUpDown
          Left = 1281
          Top = 16
          Width = 16
          Height = 19
          Associate = EditIntervallePeriodeAvancement
          Min = 1
          Max = 30
          Position = 1
          TabOrder = 15
          Wrap = False
          OnClick = IntervallePeriodeAvancementClick
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = '     Attachement contradictoire     '
      ImageIndex = 4
      OnShow = TabSheet1Show
      object TableauDetailAttachement: TStringGrid
        Left = 5
        Top = 11
        Width = 1108
        Height = 638
        ColCount = 13
        Ctl3D = False
        FixedCols = 3
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
        ParentCtl3D = False
        TabOrder = 0
        OnDblClick = TableauDetailAttachementDblClick
      end
      object RadioGroup1: TRadioGroup
        Left = 1120
        Top = 8
        Width = 185
        Height = 153
        Caption = 'Transfert Excel'
        TabOrder = 1
      end
      object RBSituation: TRadioButton
        Left = 1136
        Top = 32
        Width = 113
        Height = 17
        Caption = 'Situation'
        TabOrder = 2
      end
      object RBDetail: TRadioButton
        Left = 1136
        Top = 64
        Width = 113
        Height = 17
        Caption = 'D'#233'tail'
        TabOrder = 3
      end
      object RBAttachement: TRadioButton
        Left = 1136
        Top = 128
        Width = 113
        Height = 17
        Caption = 'Attachement'
        TabOrder = 4
      end
      object RBDecompte: TRadioButton
        Left = 1136
        Top = 96
        Width = 113
        Height = 17
        Caption = 'D'#233'compte'
        TabOrder = 5
      end
    end
    object PageDetailSituationMarche: TTabSheet
      Caption = '     D'#233'tail Attachement Global     '
      ImageIndex = 6
      object TableauDetailSituationMarche: TStringGrid
        Left = 8
        Top = 48
        Width = 1313
        Height = 593
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
      end
      object AfficheAdresseFDetailSituationMarche: TPanel
        Left = 8
        Top = 0
        Width = 1313
        Height = 41
        Alignment = taLeftJustify
        BevelInner = bvLowered
        TabOrder = 1
        object BitBtn14: TBitBtn
          Left = 1128
          Top = 8
          Width = 177
          Height = 25
          Caption = 'Mise '#224' jour'
          TabOrder = 0
          OnClick = BitBtn14Click
          Kind = bkAll
        end
        object EditNumSituationAfficher: TEdit
          Left = 1104
          Top = 10
          Width = 21
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = '     En-T'#234'te     '
      ImageIndex = 5
      object TitreEditBaseAvis: TLabel
        Left = 769
        Top = 44
        Width = 33
        Height = 13
        Alignment = taRightJustify
        Caption = '...........'
      end
      object TableauInformationEnTete: TStringGrid
        Left = 0
        Top = 48
        Width = 641
        Height = 609
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        ColWidths = (
          64
          64
          64
          64
          64)
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 641
        Height = 41
        BevelInner = bvLowered
        TabOrder = 1
      end
      object RBModePayementNumAvis: TCheckBox
        Left = 1072
        Top = 24
        Width = 201
        Height = 17
        Caption = 'Afficher Num Avis !'
        TabOrder = 2
      end
      object RBModePayementModePayement: TCheckBox
        Left = 1072
        Top = 48
        Width = 201
        Height = 17
        Caption = 'Afficher Mode de payement !'
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object RBModePayementDomiciliation: TCheckBox
        Left = 1072
        Top = 72
        Width = 209
        Height = 17
        Caption = 'Afficher Domiciliation !'
        Checked = True
        State = cbChecked
        TabOrder = 4
      end
      object RBModePayementNumPiece: TCheckBox
        Left = 1072
        Top = 96
        Width = 201
        Height = 17
        Caption = 'Afficher num Pi'#232'ce !'
        Checked = True
        State = cbChecked
        TabOrder = 5
      end
      object RBAfficherHeureImpression: TCheckBox
        Left = 1072
        Top = 120
        Width = 201
        Height = 17
        Caption = 'Afficher l'#39'heure  de l'#39'impression'
        TabOrder = 6
      end
      object RBAfficherCodeArticleComplet: TCheckBox
        Left = 1072
        Top = 144
        Width = 233
        Height = 17
        Caption = 'Afficher le code article complet'
        TabOrder = 7
      end
      object RBAfficheCryptageEtat: TCheckBox
        Left = 1072
        Top = 168
        Width = 193
        Height = 17
        Caption = 'Afficher le cryptage des '#233'tats !'
        TabOrder = 8
      end
      object RBAfficheReferenceListeMouvement: TCheckBox
        Left = 1072
        Top = 192
        Width = 201
        Height = 17
        Caption = 'Afficher la r'#233'f'#233'rence liste mouvement'
        Checked = True
        State = cbChecked
        TabOrder = 9
      end
      object EditTitreReferenceListeMouvement: TComboBox
        Left = 1088
        Top = 213
        Width = 153
        Height = 21
        BevelInner = bvLowered
        BevelKind = bkFlat
        ItemHeight = 13
        TabOrder = 10
        Items.Strings = (
          'BL'
          'BC'
          'Facture'
          'Bon')
      end
      object Panel8: TPanel
        Left = 1064
        Top = 240
        Width = 257
        Height = 121
        BevelInner = bvLowered
        TabOrder = 11
        object RadioGroup10: TRadioGroup
          Left = 8
          Top = 8
          Width = 241
          Height = 105
          Caption = 'Date:'
          TabOrder = 0
        end
        object RBModePayementDateAvis: TRadioButton
          Left = 24
          Top = 40
          Width = 217
          Height = 17
          Caption = 'Afficher la date  de l'#39'Avis !'
          Checked = True
          TabOrder = 1
          TabStop = True
        end
        object RBModePayementDateExecution: TRadioButton
          Left = 24
          Top = 72
          Width = 217
          Height = 17
          Caption = 'Afficher la date d'#39'Execution !'
          TabOrder = 2
        end
      end
      object TableauListeAvisTrouver: TStringGrid
        Left = 976
        Top = 368
        Width = 345
        Height = 217
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 12
      end
      object EditListeNumAvisTrouver: TEdit
        Left = 672
        Top = 144
        Width = 177
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 13
      end
      object EditListeModePaiementTrouver: TEdit
        Left = 672
        Top = 168
        Width = 177
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 14
      end
      object EditListeDomiciliationAvisTrouver: TEdit
        Left = 672
        Top = 192
        Width = 177
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 15
      end
      object EditListeDomiciliationPieceTrouver: TEdit
        Left = 672
        Top = 216
        Width = 177
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 16
      end
      object EditListeNumPieceTrouver: TEdit
        Left = 672
        Top = 240
        Width = 177
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 17
      end
      object EditListeDateTrouver: TEdit
        Left = 672
        Top = 264
        Width = 177
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 18
      end
      object EditMemoLiseAvisTrouver: TMemo
        Left = 672
        Top = 288
        Width = 385
        Height = 73
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 19
      end
      object EditBaseAvisFichierConcerne: TComboBox
        Left = 808
        Top = 40
        Width = 193
        Height = 21
        BevelKind = bkFlat
        ItemHeight = 0
        TabOrder = 20
        Text = 'FAvis'
        OnKeyPress = EditBaseAvisFichierConcerneKeyPress
        OnSelect = EditBaseAvisFichierConcerneSelect
      end
      object RBAutoBaseAvisFichierConcerne: TCheckBox
        Left = 808
        Top = 64
        Width = 217
        Height = 17
        Caption = 'Changement auto-Fichier Concerne'
        Checked = True
        State = cbChecked
        TabOrder = 21
      end
      object EditOperationBaseAvisFichierTiersConserne: TEdit
        Left = 808
        Top = 16
        Width = 17
        Height = 19
        Color = clSilver
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 22
      end
      object EditAddBaseAvisFichierTiersConserne: TEdit
        Left = 824
        Top = 16
        Width = 177
        Height = 19
        Color = clSilver
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 23
      end
    end
  end
  object TimerEvolutionMarche: TTimer
    Enabled = False
    OnTimer = TimerEvolutionMarcheTimer
    Left = 1280
    Top = 32
  end
  object TimerClic: TTimer
    Enabled = False
    Interval = 200
    Left = 1280
    Top = 64
  end
  object TimerADDBaseAvisFichierConcerne: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerADDBaseAvisFichierConcerneTimer
    Left = 808
    Top = 24
  end
end
