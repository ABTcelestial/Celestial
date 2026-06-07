object FSParametresAvances: TFSParametresAvances
  Left = 59
  Top = 24
  Width = 1239
  Height = 665
  Caption = 'Param'#232'tres avanc'#233's'
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
  object Panel17: TPanel
    Left = 208
    Top = 586
    Width = 361
    Height = 33
    BevelInner = bvLowered
    TabOrder = 1
    object EditCodeActivation: TEdit
      Left = 8
      Top = 6
      Width = 121
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = EditCodeActivationExit
      OnKeyUp = EditCodeActivationKeyUp
    end
    object EditNomPageShow: TEdit
      Left = 136
      Top = 6
      Width = 209
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
    end
  end
  object PagePrincipale: TPageControl
    Left = 8
    Top = 8
    Width = 1209
    Height = 617
    ActivePage = PageAutresParametres
    TabIndex = 7
    TabOrder = 0
    object PageTempsAlertesAvantAction: TTabSheet
      Caption = '  Temps d'#39'alerte avant action !  '
      OnShow = PageTempsAlertesAvantActionShow
      object TableauTempsAlertesAvantAction: TStringGrid
        Left = 0
        Top = 48
        Width = 1201
        Height = 441
        Ctl3D = False
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
        ParentCtl3D = False
        TabOrder = 0
        OnClick = TableauTempsAlertesAvantActionClick
        OnKeyPress = TableauTempsAlertesAvantActionKeyPress
        RowHeights = (
          24
          24)
      end
      object AfficheOperationTempsAlerte: TPanel
        Left = 328
        Top = 112
        Width = 481
        Height = 129
        TabOrder = 1
        Visible = False
        object Label1: TLabel
          Left = 16
          Top = 19
          Width = 57
          Height = 13
          Caption = 'TypeProces'
        end
        object Label2: TLabel
          Left = 16
          Top = 43
          Width = 91
          Height = 13
          Caption = 'ActionSourceAlerte'
        end
        object Label3: TLabel
          Left = 16
          Top = 67
          Width = 89
          Height = 13
          Caption = 'ValeurTempsAlerte'
        end
        object Label4: TLabel
          Left = 16
          Top = 91
          Width = 84
          Height = 13
          Caption = 'UniteTempsAlerte'
        end
        object Bevel1: TBevel
          Left = 8
          Top = 8
          Width = 353
          Height = 113
        end
        object Bevel2: TBevel
          Left = 368
          Top = 8
          Width = 105
          Height = 57
        end
        object Bevel3: TBevel
          Left = 368
          Top = 80
          Width = 105
          Height = 41
        end
        object EditTypeProces: TComboBox
          Left = 120
          Top = 16
          Width = 233
          Height = 21
          Ctl3D = False
          ItemHeight = 13
          ItemIndex = 0
          ParentCtl3D = False
          TabOrder = 0
          Text = 'BusinessProces'
          OnKeyDown = EditTypeProcesKeyDown
          Items.Strings = (
            'BusinessProces'
            'GesProces'
            'PaieProces'
            'ComptaProces')
        end
        object EditActionSourceAlerte: TComboBox
          Left = 120
          Top = 40
          Width = 233
          Height = 21
          Ctl3D = False
          ItemHeight = 13
          ItemIndex = 0
          ParentCtl3D = False
          TabOrder = 1
          Text = 'Fiche de Saisie commerciale'
          OnKeyDown = EditActionSourceAlerteKeyDown
          Items.Strings = (
            'Fiche de Saisie commerciale')
        end
        object EditValeurTempsAlerte: TEdit
          Left = 120
          Top = 64
          Width = 65
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          Text = '0'
          OnKeyDown = EditValeurTempsAlerteKeyDown
          OnKeyPress = EditValeurTempsAlerteKeyPress
        end
        object EditUniteTempsAlerte: TComboBox
          Left = 120
          Top = 88
          Width = 65
          Height = 21
          Ctl3D = False
          ItemHeight = 13
          ItemIndex = 0
          ParentCtl3D = False
          TabOrder = 3
          Text = 'Jour'
          OnKeyDown = EditUniteTempsAlerteKeyDown
          Items.Strings = (
            'Jour'
            'Mois'
            'Ann'#233'e')
        end
        object BitOperationAlerte: TBitBtn
          Left = 376
          Top = 16
          Width = 89
          Height = 41
          Caption = 'Valider'
          TabOrder = 4
          OnClick = BitOperationAlerteClick
          Kind = bkAll
        end
        object BitAnnulerAlerte: TBitBtn
          Left = 376
          Top = 88
          Width = 89
          Height = 25
          TabOrder = 5
          OnClick = BitAnnulerAlerteClick
          Kind = bkCancel
        end
        object IncrimentEditValeurTempsAlerte: TUpDown
          Left = 185
          Top = 64
          Width = 16
          Height = 19
          Associate = EditValeurTempsAlerte
          Min = 0
          Max = 1000
          Position = 0
          TabOrder = 6
          Wrap = False
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1201
        Height = 41
        BevelInner = bvLowered
        TabOrder = 2
      end
    end
    object PageDataEntreprise: TTabSheet
      Hint = '2'
      Caption = '  Param'#232'tres data entreprise  '
      ImageIndex = 1
      object PageControl1: TPageControl
        Left = 0
        Top = 0
        Width = 1197
        Height = 585
        ActivePage = PageParametresMenu
        TabIndex = 4
        TabOrder = 0
        object PageOrganismeTutel: TTabSheet
          Caption = '     Organismes Tutelle     '
          OnShow = PageOrganismeTutelShow
          object TableauOrganismeTutelle: TStringGrid
            Left = 0
            Top = 56
            Width = 1185
            Height = 497
            Ctl3D = False
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
            ParentCtl3D = False
            TabOrder = 0
            OnClick = TableauOrganismeTutelleClick
            OnKeyPress = TableauOrganismeTutelleKeyPress
          end
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 1185
            Height = 49
            BevelInner = bvLowered
            TabOrder = 1
          end
          object AfficheOperationOrganismeTutelle: TPanel
            Left = 296
            Top = 152
            Width = 529
            Height = 97
            BevelInner = bvLowered
            TabOrder = 2
            Visible = False
            object Bevel7: TBevel
              Left = 8
              Top = 8
              Width = 385
              Height = 57
            end
            object Label8: TLabel
              Left = 88
              Top = 20
              Width = 14
              Height = 13
              Caption = 'P'#176':'
            end
            object Label9: TLabel
              Left = 64
              Top = 44
              Width = 36
              Height = 13
              Caption = 'Intitull'#233':'
            end
            object Bevel8: TBevel
              Left = 400
              Top = 8
              Width = 121
              Height = 41
            end
            object Bevel9: TBevel
              Left = 400
              Top = 48
              Width = 121
              Height = 41
            end
            object EditPositionOrganismeTutelle: TEdit
              Left = 112
              Top = 16
              Width = 41
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 0
            end
            object EditNomOrganismeTutelle: TEdit
              Left = 112
              Top = 40
              Width = 273
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 1
              OnKeyDown = EditNomOrganismeTutelleKeyDown
            end
            object BitOperationOrganismeTutelle: TBitBtn
              Left = 408
              Top = 16
              Width = 105
              Height = 25
              TabOrder = 2
              OnClick = BitOperationOrganismeTutelleClick
              Kind = bkAll
            end
            object BitBtn7: TBitBtn
              Left = 408
              Top = 56
              Width = 105
              Height = 25
              TabOrder = 3
              OnClick = BitBtn7Click
              Kind = bkCancel
            end
          end
        end
        object TabSheet6: TTabSheet
          Caption = '     Base des identificateurs entreprise     '
          ImageIndex = 1
          OnShow = TabSheet6Show
          object TableauIdentificateurEnttreprise: TStringGrid
            Left = 0
            Top = 56
            Width = 1185
            Height = 497
            Ctl3D = False
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
            ParentCtl3D = False
            TabOrder = 0
            OnClick = TableauIdentificateurEnttrepriseClick
            OnKeyPress = TableauIdentificateurEnttrepriseKeyPress
          end
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 1185
            Height = 49
            BevelInner = bvLowered
            TabOrder = 1
            object EditListeOrganismeTutelle: TComboBox
              Left = 1000
              Top = 16
              Width = 169
              Height = 21
              BevelInner = bvLowered
              BevelKind = bkFlat
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 0
              Text = 'Tous'
              OnChange = EditListeOrganismeTutelleChange
              OnKeyPress = EditListeOrganismeTutelleKeyPress
              Items.Strings = (
                'Tous'
                'IMP'#214'T'
                'CNAS'
                'CACOBATPH'
                'CASNOS'
                'BANQUE'
                'MINISTRE HABITAT'
                'FOND DE GARANTIE')
            end
          end
          object AfficheOperationIdentificateurEnttreprise: TPanel
            Left = 304
            Top = 144
            Width = 529
            Height = 97
            BevelInner = bvLowered
            TabOrder = 2
            Visible = False
            object Label5: TLabel
              Left = 88
              Top = 20
              Width = 14
              Height = 13
              Caption = 'P'#176':'
            end
            object Label6: TLabel
              Left = 64
              Top = 44
              Width = 36
              Height = 13
              Caption = 'Intitull'#233':'
            end
            object Label7: TLabel
              Left = 17
              Top = 68
              Width = 84
              Height = 13
              Caption = 'Organisme tutelle:'
            end
            object Bevel4: TBevel
              Left = 8
              Top = 8
              Width = 385
              Height = 81
            end
            object Bevel5: TBevel
              Left = 400
              Top = 8
              Width = 121
              Height = 41
            end
            object Bevel6: TBevel
              Left = 400
              Top = 48
              Width = 121
              Height = 41
            end
            object EditPositionIdentificateur: TEdit
              Left = 112
              Top = 16
              Width = 41
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 0
            end
            object BitOperationIdentificateur: TBitBtn
              Left = 408
              Top = 16
              Width = 105
              Height = 25
              TabOrder = 1
              OnClick = BitOperationIdentificateurClick
              Kind = bkAll
            end
            object BitBtn2: TBitBtn
              Left = 408
              Top = 56
              Width = 105
              Height = 25
              TabOrder = 2
              OnClick = BitBtn2Click
              Kind = bkCancel
            end
            object EditOrganismeTutelle: TComboBox
              Left = 112
              Top = 63
              Width = 273
              Height = 21
              BevelInner = bvLowered
              BevelKind = bkFlat
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 3
              Text = 'Tous'
              OnKeyDown = EditOrganismeTutelleKeyDown
              OnKeyPress = EditOrganismeTutelleKeyPress
              Items.Strings = (
                'Tous'
                'IMP'#214'T'
                'CNAS'
                'CACOBATPH'
                'CASNOS'
                'BANQUE'
                'MINISTRE HABITAT'
                'FOND DE GARANTIE')
            end
            object EditIntitulleIdentificateur: TComboBox
              Left = 112
              Top = 39
              Width = 273
              Height = 21
              BevelInner = bvLowered
              BevelKind = bkFlat
              ItemHeight = 13
              TabOrder = 4
              Items.Strings = (
                'N'#176' R.C.'
                'N'#176' Agr'#233'ment'
                'N'#176' ITNPI'
                'N'#176' Permis de Const. P01'
                'N'#176' Convention Pr'#234't P01')
            end
          end
        end
        object TabSheet7: TTabSheet
          Caption = '     Donn'#233'es Identificateurs Entreprise     '
          ImageIndex = 2
          OnShow = TabSheet7Show
          object TableauDataIdentificateurEnttreprise: TStringGrid
            Left = 0
            Top = 56
            Width = 1185
            Height = 497
            Ctl3D = False
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
            ParentCtl3D = False
            TabOrder = 0
            OnClick = TableauDataIdentificateurEnttrepriseClick
            OnKeyPress = TableauDataIdentificateurEnttrepriseKeyPress
          end
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 1185
            Height = 49
            BevelInner = bvLowered
            TabOrder = 1
          end
          object AfficheOperationDataIdentificateurEnttreprise: TPanel
            Left = 312
            Top = 128
            Width = 529
            Height = 97
            BevelInner = bvLowered
            TabOrder = 2
            Visible = False
            object Bevel10: TBevel
              Left = 8
              Top = 8
              Width = 385
              Height = 81
            end
            object Label10: TLabel
              Left = 80
              Top = 20
              Width = 14
              Height = 13
              Caption = 'P'#176':'
            end
            object Label11: TLabel
              Left = 32
              Top = 44
              Width = 64
              Height = 13
              Caption = 'Identificateur:'
            end
            object Label12: TLabel
              Left = 9
              Top = 68
              Width = 90
              Height = 13
              Caption = 'Data Identificateur:'
            end
            object Bevel11: TBevel
              Left = 400
              Top = 8
              Width = 121
              Height = 41
            end
            object Bevel12: TBevel
              Left = 400
              Top = 48
              Width = 121
              Height = 41
            end
            object EditPositionDataIdentificateur: TEdit
              Left = 112
              Top = 16
              Width = 41
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 0
            end
            object EditDataIdentificateur: TEdit
              Left = 112
              Top = 64
              Width = 273
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 1
              OnKeyDown = EditDataIdentificateurKeyDown
            end
            object BitOperationDataIdentificateurEnttreprise: TBitBtn
              Left = 408
              Top = 16
              Width = 105
              Height = 25
              TabOrder = 2
              OnClick = BitOperationDataIdentificateurEnttrepriseClick
              Kind = bkAll
            end
            object BitBtn1: TBitBtn
              Left = 408
              Top = 56
              Width = 105
              Height = 25
              TabOrder = 3
              OnClick = BitBtn1Click
              Kind = bkCancel
            end
            object EditListeIntitulleIdentificateur: TComboBox
              Left = 112
              Top = 39
              Width = 273
              Height = 21
              BevelInner = bvLowered
              BevelKind = bkFlat
              ItemHeight = 0
              TabOrder = 4
              OnKeyDown = EditListeIntitulleIdentificateurKeyDown
              OnKeyPress = EditListeIntitulleIdentificateurKeyPress
            end
            object RBRemplacement: TCheckBox
              Left = 256
              Top = 16
              Width = 97
              Height = 17
              Caption = 'Remplacement'
              TabOrder = 5
            end
          end
        end
        object TabSheet8: TTabSheet
          Caption = '     En-T'#234'te     '
          ImageIndex = 3
          object TableauEnTete: TStringGrid
            Left = 0
            Top = 48
            Width = 1185
            Height = 505
            Ctl3D = False
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
            ParentCtl3D = False
            TabOrder = 0
          end
          object TypeFormuleAfficher: TPanel
            Left = 0
            Top = 3
            Width = 1185
            Height = 39
            BevelWidth = 3
            Color = 8454143
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = TypeFormuleAfficherClick
            object EditCodeTypeFormuleAfficher: TEdit
              Left = 1056
              Top = 8
              Width = 121
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 0
            end
          end
          object TableauTypeFormule: TStringGrid
            Left = 376
            Top = 64
            Width = 465
            Height = 240
            ColCount = 4
            Ctl3D = False
            DefaultColWidth = 40
            DefaultRowHeight = 20
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goAlwaysShowEditor]
            ParentCtl3D = False
            TabOrder = 2
            Visible = False
            OnDblClick = TableauTypeFormuleDblClick
            ColWidths = (
              40
              2
              40
              40)
          end
        end
        object PageParametresMenu: TTabSheet
          Caption = '     Configuration Menu     '
          ImageIndex = 4
          OnShow = PageParametresMenuShow
          object Bevel40: TBevel
            Left = 0
            Top = 0
            Width = 209
            Height = 97
          end
          object Bevel42: TBevel
            Left = 0
            Top = 144
            Width = 209
            Height = 97
          end
          object Bevel45: TBevel
            Left = 0
            Top = 264
            Width = 209
            Height = 97
          end
          object TableauRubriquesSousMenu: TStringGrid
            Left = 216
            Top = 0
            Width = 969
            Height = 553
            Ctl3D = False
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
            ParentCtl3D = False
            TabOrder = 0
            OnClick = TableauRubriquesSousMenuClick
            OnKeyDown = TableauRubriquesSousMenuKeyDown
            OnKeyPress = TableauRubriquesSousMenuKeyPress
          end
          object AfficherTableauSousMenu: TPanel
            Left = 360
            Top = 64
            Width = 657
            Height = 457
            BevelInner = bvLowered
            TabOrder = 1
            Visible = False
            object Bevel43: TBevel
              Left = 8
              Top = 8
              Width = 105
              Height = 41
            end
            object Bevel44: TBevel
              Left = 440
              Top = 8
              Width = 209
              Height = 41
            end
            object TableauSousMenu: TStringGrid
              Left = 8
              Top = 56
              Width = 641
              Height = 393
              Ctl3D = False
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
              ParentCtl3D = False
              TabOrder = 0
              OnClick = TableauSousMenuClick
              OnDblClick = TableauSousMenuDblClick
              OnKeyDown = TableauSousMenuKeyDown
            end
            object EditIndexe0: TEdit
              Left = 496
              Top = 19
              Width = 25
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 1
            end
            object EditIndexe1: TEdit
              Left = 520
              Top = 19
              Width = 25
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 2
            end
            object EditIndexe2: TEdit
              Left = 544
              Top = 19
              Width = 25
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 3
            end
            object EditIndexe3: TEdit
              Left = 568
              Top = 19
              Width = 25
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 4
            end
            object EditIndexe4: TEdit
              Left = 592
              Top = 19
              Width = 25
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 5
            end
            object EditIndexe5: TEdit
              Left = 616
              Top = 19
              Width = 25
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 6
            end
            object EditOrdreMenu: TEdit
              Left = 448
              Top = 19
              Width = 25
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 7
            end
            object BitBtn21: TBitBtn
              Left = 16
              Top = 16
              Width = 89
              Height = 25
              Caption = 'Raffrichir'
              TabOrder = 8
              OnClick = BitBtn21Click
              Kind = bkRetry
            end
          end
          object BitBtn19: TBitBtn
            Left = 8
            Top = 8
            Width = 193
            Height = 81
            Caption = 'Afficher le Menu'
            TabOrder = 2
            OnClick = BitBtn19Click
            Kind = bkHelp
          end
          object AfficherTableauRubriquesSousMenu: TPanel
            Left = 448
            Top = 160
            Width = 481
            Height = 217
            BevelInner = bvLowered
            TabOrder = 3
            Visible = False
            object Bevel38: TBevel
              Left = 8
              Top = 8
              Width = 321
              Height = 81
            end
            object Label35: TLabel
              Left = 24
              Top = 18
              Width = 40
              Height = 13
              Caption = 'Position:'
            end
            object Label36: TLabel
              Left = 24
              Top = 41
              Width = 25
              Height = 13
              Caption = 'Nom:'
            end
            object Label38: TLabel
              Left = 24
              Top = 66
              Width = 48
              Height = 13
              Caption = 'Affichage:'
            end
            object Bevel39: TBevel
              Left = 336
              Top = 128
              Width = 137
              Height = 81
            end
            object Bevel41: TBevel
              Left = 336
              Top = 8
              Width = 137
              Height = 41
            end
            object EditPosition0RubriquesSousMenu: TEdit
              Left = 80
              Top = 15
              Width = 25
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 0
            end
            object EditNomRubriquesSousMenus: TEdit
              Left = 80
              Top = 39
              Width = 241
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 1
            end
            object EditAffichageRubriquesSousMenus: TEdit
              Left = 80
              Top = 63
              Width = 241
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 2
            end
            object BitAfficherTableauRubriquesSousMenu: TBitBtn
              Left = 344
              Top = 136
              Width = 121
              Height = 65
              Caption = 'Valider'
              TabOrder = 3
              OnClick = BitAfficherTableauRubriquesSousMenuClick
              Kind = bkAll
            end
            object BitBtn18: TBitBtn
              Left = 344
              Top = 16
              Width = 121
              Height = 25
              TabOrder = 4
              OnClick = BitBtn18Click
              Kind = bkCancel
            end
            object EditPosition1RubriquesSousMenu: TEdit
              Left = 104
              Top = 15
              Width = 25
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 5
            end
            object EditPosition2RubriquesSousMenu: TEdit
              Left = 128
              Top = 15
              Width = 25
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 6
            end
            object EditPosition3RubriquesSousMenu: TEdit
              Left = 152
              Top = 15
              Width = 25
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 7
            end
            object EditPosition4RubriquesSousMenu: TEdit
              Left = 176
              Top = 15
              Width = 25
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 8
            end
            object EditPosition5RubriquesSousMenu: TEdit
              Left = 200
              Top = 15
              Width = 25
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 9
            end
            object AfficherEnabelTableauRubriquesSousMenu: TPanel
              Left = 8
              Top = 96
              Width = 321
              Height = 113
              TabOrder = 10
              object Label39: TLabel
                Left = 8
                Top = 10
                Width = 85
                Height = 13
                Caption = 'Nouvel Affichage:'
              end
              object EditNouvelAffichageRubriquesSousMenus: TEdit
                Left = 96
                Top = 6
                Width = 217
                Height = 19
                Ctl3D = False
                ParentCtl3D = False
                TabOrder = 0
              end
              object RadioGroup17: TRadioGroup
                Left = 8
                Top = 32
                Width = 305
                Height = 73
                Caption = 'Visibilit'#233':'
                TabOrder = 1
              end
              object RBActiveRubriquesSousMenus: TRadioButton
                Left = 96
                Top = 48
                Width = 89
                Height = 17
                Caption = 'Visible'
                TabOrder = 2
              end
              object RBNonActiveRubriquesSousMenus: TRadioButton
                Left = 96
                Top = 72
                Width = 89
                Height = 17
                Caption = 'Non Visible'
                TabOrder = 3
              end
            end
            object EditPositionRubriqueSousMenu: TEdit
              Left = 296
              Top = 15
              Width = 25
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 11
            end
          end
          object RBModificationOpere: TCheckBox
            Left = 8
            Top = 112
            Width = 137
            Height = 17
            Caption = 'Modification Op'#233'r'#233's'
            Enabled = False
            TabOrder = 4
          end
          object BitBtn17: TBitBtn
            Left = 8
            Top = 152
            Width = 193
            Height = 81
            Caption = 'Appliquer les modifications'
            TabOrder = 5
            OnClick = BitBtn17Click
            Kind = bkAll
          end
          object BitBtn20: TBitBtn
            Left = 8
            Top = 272
            Width = 193
            Height = 81
            Caption = 'Red'#233'marrer en mode Fondateur'
            TabOrder = 6
            OnClick = BitBtn20Click
            Kind = bkRetry
          end
        end
        object PageIntituleImprime: TTabSheet
          Caption = '     Intitul'#233' des imprim'#233's     '
          ImageIndex = 5
          OnShow = PageIntituleImprimeShow
          object TableauIntituleImprime: TStringGrid
            Left = 0
            Top = 0
            Width = 729
            Height = 545
            Ctl3D = False
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
            ParentCtl3D = False
            TabOrder = 0
            OnClick = TableauIntituleImprimeClick
            OnKeyPress = TableauIntituleImprimeKeyPress
          end
          object AfficheTableauIntituleImprime: TPanel
            Left = 24
            Top = 128
            Width = 665
            Height = 121
            BevelInner = bvLowered
            TabOrder = 1
            Visible = False
            object Bevel48: TBevel
              Left = 7
              Top = 8
              Width = 554
              Height = 105
            end
            object Bevel46: TBevel
              Left = 568
              Top = 8
              Width = 90
              Height = 41
            end
            object Bevel47: TBevel
              Left = 567
              Top = 56
              Width = 90
              Height = 57
            end
            object Label40: TLabel
              Left = 16
              Top = 19
              Width = 14
              Height = 13
              Caption = 'P'#176':'
            end
            object Label41: TLabel
              Left = 16
              Top = 43
              Width = 82
              Height = 13
              Caption = 'Nom de l'#39'imprim'#233':'
            end
            object Label42: TLabel
              Left = 16
              Top = 67
              Width = 81
              Height = 13
              Caption = 'Titre de l'#39'imprim'#233':'
            end
            object Label43: TLabel
              Left = 16
              Top = 91
              Width = 108
              Height = 13
              Caption = 'Sous Titre de l'#39'imprim'#233':'
            end
            object BitBtn22: TBitBtn
              Left = 576
              Top = 16
              Width = 75
              Height = 25
              TabOrder = 0
              OnClick = BitBtn22Click
              Kind = bkCancel
            end
            object BitAfficheTableauIntituleImprime: TBitBtn
              Left = 576
              Top = 64
              Width = 75
              Height = 41
              Caption = 'Valider'
              TabOrder = 1
              OnClick = BitAfficheTableauIntituleImprimeClick
              Kind = bkAll
            end
            object EditPositionIntituleImprime: TEdit
              Left = 128
              Top = 16
              Width = 25
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 2
            end
            object EditTitreImprime: TEdit
              Left = 128
              Top = 64
              Width = 425
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 3
              OnKeyDown = EditTitreImprimeKeyDown
            end
            object EditNomImprime: TEdit
              Left = 128
              Top = 40
              Width = 265
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 4
              OnEnter = EditNomImprimeEnter
              OnKeyDown = EditNomImprimeKeyDown
            end
            object EditSousTitreImprime: TEdit
              Left = 128
              Top = 88
              Width = 425
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 5
              OnKeyDown = EditSousTitreImprimeKeyDown
            end
          end
          object TableauListeImprimes: TStringGrid
            Left = 272
            Top = 264
            Width = 457
            Height = 289
            Ctl3D = False
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
            ParentCtl3D = False
            TabOrder = 2
            Visible = False
            OnKeyDown = TableauListeImprimesKeyDown
          end
          object TableauImprime: TStringGrid
            Left = 744
            Top = 0
            Width = 441
            Height = 545
            Ctl3D = False
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
            ParentCtl3D = False
            TabOrder = 3
            OnClick = TableauImprimeClick
            OnKeyPress = TableauImprimeKeyPress
          end
          object AfficheTableauImprime: TPanel
            Left = 776
            Top = 120
            Width = 385
            Height = 121
            BevelInner = bvLowered
            TabOrder = 4
            Visible = False
            object Bevel49: TBevel
              Left = 7
              Top = 56
              Width = 370
              Height = 57
            end
            object Bevel50: TBevel
              Left = 8
              Top = 8
              Width = 90
              Height = 41
            end
            object Bevel51: TBevel
              Left = 287
              Top = 8
              Width = 90
              Height = 41
            end
            object Label44: TLabel
              Left = 16
              Top = 67
              Width = 14
              Height = 13
              Caption = 'P'#176':'
            end
            object NomImprime: TLabel
              Left = 16
              Top = 91
              Width = 81
              Height = 13
              Caption = 'Titre de l'#39'imprim'#233':'
            end
            object BitBtn23: TBitBtn
              Left = 16
              Top = 16
              Width = 75
              Height = 25
              TabOrder = 0
              OnClick = BitBtn23Click
              Kind = bkCancel
            end
            object BitAfficheTableauImprime: TBitBtn
              Left = 296
              Top = 16
              Width = 75
              Height = 25
              Caption = 'Valider'
              TabOrder = 1
              OnClick = BitAfficheTableauImprimeClick
              Kind = bkAll
            end
            object EditPositionImprime: TEdit
              Left = 128
              Top = 64
              Width = 25
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 2
            end
            object EditNamImprime: TEdit
              Left = 128
              Top = 88
              Width = 241
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 3
              OnKeyDown = EditNamImprimeKeyDown
            end
          end
        end
        object TabSheet1: TTabSheet
          Caption = '     Bas de Page     '
          ImageIndex = 6
          OnShow = TabSheet1Show
          object Bevel52: TBevel
            Left = 0
            Top = 8
            Width = 137
            Height = 50
          end
          object Bevel53: TBevel
            Left = 0
            Top = 64
            Width = 137
            Height = 50
          end
          object BitBtn24: TBitBtn
            Left = 8
            Top = 72
            Width = 121
            Height = 33
            Caption = 'Voir ...'
            TabOrder = 0
            OnClick = BitBtn24Click
            Kind = bkHelp
          end
          object BitBtn25: TBitBtn
            Left = 8
            Top = 16
            Width = 121
            Height = 33
            Caption = 'Valider'
            TabOrder = 1
            OnClick = BitBtn25Click
            Kind = bkAll
          end
          object EditBasPage: TMemo
            Left = 144
            Top = 8
            Width = 801
            Height = 105
            Alignment = taCenter
            BevelInner = bvNone
            BevelKind = bkFlat
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
        end
      end
    end
    object PageBaseDonneesStock: TTabSheet
      Caption = '  Param'#232'tres Base de donn'#233'es Stock  '
      ImageIndex = 2
      OnShow = PageBaseDonneesStockShow
      object Bevel13: TBevel
        Left = 592
        Top = 8
        Width = 297
        Height = 65
      end
      object Bevel14: TBevel
        Left = 592
        Top = 80
        Width = 297
        Height = 65
      end
      object AfficheCreationStockLibre: TPanel
        Left = 8
        Top = 8
        Width = 577
        Height = 65
        BevelInner = bvLowered
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object RadioGroup1: TRadioGroup
          Left = 8
          Top = 8
          Width = 561
          Height = 49
          Caption = 'Cr'#233'ation des stock par structures'
          TabOrder = 0
        end
        object RBCreationStockDupliquer: TRadioButton
          Left = 16
          Top = 32
          Width = 225
          Height = 17
          Caption = 'Cr'#233'ation de stock structure par duplication'
          TabOrder = 1
        end
        object RBCreationStockLibre: TRadioButton
          Left = 296
          Top = 32
          Width = 193
          Height = 17
          Caption = 'Cr'#233'ation libre par structures'
          TabOrder = 2
        end
      end
      object BitValideBaseDonneesStock: TBitBtn
        Left = 600
        Top = 16
        Width = 281
        Height = 49
        Caption = 'Valider'
        TabOrder = 1
        OnClick = BitValideBaseDonneesStockClick
        Kind = bkAll
      end
      object AfficheStockSpecifierParStructure: TPanel
        Left = 8
        Top = 80
        Width = 577
        Height = 65
        BevelInner = bvLowered
        TabOrder = 2
        object RadioGroup2: TRadioGroup
          Left = 8
          Top = 8
          Width = 561
          Height = 49
          Caption = 'Cr'#233'ation des stock par structures'
          TabOrder = 0
        end
        object RBStockSpecifierParStructure: TRadioButton
          Left = 296
          Top = 32
          Width = 225
          Height = 17
          Caption = 'Sp'#233'cifier le stock pour chaque structure !'
          TabOrder = 1
        end
        object RBStockCummunToutesStructures: TRadioButton
          Left = 16
          Top = 32
          Width = 265
          Height = 17
          Caption = 'Utilis'#233' le stock commun pour toutes les structures !'
          TabOrder = 2
        end
      end
      object TableauListeBaseStock: TStringGrid
        Left = 8
        Top = 192
        Width = 577
        Height = 209
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        OnClick = TableauListeBaseStockClick
        OnDblClick = TableauListeBaseStockDblClick
      end
      object Panel6: TPanel
        Left = 8
        Top = 152
        Width = 577
        Height = 33
        BevelInner = bvLowered
        Caption = 'Liste des base de donn'#233'es stock'
        TabOrder = 4
      end
      object Panel7: TPanel
        Left = 592
        Top = 192
        Width = 185
        Height = 73
        BevelInner = bvLowered
        TabOrder = 5
        object BitActiveAlerteStockLimite: TBitBtn
          Left = 8
          Top = 8
          Width = 169
          Height = 25
          TabOrder = 0
          OnClick = BitActiveAlerteStockLimiteClick
          Kind = bkHelp
        end
        object RBActiveStockLimite: TCheckBox
          Left = 8
          Top = 48
          Width = 169
          Height = 17
          Caption = '.....'
          TabOrder = 1
        end
      end
    end
    object PageTitreDataTiers: TTabSheet
      Caption = '  Data Tiers  '
      ImageIndex = 3
      object Bevel17: TBevel
        Left = 8
        Top = 8
        Width = 625
        Height = 33
      end
      object Label53: TLabel
        Left = 16
        Top = 19
        Width = 78
        Height = 13
        Alignment = taRightJustify
        Caption = 'Type de Proces:'
      end
      object TitreEditTiersFichierConserne: TLabel
        Left = 296
        Top = 19
        Width = 81
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fichier consern'#233':'
      end
      object Bevel19: TBevel
        Left = 640
        Top = 8
        Width = 250
        Height = 33
      end
      object RBEtatCopier: TCheckBox
        Left = 712
        Top = 16
        Width = 97
        Height = 17
        Caption = 'RBEtatCopier'
        TabOrder = 6
      end
      object AfficheOperationTitreDataTiersCopie: TPanel
        Left = 536
        Top = 56
        Width = 353
        Height = 177
        BevelInner = bvLowered
        TabOrder = 4
        Visible = False
        object Bevel18: TBevel
          Left = 8
          Top = 8
          Width = 337
          Height = 161
        end
        object Label20: TLabel
          Left = 24
          Top = 27
          Width = 53
          Height = 13
          Caption = 'TitreData1:'
        end
        object Label21: TLabel
          Left = 24
          Top = 51
          Width = 53
          Height = 13
          Caption = 'TitreData2:'
        end
        object Label22: TLabel
          Left = 24
          Top = 75
          Width = 53
          Height = 13
          Caption = 'TitreData3:'
        end
        object Label23: TLabel
          Left = 24
          Top = 99
          Width = 53
          Height = 13
          Caption = 'TitreData4:'
        end
        object Label24: TLabel
          Left = 24
          Top = 123
          Width = 53
          Height = 13
          Caption = 'TitreData5:'
        end
        object Label25: TLabel
          Left = 24
          Top = 147
          Width = 53
          Height = 13
          Caption = 'TitreData6:'
        end
        object EditTitreData1Copie: TEdit
          Left = 80
          Top = 24
          Width = 121
          Height = 19
          Ctl3D = False
          MaxLength = 20
          ParentCtl3D = False
          TabOrder = 0
        end
        object RBCOTitreData1Copie: TCheckBox
          Left = 216
          Top = 24
          Width = 121
          Height = 17
          Caption = 'Champs obligatoire'
          TabOrder = 1
        end
        object RBCOTitreData2Copie: TCheckBox
          Left = 216
          Top = 48
          Width = 121
          Height = 17
          Caption = 'Champs obligatoire'
          TabOrder = 2
        end
        object EditTitreData2Copie: TEdit
          Left = 80
          Top = 48
          Width = 121
          Height = 19
          Ctl3D = False
          MaxLength = 20
          ParentCtl3D = False
          TabOrder = 3
        end
        object RBCOTitreData3Copie: TCheckBox
          Left = 216
          Top = 72
          Width = 121
          Height = 17
          Caption = 'Champs obligatoire'
          TabOrder = 4
        end
        object EditTitreData3Copie: TEdit
          Left = 80
          Top = 72
          Width = 121
          Height = 19
          Ctl3D = False
          MaxLength = 20
          ParentCtl3D = False
          TabOrder = 5
        end
        object RBCOTitreData4Copie: TCheckBox
          Left = 216
          Top = 96
          Width = 121
          Height = 17
          Caption = 'Champs obligatoire'
          TabOrder = 6
        end
        object EditTitreData4Copie: TEdit
          Left = 80
          Top = 96
          Width = 121
          Height = 19
          Ctl3D = False
          MaxLength = 20
          ParentCtl3D = False
          TabOrder = 7
        end
        object RBCOTitreData5Copie: TCheckBox
          Left = 216
          Top = 120
          Width = 121
          Height = 17
          Caption = 'Champs obligatoire'
          TabOrder = 8
        end
        object EditTitreData5Copie: TEdit
          Left = 80
          Top = 120
          Width = 121
          Height = 19
          Ctl3D = False
          MaxLength = 20
          ParentCtl3D = False
          TabOrder = 9
        end
        object RBCOTitreData6Copie: TCheckBox
          Left = 216
          Top = 144
          Width = 121
          Height = 17
          Caption = 'Champs obligatoire'
          TabOrder = 10
        end
        object EditTitreData6Copie: TEdit
          Left = 80
          Top = 144
          Width = 121
          Height = 19
          Ctl3D = False
          MaxLength = 20
          ParentCtl3D = False
          TabOrder = 11
        end
      end
      object TableauTitreDataTiers: TStringGrid
        Left = 8
        Top = 48
        Width = 1193
        Height = 441
        Ctl3D = False
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
        ParentCtl3D = False
        TabOrder = 0
        OnClick = TableauTitreDataTiersClick
        OnKeyPress = TableauTitreDataTiersKeyPress
      end
      object AfficheOperationTitreDataTiers: TPanel
        Left = 392
        Top = 88
        Width = 353
        Height = 249
        BevelInner = bvLowered
        TabOrder = 1
        Visible = False
        object Bevel16: TBevel
          Left = 8
          Top = 56
          Width = 337
          Height = 185
        end
        object Label14: TLabel
          Left = 24
          Top = 99
          Width = 53
          Height = 13
          Caption = 'TitreData1:'
        end
        object Label15: TLabel
          Left = 24
          Top = 123
          Width = 53
          Height = 13
          Caption = 'TitreData2:'
        end
        object Label16: TLabel
          Left = 24
          Top = 147
          Width = 53
          Height = 13
          Caption = 'TitreData3:'
        end
        object Label17: TLabel
          Left = 24
          Top = 171
          Width = 53
          Height = 13
          Caption = 'TitreData4:'
        end
        object Label18: TLabel
          Left = 24
          Top = 195
          Width = 53
          Height = 13
          Caption = 'TitreData5:'
        end
        object Label19: TLabel
          Left = 24
          Top = 219
          Width = 53
          Height = 13
          Caption = 'TitreData6:'
        end
        object Bevel15: TBevel
          Left = 8
          Top = 8
          Width = 337
          Height = 41
        end
        object Label13: TLabel
          Left = 56
          Top = 75
          Width = 14
          Height = 13
          Caption = 'P'#176':'
        end
        object EditTitreData1: TEdit
          Left = 80
          Top = 96
          Width = 121
          Height = 19
          Ctl3D = False
          MaxLength = 20
          ParentCtl3D = False
          TabOrder = 0
          OnKeyDown = EditTitreData1KeyDown
        end
        object RBCOTitreData1: TCheckBox
          Left = 216
          Top = 96
          Width = 121
          Height = 17
          Caption = 'Champs obligatoire'
          TabOrder = 1
        end
        object RBCOTitreData2: TCheckBox
          Left = 216
          Top = 120
          Width = 121
          Height = 17
          Caption = 'Champs obligatoire'
          TabOrder = 2
        end
        object EditTitreData2: TEdit
          Left = 80
          Top = 120
          Width = 121
          Height = 19
          Ctl3D = False
          MaxLength = 20
          ParentCtl3D = False
          TabOrder = 3
          OnKeyDown = EditTitreData2KeyDown
        end
        object RBCOTitreData3: TCheckBox
          Left = 216
          Top = 144
          Width = 121
          Height = 17
          Caption = 'Champs obligatoire'
          TabOrder = 4
        end
        object EditTitreData3: TEdit
          Left = 80
          Top = 144
          Width = 121
          Height = 19
          Ctl3D = False
          MaxLength = 20
          ParentCtl3D = False
          TabOrder = 5
          OnKeyDown = EditTitreData3KeyDown
        end
        object RBCOTitreData4: TCheckBox
          Left = 216
          Top = 168
          Width = 121
          Height = 17
          Caption = 'Champs obligatoire'
          TabOrder = 6
        end
        object EditTitreData4: TEdit
          Left = 80
          Top = 168
          Width = 121
          Height = 19
          Ctl3D = False
          MaxLength = 20
          ParentCtl3D = False
          TabOrder = 7
          OnKeyDown = EditTitreData4KeyDown
        end
        object RBCOTitreData5: TCheckBox
          Left = 216
          Top = 192
          Width = 121
          Height = 17
          Caption = 'Champs obligatoire'
          TabOrder = 8
        end
        object EditTitreData5: TEdit
          Left = 80
          Top = 192
          Width = 121
          Height = 19
          Ctl3D = False
          MaxLength = 20
          ParentCtl3D = False
          TabOrder = 9
          OnKeyDown = EditTitreData5KeyDown
        end
        object RBCOTitreData6: TCheckBox
          Left = 216
          Top = 216
          Width = 121
          Height = 17
          Caption = 'Champs obligatoire'
          TabOrder = 10
        end
        object EditTitreData6: TEdit
          Left = 80
          Top = 216
          Width = 121
          Height = 19
          Ctl3D = False
          MaxLength = 20
          ParentCtl3D = False
          TabOrder = 11
          OnKeyDown = EditTitreData6KeyDown
        end
        object BitBtn3: TBitBtn
          Left = 16
          Top = 16
          Width = 75
          Height = 25
          TabOrder = 12
          OnClick = BitBtn3Click
          Kind = bkCancel
        end
        object BitOperationTitreDataTiers: TBitBtn
          Left = 248
          Top = 16
          Width = 91
          Height = 25
          Caption = 'Valider'
          TabOrder = 13
          OnClick = BitOperationTitreDataTiersClick
          Kind = bkAll
        end
        object EditPositionTitreDataTiers: TEdit
          Left = 80
          Top = 72
          Width = 89
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 14
        end
        object BitCollerTitreDataTiers: TBitBtn
          Left = 216
          Top = 64
          Width = 123
          Height = 25
          Caption = 'Coller'
          TabOrder = 15
          OnClick = BitCollerTitreDataTiersClick
          Kind = bkHelp
        end
      end
      object EditTiersTypeProces: TComboBox
        Left = 104
        Top = 15
        Width = 161
        Height = 21
        BevelKind = bkFlat
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 2
        Text = 'Business'
        OnSelect = EditTiersTypeProcesSelect
        Items.Strings = (
          'Business'
          'Commercial'
          'Paie'
          'Comptabilit'#233
          'Social'
          'Tous')
      end
      object EditTiersFichierConserne: TComboBox
        Left = 384
        Top = 15
        Width = 161
        Height = 21
        BevelKind = bkFlat
        Ctl3D = True
        ItemHeight = 13
        ParentCtl3D = False
        TabOrder = 3
        Text = 'FFournisseur'
        OnSelect = EditTiersFichierConserneSelect
        Items.Strings = (
          'FFournisseur'
          'FClient'
          'FPersonnel')
      end
      object BitBtn4: TBitBtn
        Left = 656
        Top = 13
        Width = 227
        Height = 25
        Caption = 'Copier les informations du tableau'
        TabOrder = 5
        OnClick = BitBtn4Click
        Kind = bkHelp
      end
    end
    object PageParametreDomiciliation: TTabSheet
      Caption = '  Param'#232'tres Domiciliation  '
      ImageIndex = 4
      OnShow = PageParametreDomiciliationShow
      object Panel5: TPanel
        Left = 8
        Top = 136
        Width = 369
        Height = 121
        TabOrder = 0
        object RadioGroup5: TRadioGroup
          Left = 8
          Top = 8
          Width = 353
          Height = 105
          Caption = 'Param'#232'tres du contr'#244'le au d'#233'marrage:  '
          TabOrder = 0
        end
        object RBActiverControleSoldeDomiciliationDemarrage: TRadioButton
          Left = 16
          Top = 40
          Width = 281
          Height = 17
          Caption = 'Activer le contr'#244'le solde domiciliation au d'#233'marrage !'
          TabOrder = 1
          OnClick = RBActiverControleSoldeDomiciliationDemarrageClick
        end
        object RBDesactiverControleSoldeDomiciliationDemarrage: TRadioButton
          Left = 16
          Top = 72
          Width = 289
          Height = 17
          Caption = 'D'#233'sactiver le contr'#244'le solde domiciliation au d'#233'marrage !'
          TabOrder = 2
          OnClick = RBDesactiverControleSoldeDomiciliationDemarrageClick
        end
      end
      object Panel8: TPanel
        Left = 8
        Top = 264
        Width = 369
        Height = 113
        TabOrder = 1
        object RadioGroup6: TRadioGroup
          Left = 8
          Top = 8
          Width = 353
          Height = 97
          Caption = 'Param'#232'tres Contr'#244'le solde Domiciliation: '
          TabOrder = 0
        end
        object RBAutoriserDebitCreditSansSolde: TRadioButton
          Left = 16
          Top = 40
          Width = 329
          Height = 17
          Caption = 'Autoriser les Op'#233'rations D'#233'bit/Cr'#233'dit sans solde !'
          TabOrder = 1
          OnClick = RBAutoriserDebitCreditSansSoldeClick
        end
        object RBNePasAutoriserDebitCreditSansSolde: TRadioButton
          Left = 16
          Top = 72
          Width = 329
          Height = 17
          Caption = 'Ne Pas Autoriser les Op'#233'rations D'#233'bit/Cr'#233'dit sans solde !'
          TabOrder = 2
          OnClick = RBNePasAutoriserDebitCreditSansSoldeClick
        end
      end
      object Panel9: TPanel
        Left = 8
        Top = 8
        Width = 1185
        Height = 121
        TabOrder = 2
        object RadioGroup3: TRadioGroup
          Left = 8
          Top = 8
          Width = 1169
          Height = 105
          Caption = 'Nature d'#39'analyse du solde Domiciliation: '
          TabOrder = 0
        end
        object RBSoldeDomiciliationRisqueZero: TRadioButton
          Left = 24
          Top = 40
          Width = 209
          Height = 17
          Caption = 'Solde domiciliation avec le risque z'#233'ro !'
          TabOrder = 1
          OnClick = RBSoldeDomiciliationRisqueZeroClick
        end
        object RBSoldeDomiciliationComptable: TRadioButton
          Left = 24
          Top = 72
          Width = 209
          Height = 17
          Caption = 'Solde domiciliation comptable !'
          TabOrder = 2
          OnClick = RBSoldeDomiciliationComptableClick
        end
        object InfoSoldeDomiciliation: TMemo
          Left = 370
          Top = 18
          Width = 799
          Height = 89
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          OnKeyPress = InfoSoldeDomiciliationKeyPress
        end
      end
      object RBOpererModification: TCheckBox
        Left = 8
        Top = 392
        Width = 225
        Height = 17
        Caption = 'Aup'#233'rer les modification'
        TabOrder = 3
      end
    end
    object PageModeConnectiviteBaseData: TTabSheet
      Caption = '  Param'#232'tres connectivit'#233' de donn'#233'es  '
      ImageIndex = 5
      OnShow = PageModeConnectiviteBaseDataShow
      object Panel25: TPanel
        Left = 8
        Top = 232
        Width = 1193
        Height = 105
        BevelInner = bvLowered
        TabOrder = 7
        object Bevel32: TBevel
          Left = 8
          Top = 8
          Width = 953
          Height = 73
        end
        object Label34: TLabel
          Left = 18
          Top = 38
          Width = 124
          Height = 13
          Caption = 'Adresse Application Mail:: '
        end
        object Bevel33: TBevel
          Left = 968
          Top = 8
          Width = 105
          Height = 41
        end
        object Bevel34: TBevel
          Left = 968
          Top = 56
          Width = 217
          Height = 41
        end
        object BitBtn13: TBitBtn
          Left = 976
          Top = 64
          Width = 201
          Height = 25
          Caption = 'Aucune adresse'
          ModalResult = 2
          TabOrder = 0
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
        object BitBtn14: TBitBtn
          Left = 976
          Top = 17
          Width = 89
          Height = 25
          Caption = 'Ouvrir'
          TabOrder = 1
          OnClick = BitBtn14Click
          Kind = bkHelp
        end
        object EditAdresseApplicationMail: TEdit
          Left = 152
          Top = 35
          Width = 801
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
        end
      end
      object RadioGroup4: TRadioGroup
        Left = 8
        Top = 8
        Width = 1193
        Height = 105
        Caption = 'Chois mode de connectivit'#233' de donn'#233'es !  '
        TabOrder = 0
      end
      object InfoModeConnectiviteBaseData: TMemo
        Left = 322
        Top = 18
        Width = 871
        Height = 89
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnKeyPress = InfoSoldeDomiciliationKeyPress
      end
      object RBModeConnectiviteBaseDataInstallation: TRadioButton
        Left = 24
        Top = 40
        Width = 257
        Height = 17
        Caption = 'Connectivit'#233' par base d'#39'installation'
        TabOrder = 2
        OnClick = RBModeConnectiviteBaseDataInstallationClick
      end
      object RBModeConnectiviteBaseDataSelection: TRadioButton
        Left = 24
        Top = 72
        Width = 289
        Height = 17
        Caption = 'Connectivit'#233' par la s'#233'lection de la base de donn'#233'es'
        TabOrder = 3
        OnClick = RBModeConnectiviteBaseDataSelectionClick
      end
      object AfficheMiseAJourBusinessProces: TPanel
        Left = 8
        Top = 128
        Width = 1193
        Height = 89
        BevelInner = bvLowered
        TabOrder = 4
        object Bevel25: TBevel
          Left = 8
          Top = 8
          Width = 953
          Height = 41
        end
        object Label31: TLabel
          Left = 16
          Top = 22
          Width = 239
          Height = 13
          Caption = 'Emplacement source mise '#224' jour Business-Proces: '
        end
        object Bevel23: TBevel
          Left = 968
          Top = 8
          Width = 105
          Height = 41
        end
        object Bevel24: TBevel
          Left = 1080
          Top = 8
          Width = 105
          Height = 41
        end
        object Bevel27: TBevel
          Left = 968
          Top = 52
          Width = 217
          Height = 34
        end
        object EditAdresseMiseAJourBusinessProces: TEdit
          Left = 264
          Top = 19
          Width = 689
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
        object BitBtn6: TBitBtn
          Left = 976
          Top = 17
          Width = 89
          Height = 25
          Caption = 'R'#233'seaux'
          TabOrder = 1
          OnClick = BitBtn6Click
          Kind = bkHelp
        end
        object BitBtn8: TBitBtn
          Left = 1088
          Top = 17
          Width = 89
          Height = 25
          Caption = 'Autres'
          TabOrder = 2
          OnClick = BitBtn8Click
          Kind = bkHelp
        end
        object OKChargementAdresseMAJBusinessProcesReseaux: TCheckBox
          Left = 8
          Top = 61
          Width = 129
          Height = 17
          Caption = 'Chargement R'#233'seaux'
          Enabled = False
          TabOrder = 3
        end
        object BitBtn10: TBitBtn
          Left = 976
          Top = 56
          Width = 201
          Height = 25
          Caption = 'Aucune adresse'
          ModalResult = 2
          TabOrder = 4
          OnClick = BitBtn10Click
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
      object EditDonneurOrdre: TEdit
        Left = 1080
        Top = 456
        Width = 121
        Height = 19
        Color = clSilver
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 8
      end
      object Panel26: TPanel
        Left = 8
        Top = 344
        Width = 1193
        Height = 105
        BevelInner = bvLowered
        TabOrder = 9
        object Bevel35: TBevel
          Left = 8
          Top = 8
          Width = 953
          Height = 73
        end
        object Bevel36: TBevel
          Left = 968
          Top = 8
          Width = 105
          Height = 41
        end
        object Bevel37: TBevel
          Left = 968
          Top = 56
          Width = 217
          Height = 41
        end
        object Label37: TLabel
          Left = 18
          Top = 38
          Width = 156
          Height = 13
          Caption = 'Adresse fichier Param'#232'tres Mail:: '
        end
        object BitBtn15: TBitBtn
          Left = 976
          Top = 64
          Width = 201
          Height = 25
          Caption = 'Aucune adresse'
          ModalResult = 2
          TabOrder = 0
          OnClick = BitBtn15Click
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
        object BitBtn16: TBitBtn
          Left = 976
          Top = 17
          Width = 89
          Height = 25
          Caption = 'Ouvrir'
          TabOrder = 1
          OnClick = BitBtn16Click
          Kind = bkHelp
        end
        object EditAdresseFichierParametresMail: TEdit
          Left = 176
          Top = 35
          Width = 777
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
        end
      end
      object TableauAdresseDossierPartageReseaux: TStringGrid
        Left = 272
        Top = 168
        Width = 689
        Height = 193
        Ctl3D = False
        FixedColor = 8454016
        ParentCtl3D = False
        TabOrder = 5
        Visible = False
        OnKeyDown = TableauAdresseDossierPartageReseauxKeyDown
      end
      object AfficheAdresseMAJAutres: TPanel
        Left = 0
        Top = 216
        Width = 1193
        Height = 321
        BevelInner = bvLowered
        Color = 8454016
        TabOrder = 6
        Visible = False
        object Bevel26: TBevel
          Left = 616
          Top = 8
          Width = 569
          Height = 41
        end
        object ListeSource: TShellTreeView
          Left = 8
          Top = 8
          Width = 601
          Height = 305
          ObjectTypes = [otFolders]
          Root = 'rfDesktop'
          ShellListView = DetailSource
          UseShellImages = True
          AutoRefresh = True
          Ctl3d = False
          Indent = 19
          ParentColor = False
          ParentCtl3d = False
          RightClickSelect = True
          ShowRoot = False
          TabOrder = 0
          OnMouseUp = ListeSourceMouseUp
        end
        object DetailSource: TShellListView
          Left = 616
          Top = 56
          Width = 569
          Height = 257
          ObjectTypes = [otFolders, otNonFolders]
          Root = 'rfDesktop'
          ShellTreeView = ListeSource
          Sorted = True
          Ctl3D = False
          ReadOnly = False
          HideSelection = False
          OnMouseUp = DetailSourceMouseUp
          TabOrder = 1
          ViewStyle = vsReport
        end
        object BitBtn9: TBitBtn
          Left = 624
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Valider'
          TabOrder = 2
          OnClick = BitBtn9Click
          Kind = bkAll
        end
        object EditSource: TEdit
          Left = 712
          Top = 19
          Width = 465
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
      end
    end
    object PageConfigurationReseaux: TTabSheet
      Caption = '  Param'#232'tres configuration r'#233'seaux  '
      ImageIndex = 6
      OnShow = PageConfigurationReseauxShow
      object AfficheActiverPublicationReseaux: TPanel
        Left = 8
        Top = 80
        Width = 1177
        Height = 73
        BevelInner = bvLowered
        TabOrder = 0
        object RadioGroup7: TRadioGroup
          Left = 8
          Top = 8
          Width = 1161
          Height = 57
          Caption = 'Publication r'#233'seaux: '
          TabOrder = 0
        end
        object RBActiverPublicationReseaux: TRadioButton
          Left = 24
          Top = 32
          Width = 169
          Height = 17
          Caption = 'Activer la publication r'#233'seaux'
          TabOrder = 1
          OnClick = RBActiverPublicationReseauxClick
        end
        object RBDesActiverPublicationReseaux: TRadioButton
          Left = 216
          Top = 32
          Width = 193
          Height = 17
          Caption = 'D'#233'sactiver la publication r'#233'seaux'
          TabOrder = 2
          OnClick = RBDesActiverPublicationReseauxClick
        end
        object InfoActiverPublicationReseaux: TMemo
          Left = 450
          Top = 18
          Width = 711
          Height = 39
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          OnKeyPress = InfoSoldeDomiciliationKeyPress
        end
      end
      object Panel11: TPanel
        Left = 8
        Top = 0
        Width = 1177
        Height = 73
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 1
        object RadioGroup8: TRadioGroup
          Left = 8
          Top = 8
          Width = 1161
          Height = 57
          Caption = 'Connection r'#233'seaux: '
          TabOrder = 0
        end
        object RBTravauxConnexionReseaux: TRadioButton
          Left = 24
          Top = 32
          Width = 121
          Height = 17
          Caption = 'Connexion r'#233'seaux'
          TabOrder = 1
          OnClick = RBTravauxConnexionReseauxClick
        end
        object RBTravauxHorsConnexionReseaux: TRadioButton
          Left = 176
          Top = 32
          Width = 177
          Height = 17
          Caption = 'Hors Connexion r'#233'seaux'
          TabOrder = 2
          OnClick = RBTravauxHorsConnexionReseauxClick
        end
        object InfoTravauxConnexionReseaux: TMemo
          Left = 450
          Top = 18
          Width = 711
          Height = 39
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          OnKeyPress = InfoSoldeDomiciliationKeyPress
        end
      end
      object Panel10: TPanel
        Left = 8
        Top = 408
        Width = 1177
        Height = 169
        BevelInner = bvLowered
        TabOrder = 2
        object InfoPublicationReseauxProgrammer: TLabel
          Left = 8
          Top = 152
          Width = 30
          Height = 13
          Caption = '..........'
        end
        object TableauListePublicationReseauxProgrammer: TStringGrid
          Left = 8
          Top = 8
          Width = 1161
          Height = 137
          ColCount = 7
          Ctl3D = False
          RowCount = 2
          ParentCtl3D = False
          TabOrder = 0
          OnClick = TableauListePublicationReseauxProgrammerClick
          OnKeyPress = TableauListePublicationReseauxProgrammerKeyPress
        end
        object RBAppliqueEnregistrementParametresReseaux: TCheckBox
          Left = 1016
          Top = 149
          Width = 151
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Appliquer les enregistrement'
          Enabled = False
          TabOrder = 1
        end
      end
      object AfficheOperationPublicationReseauxProgrammer: TPanel
        Left = 456
        Top = 432
        Width = 449
        Height = 113
        BevelInner = bvLowered
        Color = 8454016
        TabOrder = 3
        Visible = False
        object EditPositionPublication: TEdit
          Left = 368
          Top = 40
          Width = 33
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 8
        end
        object EditJourPublier: TEdit
          Left = 360
          Top = 40
          Width = 33
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 9
        end
        object EditHeurePublier: TEdit
          Left = 368
          Top = 32
          Width = 33
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 10
        end
        object Panel12: TPanel
          Left = 344
          Top = 12
          Width = 97
          Height = 92
          BevelInner = bvLowered
          TabOrder = 0
          object BitOperationPublicationReseaux: TBitBtn
            Left = 8
            Top = 8
            Width = 81
            Height = 75
            TabOrder = 0
            OnClick = BitOperationPublicationReseauxClick
            Kind = bkAll
          end
        end
        object RadioGroup9: TRadioGroup
          Left = 8
          Top = 8
          Width = 329
          Height = 97
          Caption = 'Publication programm'#233': '
          TabOrder = 1
        end
        object RBPublicationChaqueJour: TRadioButton
          Left = 24
          Top = 32
          Width = 97
          Height = 17
          Caption = 'Chaque jour '#224':'
          Checked = True
          TabOrder = 2
          TabStop = True
          OnClick = RBPublicationChaqueJourClick
          OnKeyDown = RBPublicationChaqueJourKeyDown
        end
        object EditHeurePublicationJour: TMaskEdit
          Left = 140
          Top = 31
          Width = 53
          Height = 19
          Ctl3D = False
          EditMask = '!90:00:00;1;_'
          MaxLength = 8
          ParentCtl3D = False
          TabOrder = 3
          Text = '12:30:00'
          OnKeyDown = EditHeurePublicationJourKeyDown
        end
        object RBPublicationChaqueSemaine: TRadioButton
          Left = 24
          Top = 56
          Width = 281
          Height = 17
          Caption = 'Chaque semaine le                                         '#224':'
          TabOrder = 4
          OnClick = RBPublicationChaqueSemaineClick
          OnKeyDown = RBPublicationChaqueSemaineKeyDown
        end
        object EditJourPublication: TComboBox
          Left = 139
          Top = 54
          Width = 108
          Height = 21
          BevelKind = bkFlat
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 5
          Text = 'Dimanche'
          OnKeyDown = EditJourPublicationKeyDown
          Items.Strings = (
            'Dimanche'
            'Lundi'
            'Mardi'
            'Mercredi'
            'Jeudi'
            'Vendredi'
            'Samedi')
        end
        object EditHeurePublicationSemaine: TMaskEdit
          Left = 268
          Top = 54
          Width = 61
          Height = 19
          Ctl3D = False
          EditMask = '!90:00:00;1;_'
          MaxLength = 8
          ParentCtl3D = False
          TabOrder = 6
          Text = '12:30:00'
          OnKeyDown = EditHeurePublicationSemaineKeyDown
        end
        object RBAucunePublicationProgrammer: TRadioButton
          Left = 24
          Top = 80
          Width = 185
          Height = 17
          Caption = 'Aucune Publication programm'#233' !'
          TabOrder = 7
          OnClick = RBAucunePublicationProgrammerClick
          OnKeyDown = RBAucunePublicationProgrammerKeyDown
        end
      end
      object Panel13: TPanel
        Left = 8
        Top = 160
        Width = 1177
        Height = 73
        BevelInner = bvLowered
        TabOrder = 4
        object Bevel20: TBevel
          Left = 8
          Top = 12
          Width = 1161
          Height = 53
        end
        object Label26: TLabel
          Left = 17
          Top = 7
          Width = 102
          Height = 13
          Caption = 'Exercice Pr'#233'c'#233'dent ! '
        end
        object RBInclureValeurSousReseauxPrecedentePeriode: TCheckBox
          Left = 24
          Top = 32
          Width = 369
          Height = 17
          Caption = 
            'Inclure les valeurs, sous r'#233'seaux, pr'#233'c'#233'dentes au p'#233'riode s'#233'lect' +
            'ionn'#233' !'
          TabOrder = 0
          OnClick = RBInclureValeurSousReseauxPrecedentePeriodeClick
        end
        object RBInclureValeurSousReseauxPrecedenteExercice: TCheckBox
          Left = 400
          Top = 32
          Width = 345
          Height = 17
          Caption = 
            'Inclure les valeurs, sous r'#233'seaux,  pr'#233'c'#233'dentes '#224' l'#39'exercice ouv' +
            'ert !'
          TabOrder = 1
          OnClick = RBInclureValeurSousReseauxPrecedenteExerciceClick
        end
        object InfoExercicePrecedent: TMemo
          Left = 752
          Top = 18
          Width = 409
          Height = 39
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
        end
      end
      object Panel19: TPanel
        Left = 8
        Top = 240
        Width = 1177
        Height = 73
        BevelInner = bvLowered
        TabOrder = 5
        object Bevel30: TBevel
          Left = 8
          Top = 16
          Width = 1161
          Height = 49
        end
        object Label32: TLabel
          Left = 16
          Top = 8
          Width = 117
          Height = 13
          Caption = 'Exercice de Publication !'
        end
        object RBUtiliserExerciceLocalePourPublicationEntrante: TCheckBox
          Left = 24
          Top = 32
          Width = 281
          Height = 17
          Caption = 'Utilis'#233' l'#39'exercice local pour les publications entrantes !'
          TabOrder = 0
          OnClick = RBUtiliserExerciceLocalePourPublicationEntranteClick
        end
        object RBUtiliserExerciceLocalePourPublicationSortante: TCheckBox
          Left = 352
          Top = 32
          Width = 281
          Height = 17
          Caption = 'Utilis'#233' l'#39'exercice local pour les publications sortantes !'
          TabOrder = 1
          OnClick = RBUtiliserExerciceLocalePourPublicationSortanteClick
        end
        object InfoExercicePublication: TMemo
          Left = 664
          Top = 21
          Width = 497
          Height = 39
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
        end
      end
      object Panel21: TPanel
        Left = 8
        Top = 320
        Width = 1177
        Height = 81
        BevelInner = bvLowered
        TabOrder = 6
        object RadioGroup14: TRadioGroup
          Left = 8
          Top = 8
          Width = 1161
          Height = 57
          Caption = 'Exercice du lecture sous r'#233'seaux:'
          TabOrder = 0
        end
        object RBUliliseExerciceLocalPourLectureSousReseaux: TRadioButton
          Left = 24
          Top = 32
          Width = 265
          Height = 17
          Caption = 'Utilis'#233' l'#39#233'xercice local pour la l'#233'cture sous r'#233'seaux'
          TabOrder = 1
          OnClick = RBUliliseExerciceLocalPourLectureSousReseauxClick
        end
        object InfoExerciceLectureSousReseaux: TMemo
          Left = 664
          Top = 21
          Width = 497
          Height = 39
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
        end
        object RBUliliseExercicePubliePourLectureSousReseaux: TRadioButton
          Left = 352
          Top = 32
          Width = 273
          Height = 17
          Caption = 'Utilis'#233' l'#39#233'xercice publi'#233' pour la l'#233'cture sous r'#233'seaux'
          TabOrder = 3
          OnClick = RBUliliseExercicePubliePourLectureSousReseauxClick
        end
      end
    end
    object PageAutresParametres: TTabSheet
      Caption = '  Autres Param'#232'tres  '
      ImageIndex = 7
      OnShow = PageAutresParametresShow
      object Panel14: TPanel
        Left = 8
        Top = 120
        Width = 273
        Height = 105
        TabOrder = 0
        object RadioGroup11: TRadioGroup
          Left = 8
          Top = 8
          Width = 257
          Height = 89
          Caption = 'Param'#232'tre info Tiers Suppl'#233'mentaire: '
          TabOrder = 0
        end
        object RBAfficherInfoTiersSupplementaire: TRadioButton
          Left = 16
          Top = 32
          Width = 241
          Height = 17
          Caption = 'Afficher Info-Tiers suppl'#233'mentaire'
          TabOrder = 1
          OnClick = RBCentreLOGOClick
        end
        object RBNePasAfficherInfoTiersSupplementaire: TRadioButton
          Left = 16
          Top = 64
          Width = 241
          Height = 17
          Caption = 'Nepas Afficher Info-Tiers suppl'#233'mentaire'
          TabOrder = 2
          OnClick = RBCentreLOGOClick
        end
      end
      object Panel15: TPanel
        Left = 8
        Top = 8
        Width = 273
        Height = 105
        TabOrder = 1
        object RadioGroup10: TRadioGroup
          Left = 8
          Top = 8
          Width = 257
          Height = 89
          Caption = 'Param'#232'tre position logo: '
          TabOrder = 0
        end
        object RBCentreLOGO: TRadioButton
          Left = 16
          Top = 32
          Width = 241
          Height = 17
          Caption = 'Centraliser le LOGO'
          TabOrder = 1
          OnClick = RBCentreLOGOClick
        end
        object RBNePasCentreLOGO: TRadioButton
          Left = 16
          Top = 64
          Width = 241
          Height = 17
          Caption = 'Ne pas centraliser le LOGO'
          TabOrder = 2
          OnClick = RBCentreLOGOClick
        end
      end
      object RBOpererModificationInfoTiersSupp: TCheckBox
        Left = 8
        Top = 560
        Width = 225
        Height = 17
        Caption = 'Aup'#233'rer les modification'
        TabOrder = 2
      end
      object Panel16: TPanel
        Left = 296
        Top = 8
        Width = 185
        Height = 217
        TabOrder = 3
        object Bevel21: TBevel
          Left = 8
          Top = 8
          Width = 169
          Height = 73
        end
        object Label27: TLabel
          Left = 16
          Top = 19
          Width = 87
          Height = 13
          Caption = 'Row Max Portarai:'
        end
        object Label28: TLabel
          Left = 16
          Top = 51
          Width = 80
          Height = 13
          Caption = 'Col Max Portarai:'
        end
        object Bevel22: TBevel
          Left = 8
          Top = 136
          Width = 169
          Height = 73
        end
        object Label29: TLabel
          Left = 16
          Top = 147
          Width = 92
          Height = 13
          Caption = 'Row Max Paysage:'
        end
        object Label30: TLabel
          Left = 16
          Top = 179
          Width = 85
          Height = 13
          Caption = 'Col Max Paysage:'
        end
        object EditRowMaxPortrait: TEdit
          Left = 120
          Top = 16
          Width = 33
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          Text = '39'
          OnExit = EditRowMaxPortraitExit
        end
        object EditColMaxPortrait: TEdit
          Left = 120
          Top = 48
          Width = 33
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          Text = '22'
          OnExit = EditRowMaxPortraitExit
        end
        object UpDown1: TUpDown
          Left = 153
          Top = 16
          Width = 16
          Height = 19
          Associate = EditRowMaxPortrait
          Min = 0
          Position = 39
          TabOrder = 2
          Wrap = False
          OnClick = UpDown1Click
        end
        object UpDown2: TUpDown
          Left = 153
          Top = 48
          Width = 16
          Height = 19
          Associate = EditColMaxPortrait
          Min = 0
          Position = 22
          TabOrder = 3
          Wrap = False
          OnClick = UpDown1Click
        end
        object EditColMaxPaysage: TEdit
          Left = 120
          Top = 176
          Width = 33
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
          Text = '44'
          OnExit = EditRowMaxPortraitExit
        end
        object EditRowMaxPaysage: TEdit
          Left = 120
          Top = 144
          Width = 33
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 5
          Text = '25'
          OnExit = EditRowMaxPortraitExit
        end
        object UpDown3: TUpDown
          Left = 153
          Top = 144
          Width = 16
          Height = 19
          Associate = EditRowMaxPaysage
          Min = 0
          Position = 25
          TabOrder = 6
          Wrap = False
          OnClick = UpDown1Click
        end
        object UpDown4: TUpDown
          Left = 153
          Top = 176
          Width = 16
          Height = 19
          Associate = EditColMaxPaysage
          Min = 0
          Position = 44
          TabOrder = 7
          Wrap = False
          OnClick = UpDown1Click
        end
        object BitBtn5: TBitBtn
          Left = 16
          Top = 96
          Width = 153
          Height = 25
          Caption = 'Valeurs par d'#233'faut'
          TabOrder = 8
          OnClick = BitBtn5Click
          Kind = bkHelp
        end
      end
      object InfoTableauPrint: TMemo
        Left = 488
        Top = 10
        Width = 713
        Height = 89
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
      end
      object Panel18: TPanel
        Left = 8
        Top = 240
        Width = 473
        Height = 113
        TabOrder = 5
        object Bevel28: TBevel
          Left = 272
          Top = 72
          Width = 98
          Height = 34
        end
        object Bevel29: TBevel
          Left = 376
          Top = 71
          Width = 91
          Height = 34
        end
        object RadioGroup12: TRadioGroup
          Left = 8
          Top = 8
          Width = 257
          Height = 97
          Caption = 'Param'#232'tre Multi-couleurs tableaux:'
          TabOrder = 0
        end
        object RBActiverMultiCouleursLignesTableux: TRadioButton
          Left = 16
          Top = 40
          Width = 233
          Height = 17
          Caption = 'Activer multi-couleurs lignes tableaux'
          TabOrder = 1
          OnClick = RBActiverMultiCouleursLignesTableuxClick
        end
        object RBdesactiverMultiCouleursLignesTableux: TRadioButton
          Left = 16
          Top = 72
          Width = 241
          Height = 17
          Caption = 'D'#233'sactiver multi-couleurs lignes tableaux'
          TabOrder = 2
          OnClick = RBdesactiverMultiCouleursLignesTableuxClick
        end
        object Couleur1: TPanel
          Left = 272
          Top = 8
          Width = 89
          Height = 25
          Caption = 'Couleur 1'
          Color = 16769279
          TabOrder = 3
          OnDblClick = Couleur1DblClick
        end
        object Couleur2: TPanel
          Left = 272
          Top = 40
          Width = 89
          Height = 25
          Caption = 'Couleur 2'
          Color = 16777184
          TabOrder = 4
          OnDblClick = Couleur2DblClick
        end
        object BitBtn11: TBitBtn
          Left = 276
          Top = 76
          Width = 89
          Height = 25
          Caption = 'Par d'#233'faut'
          TabOrder = 5
          OnClick = BitBtn11Click
          Kind = bkHelp
        end
        object BitBtn12: TBitBtn
          Left = 381
          Top = 76
          Width = 81
          Height = 25
          Caption = 'Ap'#233'r'#231'u'
          TabOrder = 6
          OnClick = BitBtn12Click
          Kind = bkHelp
        end
      end
      object TableauApercuCouleur: TStringGrid
        Left = 488
        Top = 104
        Width = 713
        Height = 353
        ColCount = 11
        Ctl3D = False
        DefaultColWidth = 62
        RowCount = 20
        ParentCtl3D = False
        TabOrder = 6
        Visible = False
        OnDrawCell = TableauApercuCouleurDrawCell
      end
      object Panel20: TPanel
        Left = 8
        Top = 368
        Width = 473
        Height = 89
        BevelInner = bvLowered
        TabOrder = 7
        object RadioGroup13: TRadioGroup
          Left = 8
          Top = 8
          Width = 457
          Height = 73
          Caption = 'Affichage du rapport publication r'#233'seaux:'
          TabOrder = 0
        end
        object RBAfficherRapportPublicationReseaux: TRadioButton
          Left = 24
          Top = 32
          Width = 281
          Height = 17
          Caption = 'Afficher le rapport de la publication r'#233'seaux.'
          TabOrder = 1
          OnClick = RBAfficherRapportPublicationReseauxClick
        end
        object RBNepasafficherRapportPublicationReseaux: TRadioButton
          Left = 24
          Top = 56
          Width = 273
          Height = 17
          Caption = 'Ne pas afficher le rapport de la publication r'#233'seaux.'
          TabOrder = 2
          OnClick = RBAfficherRapportPublicationReseauxClick
        end
      end
      object Panel22: TPanel
        Left = 8
        Top = 464
        Width = 473
        Height = 89
        BevelInner = bvLowered
        TabOrder = 8
        object RadioGroup15: TRadioGroup
          Left = 8
          Top = 8
          Width = 457
          Height = 73
          Caption = 'Code barre Avis:'
          TabOrder = 0
        end
        object RBAfficherCodeBarreImprimesAvis: TRadioButton
          Left = 32
          Top = 32
          Width = 265
          Height = 17
          Caption = 'Afficher le code barre dans les imprim'#233's Avis'
          TabOrder = 1
          OnClick = RBAfficherCodeBarreImprimesAvisClick
        end
        object RBNepasAfficherCodeBarreImprimesAvis: TRadioButton
          Left = 32
          Top = 56
          Width = 265
          Height = 17
          Caption = 'Ne pas afficher le code barre dans les imprim'#233's Avis'
          TabOrder = 2
          OnClick = RBAfficherCodeBarreImprimesAvisClick
        end
      end
      object Panel23: TPanel
        Left = 488
        Top = 464
        Width = 401
        Height = 89
        BevelInner = bvLowered
        TabOrder = 9
        object RadioGroup16: TRadioGroup
          Left = 8
          Top = 8
          Width = 385
          Height = 73
          Caption = 'Code barre Etats Mouvement:'
          TabOrder = 0
        end
        object RBAfficherCodeBarreImprimesEtatsMouvement: TRadioButton
          Left = 32
          Top = 32
          Width = 353
          Height = 17
          Caption = 'Afficher le code barre dans les imprim'#233's Etats Mouvement'
          TabOrder = 1
          OnClick = RBAfficherCodeBarreImprimesEtatsMouvementClick
        end
        object RBNepasAfficherCodeBarreImprimesEtatsMouvement: TRadioButton
          Left = 32
          Top = 56
          Width = 353
          Height = 17
          Caption = 'Ne pas afficher le code barre dans les imprim'#233's Etats Mouvement'
          TabOrder = 2
          OnClick = RBNepasAfficherCodeBarreImprimesEtatsMouvementClick
        end
      end
      object Panel24: TPanel
        Left = 896
        Top = 464
        Width = 297
        Height = 113
        BevelInner = bvLowered
        TabOrder = 10
        object Bevel31: TBevel
          Left = 8
          Top = 16
          Width = 281
          Height = 89
        end
        object Label33: TLabel
          Left = 16
          Top = 8
          Width = 113
          Height = 13
          Caption = 'Options menu principal: '
        end
        object RBIconeFermeture: TCheckBox
          Left = 24
          Top = 32
          Width = 161
          Height = 17
          Caption = 'Afficher l'#39'ic'#244'ne fermeture'
          TabOrder = 0
          OnClick = RBIconeFermetureClick
        end
        object RBIconeMinimisation: TCheckBox
          Left = 24
          Top = 56
          Width = 161
          Height = 17
          Caption = 'Afficher l'#39'ic'#244'ne minimisation'
          TabOrder = 1
          OnClick = RBIconeMinimisationClick
        end
        object RBIconeMaximisation: TCheckBox
          Left = 24
          Top = 80
          Width = 161
          Height = 17
          Caption = 'Afficher l'#39'ic'#244'ne maximisation'
          TabOrder = 2
          OnClick = RBIconeMaximisationClick
        end
      end
    end
  end
  object ChoisCouleur: TColorDialog
    Ctl3D = True
    CustomColors.Strings = (
      'ColorA=FFFFFFFF'
      'ColorB=FFFFFFFF'
      'ColorC=FFFFFFFF'
      'ColorD=FFFFFFFF'
      'ColorE=FFFFFFFF'
      'ColorF=FFFFFFFF'
      'ColorG=FFFFFFFF'
      'ColorH=FFFFFFFF'
      'ColorI=FFFFFFFF'
      'ColorJ=FFFFFFFF'
      'ColorK=FFFFFFFF'
      'ColorL=FFFFFFFF'
      'ColorM=FFFFFFFF'
      'ColorN=FFFFFFFF'
      'ColorO=FFFFFFFF'
      'ColorP=FFFFFFFF')
    Left = 1160
    Top = 32
  end
end
