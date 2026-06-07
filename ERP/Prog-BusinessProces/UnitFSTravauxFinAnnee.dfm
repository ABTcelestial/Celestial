object FSTravauxFinAnnee: TFSTravauxFinAnnee
  Left = 4
  Top = 1
  Width = 1367
  Height = 727
  Caption = 'Travaux de fin d'#39'ann'#233'e:'
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
    Left = 8
    Top = 8
    Width = 1329
    Height = 673
    ActivePage = PageControleDonnees
    TabIndex = 0
    TabOrder = 0
    object PageControleDonnees: TTabSheet
      Caption = '     Contr'#244'le de donn'#233'es     '
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 1321
        Height = 641
        ActivePage = PageSyntheseTiers
        TabIndex = 0
        TabOrder = 0
        OnChange = PageControl2Change
        object PageSyntheseTiers: TTabSheet
          Caption = '     Synth'#232'ses Ti'#232'rs     '
          object Label8: TLabel
            Left = 16
            Top = 348
            Width = 67
            Height = 13
            Caption = 'Devise Utilis'#233':'
          end
          object Bevel6: TBevel
            Left = 8
            Top = 312
            Width = 377
            Height = 57
          end
          object Bevel7: TBevel
            Left = 8
            Top = 376
            Width = 377
            Height = 49
          end
          object Bevel2: TBevel
            Left = 8
            Top = 432
            Width = 377
            Height = 89
          end
          object Bevel38: TBevel
            Left = 16
            Top = 480
            Width = 361
            Height = 33
          end
          object Bevel10: TBevel
            Left = 16
            Top = 440
            Width = 361
            Height = 33
          end
          object RBFinReouvertureClotureExercice: TCheckBox
            Left = 24
            Top = 488
            Width = 345
            Height = 17
            Caption = 'Lancement Fin Reouverture Cloture Exercice'
            Enabled = False
            TabOrder = 18
          end
          object PageSynthese: TPageControl
            Left = 392
            Top = 48
            Width = 913
            Height = 561
            ActivePage = TabSheet1
            TabIndex = 0
            TabOrder = 12
            object TabSheet1: TTabSheet
              Caption = '     Synth'#232'se Tiers     '
              object TableauSyntheseTiers: TStringGrid
                Left = 0
                Top = 0
                Width = 905
                Height = 529
                ColCount = 2
                Ctl3D = False
                RowCount = 2
                ParentCtl3D = False
                TabOrder = 0
                OnClick = TableauSyntheseTiersClick
                RowHeights = (
                  24
                  24)
              end
            end
            object TabSheet2: TTabSheet
              Caption = '     Traitement Tiers     '
              ImageIndex = 1
              object TableauDeBohrTiers: TStringGrid
                Left = 0
                Top = 0
                Width = 905
                Height = 529
                ColCount = 2
                Ctl3D = False
                RowCount = 2
                ParentCtl3D = False
                TabOrder = 0
                OnClick = TableauDeBohrTiersClick
              end
            end
            object TabSheet3: TTabSheet
              Caption = '     Traitement D'#233'tail Rubriques     '
              ImageIndex = 2
              object TableauDeBohrDetailRubrique: TStringGrid
                Left = 0
                Top = 0
                Width = 905
                Height = 529
                ColCount = 2
                Ctl3D = False
                RowCount = 2
                ParentCtl3D = False
                TabOrder = 0
                OnClick = TableauDeBohrDetailRubriqueClick
              end
            end
            object TabSheet4: TTabSheet
              Caption = '     Domiciliation     '
              ImageIndex = 3
              object TableauListeAvisNotifier: TStringGrid
                Left = 584
                Top = 0
                Width = 321
                Height = 529
                ColCount = 2
                Ctl3D = False
                RowCount = 2
                ParentCtl3D = False
                TabOrder = 1
              end
              object TableauInventaireDomiciliation: TStringGrid
                Left = 0
                Top = 0
                Width = 905
                Height = 529
                ColCount = 2
                Ctl3D = False
                RowCount = 2
                ParentCtl3D = False
                TabOrder = 0
                OnClick = TableauInventaireDomiciliationClick
              end
            end
            object TabSheet5: TTabSheet
              Caption = '     D'#233'tail Situations     '
              ImageIndex = 4
              object TableauDetailSituationMarche: TStringGrid
                Left = 0
                Top = 0
                Width = 905
                Height = 529
                Ctl3D = False
                ParentCtl3D = False
                TabOrder = 0
                OnClick = TableauDetailSituationMarcheClick
              end
            end
          end
          object Panel2: TPanel
            Left = 8
            Top = 0
            Width = 1297
            Height = 41
            BevelInner = bvLowered
            TabOrder = 0
            object Label1: TLabel
              Left = 8
              Top = 15
              Width = 44
              Height = 13
              Caption = 'Exercice:'
            end
            object EditAutorisationEnregistrementClotureExercice: TEdit
              Left = 320
              Top = 11
              Width = 33
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 4
            end
            object EditCodeFondateurParDefaut: TEdit
              Left = 72
              Top = 12
              Width = 41
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 2
              OnKeyUp = EditCodeFondateurParDefautKeyUp
            end
            object EditNewExercice: TEdit
              Left = 56
              Top = 12
              Width = 65
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 0
              OnDblClick = EditNewExerciceDblClick
              OnExit = EditNewExerciceExit
              OnKeyUp = EditNewExerciceKeyUp
            end
            object BitReouvertureExercice: TBitBtn
              Left = 134
              Top = 8
              Width = 267
              Height = 25
              Caption = 'R'#233'ouverture de l'#39'Exercice XXXX'
              TabOrder = 1
              OnClick = BitReouvertureExerciceClick
              OnContextPopup = BitReouvertureExerciceContextPopup
              Kind = bkAll
            end
            object BitBtn16: TBitBtn
              Left = 552
              Top = 8
              Width = 305
              Height = 25
              Caption = 'Mise '#224' jour Liste Mouvement justifi'#233' par Avis'
              TabOrder = 3
              OnClick = BitBtn16Click
              Kind = bkHelp
            end
          end
          object RBAfficherSoldeSuperieur: TCheckBox
            Left = 16
            Top = 320
            Width = 265
            Height = 17
            Caption = 'Afficher uniquement les soldes sup'#233'rieur ou '#233'gale '#224':'
            Checked = True
            State = cbChecked
            TabOrder = 2
          end
          object EditSoldeMinimum: TEdit
            Left = 284
            Top = 318
            Width = 29
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
            Text = '5'
          end
          object EditSigleDevise: TEdit
            Left = 312
            Top = 318
            Width = 25
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 4
          end
          object EditDesignationDevise: TEdit
            Left = 88
            Top = 342
            Width = 105
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 5
          end
          object RBIndiceRubriqueTriCol: TCheckBox
            Left = 16
            Top = 392
            Width = 201
            Height = 17
            Caption = 'Triers par la Rubrique s'#233'lectionner !'
            TabOrder = 6
          end
          object EditIndiceRubriqueTriCol: TEdit
            Left = 224
            Top = 390
            Width = 25
            Height = 19
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 7
            Text = '2'
          end
          object EditTypeDataTrie: TEdit
            Left = 248
            Top = 390
            Width = 49
            Height = 19
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 8
          end
          object EditTypeTrie: TComboBox
            Left = 296
            Top = 388
            Width = 41
            Height = 21
            BevelKind = bkFlat
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            ItemIndex = 0
            ParentFont = False
            TabOrder = 9
            Text = '+'
            Items.Strings = (
              '+'
              '-')
          end
          object AfficheValidationReouverture: TPanel
            Left = -480
            Top = 576
            Width = 729
            Height = 497
            BevelInner = bvLowered
            Color = 16777164
            TabOrder = 11
            Visible = False
            OnExit = AfficheValidationReouvertureExit
            object Bevel3: TBevel
              Left = 8
              Top = 8
              Width = 713
              Height = 50
            end
            object TableauValidationReouverture: TStringGrid
              Left = 8
              Top = 64
              Width = 713
              Height = 425
              ColCount = 3
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 0
              OnDblClick = TableauValidationReouvertureDblClick
              ColWidths = (
                64
                394
                216)
            end
            object BitBtn1: TBitBtn
              Left = 16
              Top = 24
              Width = 129
              Height = 25
              TabOrder = 1
              OnClick = BitBtn1Click
              Kind = bkCancel
            end
            object BitBtn3: TBitBtn
              Left = 528
              Top = 24
              Width = 187
              Height = 25
              Caption = 'Valider'
              TabOrder = 2
              OnClick = BitBtn3Click
              Kind = bkAll
            end
          end
          object AffichePatienter: TPanel
            Left = 392
            Top = 48
            Width = 913
            Height = 561
            BevelInner = bvLowered
            Color = 13041663
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            Visible = False
            object MemoRapportReouverture: TMemo
              Left = 8
              Top = 64
              Width = 897
              Height = 489
              Color = clBlack
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ScrollBars = ssBoth
              TabOrder = 0
            end
            object AfficherPatienter: TPanel
              Left = 192
              Top = 16
              Width = 529
              Height = 41
              BevelInner = bvLowered
              Caption = 'Veuillez Patienter S.V.P !'
              TabOrder = 1
            end
            object AfficherDetailleReouverture: TMemo
              Left = 424
              Top = 71
              Width = 458
              Height = 241
              Color = clBlack
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ScrollBars = ssBoth
              TabOrder = 2
            end
            object BitFermerVisualisation: TBitBtn
              Left = 16
              Top = 24
              Width = 161
              Height = 25
              Caption = 'Fermer la visualisation'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnClick = BitFermerVisualisationClick
              Kind = bkAll
            end
            object AfficheAnomalieReouverture: TPanel
              Left = 176
              Top = 248
              Width = 521
              Height = 57
              BevelInner = bvLowered
              Color = 8454143
              TabOrder = 4
              Visible = False
              object Bevel17: TBevel
                Left = 8
                Top = 8
                Width = 505
                Height = 41
              end
              object BitBtn17: TBitBtn
                Left = 432
                Top = 16
                Width = 75
                Height = 25
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnClick = BitBtn17Click
                Kind = bkCancel
              end
            end
            object RBSuspendreReouverture: TCheckBox
              Left = 752
              Top = 24
              Width = 153
              Height = 17
              Caption = 'Suspendre la r'#233'ouverture'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
          end
          object MemoVoirRapportReouverture: TMemo
            Left = 1200
            Top = 496
            Width = 913
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
            TabOrder = 13
            Visible = False
            OnExit = MemoVoirRapportReouvertureExit
          end
          object AfficheConsultationNewExercice: TPanel
            Left = 568
            Top = 224
            Width = 521
            Height = 57
            BevelInner = bvLowered
            Color = 8454143
            TabOrder = 14
            Visible = False
            object Bevel8: TBevel
              Left = 8
              Top = 8
              Width = 505
              Height = 41
            end
            object BitBtn5: TBitBtn
              Left = 16
              Top = 16
              Width = 75
              Height = 25
              TabOrder = 0
              OnClick = BitBtn5Click
              Kind = bkNo
            end
            object BitOuiNewExercice: TBitBtn
              Left = 424
              Top = 16
              Width = 83
              Height = 25
              TabOrder = 1
              OnClick = BitOuiNewExerciceClick
              Kind = bkYes
            end
          end
          object RBFixeColonne: TCheckBox
            Left = 24
            Top = 450
            Width = 153
            Height = 17
            Caption = 'Fix'#233' les premi'#232'res colonne:'
            TabOrder = 15
          end
          object EditFixeColonne: TEdit
            Left = 184
            Top = 450
            Width = 33
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 16
            Text = '1'
          end
          object IncrimentFixeColonne: TUpDown
            Left = 217
            Top = 450
            Width = 16
            Height = 19
            Associate = EditFixeColonne
            Min = 1
            Max = 10
            Position = 1
            TabOrder = 17
            Wrap = False
          end
          object TableauMouvement: TStringGrid
            Left = 8
            Top = 48
            Width = 377
            Height = 249
            ColCount = 2
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            RowHeights = (
              24
              23
              24
              24
              24)
          end
          object AfficheTableauConfigurations: TPanel
            Left = 0
            Top = 312
            Width = 1145
            Height = 300
            BevelInner = bvLowered
            Color = 16777088
            TabOrder = 19
            OnClick = AfficheTableauConfigurationsClick
            object PageControl3: TPageControl
              Left = 6
              Top = 6
              Width = 1121
              Height = 289
              ActivePage = TabSheet10
              TabIndex = 5
              TabOrder = 0
              object TabSheet16: TTabSheet
                Caption = '  Param'#232'tres  '
                object Bevel18: TBevel
                  Left = 8
                  Top = 8
                  Width = 257
                  Height = 121
                end
                object Label9: TLabel
                  Left = 96
                  Top = 104
                  Width = 69
                  Height = 13
                  Caption = 'Ecart Pr'#233'lt UF.'
                end
                object Label6: TLabel
                  Left = 16
                  Top = 56
                  Width = 148
                  Height = 13
                  Caption = 'D'#233'but N'#176'Pr'#233'l'#232'vement , N'#176' Mat:'
                end
                object Label7: TLabel
                  Left = 104
                  Top = 80
                  Width = 52
                  Height = 13
                  Caption = 'Ecart Pr'#233'lt.'
                end
                object EditEcartPUF: TEdit
                  Left = 168
                  Top = 98
                  Width = 49
                  Height = 19
                  Ctl3D = False
                  ParentCtl3D = False
                  ReadOnly = True
                  TabOrder = 0
                end
                object EditNumPrelevementFirstNewExercice: TEdit
                  Left = 168
                  Top = 50
                  Width = 49
                  Height = 19
                  Ctl3D = False
                  ParentCtl3D = False
                  ReadOnly = True
                  TabOrder = 1
                end
                object EditMatriculeFirstNewExercice: TEdit
                  Left = 216
                  Top = 50
                  Width = 41
                  Height = 19
                  Ctl3D = False
                  ParentCtl3D = False
                  ReadOnly = True
                  TabOrder = 2
                end
                object EditEcartPrelevement: TEdit
                  Left = 168
                  Top = 74
                  Width = 49
                  Height = 19
                  Ctl3D = False
                  ParentCtl3D = False
                  ReadOnly = True
                  TabOrder = 3
                end
                object BitBtn4: TBitBtn
                  Left = 16
                  Top = 12
                  Width = 241
                  Height = 25
                  Caption = 'Voir le rapport de r'#233'ouverture'
                  TabOrder = 4
                  OnClick = BitBtn4Click
                  Kind = bkHelp
                end
              end
              object TabSheet6: TTabSheet
                Caption = '  TypeFichierTiers  '
                object Panel3: TPanel
                  Left = 0
                  Top = 0
                  Width = 1024
                  Height = 17
                  BevelInner = bvLowered
                  Caption = 'TableauTypeFichierTiers'
                  TabOrder = 0
                end
                object TableauTypeFichierTiers: TStringGrid
                  Left = 0
                  Top = 24
                  Width = 1024
                  Height = 233
                  Ctl3D = False
                  ParentCtl3D = False
                  TabOrder = 1
                end
              end
              object TabSheet7: TTabSheet
                Caption = '  ProjetFinance  '
                ImageIndex = 1
                object Panel7: TPanel
                  Left = 1
                  Top = 0
                  Width = 1024
                  Height = 17
                  BevelInner = bvLowered
                  Caption = 'TableauProjetFinance'
                  TabOrder = 0
                end
                object TableauProjetFinance: TStringGrid
                  Left = 1
                  Top = 24
                  Width = 1024
                  Height = 233
                  ColCount = 2
                  Ctl3D = False
                  FixedCols = 0
                  ParentCtl3D = False
                  TabOrder = 1
                end
              end
              object TabSheet8: TTabSheet
                Caption = '  NumTypeFormule  '
                ImageIndex = 2
                object Panel15: TPanel
                  Left = 0
                  Top = 0
                  Width = 1024
                  Height = 17
                  BevelInner = bvLowered
                  Caption = 'TableauNumTypeFormule'
                  TabOrder = 0
                end
                object TableauNumTypeFormule: TStringGrid
                  Left = 0
                  Top = 24
                  Width = 1024
                  Height = 233
                  Ctl3D = False
                  ParentCtl3D = False
                  TabOrder = 1
                  ColWidths = (
                    64
                    64
                    64
                    64
                    64)
                end
              end
              object TabSheet9: TTabSheet
                Caption = '  TypeMouvement  '
                ImageIndex = 3
                object Panel14: TPanel
                  Left = 0
                  Top = 0
                  Width = 1024
                  Height = 17
                  BevelInner = bvLowered
                  Caption = 'TableauTypeMouvement'
                  TabOrder = 0
                end
                object TableauTypeMouvement: TStringGrid
                  Left = 0
                  Top = 24
                  Width = 1024
                  Height = 233
                  Ctl3D = False
                  ParentCtl3D = False
                  TabOrder = 1
                end
              end
              object TabSheet10: TTabSheet
                Caption = '  OrdreListeMouvement  '
                ImageIndex = 4
                object Panel8: TPanel
                  Left = 0
                  Top = 0
                  Width = 433
                  Height = 17
                  BevelInner = bvLowered
                  Caption = 'TableauOrdreListeMouvement'
                  TabOrder = 0
                end
                object TableauOrdreListeMouvement: TStringGrid
                  Left = 0
                  Top = 24
                  Width = 433
                  Height = 233
                  ColCount = 3
                  Ctl3D = False
                  FixedCols = 0
                  ParentCtl3D = False
                  TabOrder = 1
                  ColWidths = (
                    64
                    67
                    64)
                end
                object Panel16: TPanel
                  Left = 448
                  Top = 0
                  Width = 657
                  Height = 17
                  BevelInner = bvLowered
                  Caption = 'TableauPositionDetailMouvementOdreListeMouvement'
                  TabOrder = 2
                end
                object TableauPositionDetailMouvementOdreListeMouvement: TStringGrid
                  Left = 448
                  Top = 24
                  Width = 337
                  Height = 233
                  ColCount = 3
                  Ctl3D = False
                  DefaultColWidth = 100
                  FixedCols = 0
                  RowCount = 2
                  ParentCtl3D = False
                  TabOrder = 3
                end
                object EditFichierDetailMouvementConcerne: TMemo
                  Left = 792
                  Top = 24
                  Width = 313
                  Height = 233
                  BevelKind = bkFlat
                  Ctl3D = False
                  ParentCtl3D = False
                  TabOrder = 4
                end
              end
              object TabSheet11: TTabSheet
                Caption = '  RegistreComptes  '
                ImageIndex = 5
                object Panel9: TPanel
                  Left = 0
                  Top = 0
                  Width = 1024
                  Height = 17
                  BevelInner = bvLowered
                  Caption = 'TableauRegistreComptes'
                  TabOrder = 0
                end
                object TableauRegistreComptes: TStringGrid
                  Left = 0
                  Top = 24
                  Width = 1024
                  Height = 233
                  ColCount = 1
                  Ctl3D = False
                  FixedCols = 0
                  ParentCtl3D = False
                  TabOrder = 1
                  ColWidths = (
                    178)
                end
              end
              object TabSheet12: TTabSheet
                Caption = '  LocalisationGeographique  '
                ImageIndex = 6
                object Panel10: TPanel
                  Left = 0
                  Top = 0
                  Width = 1024
                  Height = 17
                  BevelInner = bvLowered
                  Caption = 'TableauLocalisationGeographique'
                  TabOrder = 0
                end
                object TableauLocalisationGeographique: TStringGrid
                  Left = 0
                  Top = 24
                  Width = 1024
                  Height = 233
                  ColCount = 1
                  Ctl3D = False
                  FixedCols = 0
                  ParentCtl3D = False
                  TabOrder = 1
                  ColWidths = (
                    145)
                end
              end
              object TabSheet13: TTabSheet
                Caption = '  Marche  '
                ImageIndex = 7
                object Panel12: TPanel
                  Left = 0
                  Top = 0
                  Width = 1024
                  Height = 17
                  BevelInner = bvLowered
                  Caption = 'TableauMarche'
                  TabOrder = 0
                end
                object TableauMarche: TStringGrid
                  Left = 0
                  Top = 24
                  Width = 1024
                  Height = 225
                  ColCount = 2
                  Ctl3D = False
                  FixedCols = 0
                  ParentCtl3D = False
                  TabOrder = 1
                  OnDblClick = TableauMarcheDblClick
                end
              end
              object TabSheet14: TTabSheet
                Caption = '  Attachement  '
                ImageIndex = 8
                object Panel13: TPanel
                  Left = 0
                  Top = 0
                  Width = 1024
                  Height = 17
                  BevelInner = bvLowered
                  Caption = 'TableauLAttachement'
                  TabOrder = 0
                end
                object TableauLAttachement: TStringGrid
                  Left = 0
                  Top = 24
                  Width = 1024
                  Height = 233
                  ColCount = 3
                  Ctl3D = False
                  FixedCols = 0
                  RowCount = 2
                  ParentCtl3D = False
                  TabOrder = 1
                  ColWidths = (
                    145
                    64
                    64)
                end
              end
              object TabSheet15: TTabSheet
                Caption = '  SituationMarche  '
                ImageIndex = 9
                object Panel11: TPanel
                  Left = 1
                  Top = 0
                  Width = 1024
                  Height = 17
                  BevelInner = bvLowered
                  Caption = 'TableauSituationMarche'
                  TabOrder = 0
                end
                object TableauSituationMarche: TStringGrid
                  Left = 1
                  Top = 24
                  Width = 1024
                  Height = 245
                  ColCount = 3
                  Ctl3D = False
                  FixedCols = 0
                  RowCount = 2
                  ParentCtl3D = False
                  TabOrder = 1
                  ColWidths = (
                    145
                    64
                    64)
                end
              end
            end
          end
        end
        object PageListeBDExerciceN: TTabSheet
          Caption = '     Liste base de donn'#233'es Exercice XXXX     '
          ImageIndex = 1
          object Bevel4: TBevel
            Left = 928
            Top = 48
            Width = 377
            Height = 561
          end
          object Bevel9: TBevel
            Left = 936
            Top = 112
            Width = 361
            Height = 65
          end
          object Bevel5: TBevel
            Left = 936
            Top = 56
            Width = 361
            Height = 49
          end
          object Label2: TLabel
            Left = 944
            Top = 155
            Width = 140
            Height = 13
            Caption = 'Nombre Chiffre apr'#233's vergule:'
          end
          object Label3: TLabel
            Left = 944
            Top = 126
            Width = 74
            Height = 13
            Caption = 'Type affichage:'
          end
          object FichierDisponible: TLabel
            Left = 944
            Top = 72
            Width = 27
            Height = 13
            Caption = '.........'
          end
          object UpDown1: TUpDown
            Left = 1121
            Top = 152
            Width = 16
            Height = 19
            Associate = EditNbrChiffreApresVergule
            Min = 2
            Max = 10
            Position = 2
            TabOrder = 6
            Wrap = False
            OnClick = UpDown1Click
          end
          object EditNbrChiffreApresVergule: TEdit
            Left = 1088
            Top = 152
            Width = 33
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 5
            Text = '2'
          end
          object EditTypeOctets: TComboBox
            Left = 1088
            Top = 123
            Width = 78
            Height = 21
            BevelKind = bkFlat
            Ctl3D = False
            ItemHeight = 13
            ItemIndex = 0
            ParentCtl3D = False
            TabOrder = 4
            Text = 'Octets'
            OnKeyPress = EditTypeOctetsKeyPress
            OnSelect = EditTypeOctetsSelect
            Items.Strings = (
              'Octets'
              'KOctets'
              'MOctets'
              'GOctets')
          end
          object TableauListeBaseDonneesImage: TStringGrid
            Left = 288
            Top = 128
            Width = 320
            Height = 433
            Ctl3D = False
            RowCount = 2
            ParentCtl3D = False
            TabOrder = 3
            RowHeights = (
              24
              24)
          end
          object TableauListeBaseDonnees: TStringGrid
            Left = 8
            Top = 48
            Width = 913
            Height = 561
            Ctl3D = False
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goEditing, goTabs]
            ParentCtl3D = False
            TabOrder = 0
            OnClick = TableauListeBaseDonneesClick
            OnDblClick = TableauListeBaseDonneesDblClick
            RowHeights = (
              24
              26)
          end
          object Panel1: TPanel
            Left = 8
            Top = 0
            Width = 1297
            Height = 41
            BevelInner = bvLowered
            TabOrder = 1
            object Bevel1: TBevel
              Left = 4
              Top = 4
              Width = 337
              Height = 33
            end
            object RBIndiceRubriqueTriColBD: TCheckBox
              Left = 8
              Top = 16
              Width = 201
              Height = 17
              Caption = 'Triers par la Rubrique s'#233'lectionner !'
              TabOrder = 0
            end
            object EditIndiceRubriqueTriColBD: TEdit
              Left = 216
              Top = 14
              Width = 25
              Height = 19
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
              Text = '2'
            end
            object EditTypeDataTrieBD: TEdit
              Left = 240
              Top = 14
              Width = 49
              Height = 19
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
            end
            object EditTypeTrieBD: TComboBox
              Left = 288
              Top = 12
              Width = 41
              Height = 21
              BevelKind = bkFlat
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 13
              ItemIndex = 0
              ParentFont = False
              TabOrder = 3
              Text = '+'
              Items.Strings = (
                '+'
                '-')
            end
            object RadioGroup1: TRadioGroup
              Left = 368
              Top = 8
              Width = 505
              Height = 25
              Caption = 'Option d'#39'affichage: '
              TabOrder = 4
            end
            object RBValiderNonValider: TRadioButton
              Left = 480
              Top = 14
              Width = 129
              Height = 17
              Caption = 'Valider et non valider'
              Checked = True
              TabOrder = 5
              TabStop = True
              OnClick = RBValiderNonValiderClick
            end
            object RBValider: TRadioButton
              Left = 656
              Top = 14
              Width = 65
              Height = 17
              Caption = 'Valider'
              TabOrder = 6
              OnClick = RBValiderClick
            end
            object RBNonValider: TRadioButton
              Left = 760
              Top = 14
              Width = 89
              Height = 17
              Caption = 'Non valider'
              TabOrder = 7
              OnClick = RBNonValiderClick
            end
          end
          object AfficheMAJIsFileInUse: TPanel
            Left = 936
            Top = 184
            Width = 361
            Height = 137
            Color = 9699219
            TabOrder = 7
            object Bevel16: TBevel
              Left = 8
              Top = 8
              Width = 345
              Height = 97
            end
            object NbrActiveIsFileInUse: TLabel
              Left = 320
              Top = 112
              Width = 30
              Height = 13
              Alignment = taRightJustify
              Caption = '..........'
            end
            object BitBtn8: TBitBtn
              Left = 16
              Top = 16
              Width = 329
              Height = 25
              Caption = 'Activer la mise '#224' jour (IsFileInUse)'
              TabOrder = 0
              OnClick = BitBtn8Click
              Kind = bkHelp
            end
            object BitBtn9: TBitBtn
              Left = 16
              Top = 48
              Width = 329
              Height = 25
              Caption = 'D'#233'sactiver la mise '#224' jour (IsFileInUse)'
              TabOrder = 1
              OnClick = BitBtn9Click
              Kind = bkNo
            end
            object RBSelectIsFileInUse: TCheckBox
              Left = 16
              Top = 80
              Width = 217
              Height = 17
              Caption = 'S'#233'lectionner la mise '#224' jour  (IsFileInUse)'
              TabOrder = 2
            end
          end
          object BitBtn10: TBitBtn
            Left = 936
            Top = 352
            Width = 361
            Height = 25
            Caption = 'Arr'#233'ter l'#39'utilisation du fichier'
            TabOrder = 8
            OnClick = BitBtn10Click
            Kind = bkCancel
          end
          object AfficheOptionPrintFinanceProjets: TPanel
            Left = 1016
            Top = 66
            Width = 193
            Height = 31
            BevelInner = bvLowered
            Caption = 'Imprimer'
            Color = 8454143
            TabOrder = 2
            OnClick = AfficheOptionPrintFinanceProjetsClick
            object Bevel32: TBevel
              Left = 8
              Top = 40
              Width = 177
              Height = 169
            end
            object RadioGroup5: TRadioGroup
              Left = 16
              Top = 80
              Width = 161
              Height = 121
              Caption = 'Options d'#39'Impression:'
              TabOrder = 0
            end
            object StaticText2: TStaticText
              Left = 24
              Top = 107
              Width = 105
              Height = 17
              Caption = 'Orientation du papier:'
              TabOrder = 1
            end
            object RBOrientationPapierFinanceProjets: TComboBox
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
            object RBAjustementFinanceProjets: TCheckBox
              Left = 24
              Top = 168
              Width = 113
              Height = 17
              Caption = 'Ajustement !'
              Checked = True
              State = cbChecked
              TabOrder = 3
            end
            object BitBtn20: TBitBtn
              Left = 16
              Top = 48
              Width = 161
              Height = 25
              Caption = 'Imprimer'
              TabOrder = 4
              OnClick = BitBtn20Click
              Kind = bkHelp
            end
          end
          object BitBtn11: TBitBtn
            Left = 936
            Top = 384
            Width = 289
            Height = 25
            Caption = 'Supprimer le fichier s'#233'lectionn'#233' !'
            ModalResult = 2
            TabOrder = 9
            OnClick = BitBtn11Click
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
          object BitBtn12: TBitBtn
            Left = 936
            Top = 416
            Width = 361
            Height = 25
            Caption = 'Supprimer tous  les fichiers vides !'
            ModalResult = 2
            TabOrder = 10
            OnClick = BitBtn12Click
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
          object BitBtn13: TBitBtn
            Left = 936
            Top = 448
            Width = 297
            Height = 25
            Caption = 'Copier le fichier'
            TabOrder = 11
            OnClick = BitBtn13Click
            Kind = bkAll
          end
          object GroupBox1: TGroupBox
            Left = 936
            Top = 480
            Width = 353
            Height = 121
            Caption = 'Options'
            TabOrder = 12
            object CheckBoxPossibleAnnuler: TCheckBox
              Left = 8
              Top = 16
              Width = 305
              Height = 17
              Caption = 'Pr'#233'server la possibilit'#233' d'#39'annuler l'#39'op'#233'ration.'
              Checked = True
              State = cbChecked
              TabOrder = 0
            end
            object CheckBoxChangeNomSiCollision: TCheckBox
              Left = 8
              Top = 40
              Width = 401
              Height = 17
              Caption = 
                'Si le fichier cible existe d'#233'j'#224', il le copie sous un nom du styl' +
                'e copie (1) de..'
              TabOrder = 1
            end
            object CheckBoxSansConfirmation: TCheckBox
              Left = 8
              Top = 64
              Width = 361
              Height = 17
              Caption = 'Pas de demande de confirmation'
              TabOrder = 2
            end
            object CheckBoxSansProgression: TCheckBox
              Left = 8
              Top = 88
              Width = 409
              Height = 17
              Caption = 
                'Ne pas voir la progression se faire (On le la voit que pour les ' +
                'op'#233'rations longues)'
              TabOrder = 3
            end
          end
          object RBCopierTous: TCheckBox
            Left = 1240
            Top = 443
            Width = 49
            Height = 17
            Caption = 'Tous'
            TabOrder = 13
          end
          object BitTousBaseData: TBitBtn
            Left = 1144
            Top = 144
            Width = 139
            Height = 25
            Caption = 'Toute la base'
            TabOrder = 14
            OnClick = BitTousBaseDataClick
            Kind = bkHelp
          end
          object RBCopierRepertoire: TCheckBox
            Left = 1240
            Top = 464
            Width = 97
            Height = 17
            Caption = 'R'#233'pertoire'
            TabOrder = 15
          end
          object BitBtn14: TBitBtn
            Left = 936
            Top = 324
            Width = 361
            Height = 25
            Caption = 'Propri'#233't'#233's du fichier s'#233'lectionn'#233' !'
            TabOrder = 16
            OnClick = BitBtn14Click
            Kind = bkHelp
          end
          object RBAlacorbeille: TCheckBox
            Left = 1232
            Top = 389
            Width = 65
            Height = 17
            Caption = 'corbeille'
            Checked = True
            State = cbChecked
            TabOrder = 17
          end
        end
        object PageListeBDExerciceNPlus1: TTabSheet
          Caption = '     Liste base de donn'#233'es Exercice XXXX     '
          ImageIndex = 2
          object Bevel13: TBevel
            Left = 928
            Top = 48
            Width = 377
            Height = 561
          end
          object Label4: TLabel
            Left = 944
            Top = 126
            Width = 74
            Height = 13
            Caption = 'Type affichage:'
          end
          object Label5: TLabel
            Left = 944
            Top = 155
            Width = 140
            Height = 13
            Caption = 'Nombre Chiffre apr'#233's vergule:'
          end
          object Bevel11: TBevel
            Left = 936
            Top = 112
            Width = 361
            Height = 65
          end
          object Bevel12: TBevel
            Left = 936
            Top = 56
            Width = 361
            Height = 49
          end
          object Bevel15: TBevel
            Left = 936
            Top = 192
            Width = 361
            Height = 145
          end
          object TableauListeBaseDonneesImageExerciceNPlus1: TStringGrid
            Left = 288
            Top = 128
            Width = 320
            Height = 433
            Ctl3D = False
            RowCount = 2
            ParentCtl3D = False
            TabOrder = 4
            RowHeights = (
              24
              24)
          end
          object TableauListeBaseDonneesExerciceNPlus1: TStringGrid
            Left = 8
            Top = 48
            Width = 913
            Height = 561
            Ctl3D = False
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goEditing, goTabs]
            ParentCtl3D = False
            TabOrder = 0
            OnClick = TableauListeBaseDonneesExerciceNPlus1Click
            RowHeights = (
              24
              26)
          end
          object Panel5: TPanel
            Left = 936
            Top = 352
            Width = 361
            Height = 137
            BevelInner = bvLowered
            TabOrder = 1
            object RadioGroup3: TRadioGroup
              Left = 8
              Top = 8
              Width = 345
              Height = 121
              Caption = 'Option R'#233'ouverture R'#233'seaux: '
              TabOrder = 0
            end
            object RBNouvelleReouvertureReseaux: TRadioButton
              Left = 16
              Top = 64
              Width = 217
              Height = 17
              Caption = 'Nouvelle r'#233'ouverture !'
              TabOrder = 1
            end
            object RBMettreAJourReouvertureReseaux: TRadioButton
              Left = 16
              Top = 96
              Width = 225
              Height = 17
              Caption = 'Mettre '#224' jour la r'#233'ouverture existante !'
              TabOrder = 2
            end
            object RBAucuneReouvertureReseaux: TRadioButton
              Left = 16
              Top = 32
              Width = 185
              Height = 17
              Caption = 'Acune r'#233'ouverture R'#233'seaux !'
              Checked = True
              TabOrder = 3
              TabStop = True
            end
          end
          object Panel4: TPanel
            Left = 936
            Top = 496
            Width = 361
            Height = 105
            BevelInner = bvLowered
            TabOrder = 2
            object RadioGroup2: TRadioGroup
              Left = 8
              Top = 8
              Width = 345
              Height = 89
              Caption = 'Option R'#233'ouverture locale: '
              TabOrder = 0
            end
            object RBNouvelleReouvertureLocale: TRadioButton
              Left = 16
              Top = 40
              Width = 217
              Height = 17
              Caption = 'Nouvelle r'#233'ouverture !'
              Checked = True
              TabOrder = 1
              TabStop = True
            end
            object RBMettreAJourReouvertureLocale: TRadioButton
              Left = 16
              Top = 64
              Width = 225
              Height = 17
              Caption = 'Mettre '#224' jour la r'#233'ouverture existante !'
              TabOrder = 2
            end
          end
          object Panel6: TPanel
            Left = 8
            Top = 0
            Width = 1297
            Height = 41
            BevelInner = bvLowered
            Color = 8454143
            TabOrder = 3
            object Bevel14: TBevel
              Left = 4
              Top = 4
              Width = 337
              Height = 33
            end
            object RBIndiceRubriqueTriColBDExerciceNPlus1: TCheckBox
              Left = 8
              Top = 16
              Width = 201
              Height = 17
              Caption = 'Triers par la Rubrique s'#233'lectionner !'
              TabOrder = 0
            end
            object EditIndiceRubriqueTriColBDExerciceNPlus1: TEdit
              Left = 216
              Top = 14
              Width = 25
              Height = 19
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
              Text = '2'
            end
            object EditTypeDataTrieBDExerciceNPlus1: TEdit
              Left = 240
              Top = 14
              Width = 49
              Height = 19
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
            end
            object EditTypeTrieBDExerciceNPlus1: TComboBox
              Left = 288
              Top = 12
              Width = 41
              Height = 21
              BevelKind = bkFlat
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 13
              ItemIndex = 0
              ParentFont = False
              TabOrder = 3
              Text = '+'
              Items.Strings = (
                '+'
                '-')
            end
            object RadioGroup4: TRadioGroup
              Left = 368
              Top = 8
              Width = 505
              Height = 25
              Caption = 'Option d'#39'affichage: '
              TabOrder = 4
            end
            object RBValiderNonValiderExerciceNPlus1: TRadioButton
              Left = 480
              Top = 14
              Width = 129
              Height = 17
              Caption = 'Valider et non valider'
              Checked = True
              TabOrder = 5
              TabStop = True
              OnClick = RBValiderNonValiderExerciceNPlus1Click
            end
            object RBValiderExerciceNPlus1: TRadioButton
              Left = 656
              Top = 14
              Width = 65
              Height = 17
              Caption = 'Valider'
              TabOrder = 6
              OnClick = RBValiderExerciceNPlus1Click
            end
            object RBNonValiderExerciceNPlus1: TRadioButton
              Left = 760
              Top = 14
              Width = 89
              Height = 17
              Caption = 'Non valider'
              TabOrder = 7
              OnClick = RBNonValiderExerciceNPlus1Click
            end
          end
          object EditTypeOctetsExerciceNPlus1: TComboBox
            Left = 1088
            Top = 123
            Width = 78
            Height = 21
            BevelKind = bkFlat
            Ctl3D = False
            ItemHeight = 13
            ItemIndex = 0
            ParentCtl3D = False
            TabOrder = 5
            Text = 'Octets'
            OnKeyPress = EditTypeOctetsExerciceNPlus1KeyPress
            OnSelect = EditTypeOctetsExerciceNPlus1Select
            Items.Strings = (
              'Octets'
              'KOctets'
              'MOctets'
              'GOctets')
          end
          object EditNbrChiffreApresVerguleExerciceNPlus1: TEdit
            Left = 1088
            Top = 152
            Width = 33
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 6
            Text = '2'
          end
          object UpDown2: TUpDown
            Left = 1121
            Top = 152
            Width = 16
            Height = 19
            Associate = EditNbrChiffreApresVerguleExerciceNPlus1
            Min = 2
            Max = 10
            Position = 2
            TabOrder = 7
            Wrap = False
            OnClick = UpDown2Click
          end
          object BitBtn6: TBitBtn
            Left = 944
            Top = 200
            Width = 345
            Height = 41
            Caption = 'Autoris'#233' la r'#233'ouverture !'
            TabOrder = 8
            OnClick = BitBtn6Click
            Kind = bkAll
          end
          object BitBtn7: TBitBtn
            Left = 944
            Top = 256
            Width = 345
            Height = 41
            Caption = 'Ne pas autoris'#233' la r'#233'ouverture !'
            TabOrder = 9
            OnClick = BitBtn7Click
            Kind = bkNo
          end
          object RBAppliquerPourTous: TCheckBox
            Left = 944
            Top = 312
            Width = 217
            Height = 17
            Caption = 'Appliquer pout tous'
            TabOrder = 10
          end
        end
      end
      object BitBtn2: TBitBtn
        Left = 1000
        Top = 32
        Width = 305
        Height = 25
        Caption = 'G'#233'n'#233'rer un fichier texte'
        TabOrder = 1
        OnClick = BitBtn2Click
        Kind = bkHelp
      end
    end
  end
  object TimerSyntheseTiers: TTimer
    Enabled = False
    OnTimer = TimerSyntheseTiersTimer
    Left = 936
    Top = 32
  end
  object TimerReouverture: TTimer
    Enabled = False
    OnTimer = TimerReouvertureTimer
    Left = 872
    Top = 32
  end
  object TimerMAJIsFileInUse: TTimer
    Enabled = False
    Interval = 500
    OnTimer = TimerMAJIsFileInUseTimer
    Left = 1160
    Top = 256
  end
  object SaveDialog1: TSaveDialog
    Left = 1272
    Top = 528
  end
end
