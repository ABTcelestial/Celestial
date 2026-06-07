object FSRecapitulatifProjets: TFSRecapitulatifProjets
  Left = 0
  Top = 0
  Width = 1369
  Height = 730
  Caption = 'R'#233'capitulatif des projets'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PagePrincipale: TPageControl
    Left = 8
    Top = 8
    Width = 1337
    Height = 673
    ActivePage = PageRecapitulatif
    TabIndex = 0
    TabOrder = 0
    object PageRecapitulatif: TTabSheet
      Caption = '     R'#233'capitulatif     '
      OnShow = PageRecapitulatifShow
      object Bevel2: TBevel
        Left = 425
        Top = 0
        Width = 208
        Height = 105
      end
      object Label53: TLabel
        Left = 432
        Top = 31
        Width = 78
        Height = 13
        Alignment = taRightJustify
        Caption = 'Type de Proces:'
      end
      object Label52: TLabel
        Left = 432
        Top = 54
        Width = 81
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fichier consern'#233':'
      end
      object Bevel4: TBevel
        Left = 776
        Top = 0
        Width = 297
        Height = 41
      end
      object Bevel6: TBevel
        Left = 776
        Top = 64
        Width = 297
        Height = 41
      end
      object Bevel7: TBevel
        Left = 1080
        Top = 0
        Width = 241
        Height = 105
      end
      object AffichePrint: TPanel
        Left = 640
        Top = 0
        Width = 129
        Height = 105
        BevelInner = bvLowered
        TabOrder = 6
        object Bevel1: TBevel
          Left = 5
          Top = 5
          Width = 114
          Height = 94
        end
        object Bevel8: TBevel
          Left = 444
          Top = 5
          Width = 233
          Height = 96
        end
        object Bevel9: TBevel
          Left = 139
          Top = 5
          Width = 290
          Height = 32
        end
        object Bevel10: TBevel
          Left = 140
          Top = 69
          Width = 289
          Height = 31
        end
        object BitBtn1: TBitBtn
          Left = 14
          Top = 16
          Width = 97
          Height = 41
          Caption = 'Print !'
          TabOrder = 0
          OnClick = BitBtn1Click
          Kind = bkHelp
        end
        object RBOrientationPapierRecapitulatifProjets: TComboBox
          Left = 14
          Top = 64
          Width = 97
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          Ctl3D = False
          ItemHeight = 13
          ItemIndex = 0
          ParentCtl3D = False
          TabOrder = 1
          Text = 'Automatique'
          Items.Strings = (
            'Automatique'
            'Portrait'
            'Paysage')
        end
      end
      object EditColBeginEdit: TEdit
        Left = 1176
        Top = 40
        Width = 49
        Height = 19
        Color = clSilver
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 10
      end
      object EditCodeEditingTableauRecapitulatifProjets: TEdit
        Left = 0
        Top = 624
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 7
        OnKeyDown = EditCodeEditingTableauRecapitulatifProjetsKeyDown
      end
      object TableauProjetFinance: TStringGrid
        Left = 0
        Top = 0
        Width = 417
        Height = 105
        Color = 16777194
        Ctl3D = False
        DefaultColWidth = 50
        DefaultRowHeight = 18
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
        ParentCtl3D = False
        TabOrder = 0
        OnClick = TableauProjetFinanceClick
        OnDrawCell = TableauProjetFinanceDrawCell
        RowHeights = (
          18
          18)
      end
      object TableauRecapitulatifProjets: TStringGrid
        Left = 0
        Top = 112
        Width = 1321
        Height = 505
        Ctl3D = False
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goEditing]
        ParentCtl3D = False
        TabOrder = 1
        OnClick = TableauRecapitulatifProjetsClick
        OnContextPopup = TableauRecapitulatifProjetsContextPopup
        OnDrawCell = TableauRecapitulatifProjetsDrawCell
      end
      object EditRonStructure: TComboBox
        Left = 480
        Top = 4
        Width = 145
        Height = 21
        HelpType = htKeyword
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
        TabOrder = 2
        OnChange = EditRonStructureChange
      end
      object EditTiersTypeProces: TComboBox
        Left = 520
        Top = 27
        Width = 105
        Height = 21
        BevelKind = bkFlat
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 3
        Text = 'Commercial'
        Items.Strings = (
          'Commercial'
          'Paie'
          'Comptabilit'#233
          'Social')
      end
      object EditTiersFichierConserne: TComboBox
        Left = 520
        Top = 50
        Width = 105
        Height = 21
        BevelKind = bkFlat
        Ctl3D = True
        ItemHeight = 13
        ItemIndex = 0
        ParentCtl3D = False
        TabOrder = 4
        Text = 'FClient'
        Items.Strings = (
          'FClient')
      end
      object RBAfficheTiers: TCheckBox
        Left = 432
        Top = 84
        Width = 193
        Height = 17
        Caption = 'Affiche Tiers !'
        Checked = True
        State = cbChecked
        TabOrder = 5
        OnClick = RBAfficheTiersClick
      end
      object BitBtn3: TBitBtn
        Left = 784
        Top = 72
        Width = 281
        Height = 25
        Caption = 'Transformer en Fichier Excel'
        TabOrder = 8
        OnClick = BitBtn3Click
        Kind = bkHelp
      end
      object BitAfficheSource: TBitBtn
        Left = 1088
        Top = 40
        Width = 225
        Height = 25
        Caption = 'Afficher '#224' la source !'
        TabOrder = 9
        OnClick = BitAfficheSourceClick
        Kind = bkHelp
      end
      object BitBtn4: TBitBtn
        Left = 1088
        Top = 8
        Width = 225
        Height = 25
        Caption = 'Afficher la structure Projet'
        TabOrder = 11
        OnClick = BitBtn4Click
        Kind = bkHelp
      end
      object BitBtn6: TBitBtn
        Left = 1088
        Top = 72
        Width = 225
        Height = 25
        Caption = 'Afficher l'#39'analyse de donn'#233'es FT !'
        TabOrder = 12
        OnClick = BitBtn6Click
        Kind = bkHelp
      end
      object BitBtn7: TBitBtn
        Left = 784
        Top = 8
        Width = 281
        Height = 25
        Caption = 'Afficher les op'#233'rations d'#233'tail rubrique FT !'
        TabOrder = 13
        OnClick = BitBtn7Click
        Kind = bkHelp
      end
    end
    object PageOptions: TTabSheet
      Caption = '     Options     '
      ImageIndex = 1
      OnShow = PageOptionsShow
      object Bevel3: TBevel
        Left = 368
        Top = 184
        Width = 465
        Height = 41
      end
      object Bevel5: TBevel
        Left = 840
        Top = 184
        Width = 161
        Height = 41
      end
      object GroupBox1: TGroupBox
        Left = 8
        Top = 8
        Width = 345
        Height = 193
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
        end
      end
      object RBOKSurface: TCheckBox
        Left = 16
        Top = 168
        Width = 329
        Height = 17
        Caption = 'Indiquer la surface de la structure.'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object RadioGroup1: TRadioGroup
        Left = 368
        Top = 8
        Width = 465
        Height = 161
        Caption = 'Domaine '#224' inclure dans la r'#233'capitulatif !'
        TabOrder = 2
      end
      object RBInclurePlanificateur: TCheckBox
        Left = 384
        Top = 32
        Width = 305
        Height = 17
        Caption = 'Inclure Les registres Planificateurs !'
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object RBInclurePreselection: TCheckBox
        Left = 384
        Top = 64
        Width = 313
        Height = 17
        Caption = 'Inclure les registres Pr'#233's'#233'lection !'
        Checked = True
        State = cbChecked
        TabOrder = 4
      end
      object RBInclureAvisFinancier: TCheckBox
        Left = 384
        Top = 96
        Width = 313
        Height = 17
        Caption = 'Inclure les registres Avis financier !'
        TabOrder = 5
      end
      object RBInclureValeurProjetFinance: TCheckBox
        Left = 384
        Top = 128
        Width = 313
        Height = 17
        Caption = 'Inclure le registre Projet Finance (valeurs des structures)'
        TabOrder = 6
      end
      object TableauAnomalie: TStringGrid
        Left = 8
        Top = 232
        Width = 1313
        Height = 409
        Ctl3D = False
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
        ParentCtl3D = False
        TabOrder = 7
        OnClick = TableauAnomalieClick
        OnDrawCell = TableauAnomalieDrawCell
      end
      object EditColBeginEditAnomalie: TEdit
        Left = 8
        Top = 208
        Width = 33
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 8
      end
      object EditRonStructureAnomalie: TComboBox
        Left = 53
        Top = 207
        Width = 145
        Height = 21
        HelpType = htKeyword
        BevelInner = bvLowered
        BevelKind = bkFlat
        CharCase = ecLowerCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 0
        ParentFont = False
        TabOrder = 9
      end
      object BitBtn2: TBitBtn
        Left = 608
        Top = 192
        Width = 217
        Height = 25
        Caption = 'Afficher la planification '#224' la source !'
        TabOrder = 10
        OnClick = BitBtn2Click
        Kind = bkHelp
      end
      object BitBtn5: TBitBtn
        Left = 376
        Top = 192
        Width = 217
        Height = 25
        Caption = 'Afficher la pr'#233's'#233'lection '#224' la source !'
        TabOrder = 11
        OnClick = BitBtn5Click
        Kind = bkHelp
      end
      object BitCorrigerPreselection: TBitBtn
        Left = 848
        Top = 192
        Width = 145
        Height = 25
        Caption = 'Corriger la pr'#233's'#233'lection'
        TabOrder = 12
        OnClick = BitCorrigerPreselectionClick
        Kind = bkAll
      end
      object Panel2: TPanel
        Left = 840
        Top = 16
        Width = 113
        Height = 57
        BevelInner = bvLowered
        TabOrder = 13
        object Label49: TLabel
          Left = 8
          Top = 24
          Width = 74
          Height = 13
          Caption = 'Chiffre D'#233'cimal:'
        end
        object EditPartieDecimale: TEdit
          Left = 86
          Top = 19
          Width = 19
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          Text = '2'
        end
      end
    end
  end
end
