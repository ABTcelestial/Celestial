object FSGenerateurBase: TFSGenerateurBase
  Left = -3
  Top = 0
  Width = 1382
  Height = 754
  Caption = 'G'#233'n'#233'rateur de Base'
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
  object PageBasePrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 1345
    Height = 705
    ActivePage = PageGenerateurBasePlanificateur
    TabIndex = 1
    TabOrder = 0
    OnResize = FormShow
    object PageGenerateurBaseAvis: TTabSheet
      Caption = '     G'#233'n'#233'rateur de Bases Avis     '
      ImageIndex = 2
      object PageBaseSecondaire: TPageControl
        Left = 0
        Top = 0
        Width = 1329
        Height = 657
        ActivePage = PageGenerateurTypeAvis
        TabIndex = 0
        TabOrder = 0
        OnChange = PageBaseSecondaireChange
        object PageGenerateurTypeAvis: TTabSheet
          Caption = '     G'#233'n'#233'rateur de type d'#39'avis     '
          OnShow = PageGenerateurTypeAvisShow
          object Bevel54: TBevel
            Left = 1056
            Top = 576
            Width = 217
            Height = 42
          end
          object Label96: TLabel
            Left = 1056
            Top = 176
            Width = 178
            Height = 13
            Caption = 'Rapport sur les mises '#224' jour des Avis.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
          end
          object EditTypeProcesAfficher: TEdit
            Left = 1059
            Top = 151
            Width = 49
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 6
          end
          object EditTypeProcesReseaux: TComboBox
            Left = 1056
            Top = 150
            Width = 169
            Height = 21
            BevelInner = bvNone
            BevelKind = bkFlat
            ItemHeight = 13
            TabOrder = 5
            OnChange = EditTypeProcesReseauxChange
            OnEnter = EditTypeProcesReseauxEnter
          end
          object TableauTypeAvis: TStringGrid
            Left = 0
            Top = 0
            Width = 1049
            Height = 626
            ColCount = 8
            Ctl3D = False
            DefaultColWidth = 40
            DefaultRowHeight = 20
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
            ParentCtl3D = False
            TabOrder = 0
            OnClick = TableauTypeAvisClick
            OnDrawCell = TableauTypeAvisDrawCell
            OnKeyPress = TableauTypeAvisKeyPress
            ColWidths = (
              40
              73
              377
              90
              102
              96
              111
              77)
          end
          object AfficheOptionsTypeAvis: TPanel
            Left = 232
            Top = 88
            Width = 537
            Height = 241
            BevelInner = bvLowered
            Color = 8454143
            TabOrder = 1
            Visible = False
            OnMouseDown = AfficheOptionsTypeAvisMouseDown
            object Bevel11: TBevel
              Left = 8
              Top = 8
              Width = 521
              Height = 177
            end
            object Label17: TLabel
              Left = 68
              Top = 20
              Width = 42
              Height = 13
              Alignment = taRightJustify
              Caption = 'N'#176' Type:'
            end
            object Label18: TLabel
              Left = 51
              Top = 44
              Width = 59
              Height = 13
              Alignment = taRightJustify
              Caption = 'D'#233'signation:'
            end
            object Label19: TLabel
              Left = 19
              Top = 68
              Width = 91
              Height = 13
              Alignment = taRightJustify
              Caption = 'Compte Imputation:'
            end
            object Label20: TLabel
              Left = 50
              Top = 92
              Width = 60
              Height = 13
              Alignment = taRightJustify
              Caption = 'D'#233'bit/Cr'#233'dit:'
            end
            object Bevel13: TBevel
              Left = 8
              Top = 192
              Width = 521
              Height = 41
            end
            object TitreEditFichierConserne: TLabel
              Left = 29
              Top = 140
              Width = 81
              Height = 13
              Alignment = taRightJustify
              Caption = 'Fichier consern'#233':'
            end
            object Label33: TLabel
              Left = 32
              Top = 116
              Width = 78
              Height = 13
              Alignment = taRightJustify
              Caption = 'Type de Proces:'
            end
            object Label90: TLabel
              Left = 20
              Top = 164
              Width = 90
              Height = 13
              Alignment = taRightJustify
              Caption = 'Journal Comptable:'
            end
            object EditNumTypeAvis: TEdit
              Left = 120
              Top = 16
              Width = 73
              Height = 19
              Color = 13948116
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 0
              OnKeyDown = EditNumTypeAvisKeyDown
            end
            object BitValiderTypeAvis: TBitBtn
              Left = 400
              Top = 200
              Width = 123
              Height = 25
              TabOrder = 1
              OnClick = BitValiderTypeAvisClick
              Kind = bkAll
            end
            object EditDesignationTypeAvis: TEdit
              Left = 120
              Top = 40
              Width = 401
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 2
              OnKeyDown = EditDesignationTypeAvisKeyDown
            end
            object EditCompteTypeAvis: TEdit
              Left = 120
              Top = 64
              Width = 121
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 3
              OnKeyDown = EditCompteTypeAvisKeyDown
            end
            object BitBtn6: TBitBtn
              Left = 16
              Top = 200
              Width = 113
              Height = 25
              TabOrder = 4
              OnClick = BitBtn6Click
              Kind = bkCancel
            end
            object EditDebitCreditTypeAvis: TComboBox
              Left = 120
              Top = 88
              Width = 121
              Height = 21
              BevelKind = bkFlat
              ItemHeight = 13
              TabOrder = 5
              Text = 'D'#233'bit'
              OnKeyDown = EditDebitCreditTypeAvisKeyDown
              OnKeyPress = EditDebitCreditTypeAvisKeyPress
              Items.Strings = (
                'D'#233'bit'
                'Cr'#233'dit'
                'D'#233'bitCr'#233'dit')
            end
            object EditFichierConserne: TComboBox
              Left = 120
              Top = 136
              Width = 401
              Height = 21
              BevelKind = bkFlat
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 6
              Text = 'FFournisseur'
              OnKeyDown = EditFichierConserneKeyDown
              OnKeyPress = EditFichierConserneKeyPress
              OnSelect = EditFichierConserneSelect
              Items.Strings = (
                'FFournisseur'
                'FClient'
                'FPersonnel')
            end
            object EditTypeProcesAvis: TComboBox
              Left = 120
              Top = 112
              Width = 121
              Height = 21
              BevelKind = bkFlat
              ItemHeight = 13
              TabOrder = 7
              Text = 'Commercial'
              OnChange = EditTypeProcesAvisChange
              OnKeyDown = EditTypeProcesAvisKeyDown
              Items.Strings = (
                'Business'
                'Commercial'
                'Paie'
                'Comptabilit'#233
                'Social')
            end
            object EditJourneauxAuxiliaireUtiliseAvis: TEdit
              Left = 120
              Top = 160
              Width = 401
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 8
              OnDblClick = EditJourneauxAuxiliaireUtiliseAvisDblClick
              OnKeyDown = EditJourneauxAuxiliaireUtiliseAvisKeyDown
            end
            object RadioGroup3: TRadioGroup
              Left = 248
              Top = 64
              Width = 249
              Height = 41
              Caption = 'Sige d'#39'imputation:'
              TabOrder = 9
            end
            object RBSigneDebitCreditPositive: TRadioButton
              Left = 255
              Top = 85
              Width = 74
              Height = 17
              Caption = 'Positive.'
              Checked = True
              TabOrder = 10
              TabStop = True
              OnClick = RBSigneDebitCreditPositiveClick
            end
            object RBSigneDebitCreditNigative: TRadioButton
              Left = 352
              Top = 84
              Width = 73
              Height = 17
              Caption = 'Nigative.'
              TabOrder = 11
              OnClick = RBSigneDebitCreditNigativeClick
            end
            object EditSigneDebitCredit: TEdit
              Left = 472
              Top = 82
              Width = 17
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 12
              Text = '1'
            end
            object EditOperationFichierTiersConserne: TEdit
              Left = 248
              Top = 112
              Width = 17
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 13
            end
            object EditAddFichierTiersConserne: TEdit
              Left = 264
              Top = 112
              Width = 233
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 14
            end
          end
          object BitBtn37: TBitBtn
            Left = 1064
            Top = 584
            Width = 201
            Height = 25
            Caption = 'Mise '#224' jour des Avis Financiers !'
            TabOrder = 2
            OnClick = BitBtn37Click
            Kind = bkHelp
          end
          object Panel19: TPanel
            Left = 1056
            Top = 0
            Width = 177
            Height = 145
            BevelInner = bvLowered
            Color = 8454143
            TabOrder = 3
            object BitBtn36: TBitBtn
              Left = 8
              Top = 5
              Width = 161
              Height = 24
              Caption = 'Imprimer'
              TabOrder = 0
              OnClick = BitBtn36Click
              Kind = bkHelp
            end
            object RadioGroup5: TRadioGroup
              Left = 8
              Top = 32
              Width = 161
              Height = 105
              Caption = 'Options d'#39'Impression:'
              TabOrder = 1
            end
            object StaticText2: TStaticText
              Left = 16
              Top = 59
              Width = 105
              Height = 17
              Caption = 'Orientation du papier:'
              TabOrder = 2
            end
            object RBOrientationPapierFinanceProjets: TComboBox
              Left = 16
              Top = 80
              Width = 145
              Height = 21
              BevelInner = bvLowered
              BevelKind = bkFlat
              Ctl3D = False
              ItemHeight = 13
              ItemIndex = 0
              ParentCtl3D = False
              TabOrder = 3
              Text = 'Automatique'
              Items.Strings = (
                'Automatique'
                'Portrait'
                'Paysage')
            end
            object RBAjustementFinanceProjets: TCheckBox
              Left = 16
              Top = 112
              Width = 113
              Height = 17
              Caption = 'Ajustement !'
              Checked = True
              State = cbChecked
              TabOrder = 4
            end
          end
          object EditRapportMAJAvis: TMemo
            Left = 1056
            Top = 192
            Width = 257
            Height = 377
            Color = clBlack
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
          end
        end
        object PageGenerateurDomiciliation: TTabSheet
          Caption = '     G'#233'n'#233'rateur de domiciliation de base     '
          ImageIndex = 1
          OnShow = PageGenerateurDomiciliationShow
          object TableauDomiciliation: TStringGrid
            Left = 0
            Top = 0
            Width = 1041
            Height = 626
            ColCount = 7
            Ctl3D = False
            DefaultColWidth = 30
            DefaultRowHeight = 20
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
            ParentCtl3D = False
            TabOrder = 0
            OnClick = TableauDomiciliationClick
            OnDrawCell = TableauDomiciliationDrawCell
            OnKeyPress = TableauDomiciliationKeyPress
            ColWidths = (
              30
              71
              242
              136
              79
              83
              419)
          end
          object AfficheOptionDomiciliationBase: TPanel
            Left = 176
            Top = 56
            Width = 433
            Height = 273
            BevelInner = bvLowered
            Color = 8454143
            TabOrder = 1
            Visible = False
            OnEnter = AfficheOptionDomiciliationBaseEnter
            OnMouseDown = AfficheOptionDomiciliationBaseMouseDown
            object Bevel1: TBevel
              Left = 8
              Top = 8
              Width = 417
              Height = 209
            end
            object Bevel8: TBevel
              Left = 8
              Top = 224
              Width = 417
              Height = 41
            end
            object Label22: TLabel
              Left = 15
              Top = 19
              Width = 87
              Height = 13
              Alignment = taRightJustify
              Caption = 'Num Domiciliation:'
            end
            object Label23: TLabel
              Left = 43
              Top = 43
              Width = 59
              Height = 13
              Alignment = taRightJustify
              Caption = 'D'#233'signation:'
            end
            object Label24: TLabel
              Left = 38
              Top = 67
              Width = 64
              Height = 13
              Alignment = taRightJustify
              Caption = 'Identificateur:'
            end
            object Label25: TLabel
              Left = 11
              Top = 115
              Width = 91
              Height = 13
              Alignment = taRightJustify
              Caption = 'Compte Imputation:'
            end
            object Label26: TLabel
              Left = 12
              Top = 139
              Width = 90
              Height = 13
              Alignment = taRightJustify
              Caption = 'Journal Comptable:'
            end
            object Label27: TLabel
              Left = 35
              Top = 163
              Width = 67
              Height = 13
              Alignment = taRightJustify
              Caption = 'Emplacement:'
            end
            object Label82: TLabel
              Left = 62
              Top = 91
              Width = 40
              Height = 13
              Alignment = taRightJustify
              Caption = 'Agence:'
            end
            object Label91: TLabel
              Left = 35
              Top = 187
              Width = 67
              Height = 13
              Alignment = taRightJustify
              Caption = 'Etat du Solde:'
            end
            object EditNumDomiciliationModifier: TEdit
              Left = 112
              Top = 16
              Width = 121
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 9
            end
            object BitValiderDomiciliation: TBitBtn
              Left = 304
              Top = 232
              Width = 115
              Height = 25
              Caption = 'Valider'
              TabOrder = 0
              OnClick = BitValiderDomiciliationClick
              Kind = bkAll
            end
            object BitBtn8: TBitBtn
              Left = 16
              Top = 232
              Width = 97
              Height = 25
              TabOrder = 1
              OnClick = BitBtn8Click
              Kind = bkNo
            end
            object EditNumDomiciliation: TEdit
              Left = 112
              Top = 16
              Width = 121
              Height = 19
              Color = 14869218
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 2
              OnEnter = EditNumDomiciliationEnter
              OnKeyDown = EditNumDomiciliationKeyDown
            end
            object EditDesignationDomiciliation: TEdit
              Left = 112
              Top = 40
              Width = 305
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 3
              OnKeyDown = EditDesignationDomiciliationKeyDown
            end
            object EditIdentificateur: TEdit
              Left = 112
              Top = 64
              Width = 193
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 4
              OnKeyDown = EditIdentificateurKeyDown
              OnKeyUp = EditIdentificateurKeyUp
            end
            object EditCompteImputDomiciliation: TEdit
              Left = 112
              Top = 112
              Width = 81
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 5
              OnKeyDown = EditCompteImputDomiciliationKeyDown
            end
            object EditJourneauxAuxiliaireUtiliseDomiciliation: TEdit
              Left = 112
              Top = 136
              Width = 305
              Height = 19
              Color = 15461355
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 6
              OnDblClick = EditJourneauxAuxiliaireUtiliseDomiciliationDblClick
              OnKeyDown = EditJourneauxAuxiliaireUtiliseDomiciliationKeyDown
            end
            object EditEmplacement: TEdit
              Left = 112
              Top = 160
              Width = 305
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 7
              OnKeyDown = EditEmplacementKeyDown
            end
            object EditLibelleAgence: TEdit
              Left = 112
              Top = 88
              Width = 305
              Height = 19
              Color = 15461355
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 8
            end
            object EditEtatSoldeDebitCredit: TComboBox
              Left = 112
              Top = 184
              Width = 145
              Height = 21
              BevelKind = bkFlat
              Ctl3D = False
              ItemHeight = 13
              ItemIndex = 0
              ParentCtl3D = False
              TabOrder = 10
              Text = 'D'#233'bitCr'#233'dit'
              OnKeyDown = EditEtatSoldeDebitCreditKeyDown
              OnKeyPress = EditEtatSoldeDebitCreditKeyPress
              Items.Strings = (
                'D'#233'bitCr'#233'dit'
                'D'#233'bit'
                'Cr'#233'dit')
            end
          end
          object TableauAgenceBanque: TStringGrid
            Left = 483
            Top = 120
            Width = 374
            Height = 153
            ColCount = 3
            Ctl3D = False
            RowCount = 2
            ParentCtl3D = False
            TabOrder = 2
            Visible = False
          end
          object AfficheListeCompteCP: TPanel
            Left = 545
            Top = 8
            Width = 440
            Height = 625
            BevelInner = bvLowered
            Color = 8454143
            TabOrder = 3
            Visible = False
            OnMouseDown = AfficheListeCompteCPMouseDown
            object Bevel46: TBevel
              Left = 8
              Top = 48
              Width = 129
              Height = 34
            end
            object Bevel47: TBevel
              Left = 144
              Top = 48
              Width = 289
              Height = 34
            end
            object Bevel48: TBevel
              Left = 216
              Top = 8
              Width = 185
              Height = 34
            end
            object Label21: TLabel
              Left = 8
              Top = 6
              Width = 127
              Height = 13
              Caption = 'Liste Comptes Comptables.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsUnderline]
              ParentFont = False
            end
            object Label88: TLabel
              Left = 16
              Top = 59
              Width = 28
              Height = 13
              Caption = 'Code:'
            end
            object Label89: TLabel
              Left = 223
              Top = 19
              Width = 121
              Height = 13
              Caption = 'Ordre Compte Comptable:'
            end
            object TableauListeCompteCP: TStringGrid
              Left = 8
              Top = 88
              Width = 425
              Height = 529
              Ctl3D = False
              DefaultColWidth = 40
              DefaultRowHeight = 20
              FixedColor = 8454143
              RowCount = 20
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
              ParentCtl3D = False
              TabOrder = 0
              OnClick = TableauListeCompteCPClick
              OnDrawCell = TableauListeCompteCPDrawCell
              OnKeyDown = TableauListeCompteCPKeyDown
              ColWidths = (
                40
                50
                226
                2
                2)
            end
            object EditNumCptPrincipal: TEdit
              Left = 48
              Top = 56
              Width = 81
              Height = 19
              Ctl3D = False
              MaxLength = 6
              ParentCtl3D = False
              TabOrder = 1
              OnKeyDown = EditNumCptPrincipalKeyDown
              OnKeyUp = EditNumCptPrincipalKeyUp
            end
            object EditOrdreCompteComptable: TEdit
              Left = 351
              Top = 16
              Width = 25
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 2
              Text = '6'
            end
            object IncrimentOrdreCompteComptable: TUpDown
              Left = 376
              Top = 16
              Width = 16
              Height = 19
              Associate = EditOrdreCompteComptable
              Min = 1
              Max = 6
              Position = 6
              TabOrder = 3
              Wrap = False
              OnClick = IncrimentOrdreCompteComptableClick
            end
            object RBRechercheMotCle: TCheckBox
              Left = 152
              Top = 56
              Width = 153
              Height = 17
              Caption = 'Recherche Par Mot Cl'#233' !'
              TabOrder = 4
              OnClick = RBRechercheMotCleClick
            end
            object EditMotCle: TEdit
              Left = 304
              Top = 56
              Width = 121
              Height = 19
              Ctl3D = False
              Enabled = False
              ParentCtl3D = False
              TabOrder = 5
              OnKeyDown = EditMotCleKeyDown
              OnKeyUp = EditMotCleKeyUp
            end
            object BitBtn34: TBitBtn
              Left = 408
              Top = 8
              Width = 27
              Height = 25
              Caption = '.'
              TabOrder = 6
              OnClick = BitBtn34Click
              Kind = bkCancel
            end
          end
          object AfficheCompteTiers: TPanel
            Left = -360
            Top = 352
            Width = 521
            Height = 345
            BevelInner = bvLowered
            Color = 8454143
            TabOrder = 4
            Visible = False
            object TableauCompteTiers: TStringGrid
              Left = 8
              Top = 8
              Width = 505
              Height = 329
              Ctl3D = False
              DefaultColWidth = 40
              DefaultRowHeight = 20
              FixedCols = 2
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
              ParentCtl3D = False
              TabOrder = 0
              OnKeyDown = TableauCompteTiersKeyDown
              ColWidths = (
                40
                2
                81
                341
                79)
            end
          end
        end
        object PageGenerateurProjet: TTabSheet
          Caption = '     G'#233'n'#233'rateur de Projet     '
          ImageIndex = 2
          object PageControl3: TPageControl
            Left = 0
            Top = 0
            Width = 1313
            Height = 627
            ActivePage = PageTypeProjet
            TabIndex = 0
            TabOrder = 0
            OnChange = PageControl3Change
            object PageTypeProjet: TTabSheet
              Caption = '     G'#233'n'#233'rateur Type de Projet     '
              OnShow = PageTypeProjetShow
              object TableauTypeProjet: TStringGrid
                Left = 0
                Top = 0
                Width = 1041
                Height = 597
                ColCount = 3
                Ctl3D = False
                DefaultColWidth = 40
                DefaultRowHeight = 20
                RowCount = 2
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
                ParentCtl3D = False
                TabOrder = 0
                OnClick = TableauTypeProjetClick
                OnDrawCell = TableauTypeProjetDrawCell
                OnKeyPress = TableauTypeProjetKeyPress
              end
              object AfficheOptionsTypeProjet: TPanel
                Left = 320
                Top = 104
                Width = 345
                Height = 121
                BevelOuter = bvLowered
                Color = 8454143
                TabOrder = 1
                Visible = False
                OnMouseDown = AfficheOptionsTypeProjetMouseDown
                object Bevel16: TBevel
                  Left = 8
                  Top = 8
                  Width = 329
                  Height = 57
                end
                object Bevel22: TBevel
                  Left = 8
                  Top = 72
                  Width = 329
                  Height = 42
                end
                object Label50: TLabel
                  Left = 18
                  Top = 20
                  Width = 52
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Num Type:'
                end
                object Label51: TLabel
                  Left = 43
                  Top = 44
                  Width = 27
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Type:'
                end
                object BitBtn16: TBitBtn
                  Left = 16
                  Top = 80
                  Width = 89
                  Height = 25
                  TabOrder = 0
                  OnClick = BitBtn16Click
                  Kind = bkCancel
                end
                object BitValiderTypeProjet: TBitBtn
                  Left = 240
                  Top = 80
                  Width = 91
                  Height = 25
                  Caption = 'Valider'
                  TabOrder = 1
                  OnClick = BitValiderTypeProjetClick
                  Kind = bkAll
                end
                object EditNumTypeProjet: TEdit
                  Left = 80
                  Top = 16
                  Width = 65
                  Height = 19
                  Color = 14145495
                  Ctl3D = False
                  ParentCtl3D = False
                  ReadOnly = True
                  TabOrder = 2
                  OnKeyDown = EditNumTypeProjetKeyDown
                end
                object EditDesignationTypeProjet: TEdit
                  Left = 80
                  Top = 40
                  Width = 249
                  Height = 19
                  Ctl3D = False
                  ParentCtl3D = False
                  TabOrder = 3
                  OnKeyDown = EditDesignationTypeProjetKeyDown
                end
              end
            end
            object PageProjet: TTabSheet
              Caption = '     G'#233'g'#233'rateur de Projet     '
              ImageIndex = 1
              OnShow = PageProjetShow
              object RBIndiquerReservationStructure: TCheckBox
                Left = 0
                Top = 40
                Width = 233
                Height = 19
                Caption = 'Indiquer les r'#233's'#233'rvation des tructures !'
                Checked = True
                State = cbChecked
                TabOrder = 6
                OnClick = RBIndiquerReservationStructureClick
              end
              object Panel4: TPanel
                Left = 0
                Top = 0
                Width = 1137
                Height = 41
                BevelInner = bvLowered
                Color = 10485752
                TabOrder = 0
                object BitBtn10: TBitBtn
                  Left = 240
                  Top = 8
                  Width = 161
                  Height = 25
                  Caption = 'D'#233'composer la structure !'
                  TabOrder = 0
                  OnClick = BitBtn10Click
                  Kind = bkHelp
                end
                object BitBtn13: TBitBtn
                  Left = 488
                  Top = 8
                  Width = 161
                  Height = 25
                  Caption = 'Modifier la structure'
                  TabOrder = 1
                  OnClick = BitBtn13Click
                  Kind = bkRetry
                end
                object BitBtn14: TBitBtn
                  Left = 968
                  Top = 8
                  Width = 161
                  Height = 25
                  Caption = 'Supprimer la structure'
                  ModalResult = 2
                  TabOrder = 2
                  OnClick = BitBtn14Click
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
                object BitBtn15: TBitBtn
                  Left = 8
                  Top = 8
                  Width = 161
                  Height = 25
                  Caption = 'Nouvelle structure'
                  TabOrder = 3
                  OnClick = BitBtn15Click
                  Kind = bkAll
                end
                object BitBtn71: TBitBtn
                  Left = 728
                  Top = 8
                  Width = 161
                  Height = 25
                  Caption = 'D'#233'tail structure'
                  TabOrder = 4
                  OnClick = BitBtn71Click
                  Kind = bkHelp
                end
              end
              object TableauProjetFinance: TStringGrid
                Left = 0
                Top = 64
                Width = 1297
                Height = 529
                Color = 16777194
                Ctl3D = False
                DefaultColWidth = 50
                DefaultRowHeight = 18
                RowCount = 2
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
                ParentCtl3D = False
                TabOrder = 1
                OnClick = TableauProjetFinanceClick
                OnContextPopup = TableauProjetFinanceContextPopup
                OnDrawCell = TableauProjetFinanceDrawCell
                ColWidths = (
                  50
                  50
                  50
                  50
                  50)
              end
              object AfficheListeTypeProjet: TPanel
                Left = 224
                Top = 56
                Width = 521
                Height = 377
                BevelInner = bvLowered
                Color = 16777162
                TabOrder = 3
                Visible = False
                object TableauListeTypeProjet: TStringGrid
                  Left = 8
                  Top = 8
                  Width = 505
                  Height = 361
                  ColCount = 3
                  Ctl3D = False
                  DefaultColWidth = 40
                  DefaultRowHeight = 20
                  RowCount = 2
                  Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
                  ParentCtl3D = False
                  TabOrder = 0
                  OnKeyDown = TableauListeTypeProjetKeyDown
                end
              end
              object AffichePropositionFicheTechnique: TPanel
                Left = 1128
                Top = 480
                Width = 1305
                Height = 597
                BevelInner = bvLowered
                Color = 16777164
                TabOrder = 4
                Visible = False
                object Bevel40: TBevel
                  Left = 8
                  Top = 560
                  Width = 433
                  Height = 34
                end
                object Bevel36: TBevel
                  Left = 8
                  Top = 8
                  Width = 473
                  Height = 33
                end
                object Label80: TLabel
                  Left = 16
                  Top = 19
                  Width = 33
                  Height = 13
                  Caption = 'Projet: '
                end
                object Bevel37: TBevel
                  Left = 488
                  Top = 8
                  Width = 377
                  Height = 33
                end
                object Bevel39: TBevel
                  Left = 872
                  Top = 8
                  Width = 105
                  Height = 33
                end
                object Label81: TLabel
                  Left = 16
                  Top = 570
                  Width = 99
                  Height = 13
                  Caption = 'Ordre de la structure:'
                end
                object Bevel41: TBevel
                  Left = 664
                  Top = 528
                  Width = 313
                  Height = 65
                end
                object EditSigne: TEdit
                  Left = 912
                  Top = 16
                  Width = 25
                  Height = 19
                  Ctl3D = False
                  ParentCtl3D = False
                  TabOrder = 13
                end
                object EditCodeProjetPropose: TEdit
                  Left = 56
                  Top = 16
                  Width = 121
                  Height = 19
                  Color = clSilver
                  Ctl3D = False
                  ParentCtl3D = False
                  ReadOnly = True
                  TabOrder = 0
                end
                object EditDesignationProjetPropose: TEdit
                  Left = 56
                  Top = 16
                  Width = 417
                  Height = 19
                  Color = clSilver
                  Ctl3D = False
                  ParentCtl3D = False
                  ReadOnly = True
                  TabOrder = 1
                end
                object TableauFicheTechniquePropose: TStringGrid
                  Left = 472
                  Top = 66
                  Width = 505
                  Height = 199
                  Color = 13434879
                  Ctl3D = False
                  DefaultColWidth = 50
                  FixedColor = 4259839
                  RowCount = 2
                  ParentCtl3D = False
                  ScrollBars = ssNone
                  TabOrder = 2
                  OnClick = TableauFicheTechniqueProposeClick
                  OnKeyDown = TableauFicheTechniqueProposeKeyDown
                end
                object TableauRubriqueFicheTechniquePropose: TStringGrid
                  Left = 8
                  Top = 288
                  Width = 969
                  Height = 233
                  Color = 14417847
                  ColCount = 7
                  Ctl3D = False
                  DefaultColWidth = 50
                  FixedColor = 16777088
                  RowCount = 7
                  ParentCtl3D = False
                  ScrollBars = ssNone
                  TabOrder = 3
                  OnClick = TableauRubriqueFicheTechniqueProposeClick
                  OnKeyDown = TableauRubriqueFicheTechniqueProposeKeyDown
                end
                object Panel11: TPanel
                  Left = 8
                  Top = 48
                  Width = 457
                  Height = 17
                  BevelInner = bvLowered
                  Caption = 'Structure du Projet !'
                  Color = 16777088
                  TabOrder = 4
                end
                object Panel12: TPanel
                  Left = 472
                  Top = 48
                  Width = 505
                  Height = 17
                  BevelInner = bvLowered
                  Caption = 'Liste des Fiches Technique !'
                  Color = 16777088
                  TabOrder = 5
                end
                object Panel13: TPanel
                  Left = 8
                  Top = 270
                  Width = 969
                  Height = 17
                  BevelInner = bvLowered
                  Caption = 'Liste des Rubriques !'
                  Color = 16777088
                  TabOrder = 6
                end
                object BitBtn28: TBitBtn
                  Left = 496
                  Top = 12
                  Width = 361
                  Height = 25
                  Caption = 'Proposer !'
                  TabOrder = 7
                  OnClick = BitBtn28Click
                  Kind = bkHelp
                end
                object BitBtn29: TBitBtn
                  Left = 880
                  Top = 12
                  Width = 91
                  Height = 25
                  Caption = 'Fermer'
                  ModalResult = 2
                  TabOrder = 8
                  OnClick = BitBtn29Click
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
                object TableauProjetFinancePropose: TStringGrid
                  Left = 8
                  Top = 66
                  Width = 457
                  Height = 199
                  Color = 16777194
                  Ctl3D = False
                  DefaultColWidth = 50
                  FixedColor = 14803200
                  RowCount = 2
                  Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
                  ParentCtl3D = False
                  ScrollBars = ssNone
                  TabOrder = 9
                  OnClick = TableauProjetFinanceProposeClick
                end
                object StructurePrecis: TCheckBox
                  Left = 280
                  Top = 568
                  Width = 161
                  Height = 17
                  Caption = 'Longueur Structure Pr'#233'cise !'
                  Checked = True
                  State = cbChecked
                  TabOrder = 10
                  OnClick = StructurePrecisClick
                end
                object EditRonStructure: TComboBox
                  Left = 123
                  Top = 567
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
                  TabOrder = 11
                  OnSelect = EditRonStructureSelect
                end
                object BitBtn30: TBitBtn
                  Left = 672
                  Top = 536
                  Width = 299
                  Height = 54
                  Caption = 'Valider la Proposition !'
                  TabOrder = 12
                  OnClick = BitBtn30Click
                  Kind = bkAll
                end
                object AfficheOptionValiderProposition: TPanel
                  Left = 216
                  Top = 200
                  Width = 513
                  Height = 129
                  BevelInner = bvLowered
                  BiDiMode = bdRightToLeftReadingOnly
                  Caption = 'Confirmer la validation de la Proposition SVP !'
                  Color = clWhite
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentBiDiMode = False
                  ParentFont = False
                  TabOrder = 14
                  Visible = False
                  OnExit = AfficheOptionValiderPropositionExit
                  object Bevel42: TBevel
                    Left = 8
                    Top = 8
                    Width = 497
                    Height = 41
                  end
                  object Bevel43: TBevel
                    Left = 8
                    Top = 88
                    Width = 497
                    Height = 33
                  end
                  object BitAjouter: TBitBtn
                    Left = 16
                    Top = 16
                    Width = 97
                    Height = 25
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -13
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    OnClick = BitAjouterClick
                    Kind = bkYes
                  end
                  object BitBtn33: TBitBtn
                    Left = 400
                    Top = 16
                    Width = 97
                    Height = 25
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -13
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 1
                    OnClick = BitBtn33Click
                    Kind = bkNo
                  end
                end
                object Panel14: TPanel
                  Left = 8
                  Top = 48
                  Width = 70
                  Height = 17
                  Caption = 'Print !'
                  Color = 14803200
                  TabOrder = 15
                  OnClick = Panel14Click
                end
                object Panel15: TPanel
                  Left = 8
                  Top = 270
                  Width = 70
                  Height = 17
                  Caption = 'Print !'
                  Color = 16777088
                  TabOrder = 16
                  OnClick = Panel15Click
                end
                object Panel16: TPanel
                  Left = 472
                  Top = 48
                  Width = 70
                  Height = 17
                  Caption = 'Print !'
                  Color = 4259839
                  TabOrder = 17
                  OnClick = Panel16Click
                end
                object RBOrientationPapierFicheTechnique: TComboBox
                  Left = 552
                  Top = 568
                  Width = 97
                  Height = 21
                  BevelInner = bvLowered
                  BevelKind = bkFlat
                  Ctl3D = False
                  ItemHeight = 13
                  ItemIndex = 0
                  ParentCtl3D = False
                  TabOrder = 18
                  Text = 'Automatique'
                  Items.Strings = (
                    'Automatique'
                    'Portrait'
                    'Paysage')
                end
              end
              object AfficheMessage: TPanel
                Left = 216
                Top = 104
                Width = 521
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
                TabOrder = 5
                Visible = False
                OnExit = AfficheMessageExit
                object Bevel38: TBevel
                  Left = 202
                  Top = 82
                  Width = 121
                  Height = 34
                end
                object BitAfficheMessage: TBitBtn
                  Left = 208
                  Top = 87
                  Width = 110
                  Height = 25
                  Caption = 'OK'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  OnClick = BitAfficheMessageClick
                  Kind = bkAll
                end
              end
              object EditRebriqueTrie: TComboBox
                Left = 1144
                Top = 8
                Width = 145
                Height = 21
                BevelKind = bkFlat
                ItemHeight = 13
                ItemIndex = 0
                TabOrder = 7
                Text = 'Trie par code'
                OnKeyPress = EditRebriqueTrieKeyPress
                OnSelect = EditRebriqueTrieSelect
                Items.Strings = (
                  'Trie par code'
                  'Trie par D'#233'signation')
              end
              object AfficheDetailStructure: TPanel
                Left = 48
                Top = 72
                Width = 1169
                Height = 505
                BevelInner = bvLowered
                Color = clSilver
                TabOrder = 8
                Visible = False
                OnMouseDown = AfficheDetailStructureMouseDown
                object Label143: TLabel
                  Left = 712
                  Top = 482
                  Width = 82
                  Height = 13
                  Caption = 'Type d'#39'affichage:'
                end
                object EditCodeTypeAffichage: TEdit
                  Left = 936
                  Top = 478
                  Width = 121
                  Height = 19
                  Ctl3D = False
                  ParentCtl3D = False
                  ReadOnly = True
                  TabOrder = 14
                end
                object EditNumProjetAnomalie: TEdit
                  Left = 512
                  Top = 480
                  Width = 25
                  Height = 19
                  Ctl3D = False
                  Enabled = False
                  ParentCtl3D = False
                  ReadOnly = True
                  TabOrder = 10
                end
                object BitBtn77: TBitBtn
                  Left = 512
                  Top = 477
                  Width = 185
                  Height = 25
                  Caption = 'Afficher toutes les anomalies !'
                  TabOrder = 8
                  OnClick = BitBtn77Click
                  Kind = bkHelp
                end
                object BitBtn76: TBitBtn
                  Left = 256
                  Top = 477
                  Width = 225
                  Height = 25
                  Caption = 'Afficher les anomalies du projet affich'#233' !'
                  TabOrder = 7
                  OnClick = BitBtn76Click
                  Kind = bkHelp
                end
                object PageControl6: TPageControl
                  Left = 8
                  Top = 8
                  Width = 1153
                  Height = 465
                  ActivePage = PageGeneration
                  TabIndex = 0
                  TabOrder = 0
                  OnChange = PageControl6Change
                  object PageGeneration: TTabSheet
                    Caption = '     G'#233'n'#233'ration     '
                    object TitreTableauArticleDetailStructure: TStringGrid
                      Left = 408
                      Top = 112
                      Width = 297
                      Height = 33
                      ColCount = 1
                      DefaultColWidth = 900
                      FixedCols = 0
                      RowCount = 1
                      FixedRows = 0
                      TabOrder = 7
                    end
                    object Panel32: TPanel
                      Left = 360
                      Top = 48
                      Width = 785
                      Height = 41
                      Caption = 'Articles d'#233'tail structure'
                      Color = 8454143
                      TabOrder = 3
                    end
                    object EditAutorisationTrie: TEdit
                      Left = 120
                      Top = 80
                      Width = 121
                      Height = 19
                      Ctl3D = False
                      ParentCtl3D = False
                      TabOrder = 6
                      OnKeyUp = EditAutorisationTrieKeyUp
                    end
                    object TableauDetailStructure: TStringGrid
                      Left = 0
                      Top = 48
                      Width = 353
                      Height = 385
                      Ctl3D = False
                      FixedColor = 8454016
                      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
                      ParentCtl3D = False
                      TabOrder = 0
                      OnClick = TableauDetailStructureClick
                      OnDblClick = TableauDetailStructureDblClick
                      OnDrawCell = TableauDetailStructureDrawCell
                      OnKeyPress = TableauDetailStructureKeyPress
                      ColWidths = (
                        64
                        64
                        68
                        64
                        64)
                    end
                    object AfficheOperationDetailStructure: TPanel
                      Left = 40
                      Top = 152
                      Width = 273
                      Height = 121
                      BevelInner = bvLowered
                      Color = 8454016
                      TabOrder = 1
                      Visible = False
                      OnMouseDown = AfficheOperationDetailStructureMouseDown
                      object Bevel112: TBevel
                        Left = 8
                        Top = 56
                        Width = 257
                        Height = 57
                      end
                      object Label129: TLabel
                        Left = 32
                        Top = 67
                        Width = 40
                        Height = 13
                        Alignment = taRightJustify
                        Caption = 'Position:'
                      end
                      object Bevel111: TBevel
                        Left = 8
                        Top = 8
                        Width = 257
                        Height = 41
                      end
                      object Label130: TLabel
                        Left = 16
                        Top = 91
                        Width = 59
                        Height = 13
                        Alignment = taRightJustify
                        Caption = 'D'#233'signation:'
                      end
                      object EditPositionDetailStructureLast: TEdit
                        Left = 80
                        Top = 64
                        Width = 49
                        Height = 19
                        Color = clSilver
                        Ctl3D = False
                        ParentCtl3D = False
                        ReadOnly = True
                        TabOrder = 4
                      end
                      object BitBtn73: TBitBtn
                        Left = 16
                        Top = 16
                        Width = 75
                        Height = 25
                        TabOrder = 0
                        OnClick = BitBtn73Click
                        Kind = bkCancel
                      end
                      object EditPositionDetailStructure: TEdit
                        Left = 80
                        Top = 64
                        Width = 49
                        Height = 19
                        Color = clSilver
                        Ctl3D = False
                        ParentCtl3D = False
                        ReadOnly = True
                        TabOrder = 1
                      end
                      object EditDesignationDetailStructure: TEdit
                        Left = 80
                        Top = 88
                        Width = 177
                        Height = 19
                        Ctl3D = False
                        ParentCtl3D = False
                        TabOrder = 2
                        OnKeyDown = EditDesignationDetailStructureKeyDown
                      end
                      object BitOperationDetailStructure: TBitBtn
                        Left = 184
                        Top = 16
                        Width = 75
                        Height = 25
                        TabOrder = 3
                        OnClick = BitOperationDetailStructureClick
                        Kind = bkAll
                      end
                      object EditOrdre: TEdit
                        Left = 216
                        Top = 64
                        Width = 25
                        Height = 19
                        Color = clSilver
                        Ctl3D = False
                        ParentCtl3D = False
                        ReadOnly = True
                        TabOrder = 5
                        Text = '1'
                      end
                      object IncrimenteEditOrdre: TUpDown
                        Left = 241
                        Top = 64
                        Width = 16
                        Height = 19
                        Associate = EditOrdre
                        Min = 1
                        Max = 10
                        Position = 1
                        TabOrder = 6
                        Wrap = False
                      end
                    end
                    object TableauArticleDetailStructure: TStringGrid
                      Left = 360
                      Top = 96
                      Width = 785
                      Height = 337
                      Ctl3D = False
                      FixedColor = 8454143
                      FixedRows = 2
                      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
                      ParentCtl3D = False
                      TabOrder = 2
                      OnClick = TableauArticleDetailStructureClick
                      OnDblClick = TableauArticleDetailStructureDblClick
                      OnDrawCell = TableauArticleDetailStructureDrawCell
                      OnKeyPress = TableauArticleDetailStructureKeyPress
                      RowHeights = (
                        24
                        24
                        24
                        24
                        24)
                    end
                    object AfficheOperationArticleDetailStructure: TPanel
                      Left = 480
                      Top = 128
                      Width = 401
                      Height = 241
                      BevelInner = bvLowered
                      Color = 8454143
                      TabOrder = 4
                      Visible = False
                      OnMouseDown = AfficheOperationArticleDetailStructureMouseDown
                      object Bevel113: TBevel
                        Left = 8
                        Top = 56
                        Width = 385
                        Height = 177
                      end
                      object Label131: TLabel
                        Left = 64
                        Top = 67
                        Width = 40
                        Height = 13
                        Alignment = taRightJustify
                        Caption = 'Position:'
                      end
                      object Bevel114: TBevel
                        Left = 8
                        Top = 8
                        Width = 385
                        Height = 41
                      end
                      object Label132: TLabel
                        Left = 47
                        Top = 115
                        Width = 60
                        Height = 13
                        Alignment = taRightJustify
                        Caption = 'Code Article:'
                      end
                      object Label133: TLabel
                        Left = 48
                        Top = 139
                        Width = 59
                        Height = 13
                        Alignment = taRightJustify
                        Caption = 'D'#233'signation:'
                      end
                      object Label134: TLabel
                        Left = 64
                        Top = 163
                        Width = 43
                        Height = 13
                        Alignment = taRightJustify
                        Caption = 'Quantit'#233':'
                      end
                      object Label135: TLabel
                        Left = 67
                        Top = 211
                        Width = 40
                        Height = 13
                        Alignment = taRightJustify
                        Caption = 'Unit'#233' M:'
                      end
                      object Label136: TLabel
                        Left = 49
                        Top = 91
                        Width = 58
                        Height = 13
                        Alignment = taRightJustify
                        Caption = 'Type Stock:'
                      end
                      object Label140: TLabel
                        Left = 87
                        Top = 187
                        Width = 20
                        Height = 13
                        Alignment = taRightJustify
                        Caption = 'Prix:'
                      end
                      object BitBtn74: TBitBtn
                        Left = 16
                        Top = 16
                        Width = 75
                        Height = 25
                        TabOrder = 0
                        OnClick = BitBtn74Click
                        Kind = bkCancel
                      end
                      object EditPositionArticleDetailStructure: TEdit
                        Left = 120
                        Top = 64
                        Width = 33
                        Height = 19
                        Color = clSilver
                        Ctl3D = False
                        ParentCtl3D = False
                        ReadOnly = True
                        TabOrder = 1
                      end
                      object EditCodeArticleDetailStructure: TEdit
                        Left = 120
                        Top = 112
                        Width = 73
                        Height = 19
                        Ctl3D = False
                        ParentCtl3D = False
                        TabOrder = 2
                        OnEnter = EditCodeArticleDetailStructureEnter
                        OnKeyDown = EditCodeArticleDetailStructureKeyDown
                        OnKeyUp = EditCodeArticleDetailStructureKeyUp
                      end
                      object BitOperationArticleDetailStructure: TBitBtn
                        Left = 312
                        Top = 16
                        Width = 75
                        Height = 25
                        TabOrder = 3
                        OnClick = BitOperationArticleDetailStructureClick
                        Kind = bkAll
                      end
                      object EditDesignationArtcleDetailStructure: TEdit
                        Left = 120
                        Top = 136
                        Width = 265
                        Height = 19
                        Ctl3D = False
                        ParentCtl3D = False
                        TabOrder = 4
                        OnEnter = EditDesignationArtcleDetailStructureEnter
                        OnKeyDown = EditDesignationArtcleDetailStructureKeyDown
                        OnKeyUp = EditDesignationArtcleDetailStructureKeyUp
                      end
                      object EditQuantiteArtcleDetailStructure: TEdit
                        Left = 120
                        Top = 160
                        Width = 73
                        Height = 19
                        Ctl3D = False
                        ParentCtl3D = False
                        TabOrder = 5
                        OnKeyDown = EditQuantiteArtcleDetailStructureKeyDown
                      end
                      object EditTypeStockStructure: TComboBox
                        Left = 120
                        Top = 88
                        Width = 105
                        Height = 21
                        BevelKind = bkFlat
                        Ctl3D = False
                        ItemHeight = 13
                        ItemIndex = 0
                        ParentCtl3D = False
                        TabOrder = 6
                        Text = 'Article'
                        OnChange = EditTypeStockStructureChange
                        OnKeyDown = EditTypeStockStructureKeyDown
                        Items.Strings = (
                          'Article'
                          'Marche')
                      end
                      object EditTypeComptabiliteStructure: TEdit
                        Left = 232
                        Top = 88
                        Width = 105
                        Height = 19
                        Ctl3D = False
                        ParentCtl3D = False
                        ReadOnly = True
                        TabOrder = 7
                        Text = 'PlanComptable'
                      end
                      object EditUniteMArtcleDetailStructure: TComboBox
                        Left = 120
                        Top = 208
                        Width = 73
                        Height = 21
                        BevelInner = bvNone
                        BevelKind = bkFlat
                        ItemHeight = 13
                        ItemIndex = 0
                        TabOrder = 8
                        Text = 'ML'
                        OnKeyDown = EditUniteMArtcleDetailStructureKeyDown
                        Items.Strings = (
                          'ML'
                          'M'#178)
                      end
                      object EditPrixArticleDetailStructure: TEdit
                        Left = 120
                        Top = 184
                        Width = 73
                        Height = 19
                        Ctl3D = False
                        ParentCtl3D = False
                        TabOrder = 9
                        OnKeyDown = EditPrixArticleDetailStructureKeyDown
                      end
                      object EditCoutArticleDetailStructure: TEdit
                        Left = 200
                        Top = 184
                        Width = 73
                        Height = 19
                        Color = clSilver
                        Ctl3D = False
                        ParentCtl3D = False
                        ReadOnly = True
                        TabOrder = 10
                      end
                    end
                    object Panel35: TPanel
                      Left = 0
                      Top = 0
                      Width = 1145
                      Height = 41
                      BevelInner = bvLowered
                      TabOrder = 5
                      object Label128: TLabel
                        Left = 88
                        Top = 16
                        Width = 46
                        Height = 13
                        Caption = 'Structure:'
                      end
                      object EditNumProjetStructure: TEdit
                        Left = 136
                        Top = 12
                        Width = 145
                        Height = 19
                        Color = clSilver
                        Ctl3D = False
                        ParentCtl3D = False
                        ReadOnly = True
                        TabOrder = 0
                        OnEnter = EditNumProjetStructureEnter
                      end
                      object EditProjetStructure: TEdit
                        Left = 280
                        Top = 12
                        Width = 401
                        Height = 19
                        Color = clSilver
                        Ctl3D = False
                        ParentCtl3D = False
                        ReadOnly = True
                        TabOrder = 1
                      end
                      object RBStructureGlobale: TCheckBox
                        Left = 821
                        Top = 13
                        Width = 105
                        Height = 17
                        Caption = 'Structure Globale !'
                        TabOrder = 2
                      end
                    end
                    object TableauStockDetailStructure: TStringGrid
                      Left = 856
                      Top = 320
                      Width = 537
                      Height = 169
                      Ctl3D = False
                      FixedColor = 8454143
                      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
                      ParentCtl3D = False
                      TabOrder = 8
                      Visible = False
                      OnKeyDown = TableauStockDetailStructureKeyDown
                      OnMouseDown = TableauStockDetailStructureMouseDown
                    end
                  end
                  object PageAnalyse: TTabSheet
                    Caption = '     Analyse     '
                    ImageIndex = 1
                    OnShow = PageAnalyseShow
                    object TableauAnalyseProjetStructure: TStringGrid
                      Left = 0
                      Top = 48
                      Width = 441
                      Height = 385
                      Ctl3D = False
                      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing]
                      ParentCtl3D = False
                      TabOrder = 0
                      OnClick = TableauAnalyseProjetStructureClick
                      OnDblClick = TableauAnalyseProjetStructureDblClick
                      OnDrawCell = TableauAnalyseProjetStructureDrawCell
                    end
                    object Panel33: TPanel
                      Left = 0
                      Top = 0
                      Width = 441
                      Height = 41
                      BevelInner = bvLowered
                      TabOrder = 1
                      object Label137: TLabel
                        Left = 96
                        Top = 16
                        Width = 85
                        Height = 13
                        Caption = 'Type d'#39'affichage: '
                      end
                      object RBMultiSelect: TCheckBox
                        Left = 352
                        Top = 16
                        Width = 81
                        Height = 17
                        Alignment = taLeftJustify
                        Caption = 'Multi-S'#233'lect.'
                        TabOrder = 0
                        OnClick = RBMultiSelectClick
                      end
                      object EditTypeAffichage: TComboBox
                        Left = 184
                        Top = 12
                        Width = 145
                        Height = 21
                        BevelKind = bkFlat
                        Ctl3D = False
                        ItemHeight = 13
                        ItemIndex = 6
                        ParentCtl3D = False
                        TabOrder = 1
                        Text = 'Article'
                        OnChange = EditTypeAffichageChange
                        OnKeyPress = EditTypeAffichageKeyPress
                        Items.Strings = (
                          'Classe'
                          'Sous Classe'
                          'Cat'#233'gorie'
                          'Sous Cat'#233'gorie'
                          'Famille'
                          'Sous Famille'
                          'Article')
                      end
                    end
                    object TableauArticleDetailStructureAnalyse: TStringGrid
                      Left = 448
                      Top = 48
                      Width = 697
                      Height = 385
                      Ctl3D = False
                      FixedRows = 2
                      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
                      ParentCtl3D = False
                      TabOrder = 2
                      OnClick = TableauArticleDetailStructureAnalyseClick
                      OnDrawCell = TableauArticleDetailStructureAnalyseDrawCell
                      RowHeights = (
                        24
                        24
                        24
                        24
                        24)
                    end
                    object Panel34: TPanel
                      Left = 448
                      Top = 0
                      Width = 697
                      Height = 41
                      BevelInner = bvLowered
                      TabOrder = 3
                      object BitBtn81: TBitBtn
                        Left = 343
                        Top = 8
                        Width = 145
                        Height = 25
                        Caption = 'Imprimer le catalogue'
                        TabOrder = 0
                        OnClick = BitBtn81Click
                        Kind = bkHelp
                      end
                      object RadioGroup14: TRadioGroup
                        Left = 5
                        Top = 2
                        Width = 332
                        Height = 35
                        Caption = 'Finance: '
                        TabOrder = 1
                      end
                      object RBAfficheCoutFinance: TRadioButton
                        Left = 64
                        Top = 16
                        Width = 113
                        Height = 17
                        Caption = 'Afficher les co'#251'ts !'
                        TabOrder = 2
                        OnClick = RadioButton1Click
                      end
                      object RBAffichePrixCession: TRadioButton
                        Left = 184
                        Top = 16
                        Width = 145
                        Height = 17
                        Caption = 'Afficher le prix de cession !'
                        TabOrder = 3
                        OnClick = RadioButton1Click
                      end
                      object RadioButton1: TRadioButton
                        Left = 8
                        Top = 16
                        Width = 49
                        Height = 17
                        Caption = 'N'#233'ant'
                        Checked = True
                        TabOrder = 4
                        TabStop = True
                        OnClick = RadioButton1Click
                      end
                    end
                  end
                  object PageRecapitulatif: TTabSheet
                    Caption = '     R'#233'capitulatif     '
                    ImageIndex = 2
                    OnShow = PageRecapitulatifShow
                    object TitreTableauRecapitulatifStructure: TStringGrid
                      Left = 8
                      Top = 96
                      Width = 929
                      Height = 33
                      ColCount = 1
                      DefaultColWidth = 900
                      FixedCols = 0
                      RowCount = 1
                      FixedRows = 0
                      TabOrder = 2
                    end
                    object TableauRecapitulatifStructure: TStringGrid
                      Left = 1
                      Top = 86
                      Width = 1144
                      Height = 350
                      Ctl3D = False
                      FixedRows = 2
                      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSizing]
                      ParentCtl3D = False
                      TabOrder = 0
                      OnClick = TableauRecapitulatifStructureClick
                      OnContextPopup = TableauRecapitulatifStructureContextPopup
                      OnDblClick = TableauRecapitulatifStructureDblClick
                      OnDrawCell = TableauRecapitulatifStructureDrawCell
                      RowHeights = (
                        24
                        24
                        24
                        24
                        24)
                    end
                    object Panel36: TPanel
                      Left = 0
                      Top = 0
                      Width = 1137
                      Height = 41
                      BevelInner = bvLowered
                      TabOrder = 1
                      object Label138: TLabel
                        Left = 96
                        Top = 15
                        Width = 46
                        Height = 13
                        Caption = 'Structure:'
                      end
                      object Label139: TLabel
                        Left = 576
                        Top = 16
                        Width = 85
                        Height = 13
                        Caption = 'Type d'#39'affichage: '
                      end
                      object EditNbrArticle: TEdit
                        Left = 720
                        Top = 13
                        Width = 25
                        Height = 19
                        Color = clSilver
                        Ctl3D = False
                        ParentCtl3D = False
                        ReadOnly = True
                        TabOrder = 5
                      end
                      object EditNbrStructure: TEdit
                        Left = 696
                        Top = 13
                        Width = 25
                        Height = 19
                        Color = clSilver
                        Ctl3D = False
                        ParentCtl3D = False
                        ReadOnly = True
                        TabOrder = 4
                      end
                      object EditColIn: TEdit
                        Left = 672
                        Top = 13
                        Width = 25
                        Height = 19
                        Color = clSilver
                        Ctl3D = False
                        ParentCtl3D = False
                        ReadOnly = True
                        TabOrder = 3
                      end
                      object EditNumProjetStructureRecapitulatif: TEdit
                        Left = 144
                        Top = 11
                        Width = 113
                        Height = 19
                        Color = clSilver
                        Ctl3D = False
                        ParentCtl3D = False
                        ReadOnly = True
                        TabOrder = 0
                        OnEnter = EditNumProjetStructureRecapitulatifEnter
                      end
                      object EditProjetStructureRecapitulatif: TEdit
                        Left = 256
                        Top = 11
                        Width = 305
                        Height = 19
                        Color = clSilver
                        Ctl3D = False
                        ParentCtl3D = False
                        ReadOnly = True
                        TabOrder = 1
                      end
                      object EditTypeAffichageRecapitulatif: TComboBox
                        Left = 664
                        Top = 12
                        Width = 121
                        Height = 21
                        BevelKind = bkFlat
                        Ctl3D = False
                        ItemHeight = 13
                        ItemIndex = 6
                        ParentCtl3D = False
                        TabOrder = 2
                        Text = 'Article'
                        OnChange = EditTypeAffichageRecapitulatifChange
                        OnKeyPress = EditTypeAffichageRecapitulatifKeyPress
                        Items.Strings = (
                          'Classe'
                          'Sous Classe'
                          'Cat'#233'gorie'
                          'Sous Cat'#233'gorie'
                          'Famille'
                          'Sous Famille'
                          'Article')
                      end
                      object BitBtn80: TBitBtn
                        Left = 792
                        Top = 8
                        Width = 145
                        Height = 25
                        Caption = 'Imprimer le catalogue'
                        TabOrder = 6
                        OnClick = BitBtn80Click
                        Kind = bkHelp
                      end
                    end
                    object Panel37: TPanel
                      Left = 0
                      Top = 43
                      Width = 1145
                      Height = 41
                      BevelInner = bvLowered
                      TabOrder = 3
                      object Label155: TLabel
                        Left = 8
                        Top = 13
                        Width = 76
                        Height = 13
                        Caption = 'Liste Structures:'
                      end
                      object AfficheDesignationDetailStructure: TPanel
                        Left = 216
                        Top = 8
                        Width = 569
                        Height = 25
                        Alignment = taLeftJustify
                        BevelInner = bvLowered
                        Color = clSilver
                        TabOrder = 0
                        OnDblClick = AfficheDesignationDetailStructureDblClick
                      end
                      object EditListePositionDetailStructure: TEdit
                        Left = 88
                        Top = 10
                        Width = 121
                        Height = 19
                        Color = clSilver
                        Ctl3D = False
                        ParentCtl3D = False
                        ReadOnly = True
                        TabOrder = 1
                        OnEnter = EditListePositionDetailStructureEnter
                      end
                    end
                  end
                  object PageOptions: TTabSheet
                    Caption = '     Options     '
                    ImageIndex = 3
                    object Bevel115: TBevel
                      Left = 12
                      Top = 48
                      Width = 341
                      Height = 97
                    end
                    object Label145: TLabel
                      Left = 368
                      Top = 112
                      Width = 82
                      Height = 13
                      Caption = 'Nbr Article/Page:'
                    end
                    object EditColTiers: TEdit
                      Left = 368
                      Top = 46
                      Width = 105
                      Height = 19
                      Color = clSilver
                      Ctl3D = False
                      ParentCtl3D = False
                      ReadOnly = True
                      TabOrder = 5
                    end
                    object RBUniquementArticleDSPlanifier: TCheckBox
                      Left = 24
                      Top = 112
                      Width = 297
                      Height = 17
                      Caption = 'Afficher Uniquement les articles planifier pour un projet !'
                      Checked = True
                      State = cbChecked
                      TabOrder = 0
                      OnClick = RBUniquementArticleDSPlanifierClick
                    end
                    object RBAfficherPositionDetailStructure: TCheckBox
                      Left = 24
                      Top = 60
                      Width = 297
                      Height = 17
                      Caption = 'Afficher les position d'#233'tail structure dans le tableau !'
                      TabOrder = 1
                    end
                    object RBCummuleMemeArticle: TCheckBox
                      Left = 24
                      Top = 84
                      Width = 297
                      Height = 17
                      Caption = 'Cumul'#233' les m'#232'mes article !'
                      Checked = True
                      State = cbChecked
                      TabOrder = 2
                    end
                    object TableauxListePositionArchivePhoto: TStringGrid
                      Left = 16
                      Top = 160
                      Width = 529
                      Height = 273
                      Ctl3D = False
                      ParentCtl3D = False
                      TabOrder = 3
                      OnClick = TableauxListePositionArchivePhotoClick
                      OnDrawCell = TableauxListePositionArchivePhotoDrawCell
                    end
                    object RBAfficheTiersAnalyse: TCheckBox
                      Left = 368
                      Top = 66
                      Width = 153
                      Height = 17
                      Caption = 'Affiche Tiers !'
                      TabOrder = 4
                      OnClick = RBAfficheTiersAnalyseClick
                    end
                    object RBInclureReference: TCheckBox
                      Left = 368
                      Top = 84
                      Width = 153
                      Height = 17
                      Caption = 'Inclure les r'#233'f'#233'rences !'
                      TabOrder = 6
                    end
                    object TexteDetailQuantite: TRichEdit
                      Left = 560
                      Top = 160
                      Width = 401
                      Height = 273
                      Ctl3D = False
                      ParentCtl3D = False
                      ReadOnly = True
                      TabOrder = 7
                    end
                    object EditNbrArticleParPage: TEdit
                      Left = 456
                      Top = 104
                      Width = 25
                      Height = 19
                      Color = clSilver
                      Ctl3D = False
                      ParentCtl3D = False
                      ReadOnly = True
                      TabOrder = 8
                      Text = '4'
                    end
                    object IncrimenteEditNbrArticleParPage: TUpDown
                      Left = 481
                      Top = 104
                      Width = 16
                      Height = 19
                      Associate = EditNbrArticleParPage
                      Min = 1
                      Max = 4
                      Position = 4
                      TabOrder = 9
                      Wrap = False
                    end
                  end
                end
                object BitBtn72: TBitBtn
                  Left = 21
                  Top = 40
                  Width = 75
                  Height = 25
                  TabOrder = 1
                  OnClick = BitBtn72Click
                  Kind = bkCancel
                end
                object TableauSelect: TStringGrid
                  Left = 1139
                  Top = 184
                  Width = 505
                  Height = 241
                  Ctl3D = False
                  ParentCtl3D = False
                  TabOrder = 2
                  Visible = False
                  OnDblClick = TableauSelectDblClick
                  RowHeights = (
                    24
                    24
                    24
                    24
                    24)
                end
                object AfficheOptionPrintFinanceProjets: TPanel
                  Left = 957
                  Top = 37
                  Width = 193
                  Height = 260
                  BevelInner = bvLowered
                  Caption = 'Imprimer'
                  Color = 8454143
                  TabOrder = 3
                  OnClick = AfficheOptionPrintFinanceProjetsClick
                  object Bevel110: TBevel
                    Left = 8
                    Top = 40
                    Width = 177
                    Height = 169
                  end
                  object Bevel116: TBevel
                    Left = 8
                    Top = 216
                    Width = 177
                    Height = 33
                  end
                  object RadioGroup12: TRadioGroup
                    Left = 16
                    Top = 80
                    Width = 161
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
                  object ComboBox1: TComboBox
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
                    Text = 'Portrait'
                    Items.Strings = (
                      'Portrait'
                      'Paysage'
                      'Automatique')
                  end
                  object CheckBox1: TCheckBox
                    Left = 24
                    Top = 168
                    Width = 113
                    Height = 17
                    Caption = 'Ajustement !'
                    Checked = True
                    State = cbChecked
                    TabOrder = 3
                  end
                  object BitBtn75: TBitBtn
                    Left = 16
                    Top = 48
                    Width = 161
                    Height = 25
                    Caption = 'Imprimer'
                    TabOrder = 4
                    OnClick = BitBtn75Click
                    Kind = bkHelp
                  end
                  object RBImprimeTous: TCheckBox
                    Left = 16
                    Top = 224
                    Width = 97
                    Height = 17
                    Caption = 'Imprimer Tous'
                    TabOrder = 5
                  end
                end
                object RBTrieStructutre: TCheckBox
                  Left = 16
                  Top = 480
                  Width = 161
                  Height = 17
                  Caption = 'Tri'#233' le tableau '#224' la s'#233'lection !'
                  TabOrder = 4
                  OnClick = RBTrieStructutreClick
                end
                object EditRubriqueTrieStructure: TEdit
                  Left = 184
                  Top = 480
                  Width = 17
                  Height = 19
                  Color = clSilver
                  Ctl3D = False
                  ParentCtl3D = False
                  ReadOnly = True
                  TabOrder = 5
                  Text = '4'
                  OnDblClick = EditRubriqueTrieStructureDblClick
                end
                object EditTypeTrieStructure: TComboBox
                  Left = 208
                  Top = 480
                  Width = 33
                  Height = 21
                  BevelKind = bkFlat
                  Ctl3D = False
                  ItemHeight = 13
                  ItemIndex = 0
                  ParentCtl3D = False
                  TabOrder = 6
                  Text = '+'
                  OnKeyPress = EditTypeTrieKeyPress
                  Items.Strings = (
                    '+'
                    '-')
                end
                object RBTypeAffichageDetaileStructure: TCheckBox
                  Left = 488
                  Top = 480
                  Width = 17
                  Height = 17
                  Enabled = False
                  TabOrder = 9
                end
                object RBIndiqueArchivePhoto: TCheckBox
                  Left = 376
                  Top = 10
                  Width = 89
                  Height = 17
                  Caption = 'Photo Article'
                  TabOrder = 11
                  OnClick = RBIndiqueArchivePhotoClick
                end
                object EditChoisAffichage: TComboBox
                  Left = 797
                  Top = 477
                  Width = 124
                  Height = 21
                  BevelInner = bvNone
                  BevelKind = bkFlat
                  ItemHeight = 13
                  ItemIndex = 6
                  TabOrder = 12
                  Text = 'Tous'
                  OnKeyPress = EditChoisAffichageKeyPress
                  OnSelect = EditChoisAffichageSelect
                  Items.Strings = (
                    'Classe'
                    'SousClasse'
                    'Categorie'
                    'SousCategorie'
                    'Famille'
                    'SousFamille'
                    'Tous')
                end
                object AfficheDesignationTypeAffichage: TPanel
                  Left = 920
                  Top = 475
                  Width = 225
                  Height = 25
                  BevelInner = bvLowered
                  TabOrder = 13
                end
                object AffichageTableauPlanComptableChois: TPanel
                  Left = -688
                  Top = 219
                  Width = 750
                  Height = 297
                  BevelInner = bvLowered
                  Color = 16777088
                  TabOrder = 15
                  Visible = False
                  OnExit = AffichageTableauPlanComptableChoisExit
                  object Bevel118: TBevel
                    Left = 8
                    Top = 8
                    Width = 305
                    Height = 33
                  end
                  object Label144: TLabel
                    Left = 17
                    Top = 19
                    Width = 58
                    Height = 13
                    Alignment = taRightJustify
                    Caption = 'Type Stock:'
                  end
                  object Bevel119: TBevel
                    Left = 320
                    Top = 8
                    Width = 425
                    Height = 33
                  end
                  object TableauPlanComptableChois: TStringGrid
                    Left = 8
                    Top = 48
                    Width = 737
                    Height = 241
                    Ctl3D = False
                    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
                    ParentCtl3D = False
                    TabOrder = 0
                    OnDblClick = TableauPlanComptableChoisDblClick
                    OnDrawCell = TableauPlanComptableChoisDrawCell
                    OnKeyDown = TableauPlanComptableChoisKeyDown
                    ColWidths = (
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
                  object EditTypeComptabiliteStructureChois: TEdit
                    Left = 200
                    Top = 15
                    Width = 105
                    Height = 19
                    Ctl3D = False
                    ParentCtl3D = False
                    ReadOnly = True
                    TabOrder = 1
                    Text = 'PlanComptable'
                  end
                  object EditTypeStockStructureChois: TComboBox
                    Left = 88
                    Top = 14
                    Width = 105
                    Height = 21
                    BevelKind = bkFlat
                    Ctl3D = False
                    ItemHeight = 13
                    ItemIndex = 0
                    ParentCtl3D = False
                    TabOrder = 2
                    Text = 'Article'
                    OnChange = EditTypeStockStructureChoisChange
                    Items.Strings = (
                      'Article'
                      'Marche')
                  end
                end
                object RBMajorationQuantite: TCheckBox
                  Left = 544
                  Top = 8
                  Width = 145
                  Height = 17
                  Caption = 'Majoration de quantit'#233's !'
                  TabOrder = 16
                  OnClick = RBMajorationQuantiteClick
                end
                object EditMojorationQuantite: TEdit
                  Left = 692
                  Top = 6
                  Width = 33
                  Height = 19
                  Color = clSilver
                  Ctl3D = False
                  ParentCtl3D = False
                  ReadOnly = True
                  TabOrder = 17
                  Text = '0'
                end
                object IncrimenteEditMojorationQuantite: TUpDown
                  Left = 725
                  Top = 6
                  Width = 16
                  Height = 19
                  Associate = EditMojorationQuantite
                  Min = 0
                  Position = 0
                  TabOrder = 18
                  Wrap = False
                  OnClick = IncrimenteEditMojorationQuantiteClick
                end
                object AfficheDetailStructureRecherche: TPanel
                  Left = 96
                  Top = 112
                  Width = 537
                  Height = 249
                  BevelInner = bvLowered
                  Color = 16777088
                  TabOrder = 19
                  Visible = False
                  object Bevel128: TBevel
                    Left = 440
                    Top = 8
                    Width = 90
                    Height = 41
                  end
                  object TableauDetailStructureRecherche: TStringGrid
                    Left = 8
                    Top = 56
                    Width = 521
                    Height = 185
                    Ctl3D = False
                    FixedColor = 8454016
                    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
                    ParentCtl3D = False
                    TabOrder = 0
                    OnDblClick = TableauDetailStructureRechercheDblClick
                    OnDrawCell = TableauDetailStructureRechercheDrawCell
                    OnKeyDown = TableauDetailStructureRechercheKeyDown
                    ColWidths = (
                      64
                      64
                      68
                      64
                      64)
                    RowHeights = (
                      24
                      24
                      24
                      24
                      24)
                  end
                  object BitBtn86: TBitBtn
                    Left = 448
                    Top = 16
                    Width = 75
                    Height = 25
                    TabOrder = 1
                    OnClick = BitBtn86Click
                    Kind = bkCancel
                  end
                end
              end
              object RBAfficheTiers: TCheckBox
                Left = 314
                Top = 42
                Width = 111
                Height = 17
                Caption = 'Affiche Tiers !'
                Checked = True
                State = cbChecked
                TabOrder = 9
                OnClick = RBAfficheTiersClick
              end
              object AfficheOptionProjetFinance: TPanel
                Left = 384
                Top = 46
                Width = 524
                Height = 467
                BevelInner = bvLowered
                BevelOuter = bvLowered
                BevelWidth = 2
                Color = 10485752
                TabOrder = 2
                Visible = False
                object Bevel26: TBevel
                  Left = 9
                  Top = 9
                  Width = 505
                  Height = 81
                end
                object Bevel21: TBevel
                  Left = 9
                  Top = 97
                  Width = 377
                  Height = 360
                end
                object Label34: TLabel
                  Left = 55
                  Top = 21
                  Width = 40
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Num'#233'ro:'
                end
                object Label35: TLabel
                  Left = 36
                  Top = 45
                  Width = 59
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'D'#233'signation:'
                end
                object Label36: TLabel
                  Left = 54
                  Top = 69
                  Width = 41
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Adresse:'
                end
                object Label43: TLabel
                  Left = 53
                  Top = 279
                  Width = 42
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Montant:'
                end
                object Label44: TLabel
                  Left = 22
                  Top = 399
                  Width = 73
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'D'#233'composition:'
                end
                object Label37: TLabel
                  Left = 39
                  Top = 109
                  Width = 56
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Date d'#233'but:'
                end
                object Label39: TLabel
                  Left = 52
                  Top = 182
                  Width = 43
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Date Fin:'
                end
                object Bevel24: TBevel
                  Left = 393
                  Top = 153
                  Width = 121
                  Height = 73
                end
                object Bevel25: TBevel
                  Left = 393
                  Top = 97
                  Width = 121
                  Height = 41
                end
                object Label38: TLabel
                  Left = 63
                  Top = 133
                  Width = 32
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'D'#233'lais:'
                end
                object Label41: TLabel
                  Left = 15
                  Top = 207
                  Width = 80
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Unit'#233' de mesure:'
                end
                object Label40: TLabel
                  Left = 38
                  Top = 231
                  Width = 57
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Prix unitaire:'
                end
                object Label42: TLabel
                  Left = 21
                  Top = 255
                  Width = 74
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Mesure Globale'
                end
                object Label45: TLabel
                  Left = 32
                  Top = 157
                  Width = 63
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Unit'#233' Temps:'
                end
                object Label46: TLabel
                  Left = 294
                  Top = 109
                  Width = 9
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #224':'
                end
                object Label47: TLabel
                  Left = 294
                  Top = 182
                  Width = 9
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #224':'
                end
                object Bevel31: TBevel
                  Left = 320
                  Top = 288
                  Width = 185
                  Height = 41
                end
                object Label76: TLabel
                  Left = 385
                  Top = 45
                  Width = 58
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Codification:'
                end
                object Label78: TLabel
                  Left = 280
                  Top = 45
                  Width = 35
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Nature:'
                end
                object Label93: TLabel
                  Left = 29
                  Top = 420
                  Width = 61
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Pourcentage'
                end
                object Label94: TLabel
                  Left = 13
                  Top = 432
                  Width = 82
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Parties Commune'
                end
                object Label95: TLabel
                  Left = 168
                  Top = 423
                  Width = 14
                  Height = 13
                  Caption = '(%)'
                end
                object Label124: TLabel
                  Left = 389
                  Top = 16
                  Width = 54
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Num Ordre:'
                end
                object Label151: TLabel
                  Left = 211
                  Top = 254
                  Width = 76
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Mesure Partiele:'
                end
                object Label152: TLabel
                  Left = 36
                  Top = 347
                  Width = 59
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Localisation:'
                end
                object Label153: TLabel
                  Left = 56
                  Top = 302
                  Width = 44
                  Height = 13
                  Caption = 'Taxe (%):'
                end
                object Label154: TLabel
                  Left = 64
                  Top = 376
                  Width = 34
                  Height = 13
                  Caption = 'Usage:'
                end
                object Label184: TLabel
                  Left = 75
                  Top = 327
                  Width = 24
                  Height = 13
                  Caption = 'TTC:'
                end
                object Bevel168: TBevel
                  Left = 280
                  Top = 209
                  Width = 100
                  Height = 32
                end
                object Label185: TLabel
                  Left = 288
                  Top = 218
                  Width = 47
                  Height = 13
                  Caption = 'D'#233'cimale:'
                end
                object Label186: TLabel
                  Left = 400
                  Top = 69
                  Width = 43
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Num Lot:'
                end
                object Bevel169: TBevel
                  Left = 312
                  Top = 280
                  Width = 201
                  Height = 57
                end
                object EditNumProjetFinance: TEdit
                  Left = 104
                  Top = 17
                  Width = 153
                  Height = 19
                  Color = 14671839
                  Ctl3D = False
                  ParentCtl3D = False
                  ReadOnly = True
                  TabOrder = 0
                  OnKeyDown = EditNumProjetFinanceKeyDown
                end
                object EditDesignationProjetFinance: TEdit
                  Left = 104
                  Top = 41
                  Width = 168
                  Height = 19
                  Ctl3D = False
                  ParentCtl3D = False
                  TabOrder = 1
                  OnKeyDown = EditDesignationProjetFinanceKeyDown
                end
                object EditAdresseProjetFinance: TEdit
                  Left = 104
                  Top = 65
                  Width = 272
                  Height = 19
                  Ctl3D = False
                  ParentCtl3D = False
                  TabOrder = 2
                  OnKeyDown = EditAdresseProjetFinanceKeyDown
                end
                object EditMontantProjetFinance: TEdit
                  Left = 104
                  Top = 275
                  Width = 136
                  Height = 19
                  Ctl3D = False
                  ParentCtl3D = False
                  TabOrder = 3
                  OnEnter = EditMontantProjetFinanceEnter
                  OnExit = EditMontantProjetFinanceExit
                  OnKeyDown = EditMontantProjetFinanceKeyDown
                  OnKeyPress = EditMontantProjetFinanceKeyPress
                end
                object EditDecompositionProjetFinance: TComboBox
                  Left = 104
                  Top = 395
                  Width = 81
                  Height = 21
                  BevelKind = bkTile
                  Ctl3D = False
                  ItemHeight = 13
                  ItemIndex = 0
                  ParentCtl3D = False
                  TabOrder = 4
                  Text = 'Oui'
                  OnKeyDown = EditDecompositionProjetFinanceKeyDown
                  Items.Strings = (
                    'Oui'
                    'Non')
                end
                object EditDateDebutProjetFinance: TDateTimePicker
                  Left = 104
                  Top = 105
                  Width = 186
                  Height = 21
                  BevelInner = bvNone
                  BevelOuter = bvNone
                  BevelKind = bkFlat
                  CalAlignment = dtaLeft
                  Date = 40382.074396875
                  Time = 40382.074396875
                  DateFormat = dfLong
                  DateMode = dmComboBox
                  Kind = dtkDate
                  ParseInput = False
                  TabOrder = 5
                  OnKeyDown = EditDateDebutProjetFinanceKeyDown
                end
                object EditDateFinProjetFinance: TDateTimePicker
                  Left = 104
                  Top = 178
                  Width = 186
                  Height = 21
                  BevelInner = bvNone
                  BevelOuter = bvNone
                  BevelKind = bkFlat
                  CalAlignment = dtaLeft
                  Date = 40382.074396875
                  Time = 40382.074396875
                  DateFormat = dfLong
                  DateMode = dmComboBox
                  Kind = dtkDate
                  ParseInput = False
                  TabOrder = 6
                  OnEnter = EditDateFinProjetFinanceEnter
                  OnExit = EditDateFinProjetFinanceExit
                  OnKeyDown = EditDateFinProjetFinanceKeyDown
                end
                object BitValiderProjetFinance: TBitBtn
                  Left = 401
                  Top = 164
                  Width = 105
                  Height = 49
                  Caption = 'Valider'
                  TabOrder = 7
                  OnClick = BitValiderProjetFinanceClick
                  Kind = bkAll
                end
                object BitBtn12: TBitBtn
                  Left = 401
                  Top = 105
                  Width = 105
                  Height = 25
                  Caption = 'Annuler'
                  TabOrder = 8
                  OnClick = BitBtn12Click
                  Kind = bkNo
                end
                object EditDelaisRealisationProjetFinance: TEdit
                  Left = 104
                  Top = 130
                  Width = 81
                  Height = 19
                  Ctl3D = False
                  ParentCtl3D = False
                  TabOrder = 9
                  OnEnter = EditDelaisRealisationProjetFinanceEnter
                  OnKeyDown = EditDelaisRealisationProjetFinanceKeyDown
                  OnKeyPress = EditDelaisRealisationProjetFinanceKeyPress
                  OnKeyUp = EditDelaisRealisationProjetFinanceKeyUp
                end
                object EditUniteDelaisRealisationProjetFinance: TComboBox
                  Left = 104
                  Top = 153
                  Width = 81
                  Height = 21
                  BevelKind = bkTile
                  Ctl3D = False
                  ItemHeight = 13
                  ItemIndex = 0
                  ParentCtl3D = False
                  TabOrder = 10
                  Text = 'Ann'#233'e'
                  OnKeyDown = EditUniteDelaisRealisationProjetFinanceKeyDown
                  OnSelect = EditUniteDelaisRealisationProjetFinanceSelect
                  Items.Strings = (
                    'Ann'#233'e'
                    'Mois'
                    'Jour'
                    'Heure')
                end
                object EditUniteMesureProjetFinance: TComboBox
                  Left = 104
                  Top = 203
                  Width = 81
                  Height = 21
                  BevelKind = bkTile
                  Ctl3D = False
                  ItemHeight = 13
                  ItemIndex = 0
                  ParentCtl3D = False
                  TabOrder = 11
                  Text = 'M3'
                  OnKeyDown = EditUniteMesureProjetFinanceKeyDown
                  Items.Strings = (
                    'M3'
                    'M2'
                    'Ml')
                end
                object EditPrixUniteMesureProjetFinance: TEdit
                  Left = 104
                  Top = 227
                  Width = 81
                  Height = 19
                  Ctl3D = False
                  ParentCtl3D = False
                  TabOrder = 12
                  OnEnter = EditPrixUniteMesureProjetFinanceEnter
                  OnExit = EditPrixUniteMesureProjetFinanceExit
                  OnKeyDown = EditPrixUniteMesureProjetFinanceKeyDown
                  OnKeyPress = EditPrixUniteMesureProjetFinanceKeyPress
                  OnKeyUp = EditPrixUniteMesureProjetFinanceKeyUp
                end
                object EditMesureGlobaleProjetFinance: TEdit
                  Left = 104
                  Top = 251
                  Width = 81
                  Height = 19
                  Ctl3D = False
                  ParentCtl3D = False
                  TabOrder = 13
                  OnEnter = EditMesureGlobaleProjetFinanceEnter
                  OnExit = EditMesureGlobaleProjetFinanceExit
                  OnKeyDown = EditMesureGlobaleProjetFinanceKeyDown
                  OnKeyPress = EditMesureGlobaleProjetFinanceKeyPress
                  OnKeyUp = EditMesureGlobaleProjetFinanceKeyUp
                end
                object EditHeureDebutProjetFinance: TDateTimePicker
                  Left = 305
                  Top = 105
                  Width = 73
                  Height = 21
                  BevelInner = bvNone
                  BevelOuter = bvNone
                  BevelKind = bkFlat
                  CalAlignment = dtaLeft
                  Date = 40382.4715623148
                  Time = 40382.4715623148
                  DateFormat = dfShort
                  DateMode = dmComboBox
                  Kind = dtkTime
                  ParseInput = False
                  TabOrder = 14
                  OnChange = EditHeureDebutProjetFinanceChange
                  OnKeyDown = EditHeureDebutProjetFinanceKeyDown
                end
                object EditHeureFinProjetFinance: TDateTimePicker
                  Left = 305
                  Top = 178
                  Width = 73
                  Height = 21
                  BevelInner = bvNone
                  BevelOuter = bvNone
                  BevelKind = bkFlat
                  CalAlignment = dtaLeft
                  Date = 40382.4715623148
                  Time = 40382.4715623148
                  DateFormat = dfShort
                  DateMode = dmComboBox
                  Kind = dtkTime
                  ParseInput = False
                  TabOrder = 15
                  OnChange = EditHeureFinProjetFinanceChange
                  OnEnter = EditHeureFinProjetFinanceEnter
                  OnKeyDown = EditHeureFinProjetFinanceKeyDown
                end
                object BitBtn19: TBitBtn
                  Left = 328
                  Top = 296
                  Width = 169
                  Height = 25
                  Caption = 'Cumule des Sous Structures'
                  TabOrder = 16
                  OnClick = BitBtn19Click
                  Kind = bkHelp
                end
                object EditCodificationProjetFinance: TEdit
                  Left = 444
                  Top = 41
                  Width = 65
                  Height = 19
                  Ctl3D = False
                  ParentCtl3D = False
                  TabOrder = 17
                  OnKeyDown = EditCodificationProjetFinanceKeyDown
                end
                object EditNatureProjetFinance: TEdit
                  Left = 320
                  Top = 40
                  Width = 57
                  Height = 19
                  Ctl3D = False
                  ParentCtl3D = False
                  TabOrder = 18
                  OnKeyDown = EditNatureProjetFinanceKeyDown
                end
                object EditPourcentagePartieCommune: TEdit
                  Left = 104
                  Top = 419
                  Width = 57
                  Height = 19
                  Ctl3D = False
                  ParentCtl3D = False
                  TabOrder = 19
                  OnEnter = EditPourcentagePartieCommuneEnter
                  OnExit = EditPourcentagePartieCommuneExit
                  OnKeyDown = EditPourcentagePartieCommuneKeyDown
                  OnKeyPress = EditPourcentagePartieCommuneKeyPress
                end
                object EditNumOrdreStructure: TEdit
                  Left = 448
                  Top = 14
                  Width = 41
                  Height = 19
                  Color = clSilver
                  Ctl3D = False
                  ParentCtl3D = False
                  ReadOnly = True
                  TabOrder = 20
                  Text = '0'
                end
                object IncrimenteEditNumOrdreStructure: TUpDown
                  Left = 489
                  Top = 14
                  Width = 16
                  Height = 19
                  Associate = EditNumOrdreStructure
                  Min = 0
                  Position = 0
                  TabOrder = 21
                  Wrap = False
                  OnClick = IncrimenteEditNumOrdreStructureClick
                end
                object EditMesurePartielleProjetFinance: TEdit
                  Left = 288
                  Top = 251
                  Width = 89
                  Height = 19
                  Ctl3D = False
                  ParentCtl3D = False
                  TabOrder = 22
                  OnKeyDown = EditMesurePartielleProjetFinanceKeyDown
                  OnKeyPress = EditMesurePartielleProjetFinanceKeyPress
                end
                object EditLocalisationPreciseProjetFinance: TEdit
                  Left = 104
                  Top = 345
                  Width = 409
                  Height = 19
                  Ctl3D = False
                  ParentCtl3D = False
                  TabOrder = 23
                  OnKeyDown = EditLocalisationPreciseProjetFinanceKeyDown
                end
                object EditTaxePorcentage: TEdit
                  Left = 104
                  Top = 299
                  Width = 41
                  Height = 19
                  Ctl3D = False
                  ParentCtl3D = False
                  TabOrder = 24
                  OnKeyDown = EditTaxePorcentageKeyDown
                  OnKeyPress = EditTaxePorcentageKeyPress
                  OnKeyUp = EditTaxePorcentageKeyUp
                end
                object EditTypeUsage: TComboBox
                  Left = 104
                  Top = 368
                  Width = 409
                  Height = 21
                  BevelKind = bkFlat
                  ItemHeight = 13
                  TabOrder = 25
                  Text = 'usage d'#39'habitation'
                  OnKeyDown = EditTypeUsageKeyDown
                  Items.Strings = (
                    'usage d'#39'habitation'
                    'usage commercial'
                    'usage commun'
                    'usage personnel'
                    'promotionnel collectif fini')
                end
                object EditTTCProjetFinance: TEdit
                  Left = 104
                  Top = 323
                  Width = 121
                  Height = 19
                  Ctl3D = False
                  ParentCtl3D = False
                  TabOrder = 26
                  OnKeyUp = EditTTCProjetFinanceKeyUp
                end
                object EditNbrDecimale: TEdit
                  Left = 336
                  Top = 216
                  Width = 25
                  Height = 19
                  Ctl3D = False
                  ParentCtl3D = False
                  TabOrder = 27
                  Text = '4'
                end
                object IncrimenteEditNbrDecimale: TUpDown
                  Left = 361
                  Top = 216
                  Width = 16
                  Height = 19
                  Associate = EditNbrDecimale
                  Min = 0
                  Position = 4
                  TabOrder = 28
                  Wrap = False
                end
                object EditNumLotProjetFinance: TEdit
                  Left = 444
                  Top = 65
                  Width = 65
                  Height = 19
                  Ctl3D = False
                  ParentCtl3D = False
                  TabOrder = 29
                end
              end
            end
            object TabSheet1: TTabSheet
              Caption = '     Options     '
              ImageIndex = 2
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
              object RadioGroup13: TRadioGroup
                Left = 424
                Top = 16
                Width = 337
                Height = 161
                Caption = 'Domaine '#224' inclure dans la r'#233'capitulatif !'
                TabOrder = 2
              end
              object RBInclurePlanificateur: TCheckBox
                Left = 440
                Top = 40
                Width = 305
                Height = 17
                Caption = 'Inclure Les registres Planificateurs !'
                Checked = True
                State = cbChecked
                TabOrder = 3
              end
              object RBInclurePreselection: TCheckBox
                Left = 440
                Top = 72
                Width = 313
                Height = 17
                Caption = 'Inclure les registres Pr'#233's'#233'lection !'
                Checked = True
                State = cbChecked
                TabOrder = 4
              end
              object RBInclureAvisFinancier: TCheckBox
                Left = 440
                Top = 104
                Width = 313
                Height = 17
                Caption = 'Inclure les registres Avis financier !'
                TabOrder = 5
              end
              object RBInclureValeurProjetFinance: TCheckBox
                Left = 440
                Top = 136
                Width = 313
                Height = 17
                Caption = 'Inclure le registre Projet Finance (valeurs des structures)'
                TabOrder = 6
              end
            end
          end
        end
        object PageAdresseProces: TTabSheet
          Caption = '     G'#233'n'#233'rateur d'#39'Adresse des Proces '#224' Utilis'#233'     '
          ImageIndex = 3
          OnShow = PageAdresseProcesShow
          object TableauxFichierConcernePartageReseaux: TStringGrid
            Left = 760
            Top = 48
            Width = 553
            Height = 569
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 4
            OnDrawCell = TableauxFichierConcernePartageReseauxDrawCell
            OnKeyPress = TableauxFichierConcernePartageReseauxKeyPress
            RowHeights = (
              24
              24
              24
              24
              24)
          end
          object TableauAdresseProces: TStringGrid
            Left = 0
            Top = 0
            Width = 753
            Height = 626
            ColCount = 6
            Ctl3D = False
            DefaultColWidth = 30
            DefaultRowHeight = 20
            FixedCols = 2
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
            ParentCtl3D = False
            TabOrder = 0
            OnClick = TableauAdresseProcesClick
            OnDrawCell = TableauAdresseProcesDrawCell
            OnKeyPress = TableauAdresseProcesKeyPress
            ColWidths = (
              30
              2
              85
              99
              325
              72)
          end
          object AfficheOptionAdresseProces: TPanel
            Left = 104
            Top = 104
            Width = 561
            Height = 233
            BevelInner = bvLowered
            Color = 12320767
            TabOrder = 1
            Visible = False
            OnMouseDown = AfficheOptionAdresseProcesMouseDown
            object Bevel17: TBevel
              Left = 8
              Top = 184
              Width = 545
              Height = 41
            end
            object BitBtn7: TBitBtn
              Left = 16
              Top = 192
              Width = 113
              Height = 25
              TabOrder = 0
              OnClick = BitBtn7Click
              Kind = bkNo
            end
            object BitValiderAdresseProces: TBitBtn
              Left = 432
              Top = 192
              Width = 115
              Height = 25
              Caption = 'Valider'
              TabOrder = 1
              OnClick = BitValiderAdresseProcesClick
              Kind = bkAll
            end
            object Panel6: TPanel
              Left = 8
              Top = 8
              Width = 545
              Height = 129
              BevelInner = bvLowered
              Color = 12320767
              TabOrder = 2
              object Label28: TLabel
                Left = 44
                Top = 11
                Width = 42
                Height = 13
                Alignment = taRightJustify
                Caption = 'Num AP:'
              end
              object Label29: TLabel
                Left = 11
                Top = 35
                Width = 75
                Height = 13
                Alignment = taRightJustify
                Caption = 'Type de Proces'
              end
              object Label30: TLabel
                Left = 34
                Top = 59
                Width = 52
                Height = 13
                Alignment = taRightJustify
                Caption = 'R'#233'pertoire:'
              end
              object Label31: TLabel
                Left = 45
                Top = 83
                Width = 41
                Height = 13
                Alignment = taRightJustify
                Caption = 'Adresse:'
              end
              object Label32: TLabel
                Left = 42
                Top = 107
                Width = 44
                Height = 13
                Alignment = taRightJustify
                Caption = 'Exercice:'
              end
              object EditNumAdresseProces: TEdit
                Left = 96
                Top = 8
                Width = 73
                Height = 19
                Color = 15000804
                Ctl3D = False
                ParentCtl3D = False
                ReadOnly = True
                TabOrder = 0
              end
              object EditAdresseProces: TEdit
                Left = 96
                Top = 80
                Width = 441
                Height = 19
                Color = 15000804
                Ctl3D = False
                ParentCtl3D = False
                ReadOnly = True
                TabOrder = 1
              end
              object EditTypeProces: TComboBox
                Left = 96
                Top = 32
                Width = 145
                Height = 21
                BevelKind = bkFlat
                ItemHeight = 13
                TabOrder = 2
                Text = 'Business'
                OnEnter = EditTypeProcesEnter
                OnKeyDown = EditTypeProcesKeyDown
                OnSelect = EditTypeProcesSelect
                Items.Strings = (
                  'Business'
                  'Commercial'
                  'Paie'
                  'Comptabilit'#233
                  'Social'
                  'R'#233'seaux')
              end
              object EditRepertoire: TEdit
                Left = 96
                Top = 56
                Width = 145
                Height = 19
                Color = 15000804
                Ctl3D = False
                ParentCtl3D = False
                ReadOnly = True
                TabOrder = 3
              end
              object EditExercice: TEdit
                Left = 96
                Top = 102
                Width = 57
                Height = 19
                Ctl3D = False
                MaxLength = 4
                ParentCtl3D = False
                TabOrder = 4
              end
              object RBExerciceAutomatique: TCheckBox
                Left = 160
                Top = 104
                Width = 137
                Height = 17
                Caption = 'Exercice automatique !'
                TabOrder = 5
                OnClick = RBExerciceAutomatiqueClick
              end
            end
            object Panel24: TPanel
              Left = 8
              Top = 144
              Width = 545
              Height = 33
              BevelInner = bvLowered
              Color = 12320767
              TabOrder = 3
              object Label79: TLabel
                Left = 7
                Top = 9
                Width = 83
                Height = 13
                Alignment = taRightJustify
                Caption = 'Fichier Concern'#233':'
              end
              object EditFichierConcerneAdresseProcecs: TEdit
                Left = 96
                Top = 6
                Width = 201
                Height = 19
                Ctl3D = False
                ParentCtl3D = False
                TabOrder = 0
                OnDblClick = EditFichierConcerneAdresseProcecsDblClick
                OnEnter = EditFichierConcerneAdresseProcecsEnter
                OnKeyDown = EditFichierConcerneAdresseProcecsKeyDown
                OnKeyUp = EditFichierConcerneAdresseProcecsKeyUp
              end
            end
            object RBSupprimerYComprisListeFichiersPartages: TCheckBox
              Left = 176
              Top = 192
              Width = 249
              Height = 22
              Caption = 'Supprimer Y compris la liste des fichiers partag'#233's'
              TabOrder = 4
            end
          end
          object AfficheRegistres: TPanel
            Left = 288
            Top = 472
            Width = 641
            Height = 345
            BevelInner = bvLowered
            Color = 14024661
            TabOrder = 2
            Visible = False
            object Bevel50: TBevel
              Left = 528
              Top = 8
              Width = 106
              Height = 41
            end
            object Bevel51: TBevel
              Left = 7
              Top = 8
              Width = 514
              Height = 41
            end
            object TableauRegistres: TStringGrid
              Left = 8
              Top = 56
              Width = 625
              Height = 281
              ColCount = 8
              Ctl3D = False
              DefaultColWidth = 30
              DefaultRowHeight = 20
              RowCount = 2
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
              ParentCtl3D = False
              TabOrder = 0
              OnKeyDown = TableauRegistresKeyDown
              ColWidths = (
                30
                150
                2
                2
                2
                2
                2
                2)
            end
            object BitBtn32: TBitBtn
              Left = 536
              Top = 16
              Width = 91
              Height = 25
              TabOrder = 1
              OnClick = BitBtn32Click
              Kind = bkCancel
            end
          end
          object Panel25: TPanel
            Left = 760
            Top = 0
            Width = 553
            Height = 41
            TabOrder = 5
            OnDblClick = Panel25DblClick
            object BitBtn89: TBitBtn
              Left = 8
              Top = 8
              Width = 193
              Height = 25
              Caption = 'Voir un fichier '#224' son emlacement'
              TabOrder = 0
              OnClick = BitBtn89Click
              Kind = bkHelp
            end
            object BitBtn94: TBitBtn
              Left = 312
              Top = 8
              Width = 235
              Height = 25
              Caption = 'Indiquer le partage au client s'#233'lectionn'#233
              TabOrder = 1
              OnClick = BitBtn94Click
              Kind = bkAll
            end
          end
          object AfficheAccesPrivilegies: TPanel
            Left = 272
            Top = 312
            Width = 769
            Height = 489
            BevelInner = bvLowered
            Color = 8454143
            TabOrder = 6
            Visible = False
            OnMouseDown = AfficheAccesPrivilegiesMouseDown
            object Bevel99: TBevel
              Left = 8
              Top = 48
              Width = 753
              Height = 433
            end
            object Bevel100: TBevel
              Left = 8
              Top = 8
              Width = 753
              Height = 33
            end
            object Label120: TLabel
              Left = 24
              Top = 64
              Width = 52
              Height = 13
              Caption = 'Utilisateur: '
            end
            object Label121: TLabel
              Left = 43
              Top = 88
              Width = 33
              Height = 13
              Caption = 'Poste: '
            end
            object Bevel101: TBevel
              Left = 440
              Top = 136
              Width = 233
              Height = 113
            end
            object BitValiderNewAcces: TBitBtn
              Left = 456
              Top = 152
              Width = 201
              Height = 81
              TabOrder = 0
              OnClick = BitValiderNewAccesClick
              Kind = bkAll
            end
            object BitBtn67: TBitBtn
              Left = 680
              Top = 12
              Width = 75
              Height = 25
              TabOrder = 1
              OnClick = BitBtn67Click
              Kind = bkCancel
            end
            object EditCodeUtilisateurNewAcces: TEdit
              Left = 80
              Top = 56
              Width = 97
              Height = 21
              Color = clSilver
              ReadOnly = True
              TabOrder = 2
            end
            object EditNomPrinomUtilisateurNewAcces: TEdit
              Left = 176
              Top = 80
              Width = 377
              Height = 21
              Color = clSilver
              ReadOnly = True
              TabOrder = 3
            end
            object EditFonctionUtilisateurNewAcces: TEdit
              Left = 568
              Top = 56
              Width = 185
              Height = 21
              Color = clSilver
              ReadOnly = True
              TabOrder = 4
            end
            object Panel27: TPanel
              Left = 16
              Top = 112
              Width = 313
              Height = 68
              BevelInner = bvLowered
              Color = 8454143
              TabOrder = 5
              object Bevel102: TBevel
                Left = 104
                Top = 8
                Width = 201
                Height = 52
              end
              object LabelDateDebutConsultationNewAcces: TLabel
                Left = 112
                Top = 16
                Width = 94
                Height = 13
                Caption = 'Mise en application:'
                Enabled = False
              end
              object LabelDateFinConsultationNewAcces: TLabel
                Left = 157
                Top = 40
                Width = 49
                Height = 13
                Caption = 'Expiration:'
                Enabled = False
              end
              object RBConsultationNewAcces: TCheckBox
                Left = 8
                Top = 8
                Width = 89
                Height = 17
                Caption = 'Consultation:'
                TabOrder = 0
                OnClick = RBConsultationNewAccesClick
              end
              object EditDateDebutConsultationNewAcces: TMaskEdit
                Left = 216
                Top = 12
                Width = 71
                Height = 19
                Ctl3D = False
                Enabled = False
                EditMask = '!99/99/9999;1;_'
                MaxLength = 10
                ParentCtl3D = False
                TabOrder = 1
                Text = '  /  /    '
              end
              object EditDateFinConsultationNewAcces: TMaskEdit
                Left = 216
                Top = 36
                Width = 71
                Height = 19
                Ctl3D = False
                Enabled = False
                EditMask = '!99/99/9999;1;_'
                MaxLength = 10
                ParentCtl3D = False
                TabOrder = 2
                Text = '  /  /    '
              end
            end
            object Panel28: TPanel
              Left = 16
              Top = 185
              Width = 313
              Height = 68
              BevelInner = bvLowered
              Color = 8454143
              TabOrder = 6
              object Bevel103: TBevel
                Left = 104
                Top = 8
                Width = 201
                Height = 52
              end
              object LabelDateDebutAjouterNewAcces: TLabel
                Left = 112
                Top = 16
                Width = 94
                Height = 13
                Caption = 'Mise en application:'
                Enabled = False
              end
              object LabelDateFinAjouterNewAcces: TLabel
                Left = 157
                Top = 40
                Width = 49
                Height = 13
                Caption = 'Expiration:'
                Enabled = False
              end
              object RBAjouterNewAcces: TCheckBox
                Left = 8
                Top = 8
                Width = 73
                Height = 17
                Caption = 'Ajouter: '
                TabOrder = 0
                OnClick = RBAjouterNewAccesClick
              end
              object EditDateDebutAjouterNewAcces: TMaskEdit
                Left = 216
                Top = 12
                Width = 71
                Height = 19
                Ctl3D = False
                Enabled = False
                EditMask = '!99/99/9999;1;_'
                MaxLength = 10
                ParentCtl3D = False
                TabOrder = 1
                Text = '  /  /    '
              end
              object EditDateFinAjouterNewAcces: TMaskEdit
                Left = 216
                Top = 36
                Width = 71
                Height = 19
                Ctl3D = False
                Enabled = False
                EditMask = '!99/99/9999;1;_'
                MaxLength = 10
                ParentCtl3D = False
                TabOrder = 2
                Text = '  /  /    '
              end
            end
            object EditCodePosteMenuNewAcces: TEdit
              Left = 80
              Top = 80
              Width = 217
              Height = 21
              Color = clSilver
              ReadOnly = True
              TabOrder = 7
              OnDblClick = EditCodePosteMenuNewAccesDblClick
              OnKeyDown = EditCodePosteMenuNewAccesKeyDown
            end
            object EditDesignationPosteMenuNewAcces: TEdit
              Left = 296
              Top = 80
              Width = 257
              Height = 21
              Color = clSilver
              ReadOnly = True
              TabOrder = 8
            end
            object EditDefinitionPosteMenuNewAcces: TEdit
              Left = 568
              Top = 80
              Width = 185
              Height = 21
              Color = clSilver
              ReadOnly = True
              TabOrder = 9
            end
            object EditNumeroAccesNewAcces: TEdit
              Left = 16
              Top = 15
              Width = 65
              Height = 21
              Color = clSilver
              ReadOnly = True
              TabOrder = 11
            end
            object Panel29: TPanel
              Left = 16
              Top = 258
              Width = 313
              Height = 68
              BevelInner = bvLowered
              Color = 8454143
              TabOrder = 12
              object Bevel104: TBevel
                Left = 104
                Top = 8
                Width = 201
                Height = 52
              end
              object LabelDateDebutModifierNewAcces: TLabel
                Left = 112
                Top = 16
                Width = 94
                Height = 13
                Caption = 'Mise en application:'
                Enabled = False
              end
              object LabelDateFinModifierNewAcces: TLabel
                Left = 157
                Top = 40
                Width = 49
                Height = 13
                Caption = 'Expiration:'
                Enabled = False
              end
              object RBModifierNewAcces: TCheckBox
                Left = 8
                Top = 8
                Width = 65
                Height = 17
                Caption = 'Modifier: '
                TabOrder = 0
                OnClick = RBModifierNewAccesClick
              end
              object EditDateDebutModifierNewAcces: TMaskEdit
                Left = 216
                Top = 12
                Width = 71
                Height = 19
                Ctl3D = False
                Enabled = False
                EditMask = '!99/99/9999;1;_'
                MaxLength = 10
                ParentCtl3D = False
                TabOrder = 1
                Text = '  /  /    '
              end
              object EditDateFinModifierNewAcces: TMaskEdit
                Left = 216
                Top = 36
                Width = 71
                Height = 19
                Ctl3D = False
                Enabled = False
                EditMask = '!99/99/9999;1;_'
                MaxLength = 10
                ParentCtl3D = False
                TabOrder = 2
                Text = '  /  /    '
              end
            end
            object Panel30: TPanel
              Left = 16
              Top = 331
              Width = 313
              Height = 68
              BevelInner = bvLowered
              Color = 8454143
              TabOrder = 13
              object Bevel105: TBevel
                Left = 104
                Top = 8
                Width = 201
                Height = 52
              end
              object LabelDateDebutSupprimerNewAcces: TLabel
                Left = 112
                Top = 16
                Width = 94
                Height = 13
                Caption = 'Mise en application:'
                Enabled = False
              end
              object LabelDateFinSupprimerNewAcces: TLabel
                Left = 157
                Top = 40
                Width = 49
                Height = 13
                Caption = 'Expiration:'
                Enabled = False
              end
              object RBSupprimerNewAcces: TCheckBox
                Left = 8
                Top = 8
                Width = 73
                Height = 17
                Caption = 'Supprimer: '
                TabOrder = 0
                OnClick = RBSupprimerNewAccesClick
              end
              object EditDateDebutSupprimerNewAcces: TMaskEdit
                Left = 216
                Top = 12
                Width = 71
                Height = 19
                Ctl3D = False
                Enabled = False
                EditMask = '!99/99/9999;1;_'
                MaxLength = 10
                ParentCtl3D = False
                TabOrder = 1
                Text = '  /  /    '
              end
              object EditDateFinSupprimerNewAcces: TMaskEdit
                Left = 216
                Top = 36
                Width = 71
                Height = 19
                Ctl3D = False
                Enabled = False
                EditMask = '!99/99/9999;1;_'
                MaxLength = 10
                ParentCtl3D = False
                TabOrder = 2
                Text = '  /  /    '
              end
            end
            object Panel31: TPanel
              Left = 16
              Top = 404
              Width = 313
              Height = 68
              BevelInner = bvLowered
              Color = 8454143
              TabOrder = 14
              object Bevel106: TBevel
                Left = 104
                Top = 8
                Width = 201
                Height = 52
              end
              object LabelDateDebutImprimerNewAcces: TLabel
                Left = 112
                Top = 16
                Width = 94
                Height = 13
                Caption = 'Mise en application:'
                Enabled = False
              end
              object LabelDateFinImprimerNewAcces: TLabel
                Left = 157
                Top = 40
                Width = 49
                Height = 13
                Caption = 'Expiration:'
                Enabled = False
              end
              object RBImprimerNewAcces: TCheckBox
                Left = 8
                Top = 8
                Width = 73
                Height = 17
                Caption = 'Imprimer: '
                TabOrder = 0
                OnClick = RBImprimerNewAccesClick
              end
              object EditDateDebutImprimerNewAcces: TMaskEdit
                Left = 216
                Top = 12
                Width = 71
                Height = 19
                Ctl3D = False
                Enabled = False
                EditMask = '!99/99/9999;1;_'
                MaxLength = 10
                ParentCtl3D = False
                TabOrder = 1
                Text = '  /  /    '
              end
              object EditDateFinImprimerNewAcces: TMaskEdit
                Left = 216
                Top = 36
                Width = 71
                Height = 19
                Ctl3D = False
                Enabled = False
                EditMask = '!99/99/9999;1;_'
                MaxLength = 10
                ParentCtl3D = False
                TabOrder = 2
                Text = '  /  /    '
              end
            end
            object AfficheListePosteMenuNewAcces: TPanel
              Left = 336
              Top = 288
              Width = 417
              Height = 361
              BevelInner = bvLowered
              Color = 11468718
              TabOrder = 10
              Visible = False
              object TableauPosteMenuNewAcces: TStringGrid
                Left = 8
                Top = 8
                Width = 401
                Height = 277
                ColCount = 4
                Ctl3D = False
                DefaultColWidth = 40
                FixedColor = 8454143
                FixedCols = 3
                RowCount = 2
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
                ParentCtl3D = False
                TabOrder = 0
                ColWidths = (
                  40
                  2
                  2
                  330)
              end
              object BitBtn68: TBitBtn
                Left = 480
                Top = 8
                Width = 81
                Height = 25
                TabOrder = 1
                Kind = bkCancel
              end
              object DefinitionPosteMenuNewAcces: TMemo
                Left = 8
                Top = 290
                Width = 401
                Height = 65
                Ctl3D = False
                ParentCtl3D = False
                ReadOnly = True
                TabOrder = 2
              end
            end
            object EditCodePosteMenuNewAccesLast: TEdit
              Left = 88
              Top = 16
              Width = 217
              Height = 21
              Color = clSilver
              ReadOnly = True
              TabOrder = 15
            end
          end
          object AfficheListeFichierConcerne: TPanel
            Left = 688
            Top = 501
            Width = 721
            Height = 329
            BevelInner = bvLowered
            Color = 14024661
            TabOrder = 3
            Visible = False
            OnMouseDown = AfficheListeFichierConcerneMouseDown
            object Label119: TLabel
              Left = 8
              Top = 16
              Width = 103
              Height = 13
              Caption = 'Recherche S'#233'lective:'
            end
            object TableauListeFichierConcerne: TStringGrid
              Left = 8
              Top = 40
              Width = 705
              Height = 281
              Ctl3D = False
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
              ParentCtl3D = False
              TabOrder = 0
              OnDblClick = TableauListeFichierConcerneDblClick
              OnDrawCell = TableauListeFichierConcerneDrawCell
              OnKeyDown = TableauListeFichierConcerneKeyDown
              OnKeyPress = TableauListeFichierConcerneKeyPress
            end
            object BitBtn64: TBitBtn
              Left = 640
              Top = 8
              Width = 75
              Height = 25
              TabOrder = 1
              OnClick = BitBtn64Click
              Kind = bkCancel
            end
            object EditNomFichierConcerneRecherche: TEdit
              Left = 112
              Top = 12
              Width = 289
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 2
              OnKeyDown = EditNomFichierConcerneRechercheKeyDown
              OnKeyUp = EditNomFichierConcerneRechercheKeyUp
            end
            object BitBtn66: TBitBtn
              Left = 408
              Top = 8
              Width = 169
              Height = 25
              Caption = 'Avancer la rech'#233'rche !'
              TabOrder = 3
              OnClick = BitBtn66Click
              Kind = bkHelp
            end
            object EditRowSelect: TEdit
              Left = 592
              Top = 11
              Width = 33
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 4
              Text = '1'
            end
          end
        end
        object PageGenerateurAdresseDossierPartageReseaux: TTabSheet
          Caption = '     G'#233'n'#233'rateur d'#39'adresse des dossiers partag'#233's r'#233'seaux     '
          ImageIndex = 4
          OnShow = PageGenerateurAdresseDossierPartageReseauxShow
          object Bevel122: TBevel
            Left = 1048
            Top = 8
            Width = 265
            Height = 41
          end
          object Bevel123: TBevel
            Left = 1048
            Top = 56
            Width = 265
            Height = 41
          end
          object Bevel124: TBevel
            Left = 1048
            Top = 104
            Width = 265
            Height = 41
          end
          object TableauAdresseDossierPartageReseaux: TStringGrid
            Left = 0
            Top = 0
            Width = 1041
            Height = 626
            ColCount = 6
            Ctl3D = False
            DefaultColWidth = 30
            DefaultRowHeight = 20
            FixedCols = 2
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
            ParentCtl3D = False
            TabOrder = 0
            OnClick = TableauAdresseDossierPartageReseauxClick
            OnDrawCell = TableauAdresseDossierPartageReseauxDrawCell
            OnKeyPress = TableauAdresseDossierPartageReseauxKeyPress
            ColWidths = (
              30
              2
              85
              99
              325
              72)
          end
          object AfficheOptionAdresseDossierPartageReseaux: TPanel
            Left = 208
            Top = 128
            Width = 561
            Height = 225
            BevelInner = bvLowered
            Color = 12320767
            TabOrder = 1
            Visible = False
            OnMouseDown = AfficheOptionAdresseDossierPartageReseauxMouseDown
            object Bevel98: TBevel
              Left = 8
              Top = 176
              Width = 545
              Height = 41
            end
            object BitBtn65: TBitBtn
              Left = 16
              Top = 184
              Width = 113
              Height = 25
              Caption = '&Non'
              ModalResult = 7
              TabOrder = 0
              OnClick = BitBtn65Click
              Glyph.Data = {
                DE010000424DDE01000000000000760000002800000024000000120000000100
                0400000000006801000000000000000000001000000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3333333333333FFFFF333333000033333388888833333333333F888888FFF333
                000033338811111188333333338833FFF388FF33000033381119999111833333
                38F338888F338FF30000339119933331111833338F388333383338F300003391
                13333381111833338F8F3333833F38F3000039118333381119118338F38F3338
                33F8F38F000039183333811193918338F8F333833F838F8F0000391833381119
                33918338F8F33833F8338F8F000039183381119333918338F8F3833F83338F8F
                000039183811193333918338F8F833F83333838F000039118111933339118338
                F3833F83333833830000339111193333391833338F33F8333FF838F300003391
                11833338111833338F338FFFF883F83300003339111888811183333338FF3888
                83FF83330000333399111111993333333388FFFFFF8833330000333333999999
                3333333333338888883333330000333333333333333333333333333333333333
                0000}
              NumGlyphs = 2
            end
            object BitValiderAdresseDossierPartageReseaux: TBitBtn
              Left = 424
              Top = 184
              Width = 115
              Height = 25
              Caption = 'Valider'
              TabOrder = 1
              OnClick = BitValiderAdresseDossierPartageReseauxClick
              Kind = bkAll
            end
            object Panel26: TPanel
              Left = 8
              Top = 8
              Width = 545
              Height = 161
              BevelInner = bvLowered
              Color = 12320767
              TabOrder = 2
              object Label115: TLabel
                Left = 57
                Top = 11
                Width = 29
                Height = 13
                Alignment = taRightJustify
                Caption = 'Ordre:'
              end
              object Label116: TLabel
                Left = 16
                Top = 35
                Width = 70
                Height = 13
                Alignment = taRightJustify
                Caption = 'Nom du Poste:'
              end
              object Label118: TLabel
                Left = 45
                Top = 59
                Width = 41
                Height = 13
                Alignment = taRightJustify
                Caption = 'Adresse:'
              end
              object Label117: TLabel
                Left = 19
                Top = 83
                Width = 67
                Height = 13
                Alignment = taRightJustify
                Caption = 'Emplacement:'
              end
              object Label122: TLabel
                Left = 64
                Top = 107
                Width = 22
                Height = 13
                Alignment = taRightJustify
                Caption = 'Port:'
              end
              object Label123: TLabel
                Left = 32
                Top = 131
                Width = 54
                Height = 13
                Alignment = taRightJustify
                Caption = 'Adresse IP:'
              end
              object EditNumAdresseDossierPartageReseaux: TEdit
                Left = 96
                Top = 8
                Width = 73
                Height = 19
                Color = 15000804
                Ctl3D = False
                ParentCtl3D = False
                ReadOnly = True
                TabOrder = 0
              end
              object EditAdresseDossierPartageReseaux: TEdit
                Left = 96
                Top = 56
                Width = 441
                Height = 19
                Color = 15000804
                Ctl3D = False
                ParentCtl3D = False
                ReadOnly = True
                TabOrder = 1
                OnEnter = EditAdresseDossierPartageReseauxEnter
                OnExit = EditAdresseDossierPartageReseauxExit
                OnKeyDown = EditAdresseDossierPartageReseauxKeyDown
              end
              object EditNomPosteReseaux: TEdit
                Left = 96
                Top = 32
                Width = 217
                Height = 19
                Ctl3D = False
                ParentCtl3D = False
                TabOrder = 2
                OnKeyDown = EditNomPosteReseauxKeyDown
              end
              object EditEmlacementLocalOuReseaux: TEdit
                Left = 96
                Top = 80
                Width = 217
                Height = 19
                Ctl3D = False
                ParentCtl3D = False
                TabOrder = 3
                OnKeyDown = EditEmlacementLocalOuReseauxKeyDown
              end
              object EditPort: TEdit
                Left = 96
                Top = 104
                Width = 81
                Height = 19
                Ctl3D = False
                ParentCtl3D = False
                TabOrder = 4
                OnKeyDown = EditPortKeyDown
              end
              object EditAdresseIP: TEdit
                Left = 96
                Top = 128
                Width = 161
                Height = 19
                Ctl3D = False
                ParentCtl3D = False
                TabOrder = 5
                OnKeyDown = EditAdresseIPKeyDown
              end
              object BitBtn69: TBitBtn
                Left = 264
                Top = 125
                Width = 137
                Height = 25
                Caption = 'Adresse IP Local'
                TabOrder = 6
                OnClick = BitBtn69Click
                Kind = bkHelp
              end
              object RBReadOnlyEditAdresseDossierPartageReseaux: TCheckBox
                Left = 450
                Top = 76
                Width = 86
                Height = 17
                Caption = 'Lecture seule'
                Checked = True
                State = cbChecked
                TabOrder = 7
                OnClick = RBReadOnlyEditAdresseDossierPartageReseauxClick
              end
            end
          end
          object TableauChercherAdresseFichier: TShellTreeView
            Left = 653
            Top = 232
            Width = 529
            Height = 409
            ObjectTypes = [otFolders]
            Root = 'rfDesktop'
            UseShellImages = True
            AutoRefresh = False
            Ctl3d = False
            Indent = 19
            ParentColor = False
            ParentCtl3d = False
            RightClickSelect = True
            ShowRoot = False
            TabOrder = 2
            Visible = False
            OnClick = TableauChercherAdresseFichierClick
            OnExit = TableauChercherAdresseFichierExit
            OnMouseDown = TableauChercherAdresseFichierMouseDown
            OnDblClick = TableauChercherAdresseFichierDblClick
            OnKeyDown = TableauChercherAdresseFichierKeyDown
          end
          object BitBtn83: TBitBtn
            Left = 1056
            Top = 16
            Width = 249
            Height = 25
            Caption = 'Crier le dossier s'#233'lectionn'#233' !'
            TabOrder = 3
            OnClick = BitBtn83Click
            Kind = bkAll
          end
          object BitBtn84: TBitBtn
            Left = 1056
            Top = 64
            Width = 249
            Height = 25
            Caption = 'Recrier le dossier s'#233'lectionn'#233' !'
            TabOrder = 4
            OnClick = BitBtn84Click
            Kind = bkRetry
          end
          object BitModifierAdresse: TBitBtn
            Left = 1056
            Top = 112
            Width = 249
            Height = 25
            Caption = 'Modifier le dossier ou l'#39'adresse !'
            TabOrder = 5
            OnClick = BitModifierAdresseClick
            Kind = bkRetry
          end
        end
      end
      object AfficheJournauxAuxiliaires: TPanel
        Left = -349
        Top = 492
        Width = 601
        Height = 321
        BevelInner = bvLowered
        Color = 13303754
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        Visible = False
        OnMouseDown = AfficheJournauxAuxiliairesMouseDown
        object Bevel49: TBevel
          Left = 8
          Top = 8
          Width = 585
          Height = 41
        end
        object EditConfirmeValidetionJourneauxAuxiliaire: TEdit
          Left = 32
          Top = 291
          Width = 105
          Height = 19
          Color = clSilver
          ReadOnly = True
          TabOrder = 1
        end
        object TableauJournalauxiliaire: TStringGrid
          Left = 8
          Top = 56
          Width = 585
          Height = 225
          Color = 14680031
          ColCount = 8
          Ctl3D = False
          DefaultColWidth = 40
          DefaultRowHeight = 20
          FixedColor = 9961367
          RowCount = 2
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
          ParentCtl3D = False
          TabOrder = 0
          OnDblClick = TableauJournalauxiliaireDblClick
          OnDrawCell = TableauJournalauxiliaireDrawCell
          OnKeyDown = TableauJournalauxiliaireKeyDown
          OnKeyPress = TableauJournalauxiliaireKeyPress
          ColWidths = (
            40
            81
            237
            2
            2
            2
            2
            40)
        end
        object BitValiderJournalAuxiliaire: TBitBtn
          Left = 16
          Top = 16
          Width = 201
          Height = 25
          Caption = 'Valider !'
          TabOrder = 2
          OnClick = BitValiderJournalAuxiliaireClick
          Kind = bkAll
        end
        object BitBtn35: TBitBtn
          Left = 512
          Top = 16
          Width = 75
          Height = 25
          TabOrder = 3
          OnClick = BitBtn35Click
          Kind = bkCancel
        end
        object BitSelection: TBitBtn
          Left = 8
          Top = 288
          Width = 289
          Height = 25
          Caption = 'S'#233'lectionner tous !'
          TabOrder = 4
          OnClick = BitSelectionClick
          Kind = bkAll
        end
        object EditSource: TEdit
          Left = 504
          Top = 288
          Width = 89
          Height = 19
          Color = 13303754
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 12058551
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
      end
    end
    object PageGenerateurBasePlanificateur: TTabSheet
      Caption = '     G'#233'n'#233'rateur des bases Planificateur     '
      ImageIndex = 1
      object PageControl4: TPageControl
        Left = 0
        Top = 0
        Width = 1329
        Height = 658
        ActivePage = PageGenerateurArticle
        TabIndex = 0
        TabOrder = 0
        OnChange = PageControl4Change
        object PageGenerateurArticle: TTabSheet
          Caption = '     G'#233'n'#233'rateur d'#39'Articles     '
          OnShow = PageGenerateurArticleShow
          object Bevel90: TBevel
            Left = 1000
            Top = 280
            Width = 209
            Height = 41
          end
          object Bevel79: TBevel
            Left = 1000
            Top = 232
            Width = 249
            Height = 41
          end
          object Bevel78: TBevel
            Left = 1000
            Top = 184
            Width = 249
            Height = 41
          end
          object NomSFl: TLabel
            Left = 16
            Top = 115
            Width = 30
            Height = 13
            Caption = '..........'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Bevel55: TBevel
            Left = 1000
            Top = 0
            Width = 169
            Height = 65
          end
          object Bevel56: TBevel
            Left = 1000
            Top = 72
            Width = 313
            Height = 41
          end
          object Bevel61: TBevel
            Left = 1000
            Top = 456
            Width = 233
            Height = 33
          end
          object Label105: TLabel
            Left = 1008
            Top = 200
            Width = 30
            Height = 13
            Alignment = taRightJustify
            Caption = 'Projet:'
          end
          object Bevel77: TBevel
            Left = 1000
            Top = 120
            Width = 249
            Height = 57
          end
          object Label111: TLabel
            Left = 1016
            Top = 294
            Width = 122
            Height = 13
            Caption = 'Nbr.Chiffre Apr'#233's Vergule:'
          end
          object Bevel121: TBevel
            Left = 998
            Top = 588
            Width = 219
            Height = 33
          end
          object ImageCodebarre: TImage
            Left = 1128
            Top = 496
            Width = 188
            Height = 65
            AutoSize = True
            OnDblClick = ImageCodebarreDblClick
          end
          object CodebarreSousTitre: TLabel
            Left = 1128
            Top = 564
            Width = 30
            Height = 12
            Caption = '..........'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object BitBtn42: TBitBtn
            Left = 1008
            Top = 80
            Width = 297
            Height = 25
            Caption = 'G'#233'n'#233'rer un fichier texte Stock'
            TabOrder = 9
            OnClick = BitBtn42Click
            Kind = bkHelp
          end
          object RBTrieTableauArticle: TCheckBox
            Left = 1008
            Top = 464
            Width = 161
            Height = 17
            Caption = 'Tri'#233' le tableau '#224' la s'#233'lection !'
            TabOrder = 14
          end
          object EditRubriqueTrie: TEdit
            Left = 1168
            Top = 464
            Width = 17
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 15
            Text = '1'
          end
          object EditTypeTrie: TComboBox
            Left = 1192
            Top = 464
            Width = 33
            Height = 21
            BevelKind = bkFlat
            Ctl3D = False
            ItemHeight = 13
            ItemIndex = 0
            ParentCtl3D = False
            TabOrder = 16
            Text = '+'
            OnKeyPress = EditTypeTrieKeyPress
            Items.Strings = (
              '+'
              '-')
          end
          object BitBtn79: TBitBtn
            Left = 1248
            Top = 460
            Width = 73
            Height = 25
            Caption = 'Photo'
            TabOrder = 46
            OnClick = BitBtn79Click
            Kind = bkHelp
          end
          object RBAjustementArticle: TCheckBox
            Left = 1008
            Top = 557
            Width = 81
            Height = 17
            Caption = 'Ajustement !'
            Checked = True
            State = cbChecked
            TabOrder = 20
          end
          object RBCacherColonneDBClick: TCheckBox
            Left = 1008
            Top = 528
            Width = 113
            Height = 17
            Caption = 'DBClick Colonne X'
            TabOrder = 63
          end
          object RBAvecCodeBarre: TCheckBox
            Left = 1216
            Top = 304
            Width = 100
            Height = 17
            Caption = 'avec code barre'
            TabOrder = 60
            OnClick = RBAvecCodeBarreClick
          end
          object AfficherCodeBarre: TCheckBox
            Left = 1216
            Top = 280
            Width = 73
            Height = 17
            Caption = 'Code bare'
            Checked = True
            State = cbChecked
            TabOrder = 59
            OnClick = AfficherCodeBarreClick
          end
          object EditNomSousFamille: TEdit
            Left = 16
            Top = 64
            Width = 57
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 62
          end
          object AutoriserEnregistrementOptionsFicheStock: TCheckBox
            Left = 1008
            Top = 514
            Width = 17
            Height = 17
            Checked = True
            Enabled = False
            State = cbChecked
            TabOrder = 50
          end
          object RBAffichePrix: TCheckBox
            Left = 1008
            Top = 496
            Width = 97
            Height = 17
            Caption = 'Afficher le prix'
            Checked = True
            State = cbChecked
            TabOrder = 49
          end
          object FichierMemo: TMemo
            Left = 8
            Top = 8
            Width = 841
            Height = 25
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 51
          end
          object BitBtn82: TBitBtn
            Left = 1002
            Top = 592
            Width = 211
            Height = 25
            Caption = 'Crier et Sauvegarder un fichier Excel '
            TabOrder = 48
            OnClick = BitBtn82Click
            Kind = bkHelp
          end
          object RBOrientationPapierArticle: TComboBox
            Left = 1008
            Top = 552
            Width = 89
            Height = 21
            BevelInner = bvLowered
            BevelKind = bkFlat
            Ctl3D = False
            ItemHeight = 13
            ItemIndex = 0
            ParentCtl3D = False
            TabOrder = 19
            Text = 'Automatique'
            Items.Strings = (
              'Automatique'
              'Portrait'
              'Paysage')
          end
          object Panel22: TPanel
            Left = 1000
            Top = 328
            Width = 281
            Height = 121
            BevelInner = bvLowered
            TabOrder = 36
            object Label112: TLabel
              Left = 8
              Top = 16
              Width = 67
              Height = 13
              Caption = 'Type Formule:'
            end
            object Label113: TLabel
              Left = 8
              Top = 88
              Width = 88
              Height = 13
              Caption = 'Valeur par formule:'
            end
            object Label114: TLabel
              Left = 24
              Top = 43
              Width = 51
              Height = 13
              Caption = 'Prix Choisi:'
            end
            object EditCodeTypeFormuleCompteurArticle: TEdit
              Left = 80
              Top = 14
              Width = 65
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 0
            end
            object EditTypeFormuleCompteurArticle: TEdit
              Left = 80
              Top = 14
              Width = 161
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 1
              OnEnter = EditTypeFormuleCompteurArticleEnter
            end
            object EditValeurFormule: TMemo
              Left = 104
              Top = 80
              Width = 137
              Height = 33
              Alignment = taRightJustify
              Color = clBlack
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -24
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
            end
            object EditChoisPrix: TComboBox
              Left = 80
              Top = 40
              Width = 161
              Height = 21
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 3
              Text = 'Prix de vente d'#233'tail'
              OnSelect = EditChoisPrixSelect
              Items.Strings = (
                'Prix de vente d'#233'tail'
                'Prix de vente gros'
                'Prix de vente Demi-gros'
                'Prix d'#39'achat')
            end
            object BitBtn85: TBitBtn
              Left = 248
              Top = 8
              Width = 27
              Height = 25
              Caption = '.'
              TabOrder = 4
              OnClick = BitBtn85Click
              Kind = bkNo
              Margin = 2
            end
          end
          object BitBtn58: TBitBtn
            Left = 1216
            Top = 240
            Width = 27
            Height = 25
            Caption = '.'
            TabOrder = 39
            OnClick = BitBtn58Click
            Kind = bkHelp
          end
          object EditTypeAnalyse: TEdit
            Left = 1056
            Top = 10
            Width = 49
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 33
          end
          object BitBtn54: TBitBtn
            Left = 1008
            Top = 240
            Width = 201
            Height = 25
            Caption = 'Dupliquer la liste du stock affich'#233
            TabOrder = 30
            OnClick = BitBtn54Click
            Kind = bkHelp
          end
          object EditTypeComptabilite: TEdit
            Left = 1008
            Top = 152
            Width = 105
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 24
            Text = 'PlanComptable'
          end
          object EditTypeStock: TComboBox
            Left = 1008
            Top = 128
            Width = 105
            Height = 21
            BevelKind = bkFlat
            Ctl3D = False
            ItemHeight = 13
            ItemIndex = 0
            ParentCtl3D = False
            TabOrder = 23
            Text = 'Article'
            OnChange = EditTypeStockChange
            OnKeyPress = EditTypeStockKeyPress
            Items.Strings = (
              'Article'
              'Marche')
          end
          object RadioGroup9: TRadioGroup
            Left = 1000
            Top = 544
            Width = 113
            Height = 33
            Caption = 'Options d'#39'Impression:'
            TabOrder = 21
          end
          object RBLancerAnalyseStock: TCheckBox
            Left = 1008
            Top = 44
            Width = 153
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Lancer l'#39'analyse du stock'
            TabOrder = 10
          end
          object EditCodeSousFamille: TEdit
            Left = 16
            Top = 88
            Width = 57
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 5
          end
          object TableauStockArticle: TStringGrid
            Left = 0
            Top = 0
            Width = 993
            Height = 628
            ColCount = 18
            Ctl3D = False
            DefaultColWidth = 40
            DefaultRowHeight = 20
            FixedColor = 11661808
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSizing, goColSizing, goAlwaysShowEditor]
            ParentCtl3D = False
            TabOrder = 1
            OnClick = TableauStockArticleClick
            OnContextPopup = TableauStockArticleContextPopup
            OnDblClick = TableauStockArticleDblClick
            OnDrawCell = TableauStockArticleDrawCell
            OnKeyDown = TableauStockArticleKeyDown
            OnKeyPress = TableauStockArticleKeyPress
            OnMouseMove = TableauStockArticleMouseMove
            ColWidths = (
              40
              64
              122
              112
              26
              50
              49
              47
              46
              45
              46
              45
              42
              2
              2
              2
              2
              2)
            RowHeights = (
              20
              20)
          end
          object AfficheStock: TPanel
            Left = 432
            Top = 136
            Width = 521
            Height = 393
            BevelInner = bvLowered
            Color = 8454143
            TabOrder = 0
            Visible = False
            object TableauStock: TStringGrid
              Left = 8
              Top = 8
              Width = 505
              Height = 377
              ColCount = 18
              Ctl3D = False
              DefaultColWidth = 40
              DefaultRowHeight = 20
              FixedColor = 11661808
              RowCount = 2
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSizing, goColSizing, goAlwaysShowEditor]
              ParentCtl3D = False
              TabOrder = 0
              OnClick = TableauStockClick
              OnKeyDown = TableauStockKeyDown
              OnKeyPress = TableauStockKeyPress
              ColWidths = (
                40
                64
                122
                112
                26
                50
                49
                47
                46
                45
                46
                45
                42
                2
                2
                2
                2
                2)
            end
          end
          object AfficheProduits: TPanel
            Left = 32
            Top = 24
            Width = 498
            Height = 289
            BevelInner = bvLowered
            Color = 11661808
            TabOrder = 3
            Visible = False
            OnEnter = AfficheProduitsEnter
            OnMouseDown = AfficheProduitsMouseDown
            object Bevel32: TBevel
              Left = 16
              Top = 16
              Width = 71
              Height = 83
            end
            object Label56: TLabel
              Left = 52
              Top = 20
              Width = 28
              Height = 13
              Alignment = taRightJustify
              Caption = 'Code:'
            end
            object Label57: TLabel
              Left = 50
              Top = 41
              Width = 30
              Height = 13
              Alignment = taRightJustify
              Caption = 'D'#233'sig:'
            end
            object Label58: TLabel
              Left = 60
              Top = 85
              Width = 20
              Height = 13
              Alignment = taRightJustify
              Caption = 'R'#233'f:'
            end
            object Label59: TLabel
              Left = 57
              Top = 106
              Width = 23
              Height = 13
              Alignment = taRightJustify
              Caption = 'U.M:'
            end
            object Label60: TLabel
              Left = 174
              Top = 19
              Width = 56
              Height = 13
              Alignment = taRightJustify
              Caption = 'Code Barre:'
            end
            object Bevel33: TBevel
              Left = 376
              Top = 8
              Width = 113
              Height = 113
            end
            object Bevel34: TBevel
              Left = 176
              Top = 128
              Width = 103
              Height = 148
            end
            object Bevel35: TBevel
              Left = 16
              Top = 128
              Width = 71
              Height = 125
            end
            object Label61: TLabel
              Left = 26
              Top = 132
              Width = 54
              Height = 13
              Alignment = taRightJustify
              Caption = 'Qte.Entr'#233'e:'
            end
            object Label62: TLabel
              Left = 30
              Top = 152
              Width = 50
              Height = 13
              Alignment = taRightJustify
              Caption = 'Qte.Sortie:'
            end
            object Label63: TLabel
              Left = 29
              Top = 174
              Width = 51
              Height = 13
              Alignment = taRightJustify
              Caption = 'Qte.Stock:'
            end
            object Label64: TLabel
              Left = 33
              Top = 194
              Width = 47
              Height = 13
              Alignment = taRightJustify
              Caption = 'Qte.Initial:'
            end
            object Label65: TLabel
              Left = 30
              Top = 215
              Width = 50
              Height = 13
              Alignment = taRightJustify
              Caption = 'Qte.Limite:'
            end
            object TitreEditCoutUnitaire: TLabel
              Left = 18
              Top = 236
              Width = 64
              Height = 13
              Alignment = taRightJustify
              Caption = 'Co'#251't Unitaire:'
            end
            object TitreEditPrixVente: TLabel
              Left = 206
              Top = 132
              Width = 66
              Height = 13
              Alignment = taRightJustify
              Caption = 'Prix de Vente:'
            end
            object Label68: TLabel
              Left = 205
              Top = 195
              Width = 67
              Height = 13
              Alignment = taRightJustify
              Caption = 'Emplacement:'
            end
            object Label69: TLabel
              Left = 232
              Top = 215
              Width = 40
              Height = 13
              Alignment = taRightJustify
              Caption = 'Formule:'
            end
            object Label70: TLabel
              Left = 212
              Top = 236
              Width = 60
              Height = 13
              Alignment = taRightJustify
              Caption = 'Observation:'
            end
            object Label71: TLabel
              Left = 197
              Top = 258
              Width = 73
              Height = 13
              Alignment = taRightJustify
              Caption = 'Enregistrement:'
            end
            object TitreEditPrixVenteGros: TLabel
              Left = 181
              Top = 152
              Width = 91
              Height = 13
              Alignment = taRightJustify
              Caption = 'Prix de Vente Gros:'
            end
            object CaptionNbrChar: TLabel
              Left = 336
              Top = 88
              Width = 6
              Height = 13
              Caption = '0'
            end
            object CaptionNbrCharLigne: TLabel
              Left = 336
              Top = 104
              Width = 6
              Height = 13
              Caption = '0'
            end
            object TitreEditPrixVenteDemiGros: TLabel
              Left = 189
              Top = 173
              Width = 83
              Height = 13
              Alignment = taRightJustify
              Caption = 'Prix V. demi-Gros:'
            end
            object Bevel129: TBevel
              Left = 368
              Top = 128
              Width = 121
              Height = 41
            end
            object EditModifCodeProduit: TEdit
              Left = 88
              Top = 16
              Width = 65
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 3
            end
            object EditCodeProduit: TEdit
              Left = 88
              Top = 16
              Width = 81
              Height = 19
              Ctl3D = False
              MaxLength = 10
              ParentCtl3D = False
              TabOrder = 0
              OnKeyDown = EditCodeProduitKeyDown
            end
            object EditRef: TEdit
              Left = 88
              Top = 82
              Width = 121
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 4
              OnKeyDown = EditRefKeyDown
            end
            object EditCodeBarre: TEdit
              Left = 232
              Top = 16
              Width = 118
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 5
              OnDblClick = EditCodeBarreDblClick
              OnEnter = EditCodeBarreEnter
              OnKeyDown = EditCodeBarreKeyDown
            end
            object BitValiderProduit: TBitBtn
              Left = 384
              Top = 20
              Width = 97
              Height = 25
              Caption = 'Valider'
              TabOrder = 1
              OnClick = BitValiderProduitClick
              Kind = bkAll
            end
            object EditQTEEntree: TEdit
              Left = 88
              Top = 128
              Width = 81
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 6
              OnExit = EditQTEEntreeExit
              OnKeyDown = EditQTEEntreeKeyDown
            end
            object EditQteSortie: TEdit
              Left = 88
              Top = 149
              Width = 81
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 7
              OnExit = EditQteSortieExit
              OnKeyDown = EditQteSortieKeyDown
            end
            object EditQteStock: TEdit
              Left = 88
              Top = 170
              Width = 81
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 8
              OnExit = EditQteStockExit
              OnKeyDown = EditQteStockKeyDown
            end
            object EditQteInitial: TEdit
              Left = 88
              Top = 191
              Width = 81
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 9
              OnExit = EditQteInitialExit
              OnKeyDown = EditQteInitialKeyDown
            end
            object EditQteLimite: TEdit
              Left = 88
              Top = 212
              Width = 81
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 10
              OnExit = EditQteLimiteExit
              OnKeyDown = EditQteLimiteKeyDown
            end
            object EditCoutUnitaire: TEdit
              Left = 88
              Top = 233
              Width = 81
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              ParentShowHint = False
              ShowHint = False
              TabOrder = 11
              OnDblClick = EditCoutUnitaireDblClick
              OnExit = EditCoutUnitaireExit
              OnKeyDown = EditCoutUnitaireKeyDown
            end
            object EditPrixVente: TEdit
              Left = 280
              Top = 128
              Width = 81
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 12
              OnContextPopup = EditPrixVenteContextPopup
              OnDblClick = EditPrixVenteDblClick
              OnExit = EditPrixVenteExit
              OnKeyDown = EditPrixVenteKeyDown
            end
            object EditObservation: TEdit
              Left = 280
              Top = 233
              Width = 153
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 13
              OnKeyDown = EditObservationKeyDown
            end
            object EditEnregistPr: TComboBox
              Left = 280
              Top = 254
              Width = 49
              Height = 21
              BevelInner = bvLowered
              BevelKind = bkFlat
              Ctl3D = False
              ItemHeight = 13
              ParentCtl3D = False
              TabOrder = 2
              OnKeyDown = EditEnregistPrKeyDown
              Items.Strings = (
                'C'
                'D')
            end
            object EditFormulePr: TEdit
              Left = 280
              Top = 212
              Width = 73
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 14
              OnKeyDown = EditFormulePrKeyDown
            end
            object EditPrixVenteGros: TEdit
              Left = 280
              Top = 149
              Width = 81
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 15
              OnDblClick = EditPrixVenteGrosDblClick
              OnExit = EditPrixVenteGrosExit
              OnKeyDown = EditPrixVenteGrosKeyDown
            end
            object TrackBar1: TTrackBar
              Left = 324
              Top = 40
              Width = 33
              Height = 48
              Max = 14
              Orientation = trVertical
              Frequency = 1
              Position = 0
              SelEnd = 0
              SelStart = 0
              TabOrder = 17
              TickMarks = tmTopLeft
              TickStyle = tsAuto
              OnChange = TrackBar1Change
            end
            object EditEmplacementStock: TEdit
              Left = 280
              Top = 191
              Width = 153
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 18
              OnKeyDown = EditEmplacementStockKeyDown
            end
            object BitBtn27: TBitBtn
              Left = 384
              Top = 88
              Width = 97
              Height = 25
              TabOrder = 19
              OnClick = BitBtn27Click
              Kind = bkCancel
            end
            object EditPrixVenteDemiGros: TEdit
              Left = 280
              Top = 170
              Width = 81
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 20
              OnDblClick = EditPrixVenteDemiGrosDblClick
              OnExit = EditPrixVenteDemiGrosExit
              OnKeyDown = EditPrixVenteDemiGrosKeyDown
            end
            object RBActiveSautLigne: TCheckBox
              Left = 8
              Top = 56
              Width = 73
              Height = 17
              Caption = 'Saut Ligne'
              TabOrder = 21
            end
            object BitBtn88: TBitBtn
              Left = 376
              Top = 136
              Width = 105
              Height = 25
              Caption = 'Qte Pr'#233'l'#232'vement'
              TabOrder = 22
              OnClick = BitBtn88Click
              Kind = bkHelp
            end
            object RBForcerSaisieCodeBarre: TCheckBox
              Left = 352
              Top = 16
              Width = 17
              Height = 17
              Caption = '.'
              TabOrder = 23
            end
            object BitBtn106: TBitBtn
              Left = 384
              Top = 256
              Width = 99
              Height = 25
              Caption = 'Qte Forfaitaire'
              TabOrder = 24
              OnClick = BitBtn106Click
            end
            object EditUM: TComboBox
              Left = 88
              Top = 104
              Width = 121
              Height = 21
              BevelKind = bkFlat
              Ctl3D = False
              ItemHeight = 13
              ItemIndex = 0
              ParentCtl3D = False
              TabOrder = 25
              Text = 'U     (Unit'#233')'
              OnKeyDown = EditUMKeyDown
              OnKeyPress = EditUMKeyPress
              Items.Strings = (
                'U     (Unit'#233')'
                'L      (Litre)'
                'Kg    (Kilo Gramme)'
                'M2   (M'#232'tre carr'#233')'
                'M3   (M'#232'tre cube)'
                'Ml    (M'#232'tre Ligni'#232'res)'
                'H     (Heure)'
                'Pst   (Prestation)'
                'Bte  (Boite)'
                'Pqt  (Paquet)'
                'Bid  (Bidon)')
            end
            object RBAutoCalculePrixV: TCheckBox
              Left = 8
              Top = 264
              Width = 113
              Height = 17
              Caption = 'AutoCalcule Prix V.'
              TabOrder = 26
              OnClick = RBAutoCalculePrixVClick
            end
            object EditPourcentageVAPV: TEdit
              Left = 120
              Top = 260
              Width = 32
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 27
              Text = '25'
              Visible = False
              OnExit = EditPourcentageVAPVExit
              OnKeyPress = EditPourcentageVAPVKeyPress
            end
            object IncrimenteEditPourcentageVAPV: TUpDown
              Left = 152
              Top = 260
              Width = 16
              Height = 19
              Associate = EditPourcentageVAPV
              Min = 0
              Max = 1000
              Position = 25
              TabOrder = 28
              Visible = False
              Wrap = False
              OnClick = IncrimenteEditPourcentageVAPVClick
            end
            object EditDesig: TMemo
              Left = 87
              Top = 38
              Width = 233
              Height = 43
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 16
              OnChange = EditDesigChange
              OnEnter = EditDesigEnter
              OnExit = EditDesigExit
              OnKeyDown = EditDesigKeyDown
              OnKeyPress = EditDesigKeyPress
              OnKeyUp = EditDesigKeyUp
            end
            object AfficherAppliquerFormuleCalcule: TPanel
              Left = 8
              Top = 8
              Width = 361
              Height = 105
              BevelInner = bvLowered
              BevelOuter = bvLowered
              Color = clAqua
              TabOrder = 29
              Visible = False
              OnEnter = AfficherAppliquerFormuleCalculeEnter
              object Bevel171: TBevel
                Left = 8
                Top = 56
                Width = 345
                Height = 41
              end
              object Bevel170: TBevel
                Left = 8
                Top = 8
                Width = 345
                Height = 41
              end
              object Label187: TLabel
                Left = 16
                Top = 22
                Width = 95
                Height = 13
                Caption = 'Appliquer la formule:'
              end
              object TitreEditEditSelect: TLabel
                Left = 80
                Top = 70
                Width = 33
                Height = 13
                Alignment = taRightJustify
                Caption = 'Valeur:'
              end
              object EditCodeFormuleAppliquer: TEdit
                Left = 120
                Top = 19
                Width = 73
                Height = 19
                Ctl3D = False
                ParentCtl3D = False
                TabOrder = 0
                OnDblClick = EditCodeFormuleAppliquerDblClick
              end
              object BitAppliquerFormuleCalcule: TBitBtn
                Left = 264
                Top = 64
                Width = 75
                Height = 25
                Caption = 'Valider'
                TabOrder = 1
                OnClick = BitAppliquerFormuleCalculeClick
                Kind = bkAll
              end
              object TableauFormuleAppliquer: TStringGrid
                Left = 8
                Top = 104
                Width = 345
                Height = 161
                Ctl3D = False
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
                ParentCtl3D = False
                TabOrder = 2
                OnDblClick = TableauFormuleAppliquerDblClick
                ColWidths = (
                  64
                  64
                  64
                  64
                  64)
              end
              object EditEditSelect: TEdit
                Left = 120
                Top = 67
                Width = 73
                Height = 19
                Ctl3D = False
                ParentCtl3D = False
                TabOrder = 3
                OnDblClick = EditCodeFormuleAppliquerDblClick
                OnKeyDown = EditEditSelectKeyDown
              end
              object EditIntituleFormuleAppliquer: TEdit
                Left = 192
                Top = 19
                Width = 153
                Height = 19
                Ctl3D = False
                ParentCtl3D = False
                TabOrder = 4
                OnDblClick = EditCodeFormuleAppliquerDblClick
              end
            end
          end
          object AfficheSFamille: TPanel
            Left = 552
            Top = 0
            Width = 441
            Height = 625
            BevelInner = bvLowered
            Color = 11268585
            TabOrder = 4
            Visible = False
            object Bevel52: TBevel
              Left = 216
              Top = 8
              Width = 185
              Height = 34
            end
            object Bevel53: TBevel
              Left = 8
              Top = 48
              Width = 425
              Height = 34
            end
            object Label73: TLabel
              Left = 8
              Top = 6
              Width = 157
              Height = 13
              Caption = 'Liste des S/Familles des produits.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsUnderline]
              ParentFont = False
            end
            object Label74: TLabel
              Left = 16
              Top = 59
              Width = 28
              Height = 13
              Caption = 'Code:'
            end
            object Label75: TLabel
              Left = 120
              Top = 59
              Width = 33
              Height = 13
              Caption = 'D'#233'sig.:'
            end
            object Label92: TLabel
              Left = 223
              Top = 19
              Width = 121
              Height = 13
              Caption = 'Ordre Compte Comptable:'
            end
            object EditRequette: TEdit
              Left = 168
              Top = 56
              Width = 73
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 4
            end
            object TableauSFamille: TStringGrid
              Left = 8
              Top = 88
              Width = 425
              Height = 529
              Ctl3D = False
              DefaultColWidth = 40
              DefaultRowHeight = 20
              FixedColor = 11268585
              RowCount = 20
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
              ParentCtl3D = False
              TabOrder = 0
              OnDrawCell = TableauSFamilleDrawCell
              OnKeyDown = TableauSFamilleKeyDown
              OnKeyPress = TableauSFamilleKeyPress
              ColWidths = (
                40
                50
                226
                2
                2)
            end
            object BitBtn39: TBitBtn
              Left = 408
              Top = 4
              Width = 25
              Height = 25
              Caption = '.'
              TabOrder = 1
              OnClick = BitBtn39Click
              Kind = bkCancel
              Margin = 0
            end
            object EditRechercheCodeSFamille: TEdit
              Left = 48
              Top = 56
              Width = 65
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 2
              OnEnter = EditRechercheCodeSFamilleEnter
              OnKeyDown = EditRechercheCodeSFamilleKeyDown
              OnKeyPress = EditRechercheCodeSFamilleKeyPress
              OnKeyUp = EditRechercheCodeSFamilleKeyUp
            end
            object EditRechercheDesigSFamille: TEdit
              Left = 160
              Top = 56
              Width = 265
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 3
              OnKeyDown = EditRechercheDesigSFamilleKeyDown
              OnKeyPress = EditRechercheDesigSFamilleKeyPress
              OnKeyUp = EditRechercheDesigSFamilleKeyUp
            end
            object EditOrdreCompteComptableArticle: TEdit
              Left = 351
              Top = 16
              Width = 25
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 5
              Text = '6'
            end
            object UpDown1: TUpDown
              Left = 376
              Top = 16
              Width = 16
              Height = 19
              Associate = EditOrdreCompteComptableArticle
              Min = 1
              Max = 6
              Position = 6
              TabOrder = 6
              Wrap = False
              OnClick = IncrimentOrdreCompteComptableClick
            end
          end
          object AfficheRechercheOptions: TPanel
            Left = 557
            Top = 486
            Width = 425
            Height = 137
            BevelInner = bvLowered
            Color = 8454143
            TabOrder = 6
            Visible = False
            object Bevel63: TBevel
              Left = 8
              Top = 96
              Width = 409
              Height = 33
            end
            object Label77: TLabel
              Left = 16
              Top = 104
              Width = 100
              Height = 13
              Caption = 'Zonne de rech'#233'rche:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsUnderline]
              ParentFont = False
            end
            object RadioGroup8: TRadioGroup
              Left = 208
              Top = 8
              Width = 185
              Height = 81
              Caption = 'Rubriques de recherche : '
              TabOrder = 0
            end
            object RBCode: TRadioButton
              Left = 216
              Top = 32
              Width = 169
              Height = 17
              Caption = 'Code.'
              TabOrder = 1
            end
            object RBDesignation: TRadioButton
              Left = 216
              Top = 48
              Width = 169
              Height = 17
              Caption = 'D'#233'signation.'
              TabOrder = 2
            end
            object RBReference: TRadioButton
              Left = 216
              Top = 64
              Width = 169
              Height = 17
              Caption = 'R'#233'f'#233'rence.'
              TabOrder = 3
            end
            object EditTexteFind: TEdit
              Left = 120
              Top = 104
              Width = 289
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 4
            end
            object Panel227: TPanel
              Left = 8
              Top = 8
              Width = 193
              Height = 81
              BevelInner = bvLowered
              Color = 8454143
              TabOrder = 6
              object RadioGroup6: TRadioGroup
                Left = 8
                Top = 8
                Width = 177
                Height = 65
                Caption = 'Options de recherche : '
                TabOrder = 0
              end
              object RBSFamille: TRadioButton
                Left = 16
                Top = 32
                Width = 161
                Height = 17
                Caption = 'Par Sous Famille.'
                TabOrder = 1
              end
              object RBProduit: TRadioButton
                Left = 16
                Top = 48
                Width = 161
                Height = 17
                Caption = 'Par Produit.'
                TabOrder = 2
              end
            end
            object BitBtn115: TBitBtn
              Left = 396
              Top = 5
              Width = 25
              Height = 28
              Caption = '.'
              TabOrder = 5
              Kind = bkCancel
            end
          end
          object BitBtn38: TBitBtn
            Left = 1008
            Top = 8
            Width = 153
            Height = 25
            Caption = 'Analyse du stock'
            TabOrder = 8
            OnClick = BitBtn38Click
            Kind = bkHelp
          end
          object AfficheSFamilleAFF: TPanel
            Left = 648
            Top = 0
            Width = 345
            Height = 465
            BevelInner = bvLowered
            Color = 11661808
            TabOrder = 13
            Visible = False
            object Bevel117: TBevel
              Left = 8
              Top = 8
              Width = 329
              Height = 34
            end
            object Label141: TLabel
              Left = 159
              Top = 19
              Width = 121
              Height = 13
              Caption = 'Ordre Compte Comptable:'
            end
            object TableauSFamilleAFF: TStringGrid
              Left = 8
              Top = 48
              Width = 329
              Height = 409
              Ctl3D = False
              DefaultColWidth = 20
              DefaultRowHeight = 20
              FixedColor = 11661808
              RowCount = 15
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
              ParentCtl3D = False
              TabOrder = 0
              OnDrawCell = TableauSFamilleAFFDrawCell
              OnKeyDown = TableauSFamilleAFFKeyDown
              ColWidths = (
                20
                50
                227
                2
                2)
            end
            object EditOrdreCompteComptableInventaire: TEdit
              Left = 288
              Top = 16
              Width = 25
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 1
              Text = '6'
            end
            object UpDown8: TUpDown
              Left = 313
              Top = 16
              Width = 16
              Height = 19
              Associate = EditOrdreCompteComptableInventaire
              Min = 1
              Max = 6
              Position = 6
              TabOrder = 2
              Wrap = False
              OnClick = UpDown8Click
            end
          end
          object TableauEquipeArticle: TStringGrid
            Left = 1224
            Top = 552
            Width = 609
            Height = 177
            ColCount = 7
            Ctl3D = False
            DefaultColWidth = 40
            DefaultRowHeight = 20
            FixedColor = 8454016
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
            ParentCtl3D = False
            TabOrder = 18
            Visible = False
            OnDblClick = TableauEquipeArticleDblClick
            OnKeyDown = TableauEquipeArticleKeyDown
          end
          object AfficherTrieArticle: TPanel
            Left = 336
            Top = 248
            Width = 481
            Height = 57
            BevelOuter = bvLowered
            Caption = 'Voulez vous valider le trie des articles SVP !'
            Color = 8454143
            TabOrder = 22
            Visible = False
            object Bevel66: TBevel
              Left = 8
              Top = 8
              Width = 89
              Height = 41
            end
            object Bevel67: TBevel
              Left = 384
              Top = 7
              Width = 90
              Height = 42
            end
            object TableauTrieArticle: TStringGrid
              Left = 400
              Top = 16
              Width = 49
              Height = 25
              ColCount = 1
              Ctl3D = False
              DefaultColWidth = 100
              DefaultRowHeight = 20
              FixedCols = 0
              RowCount = 1
              FixedRows = 0
              ParentCtl3D = False
              TabOrder = 2
            end
            object BitValiderTrie: TBitBtn
              Left = 392
              Top = 16
              Width = 75
              Height = 25
              Caption = 'Valider'
              TabOrder = 0
              OnClick = BitValiderTrieClick
              Kind = bkAll
            end
            object BitAnnulerTrie: TBitBtn
              Left = 16
              Top = 16
              Width = 75
              Height = 25
              TabOrder = 1
              OnClick = BitAnnulerTrieClick
              Kind = bkCancel
            end
          end
          object AfficheOptionArticle: TPanel
            Left = 328
            Top = 274
            Width = 705
            Height = 161
            BevelInner = bvLowered
            Color = 8454143
            TabOrder = 2
            Visible = False
            OnMouseDown = AfficheOptionArticleMouseDown
            object Bevel2: TBevel
              Left = 8
              Top = 8
              Width = 689
              Height = 41
            end
            object NbrArticlesSupp: TLabel
              Left = 8
              Top = 50
              Width = 27
              Height = 13
              Caption = '.........'
            end
            object BitBtn1: TBitBtn
              Left = 16
              Top = 16
              Width = 89
              Height = 25
              TabOrder = 0
              OnClick = BitBtn1Click
              Kind = bkNo
            end
            object BitOptionArticle: TBitBtn
              Left = 600
              Top = 16
              Width = 91
              Height = 25
              Caption = 'Valider'
              TabOrder = 1
              OnClick = BitOptionArticleClick
              Kind = bkAll
            end
            object EditListeCodeArticle: TEdit
              Left = 8
              Top = 64
              Width = 433
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 2
            end
            object RBMultiSupprime: TCheckBox
              Left = 8
              Top = 80
              Width = 97
              Height = 17
              Caption = 'Multi-Supprime'
              Enabled = False
              TabOrder = 3
            end
            object ListeArticleSupp: TMemo
              Left = 8
              Top = 64
              Width = 689
              Height = 89
              Color = clBlack
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ScrollBars = ssVertical
              TabOrder = 4
              WantReturns = False
              WordWrap = False
              OnKeyPress = ListeArticleSuppKeyPress
            end
          end
          object AfficheConfirmeFormule: TPanel
            Left = 248
            Top = 288
            Width = 441
            Height = 57
            BevelInner = bvLowered
            TabOrder = 25
            Visible = False
            object Bevel68: TBevel
              Left = 8
              Top = 8
              Width = 425
              Height = 41
            end
            object BitOKFormulation: TBitBtn
              Left = 16
              Top = 16
              Width = 97
              Height = 25
              Caption = 'Formulation'
              ModalResult = 1
              TabOrder = 0
              OnClick = BitOKFormulationClick
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
            object BitBtn41: TBitBtn
              Left = 352
              Top = 16
              Width = 75
              Height = 25
              TabOrder = 1
              OnClick = BitBtn41Click
              Kind = bkCancel
            end
          end
          object AfficheTransfertFormuleCalcule: TPanel
            Left = 240
            Top = 344
            Width = 457
            Height = 161
            BevelInner = bvLowered
            TabOrder = 26
            Visible = False
            OnEnter = AfficheTransfertFormuleCalculeEnter
            OnExit = AfficheTransfertFormuleCalculeExit
            object Bevel69: TBevel
              Left = 8
              Top = 48
              Width = 441
              Height = 41
            end
            object Bevel70: TBevel
              Left = 8
              Top = 96
              Width = 193
              Height = 41
            end
            object Bevel71: TBevel
              Left = 208
              Top = 96
              Width = 241
              Height = 41
            end
            object EditAutorisationTransfertFormuleCalcule: TEdit
              Left = 296
              Top = 108
              Width = 121
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 9
            end
            object TitreAfficheTransfertFormuleCalcule: TPanel
              Left = 8
              Top = 8
              Width = 441
              Height = 33
              BevelInner = bvLowered
              TabOrder = 1
              object EditCodeTypeFormule: TEdit
                Left = 8
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
            object EditValeurePrincipale: TEdit
              Left = 40
              Top = 104
              Width = 121
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 2
            end
            object Edit1: TEdit
              Left = 40
              Top = 104
              Width = 121
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 3
            end
            object EditValeurFinale: TEdit
              Left = 128
              Top = 56
              Width = 177
              Height = 26
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 4
            end
            object BitBtn49: TBitBtn
              Left = 16
              Top = 56
              Width = 97
              Height = 25
              TabOrder = 5
              OnClick = BitBtn49Click
              Kind = bkCancel
            end
            object BitBtn46: TBitBtn
              Left = 320
              Top = 56
              Width = 121
              Height = 25
              Caption = 'Valider le r'#233'sultat !'
              TabOrder = 6
              OnClick = BitBtn46Click
              Kind = bkAll
            end
            object BitBtn47: TBitBtn
              Left = 16
              Top = 104
              Width = 177
              Height = 25
              Caption = 'Voir l'#39'interface d'#39'analyse !'
              TabOrder = 7
              OnClick = BitBtn47Click
              Kind = bkHelp
            end
            object BitBtn50: TBitBtn
              Left = 216
              Top = 104
              Width = 225
              Height = 25
              Caption = 'Valider le r'#233'sultat pour tous les valeurs !'
              TabOrder = 8
              OnClick = BitBtn50Click
              Kind = bkAll
            end
            object TableauTypeFormule: TStringGrid
              Left = -400
              Top = 112
              Width = 441
              Height = 145
              ColCount = 4
              Ctl3D = False
              DefaultColWidth = 40
              DefaultRowHeight = 20
              RowCount = 2
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goAlwaysShowEditor]
              ParentCtl3D = False
              TabOrder = 0
              OnKeyDown = TableauTypeFormuleKeyDown
              ColWidths = (
                40
                2
                40
                40)
            end
          end
          object EditNumProjet: TEdit
            Left = 1248
            Top = 196
            Width = 73
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 27
          end
          object EditNomProjet: TEdit
            Left = 1048
            Top = 196
            Width = 193
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 28
            OnEnter = EditNomProjetEnter
          end
          object AfficheDupliquerListeStock: TPanel
            Left = 136
            Top = 336
            Width = 441
            Height = 337
            BevelInner = bvLowered
            Color = clGray
            TabOrder = 31
            Visible = False
            object Bevel83: TBevel
              Left = 8
              Top = 296
              Width = 425
              Height = 33
            end
            object Bevel80: TBevel
              Left = 8
              Top = 8
              Width = 425
              Height = 57
            end
            object Label107: TLabel
              Left = 32
              Top = 16
              Width = 104
              Height = 13
              Caption = 'Liste du stock affich'#233':'
            end
            object Label108: TLabel
              Left = 16
              Top = 40
              Width = 121
              Height = 13
              Caption = 'Liste du stock '#224' dupliqu'#233':'
            end
            object Bevel81: TBevel
              Left = 312
              Top = 72
              Width = 122
              Height = 57
            end
            object Bevel82: TBevel
              Left = 311
              Top = 168
              Width = 122
              Height = 41
            end
            object Label109: TLabel
              Left = 16
              Top = 307
              Width = 28
              Height = 13
              Caption = 'Code:'
            end
            object EditNomProjetADupliquer: TEdit
              Left = 144
              Top = 13
              Width = 281
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 0
            end
            object EditNumProjetDupliquer: TEdit
              Left = 144
              Top = 37
              Width = 81
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 2
            end
            object Panel21: TPanel
              Left = 8
              Top = 72
              Width = 297
              Height = 137
              BevelInner = bvLowered
              TabOrder = 3
              object RBQteInitialAZero: TCheckBox
                Left = 24
                Top = 16
                Width = 257
                Height = 17
                Caption = 'Mettre les quantit'#233's initiales '#224' z'#233'ro'
                TabOrder = 0
              end
              object RBQteEntreeAZero: TCheckBox
                Left = 24
                Top = 40
                Width = 265
                Height = 17
                Caption = 'Mettre les quantit'#233's entr'#233'es '#224' z'#233'ro'
                TabOrder = 1
              end
              object RBQteStockAZero: TCheckBox
                Left = 24
                Top = 64
                Width = 265
                Height = 17
                Caption = 'Mettre les quantit'#233's en stock '#224' z'#233'ro'
                TabOrder = 2
              end
              object RBQteSortieAZero: TCheckBox
                Left = 24
                Top = 88
                Width = 265
                Height = 17
                Caption = 'Mettre les quantit'#233's sorties '#224' z'#233'ro'
                TabOrder = 3
              end
              object RBQteLimiteAZero: TCheckBox
                Left = 24
                Top = 112
                Width = 265
                Height = 17
                Caption = 'Mettre les quantit'#233's limites '#224' z'#233'ro'
                TabOrder = 4
              end
            end
            object BitValideDupliquerStock: TBitBtn
              Left = 320
              Top = 80
              Width = 107
              Height = 41
              Caption = 'Valider'
              TabOrder = 4
              OnClick = BitValideDupliquerStockClick
              Kind = bkAll
            end
            object EditNomProjetDupliquer: TEdit
              Left = 144
              Top = 37
              Width = 281
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 1
              OnEnter = EditNomProjetDupliquerEnter
            end
            object BitBtn55: TBitBtn
              Left = 320
              Top = 176
              Width = 105
              Height = 25
              TabOrder = 5
              OnClick = BitBtn55Click
              Kind = bkCancel
            end
            object EditCodeConcerne: TEdit
              Left = 48
              Top = 304
              Width = 257
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 6
              OnEnter = EditCodeConcerneEnter
            end
            object EditOrdreCompteConcerneDupliquer: TComboBox
              Left = 312
              Top = 304
              Width = 113
              Height = 21
              BevelKind = bkFlat
              Ctl3D = False
              ItemHeight = 13
              ItemIndex = 5
              ParentCtl3D = False
              TabOrder = 7
              Text = '06  Sous Famille'
              OnSelect = EditOrdreCompteConcerneDupliquerSelect
              Items.Strings = (
                '01  Classe'
                '02  Sous Classe'
                '03  Cat'#233'gorie'
                '04  Sous Cat'#233'gorie'
                '05  Famille'
                '06  Sous Famille'
                '10  Article')
            end
            object RadioGroup11: TRadioGroup
              Left = 8
              Top = 216
              Width = 425
              Height = 73
              Caption = 'Type de dupliquation: '
              TabOrder = 8
            end
            object RBCrieNouvelleBase: TRadioButton
              Left = 16
              Top = 243
              Width = 137
              Height = 17
              Caption = 'Cri'#233' une nouvelle base !'
              TabOrder = 9
            end
            object RBConcerveBaseExistante: TRadioButton
              Left = 16
              Top = 267
              Width = 161
              Height = 17
              Caption = 'Conserv'#233' la base existante !'
              Checked = True
              TabOrder = 10
              TabStop = True
            end
          end
          object TableauCompteConserneDupliquer: TStringGrid
            Left = 400
            Top = 374
            Width = 585
            Height = 219
            Color = 8454016
            Ctl3D = False
            DefaultColWidth = 30
            DefaultRowHeight = 20
            FixedColor = 6029147
            RowCount = 2
            ParentCtl3D = False
            TabOrder = 32
            Visible = False
            OnDblClick = TableauCompteConserneDupliquerDblClick
            OnDrawCell = TableauCompteConserneDupliquerDrawCell
            OnKeyDown = TableauCompteConserneDupliquerKeyDown
            ColWidths = (
              30
              30
              30
              30
              30)
            RowHeights = (
              20
              20)
          end
          object EditNbrChiffreApresVergule: TEdit
            Left = 1152
            Top = 291
            Width = 33
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 34
            Text = '2'
          end
          object UpDown9: TUpDown
            Left = 1185
            Top = 291
            Width = 16
            Height = 19
            Associate = EditNbrChiffreApresVergule
            Min = 0
            Position = 2
            TabOrder = 35
            Wrap = False
            OnClick = UpDown9Click
          end
          object TableauTypeFormuleCompteurArticle: TStringGrid
            Left = 504
            Top = 368
            Width = 481
            Height = 185
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 37
            Visible = False
            OnDblClick = TableauTypeFormuleCompteurArticleDblClick
            OnDrawCell = TableauTypeFormuleCompteurArticleDrawCell
            OnKeyDown = TableauTypeFormuleCompteurArticleKeyDown
          end
          object TableauSelections: TStringGrid
            Left = 416
            Top = 254
            Width = 393
            Height = 256
            Ctl3D = False
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
            ParentCtl3D = False
            TabOrder = 29
            Visible = False
            OnDblClick = TableauSelectionsDblClick
            OnDrawCell = TableauSelectionsDrawCell
            OnKeyDown = TableauSelectionsKeyDown
            RowHeights = (
              24
              24
              24
              24
              24)
          end
          object AfficheRapportDuplication: TPanel
            Left = 1072
            Top = 568
            Width = 513
            Height = 625
            BevelInner = bvLowered
            Color = 11599871
            TabOrder = 38
            Visible = False
            object Bevel92: TBevel
              Left = 392
              Top = 8
              Width = 114
              Height = 41
            end
            object MemoRapportDuplication: TMemo
              Left = 8
              Top = 56
              Width = 497
              Height = 561
              Color = clBlack
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
            end
            object BitBtn57: TBitBtn
              Left = 400
              Top = 16
              Width = 99
              Height = 25
              TabOrder = 1
              OnClick = BitBtn57Click
              Kind = bkCancel
            end
            object Panel23: TPanel
              Left = 8
              Top = 8
              Width = 377
              Height = 41
              BevelInner = bvLowered
              Caption = 'Rapport de duplication'
              Color = 11599871
              TabOrder = 2
            end
          end
          object BitBtn59: TBitBtn
            Left = 1120
            Top = 128
            Width = 123
            Height = 41
            Caption = 'Actualiser Co'#251't'
            TabOrder = 40
            OnClick = BitBtn59Click
            Kind = bkHelp
          end
          object AfficheBitRafraichirMAJ: TPanel
            Left = 1176
            Top = 0
            Width = 137
            Height = 65
            BevelInner = bvLowered
            TabOrder = 41
            object BitRafraichirMAJS: TBitBtn
              Left = 8
              Top = 8
              Width = 121
              Height = 25
              Caption = 'Rafraichir'
              TabOrder = 0
              OnClick = BitMiseAJourStockClick
              OnContextPopup = BitRafraichirMAJSContextPopup
              Kind = bkHelp
            end
            object RBMAJArticleSelect: TCheckBox
              Left = 8
              Top = 40
              Width = 121
              Height = 17
              Caption = 'Article S'#233'lectionn'#233' !'
              TabOrder = 1
            end
          end
          object BitBtn63: TBitBtn
            Left = 1256
            Top = 120
            Width = 65
            Height = 25
            Caption = 'S.Limite'
            TabOrder = 44
            OnClick = BitBtn63Click
            Kind = bkHelp
          end
          object RBInclureStockLimiteNonRepertotie: TCheckBox
            Left = 1256
            Top = 152
            Width = 97
            Height = 17
            Caption = 'Inclure SL'
            TabOrder = 45
          end
          object AffichePrintPr: TPanel
            Left = 573
            Top = 140
            Width = 481
            Height = 373
            Color = clGradientInactiveCaption
            TabOrder = 11
            Visible = False
            OnMouseDown = AffichePrintPrMouseDown
            object Bevel62: TBevel
              Left = 8
              Top = 232
              Width = 465
              Height = 41
            end
            object Bevel59: TBevel
              Left = 8
              Top = 8
              Width = 465
              Height = 217
            end
            object Bevel60: TBevel
              Left = 336
              Top = 24
              Width = 130
              Height = 81
            end
            object Label100: TLabel
              Left = 16
              Top = 243
              Width = 30
              Height = 13
              Caption = 'Projet:'
            end
            object Bevel64: TBevel
              Left = 389
              Top = 326
              Width = 84
              Height = 36
            end
            object Bevel65: TBevel
              Left = 8
              Top = 280
              Width = 465
              Height = 41
            end
            object Label101: TLabel
              Left = 16
              Top = 291
              Width = 36
              Height = 13
              Caption = 'Equipe:'
            end
            object EditCodeProjet: TEdit
              Left = 56
              Top = 240
              Width = 81
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 14
            end
            object GroupBox3: TGroupBox
              Left = 8
              Top = 323
              Width = 377
              Height = 41
              Caption = 'Structure:'
              TabOrder = 0
              object Label97: TLabel
                Left = 8
                Top = 19
                Width = 85
                Height = 13
                Caption = 'Nombre de lignes:'
              end
              object Label98: TLabel
                Left = 144
                Top = 19
                Width = 83
                Height = 13
                Caption = 'Largeur de Ligne:'
              end
              object Label99: TLabel
                Left = 280
                Top = 19
                Width = 43
                Height = 13
                Caption = 'D'#233'c;Qte:'
              end
              object EditNbrMax: TEdit
                Left = 96
                Top = 12
                Width = 25
                Height = 19
                Ctl3D = False
                ParentCtl3D = False
                TabOrder = 0
                Text = '23'
              end
              object EditHeightMax: TEdit
                Left = 232
                Top = 12
                Width = 25
                Height = 19
                Ctl3D = False
                ParentCtl3D = False
                TabOrder = 1
                Text = '17'
              end
              object UpDown2: TUpDown
                Left = 121
                Top = 12
                Width = 16
                Height = 19
                Associate = EditNbrMax
                Min = 0
                Position = 23
                TabOrder = 2
                Wrap = False
              end
              object IncrimenteEditHeightMax: TUpDown
                Left = 257
                Top = 12
                Width = 16
                Height = 19
                Associate = EditHeightMax
                Min = 0
                Position = 17
                TabOrder = 3
                Wrap = False
              end
              object EditDecimaleQte: TEdit
                Left = 328
                Top = 12
                Width = 25
                Height = 19
                Ctl3D = False
                ParentCtl3D = False
                TabOrder = 4
                Text = '2'
              end
              object UpDown5: TUpDown
                Left = 353
                Top = 12
                Width = 16
                Height = 19
                Associate = EditDecimaleQte
                Min = 0
                Max = 10
                Position = 2
                TabOrder = 5
                Wrap = False
              end
            end
            object BitBtn43: TBitBtn
              Left = 344
              Top = 72
              Width = 113
              Height = 25
              Caption = 'Imprimer'
              TabOrder = 1
              Kind = bkAll
            end
            object GroupBox4: TGroupBox
              Left = 16
              Top = 112
              Width = 449
              Height = 105
              Caption = 'Options:'
              TabOrder = 2
              object LabelTypePrint: TLabel
                Left = 8
                Top = 16
                Width = 30
                Height = 13
                Alignment = taCenter
                Caption = '..........'
              end
              object LabelCodePrint: TLabel
                Left = 8
                Top = 36
                Width = 30
                Height = 13
                Caption = '..........'
              end
              object LabelRegistreComptePrint: TLabel
                Left = 8
                Top = 52
                Width = 30
                Height = 13
                Caption = '..........'
              end
              object RadioGroup4: TRadioGroup
                Left = 8
                Top = 72
                Width = 433
                Height = 26
                TabOrder = 0
              end
              object RBStockNul: TRadioButton
                Left = 12
                Top = 79
                Width = 73
                Height = 17
                Caption = 'Stock nul'
                TabOrder = 1
              end
              object RBStockExistant: TRadioButton
                Left = 180
                Top = 79
                Width = 89
                Height = 17
                Caption = 'Stock Existant'
                TabOrder = 2
              end
              object RBTous: TRadioButton
                Left = 380
                Top = 79
                Width = 49
                Height = 17
                Caption = 'Tous'
                Checked = True
                TabOrder = 3
                TabStop = True
              end
              object AfficheOrdrePlanComptableInventaireGlobal: TPanel
                Left = 120
                Top = 32
                Width = 433
                Height = 25
                BevelInner = bvLowered
                TabOrder = 4
                Visible = False
                object Label142: TLabel
                  Left = 15
                  Top = 6
                  Width = 121
                  Height = 13
                  Caption = 'Ordre Compte Comptable:'
                end
                object LabelTypePrintGlobal: TLabel
                  Left = 200
                  Top = 8
                  Width = 30
                  Height = 13
                  Caption = '..........'
                end
                object EditOrdreCompteComptableInventaireGlobal: TEdit
                  Left = 144
                  Top = 3
                  Width = 25
                  Height = 19
                  Ctl3D = False
                  ParentCtl3D = False
                  TabOrder = 0
                  Text = '6'
                end
                object IncrimentOrdreCompteComptableInventaireGlobal: TUpDown
                  Left = 169
                  Top = 3
                  Width = 16
                  Height = 19
                  Associate = EditOrdreCompteComptableInventaireGlobal
                  Min = 1
                  Max = 6
                  Position = 6
                  TabOrder = 1
                  Wrap = False
                  OnClick = IncrimentOrdreCompteComptableInventaireGlobalClick
                end
              end
            end
            object RadioGroup7: TRadioGroup
              Left = 16
              Top = 16
              Width = 313
              Height = 89
              Caption = 'Imprimer:'
              TabOrder = 3
            end
            object RBEtatInventaire: TRadioButton
              Left = 24
              Top = 32
              Width = 113
              Height = 17
              Caption = 'Etat d'#39'inventaire'
              TabOrder = 4
              OnClick = RBEtatInventaireClick
            end
            object RBFeuilleInventaire: TRadioButton
              Left = 24
              Top = 56
              Width = 113
              Height = 17
              Caption = 'Feuille d'#39'inventaire'
              Checked = True
              TabOrder = 5
              TabStop = True
              OnClick = RBFeuilleInventaireClick
            end
            object RBFicheIdentification: TRadioButton
              Left = 24
              Top = 80
              Width = 121
              Height = 17
              Caption = 'Fiches d'#39'Identification'
              TabOrder = 6
            end
            object EditNFSD: TEdit
              Left = 152
              Top = 78
              Width = 33
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 7
              Text = '0'
            end
            object EditNFSF: TEdit
              Left = 208
              Top = 78
              Width = 33
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 8
              Text = '0'
            end
            object UpDown4: TUpDown
              Left = 185
              Top = 78
              Width = 16
              Height = 19
              Associate = EditNFSD
              Min = 0
              Max = 10000
              Position = 0
              TabOrder = 9
              Wrap = False
            end
            object UpDown6: TUpDown
              Left = 241
              Top = 78
              Width = 16
              Height = 19
              Associate = EditNFSF
              Min = 0
              Max = 10000
              Position = 0
              TabOrder = 10
              Wrap = False
            end
            object BitBtn44: TBitBtn
              Left = 396
              Top = 333
              Width = 72
              Height = 25
              TabOrder = 11
              OnClick = BitBtn44Click
              Kind = bkCancel
            end
            object BitBtn45: TBitBtn
              Left = 344
              Top = 32
              Width = 113
              Height = 25
              Caption = 'Aper'#231'ue'
              TabOrder = 12
              OnClick = BitBtn45Click
              Kind = bkHelp
            end
            object EditProjet: TEdit
              Left = 56
              Top = 240
              Width = 409
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 13
              Text = 'Aucun Projet !'
              OnEnter = EditProjetEnter
            end
            object EditNumEquipeArticle: TEdit
              Left = 56
              Top = 288
              Width = 105
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 15
              Text = 'Aucune Equipe !'
              OnEnter = EditNumEquipeArticleEnter
            end
            object EditListeEquipe: TMemo
              Left = 168
              Top = 288
              Width = 297
              Height = 25
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 16
            end
            object BitBtn91: TBitBtn
              Left = 176
              Top = 32
              Width = 137
              Height = 25
              Caption = 'Pr'#233'ciser les articles'
              TabOrder = 17
              OnClick = BitBtn91Click
              Kind = bkHelp
            end
          end
          object TableauProjetArticle: TStringGrid
            Left = 1216
            Top = 584
            Width = 617
            Height = 241
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 17
            Visible = False
            OnDblClick = TableauProjetArticleDblClick
            OnDrawCell = TableauProjetArticleDrawCell
            OnKeyDown = TableauProjetArticleKeyDown
          end
          object AfficheOptionAnalyseStock: TPanel
            Left = 360
            Top = 184
            Width = 801
            Height = 153
            BevelInner = bvLowered
            Color = 16777088
            TabOrder = 42
            Visible = False
            OnMouseDown = AfficheOptionAnalyseStockMouseDown
            object Bevel95: TBevel
              Left = 8
              Top = 56
              Width = 785
              Height = 41
            end
            object Bevel93: TBevel
              Left = 8
              Top = 8
              Width = 785
              Height = 41
            end
            object Label67: TLabel
              Left = 16
              Top = 24
              Width = 200
              Height = 13
              Caption = 'Date d'#233'but p'#233'riode d'#39'analyse Mouvement:'
            end
            object Bevel94: TBevel
              Left = 8
              Top = 104
              Width = 785
              Height = 41
            end
            object Label72: TLabel
              Left = 16
              Top = 72
              Width = 208
              Height = 13
              Caption = 'Date d'#233'but p'#233'riode d'#39'analyse Pr'#233'l'#232'vements:'
            end
            object Label156: TLabel
              Left = 424
              Top = 24
              Width = 15
              Height = 13
              Caption = 'au:'
            end
            object Label157: TLabel
              Left = 424
              Top = 72
              Width = 15
              Height = 13
              Caption = 'au:'
            end
            object Label169: TLabel
              Left = 160
              Top = 120
              Width = 66
              Height = 13
              Caption = 'Par S/Famille:'
            end
            object EditDateDebutPeriodeAnalyseStockMouvement: TDateTimePicker
              Left = 232
              Top = 16
              Width = 186
              Height = 21
              CalAlignment = dtaLeft
              Date = 43284.6220481134
              Time = 43284.6220481134
              DateFormat = dfLong
              DateMode = dmComboBox
              Kind = dtkDate
              ParseInput = False
              TabOrder = 0
            end
            object BitOptionAnalyseStock: TBitBtn
              Left = 680
              Top = 112
              Width = 107
              Height = 25
              Caption = 'Valider'
              TabOrder = 1
              OnClick = BitOptionAnalyseStockClick
              Kind = bkAll
            end
            object BitBtn61: TBitBtn
              Left = 16
              Top = 112
              Width = 139
              Height = 25
              TabOrder = 2
              OnClick = BitBtn61Click
              Kind = bkCancel
            end
            object RBInclureMouvements: TCheckBox
              Left = 648
              Top = 18
              Width = 137
              Height = 17
              Caption = 'Inclure les mouvements'
              TabOrder = 3
              OnClick = RBInclureMouvementsClick
            end
            object EditDateDebutPeriodeAnalyseStockPrelevement: TDateTimePicker
              Left = 232
              Top = 64
              Width = 186
              Height = 21
              CalAlignment = dtaLeft
              Date = 43284.6220481134
              Time = 43284.6220481134
              DateFormat = dfLong
              DateMode = dmComboBox
              Kind = dtkDate
              ParseInput = False
              TabOrder = 4
            end
            object RBInclurePrelevement: TCheckBox
              Left = 648
              Top = 66
              Width = 137
              Height = 17
              Caption = 'Inclure les Pr'#233'l'#232'vements'
              TabOrder = 5
              OnClick = RBInclurePrelevementClick
            end
            object EditDateFinPeriodeAnalyseStockMouvement: TDateTimePicker
              Left = 448
              Top = 16
              Width = 186
              Height = 21
              CalAlignment = dtaLeft
              Date = 43284.6220481134
              Time = 43284.6220481134
              DateFormat = dfLong
              DateMode = dmComboBox
              Kind = dtkDate
              ParseInput = False
              TabOrder = 6
            end
            object EditDateFinPeriodeAnalyseStockPrelevement: TDateTimePicker
              Left = 448
              Top = 64
              Width = 186
              Height = 21
              CalAlignment = dtaLeft
              Date = 43284.6220481134
              Time = 43284.6220481134
              DateFormat = dfLong
              DateMode = dmComboBox
              Kind = dtkDate
              ParseInput = False
              TabOrder = 7
            end
            object EditRechercheCodeSFamilleMAJ: TEdit
              Left = 232
              Top = 116
              Width = 73
              Height = 19
              Color = clWhite
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 8
              OnEnter = EditRechercheCodeSFamilleMAJEnter
              OnKeyUp = EditRechercheCodeSFamilleMAJKeyUp
            end
            object EditRechercheDesigSFamilleMAJ: TEdit
              Left = 304
              Top = 116
              Width = 241
              Height = 19
              Color = clWhite
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 9
              OnEnter = EditRechercheCodeSFamilleMAJEnter
              OnKeyUp = EditRechercheCodeSFamilleMAJKeyUp
            end
            object EditOrdreCompteComptableArticleMAJ: TComboBox
              Left = 552
              Top = 114
              Width = 121
              Height = 21
              BevelKind = bkFlat
              Ctl3D = False
              ItemHeight = 13
              ItemIndex = 0
              ParentCtl3D = False
              TabOrder = 10
              Text = '01 Classe'
              OnKeyPress = EditOrdreCompteComptableArticleMAJKeyPress
              OnSelect = EditOrdreCompteComptableArticleMAJSelect
              Items.Strings = (
                '01 Classe'
                '02 Sous Classe'
                '03 Cat'#233'gorie'
                '04 Sous Cat'#233'gorie'
                '05 Famille'
                '06 Sous Famille'
                '10 Article')
            end
          end
          object AfficheOptionCompteConcerne: TPanel
            Left = 1024
            Top = 0
            Width = 297
            Height = 209
            BevelInner = bvLowered
            Color = 16777156
            TabOrder = 47
            Visible = False
            object Bevel120: TBevel
              Left = 8
              Top = 168
              Width = 281
              Height = 33
            end
            object Label146: TLabel
              Left = 8
              Top = 152
              Width = 49
              Height = 13
              Caption = 'Chercher !'
            end
            object RadioGroup15: TRadioGroup
              Left = 8
              Top = 8
              Width = 281
              Height = 137
              Caption = 'Options de rechrche:'
              TabOrder = 1
            end
            object EditRecherche: TEdit
              Left = 16
              Top = 176
              Width = 265
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 0
              OnEnter = EditRechercheEnter
              OnExit = EditRechercheExit
              OnKeyDown = EditRechercheKeyDown
              OnKeyPress = EditRechercheKeyPress
              OnKeyUp = EditRechercheKeyUp
            end
            object RBParCodeSFamille: TRadioButton
              Left = 16
              Top = 40
              Width = 161
              Height = 17
              Caption = 'Par Code S/Famille.'
              TabOrder = 2
              OnClick = RBParCodeSFamilleClick
            end
            object RBParCodeArticle: TRadioButton
              Left = 16
              Top = 64
              Width = 161
              Height = 17
              Caption = 'Par Code Article.'
              TabOrder = 3
              OnClick = RBParCodeArticleClick
            end
            object RBParDesignationArticle: TRadioButton
              Left = 16
              Top = 88
              Width = 161
              Height = 17
              Caption = 'Par D'#233'signation Article.'
              Checked = True
              TabOrder = 4
              TabStop = True
              OnClick = RBParDesignationArticleClick
            end
            object RBDistingueDesigRef: TCheckBox
              Left = 180
              Top = 149
              Width = 97
              Height = 17
              Caption = 'Disting D'#233's.R'#233'f'
              TabOrder = 5
              OnClick = RBDistingueDesigRefClick
            end
            object RBParCodebarre: TRadioButton
              Left = 16
              Top = 112
              Width = 113
              Height = 17
              Caption = 'Par Code barre'
              TabOrder = 6
              OnClick = RBParCodebarreClick
            end
            object BitBtn90: TBitBtn
              Left = 248
              Top = 16
              Width = 35
              Height = 25
              Caption = '.'
              TabOrder = 7
              OnClick = BitBtn90Click
              Kind = bkCancel
            end
          end
          object TableauSelectArticleInventaire: TStringGrid
            Left = 579
            Top = 51
            Width = 424
            Height = 513
            Color = 13565951
            Ctl3D = False
            FixedColor = clGradientInactiveCaption
            ParentCtl3D = False
            TabOrder = 52
            Visible = False
            OnDblClick = TableauSelectArticleInventaireDblClick
            OnDrawCell = TableauSelectArticleInventaireDrawCell
          end
          object AfficheOptions: TControlBar
            Left = 1075
            Top = 40
            Width = 185
            Height = 473
            Color = clWhite
            ParentColor = False
            TabOrder = 12
            Visible = False
            OnMouseMove = AfficheOptionsMouseMove
            object StaticInventaireGlobal: TStaticText
              Left = 11
              Top = 184
              Width = 168
              Height = 22
              Caption = 'Inventaire Global                            '
              TabOrder = 0
              OnClick = StaticInventaireGlobalClick
              OnMouseMove = StaticInventaireGlobalMouseMove
            end
            object StaticTousProduits: TStaticText
              Left = 11
              Top = 54
              Width = 168
              Height = 22
              Caption = 'Liste de tous les produits                 '
              TabOrder = 1
              OnClick = StaticTousProduitsClick
              OnMouseMove = StaticTousProduitsMouseMove
            end
            object StaticNouveau: TStaticText
              Left = 11
              Top = 2
              Width = 168
              Height = 22
              Caption = 'Nouveau                                         '
              TabOrder = 2
              OnClick = StaticNouveauClick
              OnMouseMove = StaticNouveauMouseMove
            end
            object StaticRechercheProduit: TStaticText
              Left = 11
              Top = 210
              Width = 168
              Height = 22
              Caption = 'Recherche Produit                         '
              TabOrder = 3
              OnClick = StaticRechercheProduitClick
              OnMouseMove = StaticRechercheProduitMouseMove
            end
            object StaticProduitParFamille: TStaticText
              Left = 11
              Top = 28
              Width = 168
              Height = 22
              Caption = 'Liste des produits par famille             '
              TabOrder = 4
              OnClick = StaticProduitParFamilleClick
              OnMouseMove = StaticProduitParFamilleMouseMove
            end
            object StaticInventaireSousFamille: TStaticText
              Left = 11
              Top = 132
              Width = 168
              Height = 22
              Caption = 'Inventaire par Compte Comptable   '
              TabOrder = 5
              OnClick = StaticInventaireSousFamilleClick
              OnMouseMove = StaticInventaireSousFamilleMouseMove
            end
            object StaticFormule: TStaticText
              Left = 11
              Top = 158
              Width = 168
              Height = 22
              Caption = 'Formule (Composition en mati'#232'res)  '
              TabOrder = 6
              OnClick = StaticFormuleClick
              OnMouseMove = StaticFormuleMouseMove
            end
            object StaticInitialisationDonnees: TStaticText
              Left = 11
              Top = 106
              Width = 168
              Height = 22
              Caption = 'Tri'#233' les Articles                               '
              TabOrder = 7
              OnClick = StaticInitialisationDonneesClick
              OnMouseMove = StaticInitialisationDonneesMouseMove
            end
            object StaticImprimerListeArticle: TStaticText
              Left = 11
              Top = 80
              Width = 168
              Height = 22
              Caption = 'Imprimer la liste des Articles            '
              TabOrder = 8
              OnClick = StaticImprimerListeArticleClick
              OnMouseMove = StaticImprimerListeArticleMouseMove
            end
            object StaticAuthentification: TStaticText
              Left = 11
              Top = 236
              Width = 168
              Height = 22
              Caption = 'Authentification                               '
              TabOrder = 9
              OnClick = StaticAuthentificationClick
              OnMouseMove = StaticAuthentificationMouseMove
            end
            object StaticPublicationStock: TStaticText
              Left = 11
              Top = 262
              Width = 168
              Height = 22
              Caption = 'Publication r'#233'seaux du stock          '
              TabOrder = 10
              OnClick = StaticPublicationStockClick
              OnMouseMove = StaticPublicationStockMouseMove
            end
            object StaticMiseAJourStockPublieReseaux: TStaticText
              Left = 11
              Top = 288
              Width = 168
              Height = 22
              Caption = 'Mise '#224' jour stock publi'#233' r'#233'seaux     '
              TabOrder = 11
              OnClick = StaticMiseAJourStockPublieReseauxClick
              OnMouseMove = StaticMiseAJourStockPublieReseauxMouseMove
            end
            object StaticRegularisationCout: TStaticText
              Left = 11
              Top = 314
              Width = 168
              Height = 22
              Caption = 'R'#233'gularisation des co'#251'ts                '
              TabOrder = 12
              OnClick = StaticRegularisationCoutClick
              OnMouseMove = StaticRegularisationCoutMouseMove
            end
            object StaticInventaireAffichage: TStaticText
              Left = 11
              Top = 366
              Width = 168
              Height = 22
              Caption = 'Inventaire de l'#39'affichage                 '
              TabOrder = 13
              OnClick = StaticInventaireAffichageClick
              OnMouseMove = StaticInventaireAffichageMouseMove
            end
            object StaticAjouterQteForfait: TStaticText
              Left = 11
              Top = 392
              Width = 168
              Height = 22
              Caption = 'Ajouter une quantit'#233' forfait              '
              TabOrder = 14
              OnClick = StaticAjouterQteForfaitClick
              OnMouseMove = StaticAjouterQteForfaitMouseMove
            end
            object StaticRegularisationPrix: TStaticText
              Left = 11
              Top = 340
              Width = 168
              Height = 22
              Caption = 'Regularisation des prix  VD             '
              TabOrder = 15
              OnClick = StaticRegularisationPrixClick
              OnMouseMove = StaticRegularisationPrixMouseMove
            end
            object StaticListeCodeBarre: TStaticText
              Left = 11
              Top = 418
              Width = 168
              Height = 22
              Caption = 'Liste avec code barre                     '
              TabOrder = 16
              OnClick = StaticListeCodeBarreClick
              OnMouseMove = StaticListeCodeBarreMouseMove
            end
          end
          object TableauSFamilleMAJ: TStringGrid
            Left = 24
            Top = 344
            Width = 425
            Height = 273
            Ctl3D = False
            DefaultColWidth = 40
            DefaultRowHeight = 20
            FixedColor = 16777088
            RowCount = 20
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
            ParentCtl3D = False
            TabOrder = 55
            Visible = False
            OnDblClick = TableauSFamilleMAJDblClick
            ColWidths = (
              40
              50
              226
              2
              2)
          end
          object AfficheInitialisationDataStock: TPanel
            Left = 544
            Top = 16
            Width = 529
            Height = 177
            BevelOuter = bvLowered
            Color = clRed
            TabOrder = 56
            Visible = False
            object Bevel138: TBevel
              Left = 8
              Top = 40
              Width = 369
              Height = 129
            end
            object Bevel139: TBevel
              Left = 383
              Top = 8
              Width = 138
              Height = 161
            end
            object BitBtn99: TBitBtn
              Left = 392
              Top = 16
              Width = 123
              Height = 145
              Caption = 'Valider'
              TabOrder = 0
              OnClick = BitBtn99Click
              Kind = bkAll
            end
            object RBInitialisationQuatiteInitiale: TCheckBox
              Left = 16
              Top = 48
              Width = 105
              Height = 17
              Caption = 'Quatit'#233' initiale'
              TabOrder = 1
            end
            object Panel38: TPanel
              Left = 8
              Top = 8
              Width = 369
              Height = 25
              Caption = 'Initialisation des valeur '#224' zero'
              TabOrder = 2
              OnDblClick = Panel38DblClick
            end
            object RBInitialisationQuatiteEntree: TCheckBox
              Left = 16
              Top = 72
              Width = 105
              Height = 17
              Caption = 'Quatit'#233' Entr'#233'e'
              Enabled = False
              TabOrder = 3
            end
            object RBInitialisationQuatiteSortie: TCheckBox
              Left = 16
              Top = 96
              Width = 105
              Height = 17
              Caption = 'Quatit'#233' Sortie'
              Enabled = False
              TabOrder = 4
            end
            object RBInitialisationQuatiteStock: TCheckBox
              Left = 16
              Top = 120
              Width = 105
              Height = 17
              Caption = 'Quatit'#233' Stock'
              Enabled = False
              TabOrder = 5
            end
            object RBInitialisationQuatiteLimite: TCheckBox
              Left = 16
              Top = 144
              Width = 105
              Height = 17
              Caption = 'Quatit'#233' Limite'
              Enabled = False
              TabOrder = 6
            end
          end
          object RBModificationOperer: TCheckBox
            Left = 1256
            Top = 232
            Width = 25
            Height = 17
            Caption = '.'
            Enabled = False
            TabOrder = 57
          end
          object AfficherImprimerInventaireAffichage: TPanel
            Left = 536
            Top = 32
            Width = 393
            Height = 193
            BevelInner = bvLowered
            TabOrder = 61
            Visible = False
            OnMouseDown = AfficherImprimerInventaireAffichageMouseDown
            object Bevel146: TBevel
              Left = 184
              Top = 13
              Width = 201
              Height = 92
            end
            object LabelTypePrintAffichage: TLabel
              Left = 194
              Top = 55
              Width = 30
              Height = 13
              Alignment = taCenter
              Caption = '..........'
            end
            object LabelRegistreComptePrintAffichage: TLabel
              Left = 194
              Top = 85
              Width = 30
              Height = 13
              Caption = '..........'
            end
            object LabelCodePrintAffichage: TLabel
              Left = 194
              Top = 69
              Width = 30
              Height = 13
              Caption = '..........'
            end
            object RadioGroup19: TRadioGroup
              Left = 8
              Top = 160
              Width = 376
              Height = 26
              TabOrder = 15
            end
            object RBTousAffichage: TRadioButton
              Left = 328
              Top = 167
              Width = 49
              Height = 17
              Caption = 'Tous'
              Checked = True
              TabOrder = 14
              TabStop = True
            end
            object RBStockExistantAffichage: TRadioButton
              Left = 148
              Top = 167
              Width = 89
              Height = 17
              Caption = 'Stock Existant'
              TabOrder = 13
            end
            object RBStockNulAffichage: TRadioButton
              Left = 12
              Top = 167
              Width = 73
              Height = 17
              Caption = 'Stock nul'
              TabOrder = 12
            end
            object GroupBox2: TGroupBox
              Left = 8
              Top = 112
              Width = 377
              Height = 41
              Caption = 'Structure:'
              TabOrder = 11
              object Label171: TLabel
                Left = 8
                Top = 19
                Width = 85
                Height = 13
                Caption = 'Nombre de lignes:'
              end
              object Label172: TLabel
                Left = 144
                Top = 19
                Width = 83
                Height = 13
                Caption = 'Largeur de Ligne:'
              end
              object Label173: TLabel
                Left = 280
                Top = 19
                Width = 43
                Height = 13
                Caption = 'D'#233'c;Qte:'
              end
            end
            object RadioGroup18: TRadioGroup
              Left = 8
              Top = 8
              Width = 169
              Height = 97
              Caption = 'Imprimer:'
              TabOrder = 0
            end
            object RBEtatInventaireAffichage: TRadioButton
              Left = 16
              Top = 24
              Width = 113
              Height = 17
              Caption = 'Etat d'#39'inventaire'
              TabOrder = 1
              OnClick = RBEtatInventaireAffichageClick
            end
            object RBFeuilleInventaireAffichage: TRadioButton
              Left = 16
              Top = 48
              Width = 113
              Height = 17
              Caption = 'Feuille d'#39'inventaire'
              TabOrder = 2
              OnClick = RBFeuilleInventaireAffichageClick
            end
            object RBFicheIdentificationAffichage: TRadioButton
              Left = 16
              Top = 72
              Width = 121
              Height = 17
              Caption = 'Fiches d'#39'Identification'
              TabOrder = 3
            end
            object BitInventaireAffichage: TBitBtn
              Left = 192
              Top = 24
              Width = 185
              Height = 25
              Caption = 'Aper'#231'ue'
              TabOrder = 4
              OnClick = BitInventaireAffichageClick
              Kind = bkHelp
            end
            object UpDown10: TUpDown
              Left = 361
              Top = 124
              Width = 16
              Height = 19
              Associate = EditDecimaleQteAffichage
              Min = 0
              Max = 10
              Position = 2
              TabOrder = 5
              Wrap = False
            end
            object EditDecimaleQteAffichage: TEdit
              Left = 336
              Top = 124
              Width = 25
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 6
              Text = '2'
            end
            object IncrimenteEditHeightMaxAffichage: TUpDown
              Left = 265
              Top = 124
              Width = 16
              Height = 19
              Associate = EditHeightMaxAffichage
              Min = 0
              Position = 16
              TabOrder = 7
              Wrap = False
            end
            object EditHeightMaxAffichage: TEdit
              Left = 240
              Top = 124
              Width = 25
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 8
              Text = '16'
            end
            object UpDown11: TUpDown
              Left = 129
              Top = 124
              Width = 16
              Height = 19
              Associate = EditNbrMaxAffichage
              Min = 0
              Position = 40
              TabOrder = 9
              Wrap = False
            end
            object EditNbrMaxAffichage: TEdit
              Left = 104
              Top = 124
              Width = 25
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 10
              Text = '40'
            end
          end
          object AfficheQteForfait: TPanel
            Left = 312
            Top = 168
            Width = 705
            Height = 281
            BevelInner = bvLowered
            Color = 8454016
            TabOrder = 64
            Visible = False
            OnMouseDown = AfficheQteForfaitMouseDown
            object Bevel149: TBevel
              Left = 8
              Top = 8
              Width = 481
              Height = 105
            end
            object Label175: TLabel
              Left = 16
              Top = 16
              Width = 28
              Height = 13
              Caption = 'Code:'
            end
            object Bevel150: TBevel
              Left = 496
              Top = 8
              Width = 97
              Height = 41
            end
            object Label178: TLabel
              Left = 16
              Top = 40
              Width = 59
              Height = 13
              Caption = 'D'#233'signation:'
            end
            object Label179: TLabel
              Left = 16
              Top = 64
              Width = 58
              Height = 13
              Caption = 'Type Stock:'
            end
            object Label180: TLabel
              Left = 16
              Top = 88
              Width = 55
              Height = 13
              Caption = 'Num Projet:'
            end
            object Bevel152: TBevel
              Left = 600
              Top = 8
              Width = 97
              Height = 41
            end
            object Bevel153: TBevel
              Left = 496
              Top = 56
              Width = 97
              Height = 41
            end
            object Bevel154: TBevel
              Left = 496
              Top = 104
              Width = 97
              Height = 41
            end
            object Bevel155: TBevel
              Left = 8
              Top = 120
              Width = 481
              Height = 25
            end
            object Bevel156: TBevel
              Left = 600
              Top = 104
              Width = 97
              Height = 41
            end
            object Bevel160: TBevel
              Left = 600
              Top = 56
              Width = 97
              Height = 41
            end
            object EditAutorisationSupprrimerTous: TEdit
              Left = 613
              Top = 114
              Width = 73
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 11
              OnKeyPress = EditAutorisationSupprrimerTousKeyPress
            end
            object EditCodeQteForfait: TEdit
              Left = 80
              Top = 16
              Width = 89
              Height = 19
              Color = clSilver
              Ctl3D = False
              Enabled = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 0
            end
            object TableauQteForfaitStock: TStringGrid
              Left = 8
              Top = 152
              Width = 689
              Height = 121
              ColCount = 4
              Ctl3D = False
              RowCount = 2
              ParentCtl3D = False
              TabOrder = 1
              OnClick = TableauQteForfaitStockClick
              OnKeyPress = TableauQteForfaitStockKeyPress
              ColWidths = (
                64
                64
                64
                64)
            end
            object BitValiderQteForfait: TBitBtn
              Left = 504
              Top = 64
              Width = 83
              Height = 25
              Caption = 'Modifier'
              ModalResult = 1
              TabOrder = 3
              OnClick = BitValiderQteForfaitClick
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
            object BitSupprimerQteForfait: TBitBtn
              Left = 504
              Top = 112
              Width = 83
              Height = 25
              Caption = 'Supprimer'
              TabOrder = 4
              OnClick = BitSupprimerQteForfaitClick
              Kind = bkCancel
            end
            object BitAjouterQteForfait: TBitBtn
              Left = 504
              Top = 16
              Width = 81
              Height = 25
              Caption = 'Ajouter'
              TabOrder = 5
              OnClick = BitAjouterQteForfaitClick
              Kind = bkAll
            end
            object EditDesignationArticle: TEdit
              Left = 80
              Top = 40
              Width = 401
              Height = 19
              Color = clSilver
              Ctl3D = False
              Enabled = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 6
            end
            object EditTypeStockQteForfait: TEdit
              Left = 80
              Top = 64
              Width = 89
              Height = 19
              Color = clSilver
              Ctl3D = False
              Enabled = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 7
            end
            object EditNumProjetFinanceQteForfait: TEdit
              Left = 80
              Top = 88
              Width = 89
              Height = 19
              Color = clSilver
              Ctl3D = False
              Enabled = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 8
            end
            object BitBtn105: TBitBtn
              Left = 608
              Top = 16
              Width = 81
              Height = 25
              TabOrder = 9
              OnClick = BitBtn105Click
              Kind = bkCancel
            end
            object BitBtn107: TBitBtn
              Left = 608
              Top = 112
              Width = 81
              Height = 25
              Caption = 'Voir Tous'
              TabOrder = 10
              OnClick = BitBtn107Click
              Kind = bkHelp
            end
            object AfficheOptionAfficheQteForfait: TPanel
              Left = 8
              Top = 8
              Width = 689
              Height = 137
              BevelInner = bvLowered
              Color = clAqua
              TabOrder = 2
              Visible = False
              OnMouseDown = AfficheOptionAfficheQteForfaitMouseDown
              object Bevel151: TBevel
                Left = 368
                Top = 8
                Width = 105
                Height = 41
              end
              object Bevel157: TBevel
                Left = 368
                Top = 56
                Width = 105
                Height = 41
              end
              object Bevel158: TBevel
                Left = 368
                Top = 104
                Width = 105
                Height = 25
              end
              object Bevel161: TBevel
                Left = 480
                Top = 8
                Width = 201
                Height = 121
              end
              object BitBtn108: TBitBtn
                Left = 376
                Top = 16
                Width = 91
                Height = 25
                TabOrder = 0
                OnClick = BitBtn108Click
                Kind = bkCancel
              end
              object BitValiderAfficheOptionAfficheQteForfait: TBitBtn
                Left = 376
                Top = 64
                Width = 91
                Height = 25
                TabOrder = 1
                OnClick = BitValiderAfficheOptionAfficheQteForfaitClick
                Kind = bkAll
              end
              object AfficheValeurs: TPanel
                Left = 8
                Top = 8
                Width = 353
                Height = 121
                BevelInner = bvLowered
                TabOrder = 2
                object Bevel159: TBevel
                  Left = 8
                  Top = 8
                  Width = 337
                  Height = 105
                end
                object Label176: TLabel
                  Left = 16
                  Top = 16
                  Width = 102
                  Height = 13
                  Caption = 'D'#233'signation Quantit'#233':'
                end
                object Label177: TLabel
                  Left = 16
                  Top = 40
                  Width = 39
                  Height = 13
                  Caption = 'Valeure:'
                end
                object Label181: TLabel
                  Left = 16
                  Top = 64
                  Width = 66
                  Height = 13
                  Caption = 'Unit'#233' Mesure:'
                end
                object Label182: TLabel
                  Left = 16
                  Top = 88
                  Width = 57
                  Height = 13
                  Caption = 'Prix unitaire:'
                end
                object EditDesignationQteForfait: TEdit
                  Left = 120
                  Top = 16
                  Width = 193
                  Height = 19
                  Ctl3D = False
                  ParentCtl3D = False
                  TabOrder = 0
                  OnKeyDown = EditDesignationQteForfaitKeyDown
                end
                object EditValeurQteForfait: TEdit
                  Left = 120
                  Top = 38
                  Width = 121
                  Height = 19
                  Ctl3D = False
                  ParentCtl3D = False
                  TabOrder = 1
                  OnKeyDown = EditValeurQteForfaitKeyDown
                  OnKeyPress = EditValeurQteForfaitKeyPress
                end
                object EditPositionQteforfait: TEdit
                  Left = 320
                  Top = 16
                  Width = 17
                  Height = 19
                  Color = clSilver
                  Ctl3D = False
                  Enabled = False
                  ParentCtl3D = False
                  ReadOnly = True
                  TabOrder = 2
                end
                object EditPrixUQteForfait: TEdit
                  Left = 120
                  Top = 86
                  Width = 121
                  Height = 19
                  Ctl3D = False
                  ParentCtl3D = False
                  TabOrder = 3
                  OnKeyDown = EditPrixUQteForfaitKeyDown
                  OnKeyPress = EditPrixUQteForfaitKeyPress
                end
                object EditUMQteForfait: TComboBox
                  Left = 120
                  Top = 60
                  Width = 121
                  Height = 21
                  BevelKind = bkFlat
                  Ctl3D = False
                  ItemHeight = 13
                  ItemIndex = 0
                  ParentCtl3D = False
                  TabOrder = 4
                  Text = 'U     (Unit'#233')'
                  OnKeyDown = EditUMQteForfaitKeyDown
                  OnKeyPress = EditUMQteForfaitKeyPress
                  Items.Strings = (
                    'U     (Unit'#233')'
                    'L      (Litre)'
                    'Kg    (Kilo Gramme)'
                    'M2   (M'#232'tre carr'#233')'
                    'M3   (M'#232'tre cube)'
                    'Ml    (M'#232'tre Ligni'#232'res)'
                    'Pst   (Prestation)'
                    'Bte  (Boite)'
                    'Pqt  (Paquet)'
                    'Bid  (Bidon)')
                end
              end
            end
          end
          object AfficheRegularisationCoutValeurAjouter: TPanel
            Left = -1128
            Top = 463
            Width = 1321
            Height = 473
            BevelInner = bvLowered
            Color = 16777088
            TabOrder = 54
            Visible = False
            OnExit = AfficheRegularisationCoutValeurAjouterExit
            object Bevel135: TBevel
              Left = 8
              Top = 8
              Width = 185
              Height = 34
            end
            object Bevel137: TBevel
              Left = 760
              Top = 8
              Width = 441
              Height = 33
            end
            object Bevel134: TBevel
              Left = 8
              Top = 48
              Width = 425
              Height = 34
            end
            object Label160: TLabel
              Left = 16
              Top = 59
              Width = 28
              Height = 13
              Caption = 'Code:'
            end
            object Label161: TLabel
              Left = 120
              Top = 59
              Width = 33
              Height = 13
              Caption = 'D'#233'sig.:'
            end
            object Label162: TLabel
              Left = 15
              Top = 19
              Width = 121
              Height = 13
              Caption = 'Ordre Compte Comptable:'
            end
            object Bevel136: TBevel
              Left = 1208
              Top = 8
              Width = 106
              Height = 33
            end
            object Label163: TLabel
              Left = 768
              Top = 19
              Width = 85
              Height = 13
              Caption = 'Valeur ajouter (%):'
            end
            object Label165: TLabel
              Left = 448
              Top = 443
              Width = 65
              Height = 13
              Caption = 'Cummul Co'#251't:'
            end
            object Label166: TLabel
              Left = 640
              Top = 443
              Width = 60
              Height = 13
              Caption = 'Cummul Prix:'
            end
            object Label164: TLabel
              Left = 944
              Top = 443
              Width = 65
              Height = 13
              Caption = 'Cummul Co'#251't:'
            end
            object Label167: TLabel
              Left = 1136
              Top = 444
              Width = 60
              Height = 13
              Caption = 'Cummul Prix:'
            end
            object Label168: TLabel
              Left = 832
              Top = 444
              Width = 96
              Height = 13
              Caption = '===============>'
            end
            object IndiceOKSelect: TLabel
              Left = 408
              Top = 24
              Width = 15
              Height = 13
              Caption = 'OK'
            end
            object Bevel165: TBevel
              Left = 232
              Top = 8
              Width = 201
              Height = 34
            end
            object Bevel166: TBevel
              Left = 456
              Top = 8
              Width = 209
              Height = 34
            end
            object TableauStockArticleRegularisation: TStringGrid
              Left = 448
              Top = 48
              Width = 865
              Height = 385
              Ctl3D = False
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
              ParentCtl3D = False
              TabOrder = 0
              OnClick = TableauStockArticleRegularisationClick
              OnDblClick = TableauStockArticleRegularisationDblClick
              RowHeights = (
                24
                24
                24
                24
                24)
            end
            object EditRechercheCodeSFamilleRegularisation: TEdit
              Left = 48
              Top = 56
              Width = 65
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 1
              OnKeyDown = EditRechercheCodeSFamilleRegularisationKeyDown
              OnKeyPress = EditRechercheCodeSFamilleRegularisationKeyPress
              OnKeyUp = EditRechercheCodeSFamilleRegularisationKeyUp
            end
            object EditRechercheDesigSFamilleRegularisation: TEdit
              Left = 160
              Top = 56
              Width = 265
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 2
              OnKeyDown = EditRechercheDesigSFamilleRegularisationKeyDown
              OnKeyPress = EditRechercheDesigSFamilleRegularisationKeyPress
              OnKeyUp = EditRechercheDesigSFamilleRegularisationKeyUp
            end
            object TableauSFamilleRegularisation: TStringGrid
              Left = 8
              Top = 88
              Width = 425
              Height = 377
              Ctl3D = False
              DefaultColWidth = 40
              DefaultRowHeight = 20
              FixedColor = 11268585
              RowCount = 20
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
              ParentCtl3D = False
              TabOrder = 3
              OnClick = TableauSFamilleRegularisationClick
              OnDrawCell = TableauSFamilleRegularisationDrawCell
              OnEnter = TableauSFamilleRegularisationEnter
              OnKeyDown = TableauSFamilleRegularisationKeyDown
              ColWidths = (
                40
                50
                226
                2
                2)
            end
            object EditOrdreCompteComptableArticleRegularisation: TEdit
              Left = 143
              Top = 16
              Width = 25
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 4
              Text = '6'
            end
            object UpDown3: TUpDown
              Left = 168
              Top = 16
              Width = 16
              Height = 19
              Associate = EditOrdreCompteComptableArticleRegularisation
              Min = 1
              Max = 6
              Position = 6
              TabOrder = 5
              Wrap = False
              OnClick = IncrimentOrdreCompteComptableClick
            end
            object BitBtn95: TBitBtn
              Left = 1216
              Top = 12
              Width = 92
              Height = 25
              TabOrder = 6
              OnClick = BitBtn95Click
              Kind = bkCancel
            end
            object EditPourcentageValeurAjouter: TEdit
              Left = 864
              Top = 16
              Width = 33
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 7
              Text = '0'
            end
            object IncrimenteEditPourcentageValeurAjouter: TUpDown
              Left = 897
              Top = 16
              Width = 16
              Height = 19
              Associate = EditPourcentageValeurAjouter
              Min = 0
              Position = 0
              TabOrder = 8
              Wrap = False
            end
            object BitRegularisation: TBitBtn
              Left = 920
              Top = 12
              Width = 273
              Height = 25
              Caption = 'R'#233'gularisation du prix VD des articles s'#233'lectionn'#233's'
              TabOrder = 9
              OnClick = BitRegularisationClick
              OnContextPopup = BitRegularisationContextPopup
              Kind = bkAll
            end
            object EditCummulCout: TEdit
              Left = 520
              Top = 440
              Width = 113
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 11
            end
            object EditCummulPrix: TEdit
              Left = 704
              Top = 440
              Width = 113
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 12
            end
            object EditCummulCoutApres: TEdit
              Left = 1016
              Top = 440
              Width = 113
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 13
            end
            object EditCummulPrixApres: TEdit
              Left = 1200
              Top = 440
              Width = 113
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 14
            end
            object AllSelectValeurZero: TCheckBox
              Left = 464
              Top = 16
              Width = 193
              Height = 17
              Caption = 'S'#233'lectionn'#233' uniquement Valeur z'#233'ro'
              TabOrder = 15
            end
            object AfficheConfirmationRegularisation: TPanel
              Left = 568
              Top = 112
              Width = 673
              Height = 36
              BevelInner = bvLowered
              TabOrder = 10
              Visible = False
              object BitBtn97: TBitBtn
                Left = 8
                Top = 6
                Width = 105
                Height = 25
                TabOrder = 0
                OnClick = BitBtn97Click
                Kind = bkCancel
              end
              object BitConfirmerRegularisation: TBitBtn
                Left = 352
                Top = 6
                Width = 315
                Height = 25
                Caption = 'Confirmer la R'#233'gulariser le co'#251't des article s'#233'lectionn'#233's'
                TabOrder = 1
                OnClick = BitConfirmerRegularisationClick
                Kind = bkAll
              end
            end
            object AfficherRegularisationCoutExerciceAnterieur: TPanel
              Left = 568
              Top = 160
              Width = 673
              Height = 57
              BevelInner = bvLowered
              Color = clYellow
              TabOrder = 16
              Visible = False
              object Bevel162: TBevel
                Left = 8
                Top = 8
                Width = 393
                Height = 41
              end
              object Label183: TLabel
                Left = 16
                Top = 24
                Width = 293
                Height = 13
                Caption = 'R'#233'gularis'#233' les co'#251'ts de l'#39'exercice actuel au co'#251't de l'#39'exrecice:'
              end
              object Bevel163: TBevel
                Left = 408
                Top = 8
                Width = 121
                Height = 41
              end
              object Bevel164: TBevel
                Left = 576
                Top = 8
                Width = 89
                Height = 41
              end
              object EditExerciceAnterieurRegularisationCout: TComboBox
                Left = 312
                Top = 16
                Width = 81
                Height = 21
                ItemHeight = 13
                ItemIndex = 0
                TabOrder = 0
                Text = '2010'
                OnKeyDown = EditExerciceAnterieurRegularisationCoutKeyDown
                Items.Strings = (
                  '2010'
                  '2011'
                  '2013'
                  '2014'
                  '2015'
                  '2016'
                  '2017'
                  '2018'
                  '2019'
                  '2020'
                  '2021'
                  '2022'
                  '2023')
              end
              object BitRegulariserCoutExerciceAnterieur: TBitBtn
                Left = 416
                Top = 16
                Width = 105
                Height = 25
                Caption = 'R'#233'gulariser'
                TabOrder = 1
                OnClick = BitRegulariserCoutExerciceAnterieurClick
                Kind = bkAll
              end
              object BitBtn98: TBitBtn
                Left = 584
                Top = 16
                Width = 75
                Height = 25
                TabOrder = 2
                OnClick = BitBtn98Click
                Kind = bkCancel
              end
            end
            object BitSelectionnerTous: TBitBtn
              Left = 240
              Top = 13
              Width = 185
              Height = 25
              Caption = 'S'#233'lectionn'#233' tous'
              TabOrder = 17
              OnClick = BitSelectionnerTousClick
              Kind = bkAll
            end
            object AfficheAttenteRegularisation: TPanel
              Left = 536
              Top = 232
              Width = 729
              Height = 33
              TabOrder = 18
              Visible = False
              object EditAttenteDetailMouvement: TEdit
                Left = 144
                Top = 46
                Width = 9
                Height = 19
                Ctl3D = False
                ParentCtl3D = False
                ReadOnly = True
                TabOrder = 1
              end
              object ProgressAfficheAttenteRegularisation: TProgressBar
                Left = 8
                Top = 8
                Width = 713
                Height = 17
                Min = 0
                Max = 100
                Smooth = True
                Step = 1
                TabOrder = 0
              end
            end
            object RBRegularisationTableau: TCheckBox
              Left = 672
              Top = 16
              Width = 25
              Height = 17
              Caption = '.'
              Checked = True
              Enabled = False
              State = cbChecked
              TabOrder = 19
            end
          end
          object ficheAnalyseStock: TPanel
            Left = -560
            Top = 400
            Width = 1321
            Height = 628
            BevelInner = bvLowered
            Color = 12910532
            TabOrder = 7
            Visible = False
            object Bevel57: TBevel
              Left = 1160
              Top = 8
              Width = 90
              Height = 41
            end
            object Bevel58: TBevel
              Left = 823
              Top = 120
              Width = 162
              Height = 41
            end
            object Bevel84: TBevel
              Left = 823
              Top = 8
              Width = 154
              Height = 41
            end
            object Bevel85: TBevel
              Left = 824
              Top = 64
              Width = 425
              Height = 49
            end
            object Bevel87: TBevel
              Left = 1104
              Top = 120
              Width = 145
              Height = 41
            end
            object Bevel88: TBevel
              Left = 1032
              Top = 184
              Width = 217
              Height = 41
            end
            object Bevel96: TBevel
              Left = 823
              Top = 184
              Width = 162
              Height = 41
            end
            object Bevel97: TBevel
              Left = 1256
              Top = 8
              Width = 57
              Height = 609
            end
            object Bevel145: TBevel
              Left = 992
              Top = 120
              Width = 105
              Height = 41
            end
            object EditInfoEtat: TMemo
              Left = 1264
              Top = 16
              Width = 41
              Height = 9
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 13
            end
            object TypeTrieArticle: TRadioGroup
              Left = 1032
              Top = 66
              Width = 209
              Height = 39
              Caption = '+'
              TabOrder = 9
            end
            object TableauMouvement: TStringGrid
              Left = 8
              Top = 8
              Width = 809
              Height = 219
              ColCount = 14
              Ctl3D = False
              FixedColor = 13303754
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goAlwaysShowEditor]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              OnClick = TableauMouvementClick
              RowHeights = (
                24
                22
                24
                24
                24)
            end
            object BitBtn40: TBitBtn
              Left = 1168
              Top = 16
              Width = 75
              Height = 25
              TabOrder = 1
              OnClick = BitBtn40Click
              Kind = bkCancel
            end
            object TableauDetailMouvement: TStringGrid
              Left = 8
              Top = 232
              Width = 1241
              Height = 385
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 2
              OnClick = TableauDetailMouvementClick
              OnDblClick = TableauDetailMouvementDblClick
              ColWidths = (
                64
                64
                64
                64
                64)
            end
            object BitMiseAJourStock: TBitBtn
              Left = 832
              Top = 128
              Width = 145
              Height = 25
              Caption = 'Mise '#224' jour du stock'
              TabOrder = 3
              OnClick = BitMiseAJourStockClick
              Kind = bkAll
            end
            object BitMimuleSelection: TBitBtn
              Left = 832
              Top = 16
              Width = 137
              Height = 25
              Caption = 'Simul'#233' la s'#233'lection !'
              TabOrder = 4
              OnClick = BitMimuleSelectionClick
              Kind = bkHelp
            end
            object RBRubriqueTrieTableauArticle: TCheckBox
              Left = 833
              Top = 78
              Width = 172
              Height = 17
              Caption = 'Triers / Rubrique s'#233'lectionner !'
              TabOrder = 5
            end
            object EditRubriqueTrieArticle: TEdit
              Left = 1005
              Top = 77
              Width = 23
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 6
              Text = '1'
            end
            object RadioButton7: TRadioButton
              Left = 1040
              Top = 80
              Width = 97
              Height = 17
              Caption = 'Descendant (-)'
              TabOrder = 7
              OnClick = RadioButton7Click
            end
            object RadioButton5: TRadioButton
              Left = 1144
              Top = 80
              Width = 89
              Height = 17
              Caption = 'Ascendant (+)'
              Checked = True
              TabOrder = 8
              TabStop = True
              OnClick = RadioButton5Click
            end
            object AfficheTiersOptionPrint: TPanel
              Left = 1040
              Top = 192
              Width = 201
              Height = 25
              BevelInner = bvLowered
              Caption = 'Imprimer'
              Color = 8454143
              TabOrder = 10
              OnClick = AfficheTiersOptionPrintClick
              object Bevel86: TBevel
                Left = 8
                Top = 40
                Width = 185
                Height = 169
              end
              object RadioGroup10: TRadioGroup
                Left = 16
                Top = 80
                Width = 169
                Height = 121
                Caption = 'Options d'#39'Impression:'
                TabOrder = 0
              end
              object StaticText3: TStaticText
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
              object BitBtn56: TBitBtn
                Left = 16
                Top = 48
                Width = 169
                Height = 25
                Caption = 'Print'
                TabOrder = 4
                OnClick = BitBtn56Click
                Kind = bkAll
              end
            end
            object BitBtn62: TBitBtn
              Left = 832
              Top = 192
              Width = 145
              Height = 25
              Caption = 'Fichier Excel'
              TabOrder = 11
              OnClick = BitBtn62Click
              Kind = bkHelp
            end
            object BitBtn87: TBitBtn
              Left = 1112
              Top = 128
              Width = 131
              Height = 25
              Caption = 'Voir l'#39#233'tats du stocks'
              TabOrder = 12
              OnClick = BitBtn87Click
              Kind = bkHelp
            end
            object EditCodeSFamilleMAJ: TEdit
              Left = 824
              Top = 163
              Width = 97
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 14
            end
            object EditDesigSFamilleMAJ: TEdit
              Left = 920
              Top = 163
              Width = 329
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 15
            end
            object BitActiverMAJ: TBitBtn
              Left = 1000
              Top = 128
              Width = 89
              Height = 25
              Caption = 'Activer MAJ'
              TabOrder = 16
              OnClick = BitActiverMAJClick
              Kind = bkAll
            end
            object AfficheAttenteMiseAJourStock: TPanel
              Left = 144
              Top = 376
              Width = 897
              Height = 33
              TabOrder = 17
              Visible = False
              object EditAfficheAttenteMiseAJourStock: TEdit
                Left = 144
                Top = 46
                Width = 9
                Height = 19
                Ctl3D = False
                ParentCtl3D = False
                ReadOnly = True
                TabOrder = 1
              end
              object ProgressAfficheAttenteMiseAJourStock: TProgressBar
                Left = 8
                Top = 8
                Width = 881
                Height = 17
                Min = 0
                Max = 100
                Smooth = True
                Step = 1
                TabOrder = 0
              end
            end
          end
          object AfficheAttente: TPanel
            Left = -599
            Top = 549
            Width = 825
            Height = 505
            BevelInner = bvLowered
            TabOrder = 43
            Visible = False
            object AfficheMessageAttente: TPanel
              Left = 8
              Top = 8
              Width = 809
              Height = 41
              BevelInner = bvLowered
              Caption = 'Patienter SVP !'
              Color = 8454143
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              object BitBtn60: TBitBtn
                Left = 768
                Top = 8
                Width = 35
                Height = 25
                Caption = '.'
                TabOrder = 0
                OnClick = BitBtn60Click
                Kind = bkCancel
              end
            end
            object MemoRapport: TMemo
              Left = 8
              Top = 56
              Width = 809
              Height = 441
              Color = clBlack
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
            end
            object MemoRapportPlus: TMemo
              Left = 392
              Top = 64
              Width = 417
              Height = 121
              Color = clBlack
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 2
            end
          end
          object AfficherMiseAJourStockPublicationReseaux: TPanel
            Left = 84
            Top = 216
            Width = 909
            Height = 289
            BevelOuter = bvLowered
            Color = 8454143
            TabOrder = 58
            Visible = False
            OnMouseDown = AfficherMiseAJourStockPublicationReseauxMouseDown
            object Bevel140: TBevel
              Left = 8
              Top = 8
              Width = 889
              Height = 41
            end
            object Label170: TLabel
              Left = 107
              Top = 21
              Width = 66
              Height = 13
              Caption = 'Par S/Famille:'
            end
            object Bevel141: TBevel
              Left = 768
              Top = 56
              Width = 130
              Height = 129
            end
            object Bevel142: TBevel
              Left = 656
              Top = 256
              Width = 241
              Height = 25
            end
            object Bevel143: TBevel
              Left = 8
              Top = 256
              Width = 641
              Height = 25
            end
            object Bevel144: TBevel
              Left = 767
              Top = 192
              Width = 130
              Height = 57
            end
            object NomFichierConcerneDetailMouvement: TLabel
              Left = 776
              Top = 216
              Width = 27
              Height = 13
              Caption = '.........'
            end
            object ProgressMAJ: TProgressBar
              Left = 13
              Top = 259
              Width = 628
              Height = 17
              Min = 0
              Max = 100
              Smooth = True
              Step = 1
              TabOrder = 9
            end
            object BitBtn100: TBitBtn
              Left = 16
              Top = 16
              Width = 75
              Height = 25
              TabOrder = 0
              OnClick = BitBtn100Click
              Kind = bkCancel
            end
            object TableauFichierConcerneDetailMouvementPublicationReseaux: TStringGrid
              Left = 8
              Top = 56
              Width = 753
              Height = 193
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 1
              OnClick = TableauFichierConcerneDetailMouvementPublicationReseauxClick
              OnDblClick = TableauFichierConcerneDetailMouvementPublicationReseauxDblClick
              OnKeyDown = TableauFichierConcerneDetailMouvementPublicationReseauxKeyDown
            end
            object EditRechercheCodeSFamilleMAJPublicationReseaux: TEdit
              Left = 176
              Top = 20
              Width = 73
              Height = 19
              Color = clWhite
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 2
              OnEnter = EditRechercheCodeSFamilleMAJPublicationReseauxEnter
              OnKeyUp = EditRechercheCodeSFamilleMAJPublicationReseauxKeyUp
            end
            object EditRechercheDesigSFamilleMAJPublicationReseaux: TEdit
              Left = 248
              Top = 20
              Width = 289
              Height = 19
              Color = clWhite
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 3
              OnEnter = EditRechercheCodeSFamilleMAJPublicationReseauxEnter
              OnKeyUp = EditRechercheCodeSFamilleMAJPublicationReseauxKeyUp
            end
            object EditOrdreCompteComptableArticleMAJPublicationReseaux: TComboBox
              Left = 768
              Top = 18
              Width = 121
              Height = 21
              BevelKind = bkFlat
              Ctl3D = False
              ItemHeight = 13
              ItemIndex = 5
              ParentCtl3D = False
              TabOrder = 4
              Text = '06 Sous Famille'
              OnKeyPress = EditOrdreCompteComptableArticleMAJPublicationReseauxKeyPress
              OnSelect = EditOrdreCompteComptableArticleMAJPublicationReseauxSelect
              Items.Strings = (
                '01 Classe'
                '02 Sous Classe'
                '03 Cat'#233'gorie'
                '04 Sous Cat'#233'gorie'
                '05 Famille'
                '06 Sous Famille'
                '10 Article')
            end
            object TableauSFamilleMAJPublicationReseaux: TStringGrid
              Left = 176
              Top = 40
              Width = 361
              Height = 233
              Ctl3D = False
              DefaultColWidth = 40
              DefaultRowHeight = 20
              FixedColor = 16777088
              RowCount = 20
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
              ParentCtl3D = False
              TabOrder = 5
              Visible = False
              OnDblClick = TableauSFamilleMAJPublicationReseauxDblClick
              OnKeyDown = TableauSFamilleMAJPublicationReseauxKeyDown
              ColWidths = (
                40
                50
                226
                2
                2)
            end
            object BitBtn101: TBitBtn
              Left = 776
              Top = 64
              Width = 113
              Height = 113
              Caption = 'Valider'
              TabOrder = 6
              OnClick = BitBtn101Click
              Kind = bkAll
            end
            object BitBtn102: TBitBtn
              Left = 552
              Top = 16
              Width = 129
              Height = 25
              Caption = 'Tous les articles'
              TabOrder = 7
              OnClick = BitBtn102Click
              Kind = bkCancel
            end
            object RBInclureCSousFamilleNulPourTous: TCheckBox
              Left = 664
              Top = 260
              Width = 225
              Height = 17
              Caption = 'Inclure Code Sous-Famille Nul PourTous'
              Checked = True
              State = cbChecked
              TabOrder = 8
            end
            object RBTrierParRubriqueSelect: TCheckBox
              Left = 776
              Top = 200
              Width = 49
              Height = 17
              Caption = 'Tri'#233'.'
              TabOrder = 10
            end
            object EditRubriqueTrieMAJ: TEdit
              Left = 824
              Top = 200
              Width = 17
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 11
              Text = '2'
            end
            object EditTypeTrieMAJ: TComboBox
              Left = 848
              Top = 200
              Width = 41
              Height = 21
              BevelKind = bkFlat
              Ctl3D = False
              ItemHeight = 13
              ItemIndex = 0
              ParentCtl3D = False
              TabOrder = 12
              Text = '+'
              Items.Strings = (
                '+'
                '-')
            end
            object AfficheOperationMiseAJourStockPublicationReseaux: TPanel
              Left = 104
              Top = 104
              Width = 497
              Height = 41
              BevelInner = bvLowered
              TabOrder = 13
              Visible = False
              object BitBtn96: TBitBtn
                Left = 8
                Top = 8
                Width = 89
                Height = 25
                TabOrder = 0
                OnClick = BitBtn96Click
                Kind = bkCancel
              end
              object BitOperationMAJStockReseaux: TBitBtn
                Left = 400
                Top = 8
                Width = 91
                Height = 25
                TabOrder = 1
                OnClick = BitOperationMAJStockReseauxClick
                Kind = bkAll
              end
              object RBSupprimerToutesMiseAJours: TCheckBox
                Left = 200
                Top = 13
                Width = 185
                Height = 17
                Caption = 'Supprimer Toutes les mise '#224' jours'
                TabOrder = 2
              end
            end
          end
          object AfficheInventaireGlobal: TPanel
            Left = 132
            Top = 452
            Width = 945
            Height = 473
            BevelInner = bvLowered
            Color = clGray
            TabOrder = 53
            Visible = False
            OnEnter = AfficheInventaireGlobalEnter
            OnMouseDown = AfficheInventaireGlobalMouseDown
            object Bevel132: TBevel
              Left = 520
              Top = 8
              Width = 241
              Height = 41
            end
            object Bevel130: TBevel
              Left = 8
              Top = 8
              Width = 105
              Height = 41
            end
            object Bevel131: TBevel
              Left = 768
              Top = 8
              Width = 169
              Height = 41
            end
            object Label158: TLabel
              Left = 527
              Top = 22
              Width = 121
              Height = 13
              Caption = 'Ordre Compte Comptable:'
            end
            object Bevel133: TBevel
              Left = 120
              Top = 8
              Width = 393
              Height = 41
            end
            object Label159: TLabel
              Left = 128
              Top = 24
              Width = 72
              Height = 13
              Caption = 'D'#233'tail Compte: '
            end
            object Compte: TLabel
              Left = 208
              Top = 24
              Width = 30
              Height = 13
              Caption = '..........'
            end
            object Bevel147: TBevel
              Left = 768
              Top = 184
              Width = 169
              Height = 41
            end
            object Label174: TLabel
              Left = 703
              Top = 22
              Width = 15
              Height = 13
              Caption = 'Cs:'
            end
            object Bevel167: TBevel
              Left = 768
              Top = 344
              Width = 169
              Height = 121
            end
            object EditCodeCompteSelect: TEdit
              Left = 40
              Top = 16
              Width = 41
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 21
            end
            object TableauInventaireGlobal: TStringGrid
              Left = 8
              Top = 56
              Width = 753
              Height = 409
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 0
              OnClick = TableauInventaireGlobalClick
              OnDblClick = TableauInventaireGlobalDblClick
              OnKeyPress = TableauInventaireGlobalKeyPress
            end
            object BitBtn92: TBitBtn
              Left = 16
              Top = 16
              Width = 89
              Height = 25
              TabOrder = 1
              OnClick = BitBtn92Click
              Kind = bkCancel
            end
            object BitBtn93: TBitBtn
              Left = 776
              Top = 16
              Width = 153
              Height = 25
              Caption = 'Imprimer'
              TabOrder = 2
              OnClick = BitBtn93Click
              Kind = bkHelp
            end
            object EditOrdreCtCleInventaireGlobal: TEdit
              Left = 648
              Top = 19
              Width = 25
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 3
              Text = '6'
            end
            object IncrimenteEditOrdreCtCleInventaireGlobal: TUpDown
              Left = 673
              Top = 19
              Width = 16
              Height = 19
              Associate = EditOrdreCtCleInventaireGlobal
              Min = 1
              Max = 6
              Position = 6
              TabOrder = 4
              Wrap = False
              OnClick = IncrimenteEditOrdreCtCleInventaireGlobalClick
            end
            object RadioGroup16: TRadioGroup
              Left = 768
              Top = 56
              Width = 169
              Height = 121
              Caption = 'Options d'#39'Impression:'
              TabOrder = 5
            end
            object StaticText1: TStaticText
              Left = 776
              Top = 83
              Width = 105
              Height = 17
              Caption = 'Orientation du papier:'
              TabOrder = 6
            end
            object OrientationPapierInventaireGlobal: TComboBox
              Left = 776
              Top = 104
              Width = 153
              Height = 21
              BevelInner = bvLowered
              BevelKind = bkFlat
              Ctl3D = False
              ItemHeight = 13
              ItemIndex = 0
              ParentCtl3D = False
              TabOrder = 7
              Text = 'Automatique'
              Items.Strings = (
                'Automatique'
                'Portrait'
                'Paysage')
            end
            object RBAjustementInventaireGlobal: TCheckBox
              Left = 776
              Top = 144
              Width = 113
              Height = 17
              Caption = 'Ajustement !'
              Checked = True
              State = cbChecked
              TabOrder = 8
            end
            object BitRetourIncrimenteEditOrdreCtCleInventaireGlobal: TBitBtn
              Left = 480
              Top = 16
              Width = 27
              Height = 25
              Caption = '.'
              Enabled = False
              TabOrder = 9
              OnClick = BitRetourIncrimenteEditOrdreCtCleInventaireGlobalClick
              Kind = bkRetry
              Margin = 2
            end
            object RadioGroup17: TRadioGroup
              Left = 768
              Top = 232
              Width = 169
              Height = 105
              Caption = 'Type inventaire: '
              TabOrder = 10
            end
            object RBInventaireParUnite: TRadioButton
              Left = 776
              Top = 264
              Width = 153
              Height = 17
              Caption = 'Inventaire par unit'#233' !'
              TabOrder = 11
              OnClick = RBInventaireParUniteClick
            end
            object RBInventaireQuantitesReel: TRadioButton
              Left = 776
              Top = 296
              Width = 153
              Height = 17
              Caption = 'Inventaire quantit'#233's r'#233'el !'
              TabOrder = 12
              OnClick = RBInventaireQuantitesReelClick
            end
            object BitBtn103: TBitBtn
              Left = 776
              Top = 192
              Width = 153
              Height = 25
              Caption = 'Fichier Excel'
              TabOrder = 13
              OnClick = BitBtn103Click
              Kind = bkHelp
            end
            object EditCompteRecherche: TEdit
              Left = 720
              Top = 19
              Width = 33
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 14
            end
            object AfficheAttenteInventaireGlobale: TPanel
              Left = 88
              Top = 192
              Width = 617
              Height = 33
              TabOrder = 15
              Visible = False
              object Edit2: TEdit
                Left = 144
                Top = 46
                Width = 9
                Height = 19
                Ctl3D = False
                ParentCtl3D = False
                ReadOnly = True
                TabOrder = 1
              end
              object ProgressAfficheAttenteInventaireGlobale: TProgressBar
                Left = 8
                Top = 8
                Width = 601
                Height = 17
                Min = 0
                Max = 100
                Smooth = True
                Step = 1
                TabOrder = 0
              end
            end
            object RBRubriqueTrieTableauInventaireGlobal: TCheckBox
              Left = 777
              Top = 353
              Width = 120
              Height = 17
              Caption = 'Triers/Rque s'#233'lect'#176' !'
              TabOrder = 16
            end
            object EditRubriqueTrieInventaireGlobal: TEdit
              Left = 909
              Top = 352
              Width = 23
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 17
              Text = '1'
            end
            object TypeTrieInventaireGlobal: TRadioGroup
              Left = 776
              Top = 378
              Width = 153
              Height = 63
              Caption = '+'
              TabOrder = 18
            end
            object RadioButton2InventaireGlobal: TRadioButton
              Left = 784
              Top = 392
              Width = 97
              Height = 17
              Caption = 'Descendant (-)'
              TabOrder = 19
              OnClick = RadioButton2InventaireGlobalClick
            end
            object RadioButton3InventaireGlobal: TRadioButton
              Left = 784
              Top = 416
              Width = 89
              Height = 17
              Caption = 'Ascendant (+)'
              Checked = True
              TabOrder = 20
              TabStop = True
              OnClick = RadioButton3InventaireGlobalClick
            end
          end
        end
        object PageGenerateurCompteur: TTabSheet
          Caption = '     G'#233'n'#233'rateur de Compteurs     '
          ImageIndex = 1
          OnShow = PageGenerateurCompteurShow
          object Bevel3: TBevel
            Left = 504
            Top = 48
            Width = 241
            Height = 41
          end
          object Bevel9: TBevel
            Left = 752
            Top = 48
            Width = 241
            Height = 41
          end
          object Bevel10: TBevel
            Left = 1000
            Top = 48
            Width = 241
            Height = 41
          end
          object Bevel4: TBevel
            Left = 0
            Top = 48
            Width = 161
            Height = 41
          end
          object Bevel72: TBevel
            Left = 168
            Top = 48
            Width = 161
            Height = 41
          end
          object Bevel73: TBevel
            Left = 336
            Top = 48
            Width = 161
            Height = 41
          end
          object Bevel74: TBevel
            Left = 0
            Top = 384
            Width = 497
            Height = 241
          end
          object BitBtn9: TBitBtn
            Left = 1008
            Top = 56
            Width = 225
            Height = 25
            Caption = 'Supprimer le Compteur S'#233'lectionn'#233' !'
            ModalResult = 2
            TabOrder = 6
            OnClick = BitBtn9Click
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
          object BitBtn5: TBitBtn
            Left = 760
            Top = 56
            Width = 225
            Height = 25
            Caption = 'Modifier le Compteur S'#233'lectionn'#233' !'
            TabOrder = 5
            OnClick = BitBtn5Click
            Kind = bkRetry
          end
          object BitBtn2: TBitBtn
            Left = 512
            Top = 56
            Width = 227
            Height = 25
            Caption = 'G'#233'n'#233'rer un nouveau Compteur'
            TabOrder = 3
            OnClick = BitBtn2Click
            Kind = bkAll
          end
          object TableauCompteur: TStringGrid
            Left = 504
            Top = 96
            Width = 737
            Height = 531
            ColCount = 8
            Ctl3D = False
            DefaultColWidth = 40
            DefaultRowHeight = 20
            FixedColor = 16777170
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
            ParentCtl3D = False
            TabOrder = 0
            OnClick = TableauCompteurClick
            OnDblClick = TableauCompteurDblClick
            OnDrawCell = TableauCompteurDrawCell
          end
          object Panel2: TPanel
            Left = 504
            Top = 0
            Width = 737
            Height = 41
            BevelInner = bvLowered
            Caption = 'Liste des Compteurs'
            Color = 16777170
            TabOrder = 1
          end
          object AfficheListeArticle: TPanel
            Left = 616
            Top = 136
            Width = 529
            Height = 329
            BevelInner = bvLowered
            Color = 4653055
            TabOrder = 2
            Visible = False
            object TableauListeStockArticle: TStringGrid
              Left = 8
              Top = 56
              Width = 513
              Height = 265
              ColCount = 18
              Ctl3D = False
              DefaultColWidth = 40
              DefaultRowHeight = 20
              FixedColor = 11661808
              RowCount = 2
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSizing, goColSizing, goAlwaysShowEditor]
              ParentCtl3D = False
              TabOrder = 0
              OnKeyDown = TableauListeStockArticleKeyDown
              ColWidths = (
                40
                64
                122
                112
                26
                50
                49
                47
                46
                45
                46
                45
                42
                2
                2
                2
                2
                2)
            end
            object Panel1: TPanel
              Left = 8
              Top = 8
              Width = 513
              Height = 41
              BevelInner = bvLowered
              Caption = 'Liste des Articles'
              Color = 8454143
              TabOrder = 1
            end
          end
          object AfficheOperationCompteur: TPanel
            Left = 616
            Top = 136
            Width = 529
            Height = 329
            BevelInner = bvLowered
            Color = 13303754
            TabOrder = 4
            Visible = False
            OnMouseDown = AfficheOperationCompteurMouseDown
            object Bevel6: TBevel
              Left = 7
              Top = 7
              Width = 514
              Height = 314
            end
            object Bevel5: TBevel
              Left = 16
              Top = 256
              Width = 345
              Height = 57
            end
            object Label1: TLabel
              Left = 95
              Top = 19
              Width = 73
              Height = 13
              Alignment = taRightJustify
              Caption = 'Num Compteur:'
            end
            object Label2: TLabel
              Left = 77
              Top = 43
              Width = 91
              Height = 13
              Alignment = taRightJustify
              Caption = 'Code du Compteur:'
            end
            object Label3: TLabel
              Left = 46
              Top = 67
              Width = 122
              Height = 13
              Alignment = taRightJustify
              Caption = 'D'#233'signation du Compteur:'
            end
            object Label4: TLabel
              Left = 41
              Top = 91
              Width = 127
              Height = 13
              Alignment = taRightJustify
              Caption = 'Identificateur du Compteur:'
            end
            object Label5: TLabel
              Left = 44
              Top = 115
              Width = 124
              Height = 13
              Alignment = taRightJustify
              Caption = 'Code d'#39'Article G'#233'n'#233'rateur:'
            end
            object Label110: TLabel
              Left = 24
              Top = 280
              Width = 67
              Height = 13
              Caption = 'Type Formule:'
            end
            object Bevel89: TBevel
              Left = 368
              Top = 144
              Width = 145
              Height = 169
            end
            object BitBtn3: TBitBtn
              Left = 440
              Top = 16
              Width = 75
              Height = 25
              Caption = 'Annuler'
              ModalResult = 7
              TabOrder = 0
              OnClick = BitBtn3Click
              Glyph.Data = {
                DE010000424DDE01000000000000760000002800000024000000120000000100
                0400000000006801000000000000000000001000000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3333333333333FFFFF333333000033333388888833333333333F888888FFF333
                000033338811111188333333338833FFF388FF33000033381119999111833333
                38F338888F338FF30000339119933331111833338F388333383338F300003391
                13333381111833338F8F3333833F38F3000039118333381119118338F38F3338
                33F8F38F000039183333811193918338F8F333833F838F8F0000391833381119
                33918338F8F33833F8338F8F000039183381119333918338F8F3833F83338F8F
                000039183811193333918338F8F833F83333838F000039118111933339118338
                F3833F83333833830000339111193333391833338F33F8333FF838F300003391
                11833338111833338F338FFFF883F83300003339111888811183333338FF3888
                83FF83330000333399111111993333333388FFFFFF8833330000333333999999
                3333333333338888883333330000333333333333333333333333333333333333
                0000}
              NumGlyphs = 2
            end
            object EditNumCompteur: TEdit
              Left = 176
              Top = 16
              Width = 57
              Height = 19
              Color = 14803425
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 1
            end
            object EditCodeCompteur: TEdit
              Left = 176
              Top = 40
              Width = 97
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 2
              OnKeyDown = EditCodeCompteurKeyDown
            end
            object EditDesignationCompteur: TEdit
              Left = 176
              Top = 64
              Width = 337
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 3
              OnKeyDown = EditDesignationCompteurKeyDown
            end
            object EditIdentificateurCompteur: TEdit
              Left = 176
              Top = 88
              Width = 217
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 4
              OnKeyDown = EditIdentificateurCompteurKeyDown
            end
            object EditCodeArticleGenerateur: TEdit
              Left = 176
              Top = 112
              Width = 97
              Height = 19
              Color = 14079702
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 5
              OnKeyDown = EditCodeArticleGenerateurKeyDown
            end
            object RadioGroup1: TRadioGroup
              Left = 16
              Top = 144
              Width = 345
              Height = 105
              Caption = 'Type d'#39'Indice de Pr'#233'l'#232'vement:'
              TabOrder = 6
            end
            object RBStockRestant: TRadioButton
              Left = 96
              Top = 168
              Width = 177
              Height = 17
              Caption = 'Stock restant.'
              TabOrder = 8
              OnKeyDown = RBStockRestantKeyDown
            end
            object RBCumuleSortie: TRadioButton
              Left = 96
              Top = 192
              Width = 177
              Height = 17
              Caption = 'Cumul des Sorties.'
              TabOrder = 9
              OnKeyDown = RBCumuleSortieKeyDown
            end
            object BitValiderCompteur: TBitBtn
              Left = 376
              Top = 152
              Width = 129
              Height = 153
              Caption = 'Valider'
              TabOrder = 11
              OnClick = BitValiderCompteurClick
              Kind = bkAll
            end
            object EditArticleGenerateur: TEdit
              Left = 272
              Top = 112
              Width = 241
              Height = 19
              Color = 14079702
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 7
            end
            object RBStockSortant: TRadioButton
              Left = 96
              Top = 216
              Width = 177
              Height = 17
              Caption = 'Stock Sortant.'
              TabOrder = 10
              OnKeyDown = RBStockSortantKeyDown
            end
            object EditCodeTypeFormuleCompteur: TEdit
              Left = 96
              Top = 276
              Width = 65
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 12
              OnEnter = EditCodeTypeFormuleCompteurEnter
              OnKeyDown = EditCodeTypeFormuleCompteurKeyDown
            end
            object EditTypeFormuleCompteur: TEdit
              Left = 160
              Top = 276
              Width = 193
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 13
              OnEnter = EditCodeTypeFormuleCompteurEnter
              OnKeyDown = EditCodeTypeFormuleCompteurKeyDown
            end
          end
          object AfficheOptionCompteur: TPanel
            Left = 664
            Top = 176
            Width = 441
            Height = 57
            BevelInner = bvLowered
            Color = 9549311
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 7
            Visible = False
            object Bevel12: TBevel
              Left = 8
              Top = 8
              Width = 425
              Height = 41
            end
            object BitBtn11: TBitBtn
              Left = 16
              Top = 16
              Width = 89
              Height = 25
              Caption = '&Non'
              ModalResult = 7
              TabOrder = 0
              OnClick = BitBtn11Click
              Glyph.Data = {
                DE010000424DDE01000000000000760000002800000024000000120000000100
                0400000000006801000000000000000000001000000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3333333333333FFFFF333333000033333388888833333333333F888888FFF333
                000033338811111188333333338833FFF388FF33000033381119999111833333
                38F338888F338FF30000339119933331111833338F388333383338F300003391
                13333381111833338F8F3333833F38F3000039118333381119118338F38F3338
                33F8F38F000039183333811193918338F8F333833F838F8F0000391833381119
                33918338F8F33833F8338F8F000039183381119333918338F8F3833F83338F8F
                000039183811193333918338F8F833F83333838F000039118111933339118338
                F3833F83333833830000339111193333391833338F33F8333FF838F300003391
                11833338111833338F338FFFF883F83300003339111888811183333338FF3888
                83FF83330000333399111111993333333388FFFFFF8833330000333333999999
                3333333333338888883333330000333333333333333333333333333333333333
                0000}
              NumGlyphs = 2
            end
            object BitOptionCompteur: TBitBtn
              Left = 336
              Top = 16
              Width = 91
              Height = 25
              Caption = 'Valider'
              TabOrder = 1
              OnClick = BitOptionCompteurClick
              Kind = bkAll
            end
          end
          object Panel20: TPanel
            Left = 0
            Top = 0
            Width = 497
            Height = 41
            BevelInner = bvLowered
            Caption = 'Liste Affectation Compteurs'
            Color = 16777170
            TabOrder = 8
          end
          object TableauAffectationCompteur: TStringGrid
            Left = 0
            Top = 96
            Width = 497
            Height = 281
            Ctl3D = False
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
            ParentCtl3D = False
            TabOrder = 9
            OnClick = TableauAffectationCompteurClick
            OnDrawCell = TableauAffectationCompteurDrawCell
            ColWidths = (
              64
              64
              64
              64
              64)
          end
          object BitBtn48: TBitBtn
            Left = 8
            Top = 56
            Width = 145
            Height = 25
            Caption = 'Nouvelle Afectation'
            TabOrder = 10
            OnClick = BitBtn48Click
            Kind = bkAll
          end
          object BitBtn51: TBitBtn
            Left = 176
            Top = 56
            Width = 145
            Height = 25
            Caption = 'Modifier l'#39'Affectation'
            TabOrder = 11
            OnClick = BitBtn51Click
            Kind = bkRetry
          end
          object BitBtn52: TBitBtn
            Left = 344
            Top = 56
            Width = 145
            Height = 25
            Caption = 'Supprimer l'#39'Affectation'
            ModalResult = 2
            TabOrder = 12
            OnClick = BitBtn52Click
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
          object AfficheAffectationCompteur: TPanel
            Left = 56
            Top = 160
            Width = 377
            Height = 169
            BevelInner = bvLowered
            TabOrder = 13
            Visible = False
            OnMouseDown = AfficheAffectationCompteurMouseDown
            object Bevel76: TBevel
              Left = 8
              Top = 8
              Width = 363
              Height = 105
            end
            object Bevel75: TBevel
              Left = 8
              Top = 120
              Width = 363
              Height = 42
            end
            object Label102: TLabel
              Left = 80
              Top = 19
              Width = 25
              Height = 13
              Caption = 'Num:'
            end
            object Label103: TLabel
              Left = 46
              Top = 43
              Width = 59
              Height = 13
              Caption = 'D'#233'signation:'
            end
            object Label104: TLabel
              Left = 14
              Top = 67
              Width = 93
              Height = 13
              Caption = 'Comptes Concern'#233':'
            end
            object Label106: TLabel
              Left = 62
              Top = 91
              Width = 46
              Height = 13
              Caption = 'Structure:'
            end
            object EditNumProjetCompteur: TEdit
              Left = 112
              Top = 88
              Width = 57
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 8
            end
            object BitBtn53: TBitBtn
              Left = 16
              Top = 128
              Width = 75
              Height = 25
              TabOrder = 0
              OnClick = BitBtn53Click
              Kind = bkCancel
            end
            object BitAffectationCompteur: TBitBtn
              Left = 264
              Top = 128
              Width = 99
              Height = 25
              TabOrder = 1
              OnClick = BitAffectationCompteurClick
              Kind = bkAll
            end
            object EditNumAffectationCompteur: TEdit
              Left = 112
              Top = 16
              Width = 57
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 2
              OnKeyDown = EditNumAffectationCompteurKeyDown
            end
            object EditDesignationAffectationCompteur: TEdit
              Left = 112
              Top = 40
              Width = 249
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 3
              OnKeyDown = EditDesignationAffectationCompteurKeyDown
            end
            object EditComptesConcerne: TEdit
              Left = 112
              Top = 64
              Width = 209
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 4
              OnEnter = EditComptesConcerneEnter
              OnKeyDown = EditComptesConcerneKeyDown
            end
            object EditOrdreCompteConcerne: TEdit
              Left = 322
              Top = 64
              Width = 25
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 5
              Text = '6'
            end
            object UpDown7: TUpDown
              Left = 347
              Top = 64
              Width = 19
              Height = 19
              Associate = EditOrdreCompteConcerne
              Min = 1
              Max = 6
              Position = 6
              TabOrder = 6
              Wrap = False
              OnClick = UpDown7Click
            end
            object EditProjetCompteur: TEdit
              Left = 112
              Top = 88
              Width = 249
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 7
              OnEnter = EditProjetCompteurEnter
              OnKeyDown = EditProjetCompteurKeyDown
              OnKeyUp = EditProjetCompteurKeyUp
            end
          end
          object TableauCompteConserne: TStringGrid
            Left = 8
            Top = 441
            Width = 361
            Height = 296
            Color = 8454016
            Ctl3D = False
            DefaultColWidth = 30
            DefaultRowHeight = 20
            FixedColor = 6029147
            RowCount = 2
            ParentCtl3D = False
            TabOrder = 14
            Visible = False
            OnDblClick = TableauCompteConserneDblClick
            OnDrawCell = TableauCompteConserneDrawCell
            OnKeyDown = TableauCompteConserneKeyDown
            ColWidths = (
              30
              30
              30
              30
              30)
            RowHeights = (
              20
              20)
          end
          object TableauProjetCompteur: TStringGrid
            Left = 224
            Top = 480
            Width = 529
            Height = 297
            Color = 12320767
            ColCount = 2
            Ctl3D = False
            DefaultColWidth = 50
            DefaultRowHeight = 20
            FixedColor = 8454143
            RowCount = 2
            ParentCtl3D = False
            TabOrder = 15
            Visible = False
            OnDrawCell = TableauProjetCompteurDrawCell
            OnKeyDown = TableauProjetCompteurKeyDown
            RowHeights = (
              20
              20)
          end
          object TableauTypeFormuleCompteur: TStringGrid
            Left = 712
            Top = 432
            Width = 481
            Height = 185
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 16
            Visible = False
            OnDblClick = TableauTypeFormuleCompteurDblClick
            OnDrawCell = TableauTypeFormuleCompteurDrawCell
            OnKeyDown = TableauTypeFormuleCompteurKeyDown
          end
        end
        object PageGenerateurEquipe: TTabSheet
          Caption = '     G'#233'n'#233'rateur d'#39'Equipes     '
          ImageIndex = 2
          OnShow = PageGenerateurEquipeShow
          object Bevel19: TBevel
            Left = 664
            Top = 48
            Width = 657
            Height = 41
          end
          object Bevel173: TBevel
            Left = 0
            Top = 48
            Width = 649
            Height = 41
          end
          object TableauEquipe: TStringGrid
            Left = 0
            Top = 96
            Width = 649
            Height = 529
            ColCount = 7
            Ctl3D = False
            DefaultColWidth = 40
            DefaultRowHeight = 20
            FixedColor = 8454016
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
            ParentCtl3D = False
            TabOrder = 0
            OnClick = TableauEquipeClick
            OnDrawCell = TableauEquipeDrawCell
            OnKeyPress = TableauEquipeKeyPress
          end
          object TableauEffectifEquipe: TStringGrid
            Left = 664
            Top = 96
            Width = 657
            Height = 529
            ColCount = 12
            Ctl3D = False
            DefaultColWidth = 40
            DefaultRowHeight = 20
            FixedColor = 16777088
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
            ParentCtl3D = False
            TabOrder = 1
            OnClick = TableauEffectifEquipeClick
            OnDrawCell = TableauEffectifEquipeDrawCell
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
            RowHeights = (
              20
              20)
          end
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 649
            Height = 41
            BevelInner = bvLowered
            Caption = 'Liste des Equipes'
            Color = 8454016
            TabOrder = 2
          end
          object Panel5: TPanel
            Left = 664
            Top = 0
            Width = 657
            Height = 41
            BevelInner = bvLowered
            Caption = 'Liste Effectifs par Equipe'
            Color = 16777088
            TabOrder = 3
          end
          object Panel7: TPanel
            Left = 652
            Top = 0
            Width = 9
            Height = 633
            BevelWidth = 5
            Color = 8421631
            TabOrder = 4
          end
          object AfficheOptionsEquipe: TPanel
            Left = 176
            Top = 120
            Width = 361
            Height = 217
            BevelInner = bvLowered
            BevelWidth = 5
            Color = 8454143
            TabOrder = 5
            Visible = False
            object Bevel7: TBevel
              Left = 16
              Top = 16
              Width = 329
              Height = 137
            end
            object Label6: TLabel
              Left = 57
              Top = 35
              Width = 55
              Height = 13
              Alignment = taRightJustify
              Caption = 'NumEquipe'
            end
            object Label7: TLabel
              Left = 54
              Top = 59
              Width = 58
              Height = 13
              Alignment = taRightJustify
              Caption = 'CodeEquipe'
            end
            object Label8: TLabel
              Left = 23
              Top = 83
              Width = 89
              Height = 13
              Alignment = taRightJustify
              Caption = 'DesignationEquipe'
            end
            object Label9: TLabel
              Left = 54
              Top = 107
              Width = 58
              Height = 13
              Alignment = taRightJustify
              Caption = 'HeureDebut'
            end
            object Label10: TLabel
              Left = 205
              Top = 107
              Width = 43
              Height = 13
              Alignment = taRightJustify
              Caption = 'HeureFin'
            end
            object Label11: TLabel
              Left = 40
              Top = 131
              Width = 72
              Height = 13
              Alignment = taRightJustify
              Caption = 'TacheOccuper'
            end
            object Bevel14: TBevel
              Left = 16
              Top = 160
              Width = 329
              Height = 41
            end
            object EditNumEquipe: TEdit
              Left = 120
              Top = 32
              Width = 57
              Height = 19
              Color = 14211288
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 0
            end
            object EditCodeEquipe: TEdit
              Left = 120
              Top = 56
              Width = 97
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 1
              OnKeyDown = EditCodeEquipeKeyDown
            end
            object EditDesignationEquipe: TEdit
              Left = 120
              Top = 80
              Width = 217
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 2
              OnKeyDown = EditDesignationEquipeKeyDown
            end
            object EditHeureDebut: TMaskEdit
              Left = 120
              Top = 104
              Width = 62
              Height = 19
              BevelInner = bvLowered
              BevelKind = bkFlat
              Ctl3D = False
              EditMask = '!99:99:99;1;_'
              MaxLength = 8
              ParentCtl3D = False
              TabOrder = 3
              Text = '  :  :  '
              OnKeyDown = EditHeureDebutKeyDown
            end
            object EditHeureFin: TMaskEdit
              Left = 256
              Top = 104
              Width = 63
              Height = 19
              BevelKind = bkFlat
              Ctl3D = False
              EditMask = '!99:99:99;1;_'
              MaxLength = 8
              ParentCtl3D = False
              TabOrder = 4
              Text = '  :  :  '
              OnKeyDown = EditHeureFinKeyDown
            end
            object EditTacheOccuper: TEdit
              Left = 120
              Top = 128
              Width = 217
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 5
              OnKeyDown = EditTacheOccuperKeyDown
            end
            object BitBtn4: TBitBtn
              Left = 24
              Top = 168
              Width = 75
              Height = 25
              TabOrder = 6
              OnClick = BitBtn4Click
              Kind = bkCancel
            end
            object BitValiderEquipe: TBitBtn
              Left = 264
              Top = 168
              Width = 75
              Height = 25
              Caption = 'Valider'
              TabOrder = 7
              OnClick = BitValiderEquipeClick
              Kind = bkAll
            end
          end
          object BitBtn18: TBitBtn
            Left = 672
            Top = 56
            Width = 257
            Height = 25
            Caption = 'Ajouter un individu '#224' l'#39'Equipe s'#233'lectionn'#233' !'
            TabOrder = 7
            OnClick = BitBtn18Click
            Kind = bkAll
          end
          object BitBtn20: TBitBtn
            Left = 1152
            Top = 56
            Width = 161
            Height = 25
            Caption = 'Supprimer l'#39'individu'
            ModalResult = 2
            TabOrder = 8
            OnClick = BitBtn20Click
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
          object AfficheOptionsEffectifEquipe: TPanel
            Left = 432
            Top = 152
            Width = 481
            Height = 353
            BevelInner = bvLowered
            Color = 16777151
            TabOrder = 6
            Visible = False
            object Bevel172: TBevel
              Left = 368
              Top = 8
              Width = 106
              Height = 41
            end
            object TableauEffectif: TStringGrid
              Left = 8
              Top = 56
              Width = 465
              Height = 289
              ColCount = 10
              Ctl3D = False
              DefaultColWidth = 40
              DefaultRowHeight = 18
              FixedColor = 16777151
              RowCount = 20
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
              ParentCtl3D = False
              TabOrder = 0
              OnDrawCell = TableauEffectifDrawCell
              OnKeyDown = TableauEffectifKeyDown
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
            object BitBtn109: TBitBtn
              Left = 376
              Top = 16
              Width = 91
              Height = 25
              TabOrder = 1
              OnClick = BitBtn109Click
              Kind = bkCancel
            end
          end
          object AfficheOptionEffectifEquipe: TPanel
            Left = 584
            Top = 256
            Width = 361
            Height = 57
            BevelInner = bvLowered
            Color = 16777151
            TabOrder = 9
            Visible = False
            object Bevel20: TBevel
              Left = 8
              Top = 8
              Width = 345
              Height = 42
            end
            object BitOptionEffectifEquipe: TBitBtn
              Left = 248
              Top = 16
              Width = 99
              Height = 25
              Caption = 'Valider'
              TabOrder = 0
              OnClick = BitOptionEffectifEquipeClick
              Kind = bkAll
            end
            object BitBtn21: TBitBtn
              Left = 16
              Top = 16
              Width = 75
              Height = 25
              Caption = 'Annuler'
              ModalResult = 2
              TabOrder = 1
              OnClick = BitBtn21Click
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
          object RBAfficherUniquementEquipe: TCheckBox
            Left = 8
            Top = 61
            Width = 241
            Height = 17
            Caption = 'Afficher uniquement lles individus de l'#39#233'quipe'
            TabOrder = 10
            OnClick = RBAfficherUniquementEquipeClick
          end
        end
        object PageGenerateurUniteFonds: TTabSheet
          Caption = '     G'#233'n'#233'rateur d'#39'unit'#233' de Fonds     '
          ImageIndex = 3
          OnShow = PageGenerateurUniteFondsShow
          object Bevel23: TBevel
            Left = 384
            Top = 48
            Width = 137
            Height = 41
          end
          object Bevel27: TBevel
            Left = 616
            Top = 48
            Width = 145
            Height = 41
          end
          object Bevel28: TBevel
            Left = 856
            Top = 48
            Width = 137
            Height = 41
          end
          object Bevel91: TBevel
            Left = 1208
            Top = 8
            Width = 106
            Height = 617
          end
          object TableauTypeUniteFonds: TStringGrid
            Left = 0
            Top = 56
            Width = 361
            Height = 569
            ColCount = 4
            Ctl3D = False
            DefaultColWidth = 40
            DefaultRowHeight = 20
            FixedColor = 16777088
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
            ParentCtl3D = False
            TabOrder = 2
            OnClick = TableauTypeUniteFondsClick
            OnDrawCell = TableauTypeUniteFondsDrawCell
            OnKeyPress = TableauTypeUniteFondsKeyPress
          end
          object TableauUniteFonds: TStringGrid
            Left = 384
            Top = 96
            Width = 817
            Height = 529
            ColCount = 12
            Ctl3D = False
            DefaultColWidth = 40
            DefaultRowHeight = 20
            FixedColor = 8454143
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
            ParentCtl3D = False
            TabOrder = 0
            OnClick = TableauUniteFondsClick
            OnDrawCell = TableauUniteFondsDrawCell
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
            RowHeights = (
              20
              20)
          end
          object Panel8: TPanel
            Left = 368
            Top = 0
            Width = 9
            Height = 625
            BevelWidth = 5
            Color = 8421631
            TabOrder = 3
          end
          object AfficheOptionsUniteFonds: TPanel
            Left = 480
            Top = 136
            Width = 441
            Height = 353
            BevelInner = bvLowered
            BevelWidth = 3
            Color = 8454143
            UseDockManager = False
            TabOrder = 1
            Visible = False
            OnMouseDown = AfficheOptionsUniteFondsMouseDown
            object Bevel18: TBevel
              Left = 8
              Top = 7
              Width = 425
              Height = 282
            end
            object Bevel15: TBevel
              Left = 8
              Top = 296
              Width = 425
              Height = 42
            end
            object Label12: TLabel
              Left = 141
              Top = 20
              Width = 25
              Height = 13
              Alignment = taRightJustify
              Caption = 'Num:'
            end
            object Label13: TLabel
              Left = 63
              Top = 44
              Width = 103
              Height = 13
              Alignment = taRightJustify
              Caption = 'Code Unite de Fonds:'
            end
            object Label14: TLabel
              Left = 13
              Top = 68
              Width = 153
              Height = 13
              Alignment = taRightJustify
              Caption = 'D'#233'signation de l'#39'Unite de Fonds:'
            end
            object Label15: TLabel
              Left = 45
              Top = 92
              Width = 121
              Height = 13
              Alignment = taRightJustify
              Caption = 'D'#233'signation de la Devise:'
            end
            object Label16: TLabel
              Left = 78
              Top = 116
              Width = 88
              Height = 13
              Alignment = taRightJustify
              Caption = 'Sigle de la Devise:'
            end
            object BitBtn17: TBitBtn
              Left = 16
              Top = 304
              Width = 81
              Height = 25
              TabOrder = 0
              OnClick = BitBtn17Click
              Kind = bkCancel
            end
            object BitValiderUniteFonds: TBitBtn
              Left = 320
              Top = 304
              Width = 107
              Height = 25
              Caption = 'Valider'
              TabOrder = 1
              OnClick = BitValiderUniteFondsClick
              Kind = bkAll
            end
            object EditNumUniteFonds: TEdit
              Left = 176
              Top = 16
              Width = 57
              Height = 19
              Color = 14540253
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 2
              OnDblClick = EditNumUniteFondsDblClick
            end
            object EditCodeUniteFonds: TEdit
              Left = 176
              Top = 40
              Width = 113
              Height = 19
              Color = 14540253
              Ctl3D = False
              MaxLength = 10
              ParentCtl3D = False
              TabOrder = 3
              OnKeyDown = EditCodeUniteFondsKeyDown
            end
            object EditDesignationUniteFonds: TEdit
              Left = 176
              Top = 64
              Width = 249
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 4
              OnExit = EditDesignationUniteFondsExit
              OnKeyDown = EditDesignationUniteFondsKeyDown
            end
            object EditSigleDevise: TEdit
              Left = 176
              Top = 112
              Width = 73
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 5
              OnKeyDown = EditSigleDeviseKeyDown
            end
            object EditDesignationDevise: TComboBox
              Left = 176
              Top = 88
              Width = 145
              Height = 21
              BevelKind = bkFlat
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 6
              Text = 'Dinars Alg'#233'rien'
              OnExit = EditDesignationDeviseExit
              OnKeyDown = EditDesignationDeviseKeyDown
              OnSelect = EditDesignationDeviseSelect
              Items.Strings = (
                'Dinars Alg'#233'rien'
                'Euro')
            end
            object RadioGroup2: TRadioGroup
              Left = 16
              Top = 136
              Width = 409
              Height = 145
              Caption = 'Type de Valeur:'
              TabOrder = 7
            end
            object RBValeurPrecisUniteFonds: TRadioButton
              Left = 24
              Top = 160
              Width = 113
              Height = 17
              Caption = 'Valeur Pr'#233'cise:'
              TabOrder = 8
              OnClick = RBValeurPrecisUniteFondsClick
            end
            object RBValeurCalculeeUniteFonds: TRadioButton
              Left = 24
              Top = 192
              Width = 113
              Height = 17
              Caption = 'Valeur Calcul'#233'e:'
              TabOrder = 9
              OnClick = RBValeurCalculeeUniteFondsClick
            end
            object AfficheValeurPrecise: TPanel
              Left = 168
              Top = 152
              Width = 249
              Height = 30
              BevelInner = bvLowered
              Color = 8454143
              TabOrder = 10
              object Label48: TLabel
                Left = 7
                Top = 9
                Width = 122
                Height = 13
                Alignment = taRightJustify
                Caption = 'Valeur Mon'#233'taire Unitaire:'
              end
              object EditValeurMonetaireUnitaire: TEdit
                Left = 136
                Top = 6
                Width = 73
                Height = 19
                Ctl3D = False
                ParentCtl3D = False
                TabOrder = 0
                OnKeyDown = EditValeurMonetaireUnitaireKeyDown
              end
            end
            object AfficheValeurCalculee: TPanel
              Left = 168
              Top = 190
              Width = 249
              Height = 83
              BevelInner = bvLowered
              Color = 8454143
              TabOrder = 11
              object Label55: TLabel
                Left = 7
                Top = 11
                Width = 75
                Height = 13
                Alignment = taRightJustify
                Caption = 'Type de Proces'
              end
              object Label53: TLabel
                Left = 7
                Top = 38
                Width = 81
                Height = 13
                Alignment = taRightJustify
                Caption = 'Fichier consern'#233':'
              end
              object Label54: TLabel
                Left = 11
                Top = 62
                Width = 77
                Height = 13
                Alignment = taRightJustify
                Caption = 'Mode Paiement:'
              end
              object EditTypeProcesUniteFonds: TComboBox
                Left = 96
                Top = 8
                Width = 145
                Height = 21
                BevelKind = bkFlat
                ItemHeight = 13
                ItemIndex = 0
                TabOrder = 0
                Text = 'Business'
                OnKeyDown = EditTypeProcesUniteFondsKeyDown
                Items.Strings = (
                  'Business'
                  'Commercial'
                  'Paie'
                  'Comptabilit'#233
                  'Social')
              end
              object EditFichierConcerneUniteFonds: TComboBox
                Left = 96
                Top = 30
                Width = 145
                Height = 21
                BevelKind = bkFlat
                ItemHeight = 13
                ItemIndex = 0
                TabOrder = 1
                Text = 'FFournisseur'
                OnKeyDown = EditFichierConcerneUniteFondsKeyDown
                Items.Strings = (
                  'FFournisseur'
                  'FClient'
                  'FPersonnel')
              end
              object EditModePaiement: TComboBox
                Left = 96
                Top = 54
                Width = 145
                Height = 21
                BevelInner = bvLowered
                BevelKind = bkFlat
                ItemHeight = 13
                ItemIndex = 0
                TabOrder = 2
                Text = 'Ch'#232'que'
                OnKeyDown = EditModePaiementKeyDown
                Items.Strings = (
                  'Ch'#232'que'
                  'Esp'#232'ce'
                  'Virement'
                  'Bon'
                  'A Terme')
              end
            end
            object EditCodeUniteFondsOriginale: TEdit
              Left = 312
              Top = 40
              Width = 113
              Height = 19
              Color = 14540253
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 12
            end
            object BRNouvelleUniteFonds: TCheckBox
              Left = 235
              Top = 17
              Width = 14
              Height = 17
              Enabled = False
              TabOrder = 13
            end
          end
          object Panel9: TPanel
            Left = 0
            Top = 0
            Width = 361
            Height = 49
            BevelInner = bvLowered
            Caption = 'Type Unit'#233' de Fonds'
            Color = 16777088
            TabOrder = 4
          end
          object Panel10: TPanel
            Left = 384
            Top = 0
            Width = 609
            Height = 41
            BevelInner = bvLowered
            Caption = 'Liste Unit'#233' de Fonds'
            Color = 8454143
            TabOrder = 5
            object BitBtn26: TBitBtn
              Left = 496
              Top = 8
              Width = 107
              Height = 25
              Caption = 'Afficher Tous !'
              TabOrder = 0
              OnClick = BitBtn26Click
              Kind = bkHelp
            end
          end
          object BitBtn22: TBitBtn
            Left = 392
            Top = 56
            Width = 121
            Height = 25
            Caption = 'Nouvelle'
            TabOrder = 6
            OnClick = BitBtn22Click
            Kind = bkAll
          end
          object BitBtn23: TBitBtn
            Left = 864
            Top = 56
            Width = 121
            Height = 25
            Caption = 'Supprimer'
            ModalResult = 2
            TabOrder = 7
            OnClick = BitBtn23Click
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
          object BitBtn24: TBitBtn
            Left = 624
            Top = 56
            Width = 129
            Height = 25
            Caption = 'Modifier'
            TabOrder = 8
            OnClick = BitBtn24Click
            Kind = bkRetry
          end
          object AfficheOptionsTypeUniteFonds: TPanel
            Left = 56
            Top = 152
            Width = 249
            Height = 137
            BevelInner = bvLowered
            BevelWidth = 3
            Color = 16777088
            TabOrder = 9
            Visible = False
            OnMouseDown = AfficheOptionsTypeUniteFondsMouseDown
            object Bevel29: TBevel
              Left = 8
              Top = 8
              Width = 233
              Height = 81
            end
            object Label49: TLabel
              Left = 66
              Top = 20
              Width = 52
              Height = 13
              Alignment = taRightJustify
              Caption = 'Num Type:'
            end
            object Label52: TLabel
              Left = 15
              Top = 44
              Width = 103
              Height = 13
              Alignment = taRightJustify
              Caption = 'CodeTypeUniteFonds'
            end
            object DesignationTypeUniteFonds: TLabel
              Left = 15
              Top = 68
              Width = 103
              Height = 13
              Alignment = taRightJustify
              Caption = 'Code Unite de Fonds:'
            end
            object Bevel30: TBevel
              Left = 8
              Top = 96
              Width = 233
              Height = 41
            end
            object EditNumTypeUniteFonds: TEdit
              Left = 128
              Top = 16
              Width = 65
              Height = 19
              Color = 14540253
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 0
            end
            object EditCodeTypeUniteFonds: TEdit
              Left = 128
              Top = 40
              Width = 65
              Height = 19
              Ctl3D = False
              MaxLength = 5
              ParentCtl3D = False
              TabOrder = 1
              OnKeyDown = EditCodeTypeUniteFondsKeyDown
            end
            object EditDesignationTypeUniteFonds: TEdit
              Left = 128
              Top = 64
              Width = 105
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 2
              OnKeyDown = EditDesignationTypeUniteFondsKeyDown
            end
            object BitBtn25: TBitBtn
              Left = 16
              Top = 104
              Width = 75
              Height = 25
              TabOrder = 3
              OnClick = BitBtn25Click
              Kind = bkCancel
            end
            object BitValiderTypeUniteFonds: TBitBtn
              Left = 160
              Top = 104
              Width = 75
              Height = 25
              Caption = 'Valider'
              TabOrder = 4
              OnClick = BitValiderTypeUniteFondsClick
              Kind = bkAll
            end
          end
          object TableauIndiceNumUniteFonds: TStringGrid
            Left = 1216
            Top = 16
            Width = 89
            Height = 601
            ColCount = 1
            Ctl3D = False
            FixedCols = 0
            ParentCtl3D = False
            TabOrder = 10
            ColWidths = (
              61)
          end
        end
      end
      object AfficheAdresseFichierConcerne: TPanel
        Left = 632
        Top = 0
        Width = 705
        Height = 17
        Alignment = taLeftJustify
        BevelInner = bvLowered
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object PageGenerateurParametres: TTabSheet
      Caption = 'G'#233'n'#233'rateur des param'#232'tres'
      ImageIndex = 2
      object PageControl5: TPageControl
        Left = 0
        Top = 0
        Width = 1097
        Height = 657
        ActivePage = PageTypeTiersParProces
        TabIndex = 0
        TabOrder = 0
        object PageTypeTiersParProces: TTabSheet
          Caption = 'G'#233'n'#233'rateur Type Tiers Par Proces'
          OnShow = PageTypeTiersParProcesShow
          object Bevel45: TBevel
            Left = 376
            Top = 0
            Width = 617
            Height = 41
          end
          object TableauTypeFichierTiers: TStringGrid
            Left = 0
            Top = 80
            Width = 993
            Height = 546
            ColCount = 4
            Ctl3D = False
            RowCount = 2
            ParentCtl3D = False
            TabOrder = 0
            OnClick = TableauTypeFichierTiersClick
            OnDblClick = TableauTypeFichierTiersDblClick
            OnDrawCell = TableauTypeFichierTiersDrawCell
            OnKeyPress = TableauTypeFichierTiersKeyPress
          end
          object Panel17: TPanel
            Left = 0
            Top = 0
            Width = 369
            Height = 41
            Alignment = taLeftJustify
            BevelInner = bvLowered
            TabOrder = 1
            object Label83: TLabel
              Left = 8
              Top = 16
              Width = 81
              Height = 13
              Caption = 'Liste des Proces:'
            end
            object Label87: TLabel
              Left = 259
              Top = 16
              Width = 82
              Height = 13
              Caption = 'N'#176' Rubrique Trie:'
            end
            object EditSelectTypeProces: TComboBox
              Left = 96
              Top = 12
              Width = 145
              Height = 21
              BevelKind = bkFlat
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 0
              Text = 'Tous'
              OnSelect = EditSelectTypeProcesSelect
              Items.Strings = (
                'Tous'
                'Business'
                'Commercial'
                'Paie'
                'Comptabilit'#233
                'Social')
            end
            object EditIndiceRubriqueTrie: TEdit
              Left = 345
              Top = 12
              Width = 17
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 1
              Text = '2'
            end
          end
          object Panel18: TPanel
            Left = 0
            Top = 48
            Width = 993
            Height = 25
            BevelInner = bvLowered
            Caption = 'Liste de Type de Fichier Tiers'
            Color = 8454143
            TabOrder = 2
          end
          object AfficheOperationTypeFichierTiers: TPanel
            Left = 344
            Top = 192
            Width = 473
            Height = 193
            BevelInner = bvLowered
            Color = 8454143
            TabOrder = 3
            Visible = False
            OnMouseDown = AfficheOperationTypeFichierTiersMouseDown
            object Bevel44: TBevel
              Left = 8
              Top = 8
              Width = 457
              Height = 129
            end
            object Label84: TLabel
              Left = 16
              Top = 16
              Width = 104
              Height = 13
              Caption = 'OrdreTypeFichierTiers'
            end
            object Label85: TLabel
              Left = 64
              Top = 40
              Width = 57
              Height = 13
              Caption = 'TypeProces'
            end
            object Label86: TLabel
              Left = 32
              Top = 64
              Width = 83
              Height = 13
              Caption = 'Fichier Concerne:'
            end
            object TitreEditBaseAvis: TLabel
              Left = 64
              Top = 91
              Width = 50
              Height = 13
              Caption = 'Base Avis:'
            end
            object Bevel107: TBevel
              Left = 8
              Top = 144
              Width = 457
              Height = 41
            end
            object EditOrdreTypeFichierTiers: TEdit
              Left = 128
              Top = 16
              Width = 81
              Height = 19
              Color = 14211288
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 0
            end
            object EditTypeProcesTypeFichierTiers: TEdit
              Left = 128
              Top = 40
              Width = 177
              Height = 19
              Color = 14211288
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 1
            end
            object EditFichierConcerneTypeFichierTiers: TEdit
              Left = 128
              Top = 64
              Width = 177
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 2
              OnKeyDown = EditFichierConcerneTypeFichierTiersKeyDown
            end
            object BitBtn31: TBitBtn
              Left = 16
              Top = 152
              Width = 75
              Height = 25
              TabOrder = 3
              OnClick = BitBtn31Click
              Kind = bkCancel
            end
            object BitOperationTypeFichierTiers: TBitBtn
              Left = 360
              Top = 152
              Width = 99
              Height = 25
              TabOrder = 4
              OnClick = BitOperationTypeFichierTiersClick
              Kind = bkAll
            end
            object EditBaseAvis: TComboBox
              Left = 128
              Top = 88
              Width = 329
              Height = 21
              BevelKind = bkFlat
              ItemHeight = 13
              TabOrder = 5
              OnKeyDown = EditBaseAvisKeyDown
              OnKeyPress = EditBaseAvisKeyPress
              OnSelect = EditBaseAvisSelect
            end
            object EditAddBaseAvis: TEdit
              Left = 144
              Top = 112
              Width = 313
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 6
            end
            object EditOperationBaseAvis: TEdit
              Left = 128
              Top = 112
              Width = 17
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 7
            end
          end
        end
        object PageBaseAvis: TTabSheet
          Caption = '     G'#233'n'#233'ration Base Avis     '
          ImageIndex = 1
          OnShow = PageBaseAvisShow
          object Bevel126: TBevel
            Left = 768
            Top = 456
            Width = 153
            Height = 33
          end
          object Bevel125: TBevel
            Left = 768
            Top = 40
            Width = 145
            Height = 33
          end
          object Label127: TLabel
            Left = 131
            Top = 16
            Width = 82
            Height = 13
            Caption = 'N'#176' Rubrique Trie:'
          end
          object Label147: TLabel
            Left = 11
            Top = 16
            Width = 53
            Height = 13
            Caption = 'Type Data:'
          end
          object Label148: TLabel
            Left = 776
            Top = 48
            Width = 39
            Height = 13
            Caption = 'Ann'#233'es:'
          end
          object Label149: TLabel
            Left = 776
            Top = 464
            Width = 59
            Height = 13
            Caption = 'P'#176' End Max:'
          end
          object Bevel127: TBevel
            Left = 768
            Top = 416
            Width = 153
            Height = 33
          end
          object Label150: TLabel
            Left = 776
            Top = 424
            Width = 64
            Height = 13
            Caption = 'P'#176' Begin Min:'
          end
          object Bevel148: TBevel
            Left = 768
            Top = 496
            Width = 153
            Height = 41
          end
          object TableauBaseAvis: TStringGrid
            Left = 0
            Top = 40
            Width = 761
            Height = 489
            ColCount = 4
            Ctl3D = False
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
            ParentCtl3D = False
            TabOrder = 0
            OnClick = TableauBaseAvisClick
            OnDrawCell = TableauBaseAvisDrawCell
            OnKeyPress = TableauBaseAvisKeyPress
          end
          object AfficheOperationBaseAvis: TPanel
            Left = 160
            Top = 144
            Width = 337
            Height = 121
            BevelInner = bvLowered
            Color = 8454143
            TabOrder = 1
            Visible = False
            object Bevel108: TBevel
              Left = 8
              Top = 8
              Width = 321
              Height = 57
            end
            object Label125: TLabel
              Left = 16
              Top = 19
              Width = 14
              Height = 13
              Caption = 'P'#176':'
            end
            object Label126: TLabel
              Left = 16
              Top = 43
              Width = 50
              Height = 13
              Caption = 'Base Avis:'
            end
            object Bevel109: TBevel
              Left = 8
              Top = 72
              Width = 321
              Height = 41
            end
            object BitBtn70: TBitBtn
              Left = 16
              Top = 80
              Width = 75
              Height = 25
              TabOrder = 0
              OnClick = BitBtn70Click
              Kind = bkCancel
            end
            object BitOperationBaseAvis: TBitBtn
              Left = 232
              Top = 80
              Width = 91
              Height = 25
              TabOrder = 1
              OnClick = BitOperationBaseAvisClick
              Kind = bkAll
            end
            object EditPositionBaseAvis: TEdit
              Left = 72
              Top = 16
              Width = 49
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 2
            end
            object EditDesignationBaseAvis: TEdit
              Left = 72
              Top = 40
              Width = 249
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 3
            end
          end
          object EditIndiceRubriqueTrieBaseAvis: TEdit
            Left = 217
            Top = 12
            Width = 16
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 2
            Text = '1'
          end
          object EditTypeDataTrieBaseAvis: TEdit
            Left = 72
            Top = 12
            Width = 41
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 3
            Text = 'Num'
          end
          object TableauPositionAvisParPeriode: TStringGrid
            Left = 768
            Top = 80
            Width = 209
            Height = 329
            ColCount = 3
            Ctl3D = False
            DefaultColWidth = 60
            RowCount = 13
            ParentCtl3D = False
            TabOrder = 4
            OnDrawCell = TableauPositionAvisParPeriodeDrawCell
          end
          object EditAnnees: TComboBox
            Left = 826
            Top = 46
            Width = 79
            Height = 21
            BevelKind = bkFlat
            Ctl3D = False
            ItemHeight = 13
            ParentCtl3D = False
            TabOrder = 5
            OnChange = EditAnneesChange
            OnKeyPress = EditAnneesKeyPress
          end
          object EditIEndMax: TEdit
            Left = 848
            Top = 461
            Width = 65
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 6
            Text = '999999999'
          end
          object EditIBeginMin: TEdit
            Left = 848
            Top = 421
            Width = 65
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 7
            Text = '0'
          end
          object AfficherAdresseFBaseAvis: TPanel
            Left = 248
            Top = 8
            Width = 729
            Height = 25
            BevelInner = bvLowered
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 8
          end
          object BitBtn104: TBitBtn
            Left = 776
            Top = 504
            Width = 137
            Height = 25
            Caption = 'Mise '#224' jour positions'
            TabOrder = 9
            OnClick = BitBtn104Click
            Kind = bkHelp
          end
        end
      end
    end
  end
  object AfficheIndiqueArchivePhoto: TPanel
    Left = 32
    Top = 368
    Width = 265
    Height = 297
    BevelInner = bvLowered
    Color = clSilver
    TabOrder = 1
    Visible = False
    OnMouseDown = AfficheIndiqueArchivePhotoMouseDown
    object ArchivePhoto: TImage
      Left = 8
      Top = 40
      Width = 250
      Height = 250
      Stretch = True
      OnDblClick = ArchivePhotoDblClick
    end
    object BitBtn78: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      OnClick = BitBtn78Click
      Kind = bkCancel
    end
    object BitRedimension: TBitBtn
      Left = 192
      Top = 8
      Width = 67
      Height = 25
      Caption = '<----------'
      TabOrder = 1
      OnClick = BitRedimensionClick
      Kind = bkHelp
      Margin = 0
    end
  end
  object TimerAfficheMessage: TTimer
    Enabled = False
    Interval = 150
    OnTimer = TimerAfficheMessageTimer
    Left = 1088
    Top = 8
  end
  object TimerAnalyseStock: TTimer
    Enabled = False
    Interval = 500
    OnTimer = TimerAnalyseStockTimer
    Left = 1056
    Top = 8
  end
  object EnregistrerFichier: TSaveDialog
    Left = 1000
    Top = 16
  end
  object OuvrirFichier: TOpenDialog
    Left = 968
    Top = 16
  end
  object TimerListeTypeAvis: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerListeTypeAvisTimer
    Left = 1136
    Top = 56
  end
  object TimerAfficherInformationStock: TTimer
    Enabled = False
    Interval = 50
    OnTimer = TimerAfficherInformationStockTimer
    Left = 1296
    Top = 432
  end
  object TimerADDFichierConcerne: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerADDFichierConcerneTimer
    Left = 1144
    Top = 8
  end
  object TimerADDBaseAvis: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerADDBaseAvisTimer
    Left = 1184
    Top = 8
  end
  object TimerLancerInventaireGlobal: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerLancerInventaireGlobalTimer
    Left = 768
    Top = 16
  end
end
