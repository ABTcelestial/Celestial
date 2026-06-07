object FSFicheTechniqueProjet: TFSFicheTechniqueProjet
  Left = 0
  Top = 0
  Width = 1370
  Height = 735
  Caption = 'Fiche Technique des projets'
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
  object TitreEtat: TMemo
    Left = 40
    Top = 56
    Width = 185
    Height = 89
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
  end
  object PagePrincipale: TPageControl
    Left = 0
    Top = 0
    Width = 1345
    Height = 685
    ActivePage = PageFicheTechniqueProjets
    TabIndex = 0
    TabOrder = 0
    OnChange = PagePrincipaleChange
    object PageFicheTechniqueProjets: TTabSheet
      Caption = '     Fiche Technique des Projets     '
      object AfficheTableauRubriqueFicheTechnique: TPanel
        Left = 496
        Top = 228
        Width = 505
        Height = 424
        BevelInner = bvLowered
        Color = 13893544
        TabOrder = 0
        object Bevel7: TBevel
          Left = 4
          Top = 31
          Width = 333
          Height = 41
        end
        object Bevel33: TBevel
          Left = 352
          Top = 31
          Width = 145
          Height = 41
        end
        object BitFicheTechnique: TBitBtn
          Left = 6
          Top = 393
          Width = 233
          Height = 25
          Caption = 'Imprimer le d'#233'tail de la fiche technique !'
          TabOrder = 7
          OnClick = BitFicheTechniqueClick
          Kind = bkHelp
        end
        object BitBtn11: TBitBtn
          Left = 360
          Top = 39
          Width = 127
          Height = 25
          Caption = 'Planifier '
          TabOrder = 6
          OnClick = BitBtn11Click
          Kind = bkHelp
        end
        object TableauRubriqueFicheTechnique: TStringGrid
          Left = 4
          Top = 75
          Width = 493
          Height = 313
          Color = 14417847
          ColCount = 7
          Ctl3D = False
          FixedColor = 16777088
          ParentCtl3D = False
          TabOrder = 0
          OnClick = TableauRubriqueFicheTechniqueClick
          OnKeyPress = TableauRubriqueFicheTechniqueKeyPress
          ColWidths = (
            64
            2
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
        object TitreRubriqueFicheTechnique: TPanel
          Left = 3
          Top = 3
          Width = 498
          Height = 25
          BevelInner = bvLowered
          Caption = 'D'#233'tail de la fiche Technique'
          Color = 16777088
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object BitBtn5: TBitBtn
          Left = 12
          Top = 39
          Width = 89
          Height = 25
          Caption = 'Ajouter'
          TabOrder = 3
          OnClick = BitBtn5Click
          Kind = bkAll
        end
        object BitBtn6: TBitBtn
          Left = 128
          Top = 39
          Width = 89
          Height = 25
          Caption = 'Modifier'
          TabOrder = 4
          OnClick = BitBtn6Click
          Kind = bkRetry
        end
        object BitBtn7: TBitBtn
          Left = 235
          Top = 39
          Width = 89
          Height = 25
          Caption = 'Supprimer'
          TabOrder = 5
          OnClick = BitBtn7Click
          Kind = bkCancel
        end
        object AfficheRubriqueFicheTechnique: TPanel
          Left = 3
          Top = 31
          Width = 498
          Height = 390
          BevelInner = bvLowered
          Color = 16777088
          TabOrder = 2
          Visible = False
          object Bevel6: TBevel
            Left = 8
            Top = 7
            Width = 481
            Height = 162
          end
          object Bevel5: TBevel
            Left = 8
            Top = 176
            Width = 481
            Height = 42
          end
          object Label4: TLabel
            Left = 16
            Top = 19
            Width = 58
            Height = 13
            Caption = 'N'#176'Rubrique:'
          end
          object Label7: TLabel
            Left = 16
            Top = 43
            Width = 59
            Height = 13
            Caption = 'D'#233'signation:'
          end
          object Label8: TLabel
            Left = 16
            Top = 67
            Width = 43
            Height = 13
            Caption = 'Quantit'#233':'
          end
          object Label9: TLabel
            Left = 16
            Top = 115
            Width = 59
            Height = 13
            Caption = 'Prix Unitaire:'
          end
          object Label10: TLabel
            Left = 16
            Top = 139
            Width = 42
            Height = 13
            Caption = 'Montant:'
          end
          object Label11: TLabel
            Left = 16
            Top = 93
            Width = 55
            Height = 13
            Caption = 'Type Unit'#233':'
          end
          object BitOperationRubriqueFicheTechnique: TBitBtn
            Left = 376
            Top = 184
            Width = 108
            Height = 25
            Caption = 'Valider'
            TabOrder = 0
            OnClick = BitOperationRubriqueFicheTechniqueClick
            Kind = bkAll
          end
          object BitBtn1: TBitBtn
            Left = 16
            Top = 184
            Width = 75
            Height = 25
            TabOrder = 1
            OnClick = BitBtn1Click
            Kind = bkCancel
          end
          object EditNumRubriqueFicheTechnique: TEdit
            Left = 80
            Top = 16
            Width = 57
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 2
          end
          object EditDesignationRubriqueFicheTechnique: TEdit
            Left = 80
            Top = 40
            Width = 393
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
            OnKeyDown = EditDesignationRubriqueFicheTechniqueKeyDown
          end
          object EditQuantite: TEdit
            Left = 80
            Top = 64
            Width = 89
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 4
            OnEnter = EditQuantiteEnter
            OnExit = EditQuantiteExit
            OnKeyDown = EditQuantiteKeyDown
            OnKeyUp = EditQuantiteKeyUp
          end
          object EditPrixUnitaire: TEdit
            Left = 80
            Top = 112
            Width = 89
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 5
            OnEnter = EditPrixUnitaireEnter
            OnExit = EditPrixUnitaireExit
            OnKeyDown = EditPrixUnitaireKeyDown
            OnKeyUp = EditPrixUnitaireKeyUp
          end
          object EditMontant: TEdit
            Left = 80
            Top = 136
            Width = 89
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 6
            OnEnter = EditMontantEnter
            OnExit = EditMontantExit
            OnKeyDown = EditMontantKeyDown
          end
          object EditTypeUnite: TComboBox
            Left = 80
            Top = 88
            Width = 89
            Height = 21
            ItemHeight = 13
            TabOrder = 7
            Text = 'ml'
            OnChange = EditTypeUniteChange
            OnKeyDown = EditTypeUniteKeyDown
            Items.Strings = (
              'ml'
              'm'#178
              'kg'
              'Unit'#233
              '%'
              'Mois'
              'Tiers')
          end
        end
      end
      object AfficheTableauProjetFinance: TPanel
        Left = 0
        Top = 0
        Width = 1001
        Height = 225
        BevelInner = bvLowered
        Color = 16777166
        TabOrder = 1
        object TableauProjetFinance: TStringGrid
          Left = 8
          Top = 40
          Width = 825
          Height = 177
          Color = 16777194
          Ctl3D = False
          DefaultColWidth = 50
          DefaultRowHeight = 18
          FixedColor = 14803200
          RowCount = 2
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
          ParentCtl3D = False
          TabOrder = 0
          OnClick = TableauProjetFinanceClick
          OnDblClick = TableauProjetFinanceDblClick
          OnKeyDown = TableauProjetFinanceKeyDown
          RowHeights = (
            18
            18)
        end
        object AfficheTitreListeProjet: TPanel
          Left = 8
          Top = 6
          Width = 825
          Height = 30
          Alignment = taRightJustify
          BevelInner = bvLowered
          Color = 14803200
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object Label23: TLabel
            Left = 585
            Top = 9
            Width = 87
            Height = 13
            Caption = 'Rong d'#39'affichage: '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object RBAfficheDynamique: TCheckBox
            Left = 192
            Top = 8
            Width = 25
            Height = 17
            Caption = '!'
            Checked = True
            State = cbChecked
            TabOrder = 3
          end
          object EditNumProjetAffiche: TEdit
            Left = 32
            Top = 4
            Width = 121
            Height = 22
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 2
            Visible = False
          end
          object EditRonStructure: TComboBox
            Left = 675
            Top = 5
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
            TabOrder = 0
            OnSelect = EditRonStructureSelect
          end
          object BitBtn14: TBitBtn
            Left = 4
            Top = 3
            Width = 181
            Height = 25
            Caption = 'Charger un projet !'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = BitBtn14Click
            Kind = bkHelp
          end
        end
        object AfficheOperationProjet: TPanel
          Left = 184
          Top = 80
          Width = 521
          Height = 57
          BevelOuter = bvLowered
          Color = 8454143
          TabOrder = 2
          Visible = False
          object Bevel32: TBevel
            Left = 8
            Top = 8
            Width = 505
            Height = 41
          end
          object BitBtn20: TBitBtn
            Left = 16
            Top = 16
            Width = 75
            Height = 25
            TabOrder = 0
            OnClick = BitBtn20Click
            Kind = bkNo
          end
          object BitOperationProjet: TBitBtn
            Left = 432
            Top = 16
            Width = 75
            Height = 25
            TabOrder = 1
            OnClick = BitOperationProjetClick
            Kind = bkCancel
          end
        end
        object AfficheOptionProjetPrint: TPanel
          Left = 840
          Top = 8
          Width = 153
          Height = 209
          BevelInner = bvLowered
          Color = 16777166
          TabOrder = 3
          object Bevel13: TBevel
            Left = 8
            Top = 40
            Width = 137
            Height = 41
          end
          object Bevel14: TBevel
            Left = 8
            Top = 88
            Width = 137
            Height = 65
          end
          object Bevel24: TBevel
            Left = 8
            Top = 8
            Width = 137
            Height = 28
          end
          object StaticText1: TStaticText
            Left = 32
            Top = 99
            Width = 105
            Height = 17
            Caption = 'Orientation du papier:'
            TabOrder = 0
          end
          object RBOrientationPapierFicheTechnique: TComboBox
            Left = 24
            Top = 120
            Width = 113
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
          object BitBtn15: TBitBtn
            Left = 16
            Top = 48
            Width = 121
            Height = 25
            Caption = 'Imprimer le Projet !'
            TabOrder = 2
            OnClick = BitBtn15Click
            Kind = bkHelp
            Margin = 0
          end
          object RBFicheProjetPrecis: TCheckBox
            Left = 14
            Top = 14
            Width = 123
            Height = 17
            Caption = 'Afficher Fiche Projet !'
            TabOrder = 3
            OnClick = RBFicheProjetPrecisClick
          end
        end
      end
      object AfficheTableauFicheTechnique: TPanel
        Left = 0
        Top = 228
        Width = 489
        Height = 424
        BevelInner = bvLowered
        Color = 8454143
        TabOrder = 2
        object Bevel4: TBevel
          Left = 4
          Top = 31
          Width = 477
          Height = 41
        end
        object TableauFicheTechnique: TStringGrid
          Left = 4
          Top = 75
          Width = 477
          Height = 313
          Color = 13434879
          Ctl3D = False
          FixedColor = 4259839
          RowCount = 2
          ParentCtl3D = False
          TabOrder = 0
          OnClick = TableauFicheTechniqueClick
          OnDblClick = TableauFicheTechniqueDblClick
          OnKeyPress = TableauFicheTechniqueKeyPress
          ColWidths = (
            64
            2
            64
            64
            64)
          RowHeights = (
            24
            24)
        end
        object Panel5: TPanel
          Left = 4
          Top = 4
          Width = 480
          Height = 25
          BevelInner = bvLowered
          Caption = 'Liste des Fiches Techniques'
          Color = 4259839
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object BitBtn2: TBitBtn
          Left = 12
          Top = 39
          Width = 89
          Height = 25
          Caption = 'Ajouter'
          TabOrder = 2
          OnClick = BitBtn2Click
          Kind = bkAll
        end
        object BitBtn3: TBitBtn
          Left = 119
          Top = 39
          Width = 97
          Height = 25
          Caption = 'Modifier'
          TabOrder = 3
          OnClick = BitBtn3Click
          Kind = bkRetry
        end
        object BitBtn4: TBitBtn
          Left = 233
          Top = 39
          Width = 91
          Height = 25
          Caption = 'Supprimet'
          TabOrder = 4
          OnClick = BitBtn4Click
          Kind = bkCancel
        end
        object BitFicheTechniqueImprime: TBitBtn
          Left = 5
          Top = 394
          Width = 212
          Height = 25
          Caption = 'Imprimer les fiche technique !'
          TabOrder = 5
          OnClick = BitFicheTechniqueImprimeClick
          Kind = bkHelp
        end
      end
      object AfficheOperationTableauFicheTechnique: TPanel
        Left = 179
        Top = 363
        Width = 481
        Height = 390
        BevelInner = bvLowered
        Color = 4259839
        TabOrder = 3
        Visible = False
        OnClick = AfficheOperationTableauFicheTechniqueClick
        object Bevel1: TBevel
          Left = 8
          Top = 8
          Width = 314
          Height = 57
        end
        object Label1: TLabel
          Left = 16
          Top = 82
          Width = 54
          Height = 13
          Caption = 'Num Fiche:'
        end
        object Label2: TLabel
          Left = 16
          Top = 106
          Width = 59
          Height = 13
          Caption = 'D'#233'signation:'
        end
        object Label3: TLabel
          Left = 16
          Top = 130
          Width = 50
          Height = 13
          Caption = 'Type Avis:'
        end
        object Bevel3: TBevel
          Left = 352
          Top = 8
          Width = 122
          Height = 81
        end
        object Bevel2: TBevel
          Left = 360
          Top = 120
          Width = 97
          Height = 41
        end
        object Label46: TLabel
          Left = 16
          Top = 18
          Width = 58
          Height = 13
          Caption = 'Code Projet:'
        end
        object Bevel31: TBevel
          Left = 8
          Top = 72
          Width = 313
          Height = 89
        end
        object Label47: TLabel
          Left = 16
          Top = 42
          Width = 59
          Height = 13
          Caption = 'D'#233'signation:'
        end
        object EditNumFicheTechnique: TEdit
          Left = 80
          Top = 80
          Width = 73
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
        object EditDesignationFicheTechnique: TEdit
          Left = 80
          Top = 104
          Width = 237
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnKeyDown = EditDesignationFicheTechniqueKeyDown
        end
        object EditNumTypeAvisFicheTechnique: TEdit
          Left = 80
          Top = 128
          Width = 33
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          OnEnter = EditNumTypeAvisFicheTechniqueEnter
          OnKeyDown = EditNumTypeAvisFicheTechniqueKeyDown
        end
        object BitOperationTableauFicheTechnique: TBitBtn
          Left = 360
          Top = 16
          Width = 106
          Height = 65
          TabOrder = 3
          OnClick = BitOperationTableauFicheTechniqueClick
          Kind = bkAll
        end
        object EditTypeAvisFicheTechnique: TEdit
          Left = 112
          Top = 128
          Width = 204
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
        end
        object EditCodeProjetSource: TEdit
          Left = 80
          Top = 16
          Width = 121
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
          OnEnter = EditCodeProjetSourceEnter
        end
        object EditNomProjetSource: TEdit
          Left = 80
          Top = 40
          Width = 233
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 6
        end
        object BitBtn19: TBitBtn
          Left = 368
          Top = 128
          Width = 75
          Height = 25
          Caption = 'Annuler'
          ModalResult = 2
          TabOrder = 7
          OnClick = BitBtn19Click
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
      object TableauTypeAvis: TStringGrid
        Left = 83
        Top = 410
        Width = 512
        Height = 153
        Color = 8454143
        ColCount = 7
        Ctl3D = False
        DefaultColWidth = 40
        DefaultRowHeight = 20
        FixedColor = 4259839
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
        ParentCtl3D = False
        TabOrder = 4
        Visible = False
        OnKeyDown = TableauTypeAvisKeyDown
        ColWidths = (
          40
          73
          361
          90
          102
          96
          111)
      end
      object TableauProjetTransfert: TStringGrid
        Left = 83
        Top = 335
        Width = 425
        Height = 233
        ColCount = 2
        Ctl3D = False
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
        ParentCtl3D = False
        TabOrder = 6
        Visible = False
        OnDblClick = TableauProjetTransfertDblClick
      end
      object TableauListeProjet: TStringGrid
        Left = 115
        Top = 68
        Width = 622
        Height = 311
        Color = 13303807
        ColCount = 3
        Ctl3D = False
        FixedColor = 8454143
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        Visible = False
        OnDblClick = TableauListeProjetDblClick
        OnKeyDown = TableauListeProjetKeyDown
        RowHeights = (
          24
          24
          24
          24
          24)
      end
    end
    object PageOperationTechniques: TTabSheet
      Caption = '     Op'#233'ration Fiche Technique     '
      ImageIndex = 1
      OnShow = PageOperationTechniquesShow
      object AfficheTableauDetailRubriqueFicheTechnique: TPanel
        Left = 0
        Top = 0
        Width = 1329
        Height = 653
        BevelInner = bvLowered
        Color = 13893544
        TabOrder = 0
        object TableauDetailRubriqueFicheTechnique: TStringGrid
          Left = 8
          Top = 136
          Width = 1313
          Height = 458
          Color = 13893544
          ColCount = 19
          Ctl3D = False
          FixedColor = 8453888
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goColMoving]
          ParentCtl3D = False
          TabOrder = 0
          OnClick = TableauDetailRubriqueFicheTechniqueClick
          OnKeyDown = TableauDetailRubriqueFicheTechniqueKeyDown
          OnKeyPress = TableauDetailRubriqueFicheTechniqueKeyPress
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
            64)
          RowHeights = (
            24
            24
            24
            24
            24)
        end
        object AffichageTitreDetailRubrique: TPanel
          Left = 8
          Top = 5
          Width = 1313
          Height = 31
          BevelInner = bvLowered
          Color = 8453888
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object Label25: TLabel
            Left = 122
            Top = 12
            Width = 54
            Height = 13
            Caption = 'P'#233'riode du:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label26: TLabel
            Left = 358
            Top = 12
            Width = 15
            Height = 13
            Caption = 'au:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object BitAvis: TBitBtn
            Left = 4
            Top = 3
            Width = 109
            Height = 25
            Caption = 'Etablir un Avis'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = BitAvisClick
            Kind = bkHelp
          end
          object EditOFDateDebut: TDateTimePicker
            Left = 184
            Top = 6
            Width = 169
            Height = 21
            CalAlignment = dtaLeft
            Date = 40375.6004302199
            Time = 40375.6004302199
            DateFormat = dfLong
            DateMode = dmComboBox
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Kind = dtkDate
            ParseInput = False
            ParentFont = False
            TabOrder = 1
            OnChange = EditOFDateDebutChange
            OnExit = EditOFDateDebutExit
            OnUserInput = EditOFDateDebutUserInput
          end
          object EditOFDateFin: TDateTimePicker
            Left = 376
            Top = 6
            Width = 169
            Height = 21
            CalAlignment = dtaLeft
            Date = 40375.6004302199
            Time = 40375.6004302199
            DateFormat = dfLong
            DateMode = dmComboBox
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Kind = dtkDate
            ParseInput = False
            ParentFont = False
            TabOrder = 2
            OnChange = EditOFDateFinChange
            OnExit = EditOFDateFinExit
          end
          object RBDateModifier: TCheckBox
            Left = 552
            Top = 8
            Width = 17
            Height = 17
            Enabled = False
            TabOrder = 3
          end
          object BitBtn24: TBitBtn
            Left = 1032
            Top = 4
            Width = 129
            Height = 25
            Caption = 'Transfert Excel'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnClick = BitBtn24Click
            Kind = bkHelp
            Margin = 0
          end
        end
        object Panel1: TPanel
          Left = 8
          Top = 40
          Width = 1313
          Height = 95
          BevelInner = bvLowered
          Color = 8453888
          TabOrder = 2
          object Label5: TLabel
            Left = 58
            Top = 11
            Width = 30
            Height = 13
            Alignment = taRightJustify
            Caption = 'Projet:'
          end
          object Label6: TLabel
            Left = 5
            Top = 32
            Width = 83
            Height = 13
            Alignment = taRightJustify
            Caption = 'Fiche Technique:'
          end
          object Label12: TLabel
            Left = 42
            Top = 53
            Width = 46
            Height = 13
            Alignment = taRightJustify
            Caption = 'Rubrique:'
          end
          object Bevel8: TBevel
            Left = 688
            Top = 30
            Width = 65
            Height = 37
          end
          object Label39: TLabel
            Left = 27
            Top = 73
            Width = 61
            Height = 13
            Caption = 'Planificateur:'
          end
          object Bevel34: TBevel
            Left = 1168
            Top = 8
            Width = 138
            Height = 41
          end
          object Bevel35: TBevel
            Left = 1167
            Top = 56
            Width = 138
            Height = 33
          end
          object EditTypeAvis: TEdit
            Left = 368
            Top = 29
            Width = 121
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 11
          end
          object EditCodeProjet: TEdit
            Left = 96
            Top = 8
            Width = 121
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            OnEnter = EditCodeProjetEnter
            OnKeyDown = EditCodeProjetKeyDown
          end
          object EditDesignationProjet: TEdit
            Left = 216
            Top = 8
            Width = 537
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
          end
          object EditNumFiche: TEdit
            Left = 96
            Top = 29
            Width = 49
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 2
            OnEnter = EditNumFicheEnter
            OnKeyDown = EditNumFicheKeyDown
          end
          object EditDesignationFiche: TEdit
            Left = 144
            Top = 29
            Width = 345
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 3
          end
          object EditNumRubrique: TEdit
            Left = 96
            Top = 50
            Width = 49
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 4
            OnEnter = EditNumRubriqueEnter
            OnKeyDown = EditNumRubriqueKeyDown
          end
          object EditDesignationRubrique: TEdit
            Left = 144
            Top = 50
            Width = 345
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 5
          end
          object EditTableauSelection: TEdit
            Left = 696
            Top = 40
            Width = 49
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 6
          end
          object EditPrixRubrique: TEdit
            Left = 592
            Top = 50
            Width = 89
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 7
          end
          object EditQuantiteRubrique: TEdit
            Left = 496
            Top = 50
            Width = 89
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 8
          end
          object EditChargementTypeProces: TEdit
            Left = 496
            Top = 29
            Width = 89
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 9
          end
          object EditChargementFichierConcerne: TEdit
            Left = 592
            Top = 29
            Width = 89
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 10
          end
          object EditNumPlanificateur: TEdit
            Left = 96
            Top = 71
            Width = 49
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 12
            OnEnter = EditNumPlanificateurEnter
          end
          object EditDesignationPlanificateur: TEdit
            Left = 144
            Top = 71
            Width = 345
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 13
          end
          object BitBtn16: TBitBtn
            Left = 1176
            Top = 16
            Width = 121
            Height = 25
            Caption = 'Imprimer l'#39'avis'
            TabOrder = 14
            OnClick = BitBtn16Click
            Kind = bkAll
          end
          object RBImpressionDouble: TCheckBox
            Left = 1192
            Top = 64
            Width = 97
            Height = 17
            Caption = 'Avis Double'
            TabOrder = 15
          end
          object EditSignataire: TComboBox
            Left = 1024
            Top = 66
            Width = 137
            Height = 21
            BevelInner = bvLowered
            BevelKind = bkFlat
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 16
            Text = 'Le Directeur'
            Items.Strings = (
              'Le Directeur'
              'Le G'#233'rant')
          end
        end
        object TableauSelections: TStringGrid
          Left = 328
          Top = 151
          Width = 657
          Height = 257
          Ctl3D = False
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
          ParentCtl3D = False
          TabOrder = 3
          Visible = False
          OnKeyDown = TableauSelectionsKeyDown
          RowHeights = (
            24
            24
            24
            24
            24)
        end
        object AfficheOperationFicheTechnique: TPanel
          Left = 168
          Top = 192
          Width = 657
          Height = 273
          BevelInner = bvLowered
          TabOrder = 4
          Visible = False
          object Bevel9: TBevel
            Left = 8
            Top = 224
            Width = 641
            Height = 42
          end
          object Bevel10: TBevel
            Left = 8
            Top = 7
            Width = 641
            Height = 210
          end
          object Label14: TLabel
            Left = 49
            Top = 18
            Width = 101
            Height = 13
            Alignment = taRightJustify
            Caption = 'Num D'#233'tail Rubrique:'
          end
          object Label15: TLabel
            Left = 124
            Top = 122
            Width = 26
            Height = 13
            Alignment = taRightJustify
            Caption = 'Tiers:'
          end
          object Label17: TLabel
            Left = 107
            Top = 146
            Width = 43
            Height = 13
            Alignment = taRightJustify
            Caption = 'Quantit'#233':'
          end
          object Label16: TLabel
            Left = 108
            Top = 170
            Width = 42
            Height = 13
            Alignment = taRightJustify
            Caption = 'Montant:'
          end
          object Label19: TLabel
            Left = 90
            Top = 194
            Width = 60
            Height = 13
            Alignment = taRightJustify
            Caption = 'Observation:'
          end
          object Label13: TLabel
            Left = 124
            Top = 42
            Width = 26
            Height = 13
            Alignment = taRightJustify
            Caption = 'Date:'
          end
          object Label22: TLabel
            Left = 520
            Top = 19
            Width = 77
            Height = 13
            Caption = 'Contr'#244'le Pi'#232'ces:'
          end
          object BitOperationDetailRubrique: TBitBtn
            Left = 544
            Top = 232
            Width = 99
            Height = 25
            TabOrder = 0
            OnClick = BitOperationDetailRubriqueClick
            Kind = bkAll
          end
          object BitBtn9: TBitBtn
            Left = 16
            Top = 232
            Width = 75
            Height = 25
            TabOrder = 1
            OnClick = BitBtn9Click
            Kind = bkCancel
          end
          object EditNumDetailRubrique: TEdit
            Left = 160
            Top = 16
            Width = 121
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 2
            OnKeyDown = EditNumDetailRubriqueKeyDown
          end
          object EditCodeTiers: TEdit
            Left = 160
            Top = 120
            Width = 81
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
          end
          object EditTiers: TEdit
            Left = 160
            Top = 120
            Width = 369
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 4
            OnEnter = EditTiersEnter
            OnKeyDown = EditTiersKeyDown
            OnKeyUp = EditTiersKeyUp
          end
          object EditQuantiteOperation: TEdit
            Left = 160
            Top = 144
            Width = 121
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 5
            OnEnter = EditQuantiteOperationEnter
            OnExit = EditQuantiteOperationExit
            OnKeyDown = EditQuantiteOperationKeyDown
          end
          object EditMontantOperation: TEdit
            Left = 160
            Top = 168
            Width = 121
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 6
            OnEnter = EditMontantOperationEnter
            OnExit = EditMontantOperationExit
            OnKeyDown = EditMontantOperationKeyDown
          end
          object EditObservation: TEdit
            Left = 160
            Top = 192
            Width = 481
            Height = 19
            Ctl3D = False
            MaxLength = 100
            ParentCtl3D = False
            TabOrder = 7
            OnKeyDown = EditObservationKeyDown
          end
          object EditDate: TDateTimePicker
            Left = 160
            Top = 39
            Width = 186
            Height = 21
            CalAlignment = dtaLeft
            Date = 40884.1991531018
            Time = 40884.1991531018
            DateFormat = dfLong
            DateMode = dmComboBox
            Kind = dtkDate
            ParseInput = False
            TabOrder = 8
            OnKeyDown = EditDateKeyDown
          end
          object AfficheModePaiement: TPanel
            Left = 16
            Top = 64
            Width = 625
            Height = 49
            BevelInner = bvLowered
            TabOrder = 9
            object Label18: TLabel
              Left = 8
              Top = 20
              Width = 126
              Height = 13
              Caption = 'Modalit'#233' de paiement:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object EditModePaiement: TComboBox
              Left = 136
              Top = 14
              Width = 89
              Height = 21
              BevelInner = bvLowered
              BevelKind = bkFlat
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 0
              Text = 'Ch'#232'que'
              OnKeyDown = EditModePaiementKeyDown
              OnSelect = EditModePaiementSelect
              Items.Strings = (
                'Ch'#232'que'
                'Esp'#232'ce'
                'Virement'
                'Bon'
                'Cr'#233'dit')
            end
            object AfficheDomiciliation: TPanel
              Left = 240
              Top = 8
              Width = 377
              Height = 33
              BevelInner = bvLowered
              TabOrder = 1
              object Label20: TLabel
                Left = 9
                Top = 12
                Width = 77
                Height = 13
                Caption = 'Domiciliation:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label21: TLabel
                Left = 219
                Top = 12
                Width = 55
                Height = 13
                Caption = 'N'#176' Pi'#232'ce:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object EditDomiciliation: TComboBox
                Left = 88
                Top = 6
                Width = 123
                Height = 21
                BevelInner = bvLowered
                BevelKind = bkFlat
                ItemHeight = 13
                TabOrder = 0
                OnChange = EditDomiciliationChange
                OnKeyDown = EditDomiciliationKeyDown
              end
              object EditNumPiece: TEdit
                Left = 275
                Top = 8
                Width = 94
                Height = 19
                Ctl3D = False
                ParentCtl3D = False
                TabOrder = 1
                OnKeyDown = EditNumPieceKeyDown
              end
            end
          end
          object EditLongueureSeriePiece: TEdit
            Left = 600
            Top = 16
            Width = 25
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 10
            Text = '3'
          end
          object UpDown1: TUpDown
            Left = 625
            Top = 16
            Width = 16
            Height = 19
            Associate = EditLongueureSeriePiece
            Min = 1
            Max = 10
            Position = 3
            TabOrder = 11
            Wrap = False
          end
          object BitBtn12: TBitBtn
            Left = 176
            Top = 232
            Width = 265
            Height = 25
            Caption = 'R'#233'orientation Fiche Technique'
            TabOrder = 12
            OnClick = BitBtn12Click
            Kind = bkHelp
          end
        end
        object TableauTiers: TStringGrid
          Left = 248
          Top = 429
          Width = 497
          Height = 212
          ColCount = 10
          Ctl3D = False
          DefaultColWidth = 40
          DefaultRowHeight = 18
          RowCount = 20
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
          ParentCtl3D = False
          TabOrder = 5
          Visible = False
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
        object AfficheOperationDetailRubrique: TPanel
          Left = 1173
          Top = 8
          Width = 145
          Height = 25
          BevelInner = bvLowered
          Caption = 'Op'#233'rations'
          Color = 8454143
          TabOrder = 6
          OnClick = AfficheOperationDetailRubriqueClick
          object Bevel15: TBevel
            Left = 8
            Top = 32
            Width = 129
            Height = 41
          end
          object Bevel16: TBevel
            Left = 8
            Top = 80
            Width = 129
            Height = 65
          end
          object Bevel17: TBevel
            Left = 8
            Top = 152
            Width = 129
            Height = 25
          end
          object BitImprimerDetailRubriques: TBitBtn
            Left = 16
            Top = 40
            Width = 113
            Height = 25
            Caption = 'Imprimer'
            TabOrder = 0
            OnClick = BitImprimerDetailRubriquesClick
            Kind = bkHelp
          end
          object StaticText3: TStaticText
            Left = 16
            Top = 88
            Width = 105
            Height = 17
            Caption = 'Orientation du papier:'
            TabOrder = 1
          end
          object RBOrientationPapierDetailRubriques: TComboBox
            Left = 16
            Top = 116
            Width = 113
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
        end
        object AfficheSeriePieceAvis: TPanel
          Left = 784
          Top = 153
          Width = 225
          Height = 300
          BevelInner = bvLowered
          BevelWidth = 6
          Color = 14738629
          TabOrder = 7
          object Bevel23: TBevel
            Left = 16
            Top = 194
            Width = 193
            Height = 41
          end
          object Bevel27: TBevel
            Left = 16
            Top = 242
            Width = 193
            Height = 41
          end
          object TableauSeriePieceAvis: TStringGrid
            Left = 16
            Top = 16
            Width = 193
            Height = 171
            ColCount = 2
            Ctl3D = False
            DefaultColWidth = 80
            DefaultRowHeight = 20
            FixedCols = 0
            RowCount = 10
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
            ParentCtl3D = False
            TabOrder = 0
            OnDblClick = TableauSeriePieceAvisDblClick
            OnKeyDown = TableauSeriePieceAvisKeyDown
            OnKeyPress = TableauSeriePieceAvisKeyPress
            ColWidths = (
              90
              82)
          end
          object BitValiderSeriePieceAvis: TBitBtn
            Left = 24
            Top = 202
            Width = 177
            Height = 25
            Caption = 'Valider'
            TabOrder = 1
            OnClick = BitValiderSeriePieceAvisClick
            Kind = bkAll
          end
          object BitBtn17: TBitBtn
            Left = 24
            Top = 250
            Width = 177
            Height = 25
            TabOrder = 2
            OnClick = BitBtn17Click
            Kind = bkNo
          end
        end
        object AfficheReorientation: TPanel
          Left = 680
          Top = 160
          Width = 657
          Height = 273
          BevelInner = bvLowered
          Color = 8454143
          TabOrder = 8
          Visible = False
          object Label40: TLabel
            Left = 35
            Top = 89
            Width = 61
            Height = 13
            Caption = 'Planificateur:'
          end
          object Bevel19: TBevel
            Left = 8
            Top = 8
            Width = 641
            Height = 105
          end
          object Label27: TLabel
            Left = 66
            Top = 19
            Width = 30
            Height = 13
            Alignment = taRightJustify
            Caption = 'Projet:'
          end
          object Label28: TLabel
            Left = 13
            Top = 43
            Width = 83
            Height = 13
            Alignment = taRightJustify
            Caption = 'Fiche Technique:'
          end
          object Label29: TLabel
            Left = 50
            Top = 67
            Width = 46
            Height = 13
            Alignment = taRightJustify
            Caption = 'Rubrique:'
          end
          object Bevel20: TBevel
            Left = 8
            Top = 120
            Width = 641
            Height = 145
          end
          object Label30: TLabel
            Left = 17
            Top = 132
            Width = 101
            Height = 13
            Alignment = taRightJustify
            Caption = 'Num D'#233'tail Rubrique:'
          end
          object Label31: TLabel
            Left = 92
            Top = 154
            Width = 26
            Height = 13
            Alignment = taRightJustify
            Caption = 'Tiers:'
          end
          object Label32: TLabel
            Left = 75
            Top = 178
            Width = 43
            Height = 13
            Alignment = taRightJustify
            Caption = 'Quantit'#233':'
          end
          object Label33: TLabel
            Left = 76
            Top = 202
            Width = 42
            Height = 13
            Alignment = taRightJustify
            Caption = 'Montant:'
          end
          object Label34: TLabel
            Left = 58
            Top = 226
            Width = 60
            Height = 13
            Alignment = taRightJustify
            Caption = 'Observation:'
          end
          object Bevel25: TBevel
            Left = 552
            Top = 216
            Width = 90
            Height = 42
          end
          object Bevel26: TBevel
            Left = 447
            Top = 127
            Width = 194
            Height = 58
          end
          object EditDesignationPlanificateurReorientation: TEdit
            Left = 224
            Top = 87
            Width = 417
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 15
          end
          object EditNumPlanificateurReorientation: TEdit
            Left = 104
            Top = 87
            Width = 121
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 14
            OnEnter = EditNumPlanificateurReorientationEnter
          end
          object EditDesignationRubriqueReorientation: TEdit
            Left = 224
            Top = 64
            Width = 417
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 5
          end
          object EditCodeProjetReorientation: TEdit
            Left = 104
            Top = 16
            Width = 121
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            OnEnter = EditCodeProjetReorientationEnter
            OnKeyDown = EditCodeProjetReorientationKeyDown
          end
          object EditDesignationProjetReorientation: TEdit
            Left = 224
            Top = 16
            Width = 417
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
          end
          object EditNumFicheReorientation: TEdit
            Left = 104
            Top = 40
            Width = 121
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 2
            OnEnter = EditNumFicheReorientationEnter
            OnKeyDown = EditNumFicheReorientationKeyDown
          end
          object EditDesignationFicheReorientation: TEdit
            Left = 224
            Top = 40
            Width = 417
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
          end
          object EditNumRubriqueReorientation: TEdit
            Left = 104
            Top = 64
            Width = 121
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 4
            OnEnter = EditNumRubriqueReorientationEnter
            OnKeyDown = EditNumRubriqueReorientationKeyDown
          end
          object BitBtn13: TBitBtn
            Left = 560
            Top = 224
            Width = 75
            Height = 25
            TabOrder = 7
            OnClick = BitBtn13Click
            Kind = bkCancel
          end
          object BitValiderReorientation: TBitBtn
            Left = 456
            Top = 136
            Width = 177
            Height = 41
            Caption = 'Valider'
            TabOrder = 8
            OnClick = BitValiderReorientationClick
            Kind = bkAll
          end
          object EditNumDetailRubriqueReorientation: TEdit
            Left = 136
            Top = 128
            Width = 121
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 9
          end
          object EditTiersReorientation: TEdit
            Left = 136
            Top = 152
            Width = 289
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 10
          end
          object EditQuantiteOperationReorientation: TEdit
            Left = 136
            Top = 176
            Width = 121
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 11
          end
          object EditMontantOperationReorientation: TEdit
            Left = 136
            Top = 200
            Width = 121
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 12
          end
          object EditObservationReorientation: TEdit
            Left = 136
            Top = 224
            Width = 289
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 13
          end
          object TableauSelectionsReorientation: TStringGrid
            Left = 104
            Top = 112
            Width = 537
            Height = 153
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 6
            Visible = False
            OnKeyDown = TableauSelectionsReorientationKeyDown
            RowHeights = (
              24
              24
              24
              24
              24)
          end
        end
        object PageSelectMois: TPageControl
          Left = 4
          Top = 596
          Width = 1317
          Height = 49
          ActivePage = PageAnnee
          TabIndex = 0
          TabOrder = 9
          object PageAnnee: TTabSheet
            Caption = '   Ann'#233'e   '
            ImageIndex = 12
            OnShow = PageAnneeShow
            object Label37: TLabel
              Left = 4
              Top = 4
              Width = 94
              Height = 13
              Caption = 'Exercice '#224' afficher !'
            end
            object EditAnneeSelectMois: TMaskEdit
              Left = 104
              Top = 1
              Width = 45
              Height = 19
              Color = clBlack
              Ctl3D = False
              EditMask = '!9999;1;_'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              MaxLength = 4
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              Text = '2000'
            end
            object IncrimenteEditAnneeSelectMois: TUpDown
              Left = 149
              Top = 1
              Width = 17
              Height = 19
              Associate = EditAnneeSelectMois
              Min = 2000
              Max = 9999
              Position = 2000
              TabOrder = 1
              Thousands = False
              Wrap = False
              OnClick = IncrimenteEditAnneeSelectMoisClick
            end
            object RBDetectionAnomolies: TCheckBox
              Left = 1184
              Top = 0
              Width = 121
              Height = 17
              Caption = 'D'#233'tection Anomalies'
              Checked = True
              State = cbChecked
              TabOrder = 2
            end
          end
          object PageJanvier: TTabSheet
            Caption = '  Janvier  '
            OnShow = PageJanvierShow
          end
          object PageFevrier: TTabSheet
            Caption = '  F'#233'vrier  '
            ImageIndex = 1
            OnShow = PageFevrierShow
          end
          object PageMars: TTabSheet
            Caption = '   Mars   '
            ImageIndex = 2
            OnShow = PageMarsShow
          end
          object PageAvril: TTabSheet
            Caption = '   Avril   '
            ImageIndex = 3
            OnShow = PageAvrilShow
          end
          object PageMai: TTabSheet
            Caption = '   Mai   '
            ImageIndex = 4
            OnShow = PageMaiShow
          end
          object PageJuin: TTabSheet
            Caption = '  Juin  '
            ImageIndex = 5
            OnShow = PageJuinShow
          end
          object PageJuillet: TTabSheet
            Caption = '  Juillet  '
            ImageIndex = 6
            OnShow = PageJuilletShow
          end
          object PageAout: TTabSheet
            Caption = '   Ao'#251't   '
            ImageIndex = 7
            OnShow = PageAoutShow
          end
          object PageSeptembre: TTabSheet
            Caption = '  Septembre  '
            ImageIndex = 8
            OnShow = PageSeptembreShow
          end
          object PageOctobre: TTabSheet
            Caption = '  Octobre  '
            ImageIndex = 9
            OnShow = PageOctobreShow
          end
          object PageNovembre: TTabSheet
            Caption = '  Novembre  '
            ImageIndex = 10
            OnShow = PageNovembreShow
          end
          object PageDecembre: TTabSheet
            Caption = '  D'#233'cembre  '
            ImageIndex = 11
            OnShow = PageDecembreShow
          end
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = '     Tableau de bord projets     '
      ImageIndex = 2
      OnShow = TabSheet1Show
      object Bevel11: TBevel
        Left = 640
        Top = 40
        Width = 129
        Height = 41
      end
      object Bevel12: TBevel
        Left = 640
        Top = 88
        Width = 129
        Height = 57
      end
      object AfficheInformationTableauBorsProjets: TPanel
        Left = 0
        Top = -1
        Width = 1329
        Height = 27
        BevelInner = bvLowered
        Caption = 'Tableau de bord projets'
        Color = 14803200
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label24: TLabel
          Left = 8
          Top = 6
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
        object EditRonStructureTableauBord: TComboBox
          Left = 112
          Top = 3
          Width = 145
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 0
          OnSelect = EditRonStructureTableauBordSelect
        end
      end
      object TableauProjet: TStringGrid
        Left = 0
        Top = 32
        Width = 625
        Height = 113
        Color = 16777194
        Ctl3D = False
        DefaultColWidth = 50
        DefaultRowHeight = 18
        FixedColor = 14803200
        RowCount = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnClick = TableauProjetClick
      end
      object BitBtn8: TBitBtn
        Left = 648
        Top = 48
        Width = 115
        Height = 25
        Caption = 'Imprimer'
        TabOrder = 2
        OnClick = BitBtn8Click
        Kind = bkHelp
      end
      object StaticText2: TStaticText
        Left = 651
        Top = 99
        Width = 105
        Height = 17
        Caption = 'Orientation du papier:'
        TabOrder = 3
      end
      object RBOrientationPapierTableauBord: TComboBox
        Left = 648
        Top = 120
        Width = 113
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
      object TableauBordProjet: TStringGrid
        Left = 0
        Top = 152
        Width = 1329
        Height = 495
        Color = 16777185
        Ctl3D = False
        DefaultColWidth = 40
        DefaultRowHeight = 20
        FixedColor = 14803200
        RowCount = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        OnContextPopup = TableauBordProjetContextPopup
        OnDblClick = TableauBordProjetDblClick
      end
      object Diagramme: TDBChart
        Left = 1200
        Top = 456
        Width = 1329
        Height = 625
        AnimatedZoom = True
        BackWall.Brush.Color = clWhite
        Title.Text.Strings = (
          'TDBChart')
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        TabOrder = 6
        Visible = False
        object BitBtn10: TBitBtn
          Left = 912
          Top = 8
          Width = 75
          Height = 25
          TabOrder = 0
          OnClick = BitBtn10Click
          Kind = bkCancel
        end
        object Series1: TBarSeries
          ColorEachPoint = True
          Marks.ArrowLength = 20
          Marks.Style = smsLabelPercent
          Marks.Visible = True
          SeriesColor = clRed
          ShowInLegend = False
          XValues.DateTime = False
          XValues.Name = 'X '
          XValues.Multiplier = 1
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Histo. '
          YValues.Multiplier = 1
          YValues.Order = loAscending
        end
      end
    end
    object PageAnalyseDonnees: TTabSheet
      Caption = '     Analyse de donn'#233'es     '
      ImageIndex = 3
      OnContextPopup = PageAnalyseDonneesContextPopup
      OnShow = PageAnalyseDonneesShow
      object Bevel18: TBevel
        Left = 576
        Top = 72
        Width = 201
        Height = 65
      end
      object Bevel36: TBevel
        Left = 781
        Top = 35
        Width = 220
        Height = 30
      end
      object RBChargerPointeur: TCheckBox
        Left = 784
        Top = 80
        Width = 161
        Height = 17
        Caption = 'Chargement des pointeurs'
        Checked = True
        State = cbChecked
        TabOrder = 18
        Visible = False
      end
      object BitBtn21: TBitBtn
        Left = 786
        Top = 38
        Width = 211
        Height = 25
        Caption = 'Transfert Excel'
        TabOrder = 19
        OnClick = BitBtn21Click
        Kind = bkHelp
        Margin = 20
      end
      object AfficheMoisSelectTiers: TPanel
        Left = 0
        Top = 599
        Width = 1001
        Height = 54
        BevelInner = bvLowered
        Color = 8454143
        TabOrder = 17
        object PageSelectMoisTiers: TPageControl
          Left = 3
          Top = 3
          Width = 990
          Height = 48
          ActivePage = PageAnneeTiers
          TabIndex = 0
          TabOrder = 0
          object PageAnneeTiers: TTabSheet
            Caption = '   Ann'#233'e   '
            ImageIndex = 12
            OnShow = PageAnneeTiersShow
            object Label38: TLabel
              Left = 4
              Top = 4
              Width = 94
              Height = 13
              Caption = 'Exercice '#224' afficher !'
            end
            object EditAnneeSelectMoisTiers: TMaskEdit
              Left = 104
              Top = 1
              Width = 45
              Height = 19
              Color = clBlack
              Ctl3D = False
              EditMask = '!9999;1;_'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              MaxLength = 4
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              Text = '2000'
            end
            object IncrimenteEditAnneeSelectMoisTiers: TUpDown
              Left = 149
              Top = 1
              Width = 16
              Height = 19
              Associate = EditAnneeSelectMoisTiers
              Min = 2000
              Max = 9999
              Position = 2000
              TabOrder = 1
              Thousands = False
              Wrap = False
              OnClick = IncrimenteEditAnneeSelectMoisTiersClick
            end
          end
          object PageJanvierTiers: TTabSheet
            Caption = '  Janvier  '
            OnShow = PageJanvierTiersShow
          end
          object PageFevrierTiers: TTabSheet
            Caption = '  F'#233'vrier  '
            ImageIndex = 1
            OnShow = PageFevrierTiersShow
          end
          object PageMarsTiers: TTabSheet
            Caption = '   Mars   '
            ImageIndex = 2
            OnShow = PageMarsTiersShow
          end
          object PageAvrilTiers: TTabSheet
            Caption = '   Avril   '
            ImageIndex = 3
            OnShow = PageAvrilTiersShow
          end
          object PageMaiTiers: TTabSheet
            Caption = '   Mai   '
            ImageIndex = 4
            OnShow = PageMaiTiersShow
          end
          object PageJuinTiers: TTabSheet
            Caption = '  Juin  '
            ImageIndex = 5
            OnShow = PageJuinTiersShow
          end
          object PageJuilletTiers: TTabSheet
            Caption = '  Juillet  '
            ImageIndex = 6
            OnShow = PageJuilletTiersShow
          end
          object PageAoutTiers: TTabSheet
            Caption = '   Ao'#251't   '
            ImageIndex = 7
            OnShow = PageAoutTiersShow
          end
          object PageSeptembreTiers: TTabSheet
            Caption = '  Septembre  '
            ImageIndex = 8
            OnShow = PageSeptembreTiersShow
          end
          object PageOctobreTiers: TTabSheet
            Caption = '  Octobre  '
            ImageIndex = 9
            OnShow = PageOctobreTiersShow
          end
          object PageNovembreTiers: TTabSheet
            Caption = '  Novembre  '
            ImageIndex = 10
            OnShow = PageNovembreTiersShow
          end
          object PageDecembreTiers: TTabSheet
            Caption = '  D'#233'cembre  '
            ImageIndex = 11
            OnShow = PageDecembreTiersShow
          end
        end
      end
      object Panel12: TPanel
        Left = 0
        Top = 68
        Width = 569
        Height = 73
        BevelInner = bvLowered
        Color = 12189695
        TabOrder = 5
        object Bevel28: TBevel
          Left = 8
          Top = 8
          Width = 265
          Height = 57
        end
        object Bevel29: TBevel
          Left = 280
          Top = 8
          Width = 273
          Height = 57
        end
        object Label56: TLabel
          Left = 16
          Top = 20
          Width = 126
          Height = 13
          Caption = 'Modalit'#233' de paiement:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label57: TLabel
          Left = 62
          Top = 44
          Width = 77
          Height = 13
          Caption = 'Domiciliation:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label58: TLabel
          Left = 290
          Top = 20
          Width = 66
          Height = 13
          Caption = 'P'#233'riode du:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label59: TLabel
          Left = 334
          Top = 43
          Width = 19
          Height = 13
          Caption = 'au:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EditTiersModePaiement: TComboBox
          Left = 152
          Top = 16
          Width = 113
          Height = 21
          BevelKind = bkFlat
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 0
          Text = 'Tous'
          OnSelect = EditTiersModePaiementSelect
          Items.Strings = (
            'Tous'
            'Ch'#232'que'
            'Esp'#232'ce'
            'Virement')
        end
        object EditTiersDomiciliation: TComboBox
          Left = 152
          Top = 40
          Width = 113
          Height = 21
          BevelKind = bkFlat
          ItemHeight = 13
          TabOrder = 1
          OnSelect = EditTiersDomiciliationSelect
        end
        object EditTiersDateDebut: TDateTimePicker
          Left = 360
          Top = 16
          Width = 186
          Height = 21
          CalAlignment = dtaLeft
          Date = 40375.6004302199
          Time = 40375.6004302199
          DateFormat = dfLong
          DateMode = dmComboBox
          Kind = dtkDate
          ParseInput = False
          TabOrder = 2
          OnChange = EditTiersDateDebutChange
        end
        object EditTiersDateFin: TDateTimePicker
          Left = 360
          Top = 40
          Width = 186
          Height = 21
          CalAlignment = dtaLeft
          Date = 40375.6004302199
          Time = 40375.6004302199
          DateFormat = dfLong
          DateMode = dmComboBox
          Kind = dtkDate
          ParseInput = False
          TabOrder = 3
          OnChange = EditTiersDateFinChange
        end
      end
      object RBInclureSoldePourcentage: TCheckBox
        Left = 576
        Top = 149
        Width = 201
        Height = 17
        Caption = 'Inclure Solde Pourcentage:             %'
        TabOrder = 14
        OnClick = RBInclureSoldePourcentageClick
      end
      object EditPourcentageSolde: TEdit
        Left = 726
        Top = 146
        Width = 33
        Height = 19
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 15
        OnExit = EditPourcentageSoldeExit
        OnKeyPress = EditPourcentageSoldeKeyPress
      end
      object RadioGroup1: TRadioGroup
        Left = 0
        Top = 142
        Width = 561
        Height = 25
        TabOrder = 13
      end
      object RBAvisNonExecutes: TRadioButton
        Left = 312
        Top = 148
        Width = 233
        Height = 17
        Caption = 'Afficher uniquement les avis Non '#233'x'#233'cut'#233's !'
        TabOrder = 12
      end
      object RBAvisExecutes: TRadioButton
        Left = 80
        Top = 148
        Width = 217
        Height = 17
        Caption = 'Afficher uniquement les avis '#233'x'#233'cut'#233's !'
        TabOrder = 11
      end
      object RBAvisExecutesNonExecutes: TRadioButton
        Left = 6
        Top = 148
        Width = 67
        Height = 17
        Caption = 'Tous !'
        Checked = True
        TabOrder = 10
        TabStop = True
      end
      object EditRubriqueTrie: TEdit
        Left = 585
        Top = 103
        Width = 16
        Height = 19
        Color = clSilver
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 9
        Text = '1'
      end
      object RBRubriqueTrieTableauFinanceTiers: TCheckBox
        Left = 584
        Top = 104
        Width = 187
        Height = 17
        Caption = 'Triers par la Rubrique s'#233'lectionner!'
        TabOrder = 0
      end
      object RBAfficherAvisAnnulesTiers: TCheckBox
        Left = 584
        Top = 80
        Width = 185
        Height = 17
        Caption = 'Afficher les avis annul'#233's.'
        Checked = True
        State = cbChecked
        TabOrder = 1
        OnClick = RBAfficherAvisAnnulesTiersClick
      end
      object TableauFinanceTiers: TStringGrid
        Left = 0
        Top = 168
        Width = 1001
        Height = 428
        Color = 14811135
        ColCount = 19
        Ctl3D = False
        DefaultColWidth = 50
        DefaultRowHeight = 20
        FixedColor = 8454143
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
        ParentCtl3D = False
        TabOrder = 2
        OnClick = TableauFinanceTiersClick
        OnDblClick = TableauFinanceTiersDblClick
      end
      object AfficheInformationTiers: TPanel
        Left = 0
        Top = 0
        Width = 1001
        Height = 33
        BevelInner = bvLowered
        Color = 8454143
        TabOrder = 3
        object EditTitreTiersFichierConserne: TLabel
          Left = 248
          Top = 11
          Width = 81
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fichier consern'#233':'
        end
        object Label53: TLabel
          Left = 16
          Top = 11
          Width = 78
          Height = 13
          Alignment = taRightJustify
          Caption = 'Type de Proces:'
        end
        object Label54: TLabel
          Left = 456
          Top = 11
          Width = 26
          Height = 13
          Caption = 'Tiers:'
        end
        object EditTiersFichierConserne: TComboBox
          Left = 336
          Top = 7
          Width = 113
          Height = 21
          BevelKind = bkFlat
          Ctl3D = True
          ItemHeight = 13
          ItemIndex = 0
          ParentCtl3D = False
          TabOrder = 0
          Text = 'FFournisseur'
          OnSelect = EditTiersFichierConserneSelect
          Items.Strings = (
            'FFournisseur'
            'FClient'
            'FPersonnel')
        end
        object EditTiersTypeProces: TComboBox
          Left = 96
          Top = 7
          Width = 121
          Height = 21
          BevelKind = bkFlat
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = 'Business'
          OnKeyDown = EditTiersTypeProcesKeyDown
          OnSelect = EditTiersTypeProcesSelect
          Items.Strings = (
            'Business'
            'Commercial'
            'Paie'
            'Comptabilit'#233
            'Social')
        end
        object EditTiersCodeTiers: TEdit
          Left = 488
          Top = 7
          Width = 89
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
        end
        object EditTiersNomTiers: TEdit
          Left = 488
          Top = 7
          Width = 281
          Height = 19
          Color = clBlack
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          OnEnter = EditTiersNomTiersEnter
          OnKeyDown = EditTiersNomTiersKeyDown
          OnKeyUp = EditTiersNomTiersKeyUp
        end
      end
      object AfficheFicheTechnique: TPanel
        Left = 0
        Top = 34
        Width = 569
        Height = 31
        BevelInner = bvLowered
        Color = 16777177
        TabOrder = 4
        object Label55: TLabel
          Left = 53
          Top = 11
          Width = 30
          Height = 13
          Alignment = taRightJustify
          Caption = 'Projet:'
        end
        object Label35: TLabel
          Left = 53
          Top = 35
          Width = 29
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fiche:'
        end
        object Label36: TLabel
          Left = 38
          Top = 59
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Rubrique:'
        end
        object Bevel21: TBevel
          Left = 3
          Top = 78
          Width = 86
          Height = 29
        end
        object Bevel37: TBevel
          Left = 91
          Top = 79
          Width = 470
          Height = 29
        end
        object EditTiersNumFicheTechniqueTraitement: TEdit
          Left = 88
          Top = 32
          Width = 81
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
        end
        object EditTiersNumRubriqueTraitement: TEdit
          Left = 88
          Top = 56
          Width = 81
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object EditTiersNumProjetTraitement: TEdit
          Left = 88
          Top = 8
          Width = 81
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
        object EditTiersNomProjetTraitement: TEdit
          Left = 88
          Top = 8
          Width = 361
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
          OnEnter = EditTiersNomProjetTraitementEnter
          OnKeyDown = EditTiersNomProjetTraitementKeyDown
        end
        object RBAfficherTiersProjetFinance: TCheckBox
          Left = 458
          Top = 8
          Width = 108
          Height = 17
          Caption = 'Afficher Structures'
          Checked = True
          State = cbChecked
          TabOrder = 2
        end
        object EditTiersDesignationFicheTechniqueTraitement: TEdit
          Left = 88
          Top = 32
          Width = 361
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
          OnEnter = EditTiersDesignationFicheTechniqueTraitementEnter
          OnKeyDown = EditTiersDesignationFicheTechniqueTraitementKeyDown
        end
        object EditTiersDesignationRubriqueTraitement: TEdit
          Left = 88
          Top = 56
          Width = 361
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 6
          OnEnter = EditTiersDesignationRubriqueTraitementEnter
          OnKeyDown = EditTiersDesignationRubriqueTraitementKeyDown
        end
        object BitAfficheFicheTechnique: TBitBtn
          Left = 5
          Top = 3
          Width = 36
          Height = 25
          Caption = '.'
          TabOrder = 7
          OnClick = BitAfficheFicheTechniqueClick
          Kind = bkRetry
        end
        object BitBtn23: TBitBtn
          Left = 8
          Top = 80
          Width = 73
          Height = 25
          Caption = 'Aucun'
          TabOrder = 8
          OnClick = BitBtn23Click
          Kind = bkAll
        end
      end
      object AfficheTiersOptionPrint: TPanel
        Left = 577
        Top = 34
        Width = 200
        Height = 31
        BevelInner = bvLowered
        Caption = 'Imprimer'
        Color = 8454143
        TabOrder = 6
        OnClick = AfficheTiersOptionPrintClick
        object Bevel30: TBevel
          Left = 8
          Top = 40
          Width = 185
          Height = 169
        end
        object RadioGroup4: TRadioGroup
          Left = 16
          Top = 80
          Width = 169
          Height = 121
          Caption = 'Options d'#39'Impression:'
          TabOrder = 0
        end
        object StaticText4: TStaticText
          Left = 24
          Top = 107
          Width = 105
          Height = 17
          Caption = 'Orientation du papier:'
          TabOrder = 1
        end
        object RBTiersOrientationPapier: TComboBox
          Left = 24
          Top = 128
          Width = 153
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
        object RBTiersAjustement: TCheckBox
          Left = 24
          Top = 168
          Width = 113
          Height = 17
          Caption = 'Ajustement !'
          Checked = True
          State = cbChecked
          TabOrder = 3
        end
        object BitBtn18: TBitBtn
          Left = 16
          Top = 48
          Width = 169
          Height = 25
          Caption = 'Print'
          TabOrder = 4
          OnClick = BitBtn18Click
          Kind = bkAll
        end
      end
      object TableauTiersProjetTraitement: TStringGrid
        Left = 88
        Top = 64
        Width = 689
        Height = 441
        Color = 16777192
        ColCount = 2
        Ctl3D = False
        DefaultColWidth = 50
        DefaultRowHeight = 20
        FixedColor = 16777181
        RowCount = 2
        ParentCtl3D = False
        TabOrder = 7
        Visible = False
        OnDblClick = TableauTiersProjetTraitementDblClick
        OnKeyDown = TableauTiersProjetTraitementKeyDown
        ColWidths = (
          50
          50)
      end
      object TableauTiersListeTiers: TStringGrid
        Left = 0
        Top = 66
        Width = 1001
        Height = 561
        ColCount = 10
        Ctl3D = False
        DefaultColWidth = 40
        DefaultRowHeight = 18
        RowCount = 20
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
        ParentCtl3D = False
        TabOrder = 8
        Visible = False
        OnDblClick = TableauTiersListeTiersDblClick
        OnKeyDown = TableauTiersListeTiersKeyDown
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
      object TableauAfficheFicheTraitementTiers: TStringGrid
        Left = 384
        Top = 168
        Width = 361
        Height = 337
        Color = 13434879
        Ctl3D = False
        FixedColor = 4259839
        RowCount = 2
        ParentCtl3D = False
        TabOrder = 16
        Visible = False
        OnKeyDown = TableauAfficheFicheTraitementTiersKeyDown
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
      object BitBtn22: TBitBtn
        Left = 784
        Top = 4
        Width = 212
        Height = 25
        Caption = 'S'#233'lectionner les tiers Planifiers'
        TabOrder = 20
        OnClick = BitBtn22Click
        Kind = bkHelp
      end
    end
    object PageOptions: TTabSheet
      Caption = '     Options     '
      ImageIndex = 4
      object GroupBox1: TGroupBox
        Left = 8
        Top = 8
        Width = 345
        Height = 249
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
        object RBInclureRegistrePlanificateur: TCheckBox
          Left = 8
          Top = 184
          Width = 329
          Height = 17
          Caption = 'Inclure le registre planificateur'
          TabOrder = 4
        end
        object RBInclureAvisFinance: TCheckBox
          Left = 8
          Top = 208
          Width = 177
          Height = 17
          Caption = 'Inclure les avis financiers'
          TabOrder = 5
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
      object Panel8: TPanel
        Left = 0
        Top = 488
        Width = 17
        Height = 17
        TabOrder = 2
      end
      object RBChargementExterne: TCheckBox
        Left = 360
        Top = 16
        Width = 121
        Height = 17
        Caption = 'Chargement Externe'
        Enabled = False
        TabOrder = 3
      end
      object EditTitreEtat: TRichEdit
        Left = 16
        Top = 280
        Width = 401
        Height = 89
        ReadOnly = True
        TabOrder = 4
      end
    end
  end
  object AfficheMessage: TPanel
    Left = 592
    Top = 208
    Width = 385
    Height = 113
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
    OnExit = AfficheMessageExit
    object Bevel22: TBevel
      Left = 130
      Top = 74
      Width = 121
      Height = 34
    end
    object BitAfficheMessage: TBitBtn
      Left = 136
      Top = 79
      Width = 110
      Height = 25
      Caption = 'OK'
      TabOrder = 0
      OnClick = BitAfficheMessageClick
      Kind = bkAll
    end
  end
  object AffichePatientez: TPanel
    Left = 296
    Top = 198
    Width = 585
    Height = 83
    BevelInner = bvLowered
    BevelWidth = 5
    Caption = 'Patientez SVP ! ... L'#39'op'#233'ration peut prendre plusieurs minutes.'
    Color = 12582911
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Visible = False
  end
  object TimerAfficheMessage: TTimer
    Enabled = False
    Interval = 150
    OnTimer = TimerAfficheMessageTimer
    Left = 760
    Top = 8
  end
  object TimerLancerAfficheTiers: TTimer
    Interval = 200
    OnTimer = TimerLancerAfficheTiersTimer
    Left = 832
    Top = 8
  end
  object TimerAfficheTiers: TTimer
    Enabled = False
    Interval = 50
    OnTimer = TimerAfficheTiersTimer
    Left = 800
    Top = 8
  end
  object TimerLancerAffichageDetail: TTimer
    Enabled = False
    Interval = 200
    OnTimer = TimerLancerAffichageDetailTimer
    Left = 1264
    Top = 16
  end
  object LancerTimerLancerAffichageDetail: TTimer
    Enabled = False
    Interval = 200
    OnTimer = LancerTimerLancerAffichageDetailTimer
    Left = 1296
    Top = 16
  end
end
