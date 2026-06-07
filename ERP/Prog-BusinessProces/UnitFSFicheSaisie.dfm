object FSFicheSaisie: TFSFicheSaisie
  Left = -3
  Top = 2
  Width = 1370
  Height = 729
  Caption = 'Fiche de Saisie'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnMouseDown = FormMouseDown
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PagePrincipale: TPageControl
    Left = 3
    Top = 3
    Width = 1344
    Height = 689
    ActivePage = PageOperationFicheSaisie
    TabIndex = 0
    TabOrder = 0
    OnChange = PagePrincipaleChange
    object PageOperationFicheSaisie: TTabSheet
      Caption = '     Op'#233'rations Fiche de Saisie     '
      OnShow = PageOperationFicheSaisieShow
      object AfficheSupport: TPanel
        Left = 3
        Top = 1
        Width = 1329
        Height = 658
        BevelInner = bvLowered
        TabOrder = 0
        object CadreDestination: TBevel
          Left = 8
          Top = 208
          Width = 777
          Height = 33
        end
        object Label9: TLabel
          Left = 16
          Top = 218
          Width = 69
          Height = 13
          Caption = 'D'#233'stination:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label43: TLabel
          Left = 552
          Top = 218
          Width = 32
          Height = 13
          Caption = 'Date:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object InfoUtilisateurDateHeure: TLabel
          Left = 472
          Top = 643
          Width = 27
          Height = 13
          Caption = '.........'
          Color = clBtnFace
          ParentColor = False
        end
        object EditCodeAutorisation: TEdit
          Left = 264
          Top = 608
          Width = 121
          Height = 21
          TabOrder = 45
          OnKeyUp = EditCodeAutorisationKeyUp
        end
        object AfficheDataDomiciliation: TPanel
          Left = 8
          Top = 160
          Width = 777
          Height = 41
          Alignment = taLeftJustify
          BevelInner = bvLowered
          Color = 16777156
          TabOrder = 16
          object Label1: TLabel
            Left = 8
            Top = 20
            Width = 92
            Height = 13
            Caption = 'Mode de Paiement:'
          end
          object EditModePayement: TComboBox
            Left = 104
            Top = 12
            Width = 113
            Height = 21
            BevelKind = bkFlat
            Ctl3D = False
            ItemHeight = 13
            ItemIndex = 0
            ParentCtl3D = False
            TabOrder = 0
            Text = 'A terme'
            OnKeyDown = EditModePayementKeyDown
            OnKeyPress = EditModePayementKeyPress
            OnSelect = EditModePayementSelect
            Items.Strings = (
              'A terme'
              'Ch'#232'que'
              'Esp'#232'ce'
              'Virement'
              'Bon'
              'Non Acquitt'#233)
          end
          object AfficheDomiciliation: TPanel
            Left = 231
            Top = 4
            Width = 377
            Height = 33
            BevelInner = bvLowered
            TabOrder = 1
            object Label38: TLabel
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
            object Label39: TLabel
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
            object EditNumDomiciliation: TEdit
              Left = 93
              Top = 7
              Width = 81
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 2
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
          object AfficheAutoImporteAvis: TPanel
            Left = 611
            Top = 4
            Width = 162
            Height = 33
            BevelInner = bvLowered
            Color = 6671356
            TabOrder = 2
            object EditInfoControleCouleur: TEdit
              Left = 16
              Top = 6
              Width = 121
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 1
            end
            object BitAutoImporteAvis: TBitBtn
              Left = 6
              Top = 4
              Width = 151
              Height = 25
              Caption = 'Auto Importe !'
              TabOrder = 0
              OnClick = BitAutoImporteAvisClick
              Kind = bkHelp
              Margin = 0
            end
          end
        end
        object EditCodeTiersConserne: TEdit
          Left = 88
          Top = 214
          Width = 65
          Height = 19
          Color = 12320767
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object BitBtn14: TBitBtn
          Left = 517
          Top = 213
          Width = 25
          Height = 25
          Caption = '.'
          TabOrder = 30
          OnClick = BitBtn14Click
          Kind = bkHelp
          Margin = 0
        end
        object EditInfoMoyenTransport: TEdit
          Left = 408
          Top = 216
          Width = 105
          Height = 19
          Color = 12320767
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 29
          OnEnter = EditInfoMoyenTransportEnter
        end
        object EditDataTiersSupplementaire: TEdit
          Left = 168
          Top = 216
          Width = 121
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 28
        end
        object EditTesteDesiqnation: TMemo
          Left = 16
          Top = 304
          Width = 249
          Height = 105
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 24
        end
        object CadreAffichageMouvement: TPanel
          Left = 8
          Top = 8
          Width = 777
          Height = 145
          BevelInner = bvLowered
          TabOrder = 18
          object Label86: TLabel
            Left = 508
            Top = 76
            Width = 29
            Height = 19
            Caption = 'R'#233'f:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calisto MT'
            Font.Style = []
            ParentFont = False
          end
          object EditTitreEtat: TMemo
            Left = 8
            Top = 8
            Width = 489
            Height = 41
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
          end
          object AfficheMouvement: TPanel
            Left = 8
            Top = 8
            Width = 489
            Height = 41
            Alignment = taLeftJustify
            BevelInner = bvLowered
            Color = 13303754
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Calisto MT'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnClick = AfficheMouvementClick
            object Bevel3: TBevel
              Left = 8
              Top = 112
              Width = 473
              Height = 145
            end
            object Label11: TLabel
              Left = 59
              Top = 131
              Width = 71
              Height = 13
              Alignment = taRightJustify
              Caption = 'P'#176'Mouvement:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Calisto MT'
              Font.Style = []
              ParentFont = False
            end
            object Label3: TLabel
              Left = 42
              Top = 155
              Width = 88
              Height = 13
              Alignment = taRightJustify
              Caption = 'Code Mouvement:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Calisto MT'
              Font.Style = []
              ParentFont = False
            end
            object Label13: TLabel
              Left = 12
              Top = 179
              Width = 118
              Height = 13
              Alignment = taRightJustify
              Caption = 'Designation Mouvement:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Calisto MT'
              Font.Style = []
              ParentFont = False
            end
            object Label14: TLabel
              Left = 245
              Top = 131
              Width = 109
              Height = 13
              Alignment = taRightJustify
              Caption = 'Fichier Tiers Conserne:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Calisto MT'
              Font.Style = []
              ParentFont = False
            end
            object Label4: TLabel
              Left = 256
              Top = 203
              Width = 98
              Height = 13
              Alignment = taRightJustify
              Caption = 'Code Type Formule:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Calisto MT'
              Font.Style = []
              ParentFont = False
            end
            object Label5: TLabel
              Left = 123
              Top = 347
              Width = 55
              Height = 13
              Alignment = taRightJustify
              Caption = 'Signe (+/-):'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Calisto MT'
              Font.Style = []
              ParentFont = False
            end
            object Label6: TLabel
              Left = 263
              Top = 155
              Width = 91
              Height = 13
              Alignment = taRightJustify
              Caption = 'Comptes Conserne:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Calisto MT'
              Font.Style = []
              ParentFont = False
            end
            object Label33: TLabel
              Left = 53
              Top = 204
              Width = 75
              Height = 13
              Alignment = taRightJustify
              Caption = 'Type de Proces:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Calisto MT'
              Font.Style = []
              ParentFont = False
            end
            object Label7: TLabel
              Left = 247
              Top = 179
              Width = 107
              Height = 13
              Alignment = taRightJustify
              Caption = 'Type Prix Mouvement'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Calisto MT'
              Font.Style = []
              ParentFont = False
            end
            object Label19: TLabel
              Left = 18
              Top = 371
              Width = 152
              Height = 13
              Alignment = taRightJustify
              Caption = 'Autoriser les mouvement '#224' Vide:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Calisto MT'
              Font.Style = []
              ParentFont = False
            end
            object Label20: TLabel
              Left = 77
              Top = 275
              Width = 101
              Height = 13
              Alignment = taRightJustify
              Caption = 'P'#176' Type Mouvement:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Calisto MT'
              Font.Style = []
              ParentFont = False
            end
            object Label8: TLabel
              Left = 63
              Top = 299
              Width = 115
              Height = 13
              Alignment = taRightJustify
              Caption = 'Code Type Mouvement:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Calisto MT'
              Font.Style = []
              ParentFont = False
            end
            object Label24: TLabel
              Left = 33
              Top = 323
              Width = 145
              Height = 13
              Alignment = taRightJustify
              Caption = 'Designation Type Mouvement:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Calisto MT'
              Font.Style = []
              ParentFont = False
            end
            object Bevel14: TBevel
              Left = 16
              Top = 264
              Width = 465
              Height = 129
            end
            object Label40: TLabel
              Left = 177
              Top = 227
              Width = 177
              Height = 13
              Alignment = taRightJustify
              Caption = 'Liste Code Mouvement Appartenance'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Calisto MT'
              Font.Style = []
              ParentFont = False
            end
            object Label96: TLabel
              Left = 413
              Top = 8
              Width = 24
              Height = 19
              Caption = 'Or:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Calisto MT'
              Font.Style = []
              ParentFont = False
            end
            object EditPositionMouvement: TEdit
              Left = 136
              Top = 128
              Width = 89
              Height = 19
              Color = clSilver
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Calisto MT'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
            end
            object EditCodeMouvement: TEdit
              Left = 136
              Top = 152
              Width = 89
              Height = 19
              Color = clSilver
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Calisto MT'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
            end
            object EditDesignationMouvement: TEdit
              Left = 136
              Top = 176
              Width = 89
              Height = 19
              Color = clSilver
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Calisto MT'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
            end
            object EditCodeTypeFormuleBase: TEdit
              Left = 360
              Top = 200
              Width = 113
              Height = 19
              Color = clSilver
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Calisto MT'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
            end
            object EditSigneMouvement: TEdit
              Left = 184
              Top = 344
              Width = 33
              Height = 19
              Color = clSilver
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Calisto MT'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 4
            end
            object EditFichierTiersConserne: TEdit
              Left = 360
              Top = 128
              Width = 113
              Height = 19
              Color = clSilver
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Calisto MT'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 5
            end
            object EditCompteConserne: TEdit
              Left = 416
              Top = 152
              Width = 57
              Height = 19
              Color = clSilver
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Calisto MT'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 6
            end
            object EditTypeProces: TComboBox
              Left = 136
              Top = 200
              Width = 89
              Height = 21
              BevelKind = bkFlat
              Color = clSilver
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Calisto MT'
              Font.Style = []
              ItemHeight = 13
              ItemIndex = 0
              ParentFont = False
              TabOrder = 7
              Text = 'Commercial'
              Items.Strings = (
                'Commercial'
                'Paie'
                'Comptabilit'#233
                'Social')
            end
            object EditTypePrixMouvement: TEdit
              Left = 360
              Top = 176
              Width = 113
              Height = 19
              Color = clSilver
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Calisto MT'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 8
            end
            object RBAutoriserVide: TRadioButton
              Left = 183
              Top = 371
              Width = 42
              Height = 17
              Caption = 'Non'
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Calisto MT'
              Font.Style = []
              ParentFont = False
              TabOrder = 9
            end
            object EditPositionTypeMouvement: TEdit
              Left = 184
              Top = 272
              Width = 49
              Height = 19
              Color = clSilver
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Calisto MT'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 10
            end
            object EditCodeTypeMouvement: TEdit
              Left = 184
              Top = 296
              Width = 121
              Height = 19
              Color = clSilver
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Calisto MT'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 11
            end
            object EditDesignationTypeMouvement: TEdit
              Left = 184
              Top = 320
              Width = 289
              Height = 19
              Color = clSilver
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Calisto MT'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 12
            end
            object RBAvecDateExecution: TCheckBox
              Left = 16
              Top = 232
              Width = 49
              Height = 17
              Caption = 'Non'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Calisto MT'
              Font.Style = []
              ParentFont = False
              TabOrder = 13
            end
            object EditListeAppartenanceCodeMouvement: TEdit
              Left = 360
              Top = 224
              Width = 113
              Height = 19
              Color = clSilver
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Calisto MT'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 14
            end
            object RBAvecLocalisationGeographique: TCheckBox
              Left = 72
              Top = 232
              Width = 49
              Height = 17
              Caption = 'Non'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Calisto MT'
              Font.Style = []
              ParentFont = False
              TabOrder = 15
            end
            object EditTypeStock: TEdit
              Left = 360
              Top = 152
              Width = 49
              Height = 19
              Color = clSilver
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Calisto MT'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 16
            end
            object EditOrdreListeMouvement: TEdit
              Left = 440
              Top = 8
              Width = 41
              Height = 19
              BiDiMode = bdRightToLeft
              Color = 13303754
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 56576
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 17
            end
            object EditSigneDebitCredit: TEdit
              Left = 16
              Top = 200
              Width = 33
              Height = 25
              Color = clSilver
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Calisto MT'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 18
            end
          end
          object TypeFormuleAfficher: TPanel
            Left = 8
            Top = 51
            Width = 489
            Height = 41
            Alignment = taLeftJustify
            BevelInner = bvLowered
            Color = 16777156
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Calisto MT'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = TypeFormuleAfficherClick
            object Bevel4: TBevel
              Left = 8
              Top = 72
              Width = 537
              Height = 50
            end
            object Label27: TLabel
              Left = 413
              Top = 8
              Width = 24
              Height = 19
              Caption = 'N'#176':'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Calisto MT'
              Font.Style = []
              ParentFont = False
            end
            object EditCodeTypeFormuleAfficher: TEdit
              Left = 16
              Top = 88
              Width = 89
              Height = 30
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 0
            end
            object EditNumListeMouvement: TEdit
              Left = 440
              Top = 8
              Width = 41
              Height = 19
              Color = clSilver
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
              OnContextPopup = EditNumListeMouvementContextPopup
              OnDblClick = EditNumListeMouvementDblClick
              OnExit = EditNumListeMouvementExit
            end
          end
          object TableauVariable: TStringGrid
            Left = 504
            Top = 4
            Width = 265
            Height = 68
            BiDiMode = bdLeftToRight
            Color = 16117218
            ColCount = 6
            Ctl3D = False
            DefaultColWidth = 35
            DefaultRowHeight = 20
            FixedColor = clInactiveCaptionText
            FixedCols = 3
            RowCount = 25
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goAlwaysShowEditor]
            ParentBiDiMode = False
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
            OnClick = TableauVariableClick
            OnKeyPress = TableauVariableKeyPress
            ColWidths = (
              35
              2
              2
              99
              84
              63)
          end
          object AfficheValeur: TPanel
            Left = 504
            Top = 4
            Width = 265
            Height = 68
            BevelInner = bvLowered
            Color = 8454143
            TabOrder = 3
            Visible = False
            OnExit = AfficheValeurExit
            object CadreAfficheValeur: TBevel
              Left = 5
              Top = 5
              Width = 255
              Height = 58
            end
            object TypeValeur: TLabel
              Left = 98
              Top = 35
              Width = 41
              Height = 16
              Caption = '..........'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object NomVariable: TLabel
              Left = 13
              Top = 9
              Width = 41
              Height = 16
              Caption = '..........'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object EditValeur: TEdit
              Left = 12
              Top = 29
              Width = 85
              Height = 26
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              OnKeyDown = EditValeurKeyDown
              OnKeyPress = EditValeurKeyPress
            end
            object RBAppliqueVarAll: TCheckBox
              Left = 208
              Top = 16
              Width = 41
              Height = 17
              Alignment = taLeftJustify
              BiDiMode = bdLeftToRight
              Caption = 'All !'
              Checked = True
              ParentBiDiMode = False
              State = cbChecked
              TabOrder = 1
              OnClick = RBAppliqueVarAllClick
            end
          end
          object EditReferenceListeMouvement: TRichEdit
            Left = 544
            Top = 73
            Width = 198
            Height = 22
            BevelInner = bvNone
            BevelOuter = bvSpace
            BevelKind = bkFlat
            TabOrder = 5
            OnContextPopup = EditReferenceListeMouvementContextPopup
          end
          object BitBtn48: TBitBtn
            Left = 742
            Top = 72
            Width = 27
            Height = 25
            Caption = '.'
            TabOrder = 6
            OnClick = BitBtn48Click
            Kind = bkHelp
          end
        end
        object AfficheOptions: TPanel
          Left = 8
          Top = 456
          Width = 457
          Height = 193
          BevelInner = bvLowered
          TabOrder = 13
          object Bevel18: TBevel
            Left = 280
            Top = 56
            Width = 169
            Height = 81
          end
          object Bevel1: TBevel
            Left = 280
            Top = 8
            Width = 169
            Height = 41
          end
          object Bevel15: TBevel
            Left = 8
            Top = 104
            Width = 265
            Height = 33
          end
          object Label120: TLabel
            Left = 32
            Top = 81
            Width = 42
            Height = 13
            Caption = 'Montant:'
          end
          object EditTitreChiffreEnLettres: TMemo
            Left = 8
            Top = 145
            Width = 265
            Height = 25
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 3
          end
          object EditModePayementImporter: TMemo
            Left = 16
            Top = 144
            Width = 385
            Height = 41
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 5
          end
          object AfficheEtatUtilise: TPanel
            Left = 8
            Top = 11
            Width = 265
            Height = 30
            BevelInner = bvLowered
            Color = 8454143
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            OnDblClick = AfficheEtatUtiliseDblClick
            object EditEtatUtilise: TComboBox
              Left = 8
              Top = 5
              Width = 249
              Height = 21
              HelpType = htKeyword
              BevelKind = bkFlat
              Ctl3D = True
              Enabled = False
              ItemHeight = 13
              ParentCtl3D = False
              TabOrder = 0
              Text = 'Etat Utilis'#233': Facture'
              OnSelect = EditEtatUtiliseSelect
              Items.Strings = (
                'Etat Utilis'#233': Facture'
                'Etat Utilis'#233': Bon Quantitatif'
                'Etat Utilis'#233': Bon Valoris'#233
                'Etat Utilis'#233': Etat standard'
                'Etat Utilis'#233': Etat Double'
                'Etat Utilis'#233': Ticket'
                'Etat Utilis'#233': Ticket Pont Bascule'
                'Etat Utilis'#233': Bon de Route'
                'Etat Utilis'#233': Pont Bascule')
            end
          end
          object BitImprimerMouvement: TBitBtn
            Left = 285
            Top = 64
            Width = 159
            Height = 25
            Caption = 'Imprimer'
            TabOrder = 1
            OnClick = BitImprimerMouvementClick
            Kind = bkHelp
          end
          object EditChiffreEnLettres: TMemo
            Left = 8
            Top = 144
            Width = 441
            Height = 41
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 2
            OnDblClick = EditChiffreEnLettresDblClick
          end
          object EditNumAvis: TEdit
            Left = 80
            Top = 54
            Width = 193
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 4
            OnDblClick = EditNumAvisDblClick
          end
          object BitBtn26: TBitBtn
            Left = 8
            Top = 50
            Width = 65
            Height = 25
            Caption = 'Avis !'
            TabOrder = 6
            OnClick = BitBtn26Click
            Kind = bkHelp
          end
          object EditMontantAvis: TMemo
            Left = 80
            Top = 77
            Width = 193
            Height = 19
            Alignment = taRightJustify
            Color = clWhite
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 7
          end
          object BitValidationListeMouvement: TBitBtn
            Left = 286
            Top = 16
            Width = 155
            Height = 25
            Caption = 'Valider le Mouvement'
            TabOrder = 8
            OnClick = BitValidationListeMouvementClick
            Kind = bkAll
          end
          object Panel3: TPanel
            Left = 285
            Top = 97
            Width = 159
            Height = 33
            BevelInner = bvLowered
            TabOrder = 9
            object RadioGroup19: TRadioGroup
              Left = 5
              Top = 3
              Width = 150
              Height = 25
              TabOrder = 2
            end
            object RBFacturePortrait: TRadioButton
              Left = 13
              Top = 9
              Width = 65
              Height = 17
              Caption = 'Portrait'
              Checked = True
              TabOrder = 0
              TabStop = True
              OnClick = RBFacturePortraitClick
            end
            object RBFacturePaysage: TRadioButton
              Left = 81
              Top = 9
              Width = 65
              Height = 17
              Caption = 'Paysage'
              TabOrder = 1
              OnClick = RBFacturePaysageClick
            end
          end
          object RBApercuAvantImpression: TCheckBox
            Left = 248
            Top = 112
            Width = 17
            Height = 17
            Caption = 'Ap'#233'r'#231'u avant impression'
            Checked = True
            State = cbChecked
            TabOrder = 10
            OnClick = RBApercuAvantImpressionClick
          end
        end
        object EditDateDetailMouvement: TDateTimePicker
          Left = 592
          Top = 214
          Width = 186
          Height = 21
          BevelKind = bkFlat
          CalAlignment = dtaLeft
          Date = 40987.2292304977
          Time = 40987.2292304977
          DateFormat = dfLong
          DateMode = dmComboBox
          Kind = dtkDate
          ParseInput = False
          TabOrder = 0
          OnCloseUp = EditDateDetailMouvementCloseUp
          OnExit = EditDateDetailMouvementExit
          OnKeyDown = EditDateDetailMouvementKeyDown
        end
        object TableauDetaiMouvement: TStringGrid
          Left = 8
          Top = 247
          Width = 777
          Height = 205
          Cursor = crHandPoint
          Color = cl3DLight
          ColCount = 8
          Ctl3D = False
          DefaultColWidth = 30
          RowCount = 16
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSizing, goColSizing, goEditing, goAlwaysShowEditor]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          OnClick = TableauDetaiMouvementClick
          OnContextPopup = TableauDetaiMouvementContextPopup
          OnDblClick = TableauDetaiMouvementDblClick
          OnDrawCell = TableauDetaiMouvementDrawCell
          OnEnter = TableauDetaiMouvementEnter
          OnExit = TableauDetaiMouvementExit
          OnKeyDown = TableauDetaiMouvementKeyDown
          OnKeyPress = TableauDetaiMouvementKeyPress
          OnMouseWheelDown = TableauDetaiMouvementMouseWheelDown
          OnMouseWheelUp = TableauDetaiMouvementMouseWheelUp
          RowHeights = (
            24
            24
            24
            24
            24
            24
            24
            24
            24
            24
            24
            24
            24
            24
            24
            24)
        end
        object TableauFormules: TStringGrid
          Left = 472
          Top = 456
          Width = 313
          Height = 121
          Color = 16117218
          ColCount = 6
          Ctl3D = False
          DefaultColWidth = 55
          DefaultRowHeight = 20
          FixedCols = 5
          RowCount = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goAlwaysShowEditor]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          OnContextPopup = TableauFormulesContextPopup
          OnDblClick = TableauFormulesDblClick
          RowHeights = (
            20
            20
            20
            20
            19
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20)
        end
        object EditTiersConserne: TEdit
          Left = 88
          Top = 214
          Width = 313
          Height = 22
          Color = 12320767
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
          OnEnter = EditTiersConserneEnter
          OnKeyDown = EditTiersConserneKeyDown
          OnKeyPress = EditTiersConserneKeyPress
          OnKeyUp = EditTiersConserneKeyUp
        end
        object CadreProjet: TPanel
          Left = 16
          Top = 104
          Width = 761
          Height = 41
          Alignment = taLeftJustify
          BevelInner = bvLowered
          Color = 16777156
          TabOrder = 15
          object LabelIndiquerTypeProjet: TLabel
            Left = 14
            Top = 16
            Width = 30
            Height = 13
            Alignment = taRightJustify
            Caption = 'Projet:'
          end
          object Label59: TLabel
            Left = 414
            Top = 16
            Width = 56
            Height = 13
            Alignment = taRightJustify
            Caption = 'Destination:'
          end
          object EditTableauSelection: TEdit
            Left = 304
            Top = 12
            Width = 97
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 2
          end
          object EditNumProjet: TEdit
            Left = 48
            Top = 12
            Width = 65
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            OnEnter = EditNumProjetEnter
            OnKeyDown = EditNumProjetKeyDown
          end
          object EditNomProjet: TEdit
            Left = 112
            Top = 12
            Width = 289
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
          end
          object EditInfoAdresseExecutionMouvement: TMemo
            Left = 480
            Top = 4
            Width = 241
            Height = 35
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
          end
          object RBInfoAdresseExecutionMouvement: TCheckBox
            Left = 724
            Top = 3
            Width = 25
            Height = 22
            Caption = '!'
            TabOrder = 4
            OnClick = RBInfoAdresseExecutionMouvementClick
          end
        end
        object AfficheOptionDetailMouvement: TPanel
          Left = 792
          Top = 8
          Width = 529
          Height = 646
          BevelInner = bvLowered
          Caption = 'Options D'#233'tail Mouvement'
          Color = 8454143
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
          TabOrder = 14
          OnDblClick = AfficheOptionDetailMouvementDblClick
          OnExit = AfficheOptionDetailMouvementExit
          object CadreBitNouveauMouvement: TBevel
            Left = 8
            Top = 8
            Width = 513
            Height = 41
          end
          object RBActiveTableauListeMouvementClick: TCheckBox
            Left = 208
            Top = 56
            Width = 17
            Height = 17
            Checked = True
            Enabled = False
            State = cbChecked
            TabOrder = 12
          end
          object AfficheExecutionMouvement: TPanel
            Left = 8
            Top = 400
            Width = 512
            Height = 217
            BevelOuter = bvLowered
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            Visible = False
            object Bevel17: TBevel
              Left = 184
              Top = 168
              Width = 161
              Height = 41
            end
            object AfficheSansDateExecution: TPanel
              Left = 272
              Top = 8
              Width = 225
              Height = 153
              BevelInner = bvLowered
              Caption = 'Pas de date d'#39'ex'#233'cution !'
              Color = 8454016
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object AfficheSansLocalisationGeographique: TPanel
              Left = 8
              Top = 8
              Width = 249
              Height = 153
              BevelInner = bvLowered
              Caption = 'Pas de localisation G'#233'ographique !'
              Color = 16777088
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object BitValiderExecutionMouvement: TBitBtn
              Left = 192
              Top = 176
              Width = 145
              Height = 25
              Caption = 'Valider l'#39'Ex'#233'cution !'
              TabOrder = 0
              OnClick = BitValiderExecutionMouvementClick
              Kind = bkAll
            end
            object AfficheAvecLocalisationGeographique: TPanel
              Left = 8
              Top = 8
              Width = 249
              Height = 153
              BevelInner = bvLowered
              Color = 16777088
              TabOrder = 1
              object TitrePays: TLabel
                Left = 7
                Top = 12
                Width = 23
                Height = 13
                Caption = 'Pays'
              end
              object TitreWilaya: TLabel
                Left = 7
                Top = 35
                Width = 32
                Height = 13
                Caption = 'Wilaya'
              end
              object TitreDaira: TLabel
                Left = 7
                Top = 60
                Width = 25
                Height = 13
                Caption = 'Daira'
              end
              object TitreCommune: TLabel
                Left = 7
                Top = 84
                Width = 47
                Height = 13
                Caption = 'Commune'
              end
              object Label35: TLabel
                Left = 7
                Top = 132
                Width = 41
                Height = 13
                Caption = 'Adresse:'
              end
              object TitreZone: TLabel
                Left = 7
                Top = 108
                Width = 25
                Height = 13
                Caption = 'Zone'
              end
              object EditCodeZoneExecutionMouvement: TEdit
                Left = 64
                Top = 104
                Width = 33
                Height = 19
                Ctl3D = False
                ParentCtl3D = False
                TabOrder = 0
              end
              object EditCodePaysExecutionMouvement: TEdit
                Left = 64
                Top = 8
                Width = 33
                Height = 19
                Ctl3D = False
                ParentCtl3D = False
                TabOrder = 1
              end
              object EditCodeWilayaExecutionMouvement: TEdit
                Left = 64
                Top = 32
                Width = 33
                Height = 19
                Ctl3D = False
                ParentCtl3D = False
                TabOrder = 2
              end
              object EditCodeDairaExecutionMouvement: TEdit
                Left = 64
                Top = 56
                Width = 33
                Height = 19
                Ctl3D = False
                ParentCtl3D = False
                TabOrder = 3
              end
              object EditCodeCommuneExecutionMouvement: TEdit
                Left = 64
                Top = 80
                Width = 33
                Height = 19
                Ctl3D = False
                ParentCtl3D = False
                TabOrder = 4
              end
              object EditAdresseExecutionMouvement: TEdit
                Left = 64
                Top = 128
                Width = 161
                Height = 19
                Ctl3D = False
                ParentCtl3D = False
                TabOrder = 5
                OnEnter = EditAdresseExecutionMouvementEnter
                OnKeyDown = EditAdresseExecutionMouvementKeyDown
              end
              object EditPaysExecutionMouvement: TEdit
                Left = 64
                Top = 8
                Width = 161
                Height = 19
                Ctl3D = False
                ParentCtl3D = False
                TabOrder = 6
                OnEnter = EditPaysExecutionMouvementEnter
                OnKeyDown = EditPaysExecutionMouvementKeyDown
              end
              object EditWilayaExecutionMouvement: TEdit
                Left = 64
                Top = 32
                Width = 161
                Height = 19
                Ctl3D = False
                ParentCtl3D = False
                TabOrder = 7
                OnEnter = EditWilayaExecutionMouvementEnter
                OnKeyDown = EditWilayaExecutionMouvementKeyDown
              end
              object EditDairaExecutionMouvement: TEdit
                Left = 64
                Top = 56
                Width = 161
                Height = 19
                Ctl3D = False
                ParentCtl3D = False
                TabOrder = 8
                OnEnter = EditDairaExecutionMouvementEnter
                OnKeyDown = EditDairaExecutionMouvementKeyDown
              end
              object EditCommuneExecutionMouvement: TEdit
                Left = 64
                Top = 80
                Width = 161
                Height = 19
                Ctl3D = False
                ParentCtl3D = False
                TabOrder = 9
                OnEnter = EditCommuneExecutionMouvementEnter
                OnKeyDown = EditCommuneExecutionMouvementKeyDown
              end
              object EditZoneExecutionMouvement: TEdit
                Left = 64
                Top = 104
                Width = 161
                Height = 19
                Ctl3D = False
                ParentCtl3D = False
                TabOrder = 10
                OnEnter = EditZoneExecutionMouvementEnter
                OnKeyDown = EditZoneExecutionMouvementKeyDown
              end
              object RBPaysExecutionMouvement: TCheckBox
                Left = 228
                Top = 8
                Width = 17
                Height = 17
                TabOrder = 11
              end
              object RBWilayaExecutionMouvement: TCheckBox
                Left = 228
                Top = 32
                Width = 17
                Height = 17
                TabOrder = 12
              end
              object RBDairaExecutionMouvement: TCheckBox
                Left = 228
                Top = 56
                Width = 17
                Height = 17
                TabOrder = 13
              end
              object RBCommuneExecutionMouvement: TCheckBox
                Left = 228
                Top = 80
                Width = 17
                Height = 17
                TabOrder = 14
              end
              object RBZoneExecutionMouvement: TCheckBox
                Left = 228
                Top = 104
                Width = 17
                Height = 17
                Checked = True
                State = cbChecked
                TabOrder = 15
              end
              object RBAdresseExecutionMouvement: TCheckBox
                Left = 228
                Top = 128
                Width = 17
                Height = 17
                TabOrder = 16
              end
            end
            object AfficheAvecDateExecution: TPanel
              Left = 272
              Top = 8
              Width = 225
              Height = 153
              BevelInner = bvLowered
              Color = 8454016
              TabOrder = 2
              object Label34: TLabel
                Left = 7
                Top = 92
                Width = 84
                Height = 13
                Caption = 'Date d'#39'Ex'#233'cution:'
              end
              object RadioGroup9: TRadioGroup
                Left = 8
                Top = 11
                Width = 209
                Height = 73
                Caption = 'Ex'#233'cution !'
                TabOrder = 0
              end
              object OKExecutionOui: TRadioButton
                Left = 16
                Top = 32
                Width = 145
                Height = 17
                Caption = 'Op'#233'ration Ex'#233'cut'#233'e !'
                TabOrder = 1
                OnClick = OKExecutionOuiClick
              end
              object OKExecutionNon: TRadioButton
                Left = 16
                Top = 56
                Width = 145
                Height = 17
                Caption = 'Op'#233'ration Non Ex'#233'cut'#233'e !'
                Checked = True
                TabOrder = 2
                TabStop = True
                OnClick = OKExecutionNonClick
              end
              object EditDateExecutionMouvement: TDateTimePicker
                Left = 7
                Top = 112
                Width = 202
                Height = 21
                CalAlignment = dtaLeft
                Date = 42171.4316180093
                Time = 42171.4316180093
                DateFormat = dfLong
                DateMode = dmComboBox
                Kind = dtkDate
                ParseInput = False
                TabOrder = 3
                OnEnter = EditDateExecutionMouvementEnter
                OnKeyDown = EditDateExecutionMouvementKeyDown
              end
            end
          end
          object TableauListeMouvement: TStringGrid
            Left = 8
            Top = 80
            Width = 513
            Height = 313
            Ctl3D = False
            FixedCols = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            OnClick = TableauListeMouvementClick
            OnContextPopup = TableauListeMouvementContextPopup
            OnDblClick = TableauListeMouvementDblClick
            OnDrawCell = TableauListeMouvementDrawCell
            OnEnter = TableauListeMouvementEnter
            OnKeyDown = TableauListeMouvementKeyDown
            OnKeyPress = TableauListeMouvementKeyPress
            ColWidths = (
              64
              64
              63
              64
              63)
            RowHeights = (
              24
              24
              24
              24
              24)
          end
          object BitNouveauMouvement: TBitBtn
            Left = 16
            Top = 16
            Width = 497
            Height = 25
            Caption = 'Nouveau mouvement !'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = BitNouveauMouvementClick
            OnContextPopup = BitNouveauMouvementContextPopup
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
          object RBValidationDetailMouvement: TCheckBox
            Left = 10
            Top = 623
            Width = 225
            Height = 17
            Caption = 'D'#233'tails Mouvements Valid'#233's !'
            Checked = True
            State = cbChecked
            TabOrder = 2
            OnClick = RBValidationDetailMouvementClick
          end
          object RBDetailMouvementAfficher: TCheckBox
            Left = 272
            Top = 625
            Width = 185
            Height = 17
            Caption = 'D'#233'tails du Mouvement Affich'#233' !'
            Checked = True
            State = cbChecked
            TabOrder = 3
            OnClick = RBDetailMouvementAfficherClick
          end
          object TableauLocalisationGeographique: TStringGrid
            Left = 112
            Top = 112
            Width = 257
            Height = 276
            Color = 16777196
            ColCount = 3
            Ctl3D = False
            DefaultColWidth = 30
            FixedColor = 16777170
            FixedCols = 2
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
            ParentCtl3D = False
            TabOrder = 6
            Visible = False
            OnDrawCell = TableauLocalisationGeographiqueDrawCell
            OnKeyDown = TableauLocalisationGeographiqueKeyDown
            ColWidths = (
              30
              2
              194)
            RowHeights = (
              24
              24)
          end
          object RadioGroup10: TRadioGroup
            Left = 8
            Top = 49
            Width = 193
            Height = 26
            TabOrder = 8
          end
          object RBListeDetailMouvementParDate: TRadioButton
            Left = 120
            Top = 56
            Width = 73
            Height = 17
            Caption = 'Par Date:'
            Checked = True
            TabOrder = 10
            TabStop = True
            OnClick = RBListeDetailMouvementParDateClick
          end
          object RBListeDetailMouvementParMois: TRadioButton
            Left = 16
            Top = 56
            Width = 73
            Height = 17
            Caption = 'Par Mois:'
            TabOrder = 9
            OnClick = RBListeDetailMouvementParMoisClick
          end
          object EditExecutionProcAfficheListeMouvementPointeur: TEdit
            Left = 232
            Top = 56
            Width = 17
            Height = 19
            Ctl3D = False
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 13
            Text = '1'
          end
          object EditExecutionTimerImporterDetailListeMouvement: TEdit
            Left = 256
            Top = 56
            Width = 17
            Height = 19
            Ctl3D = False
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 14
            Text = '0'
          end
          object EditChercheDateDetailMouvement: TDateTimePicker
            Left = 328
            Top = 54
            Width = 186
            Height = 21
            BevelKind = bkFlat
            CalAlignment = dtaLeft
            Date = 42152.4136040509
            Time = 42152.4136040509
            DateFormat = dfLong
            DateMode = dmComboBox
            Kind = dtkDate
            ParseInput = False
            TabOrder = 4
            Visible = False
            OnChange = EditChercheDateDetailMouvementChange
            OnKeyDown = EditChercheDateDetailMouvementKeyDown
          end
          object AfficheParMois: TPanel
            Left = 280
            Top = 50
            Width = 241
            Height = 29
            BevelInner = bvLowered
            Color = 11599792
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            Visible = False
            object Label44: TLabel
              Left = 8
              Top = 8
              Width = 25
              Height = 13
              Caption = 'Mois:'
            end
            object Label51: TLabel
              Left = 128
              Top = 8
              Width = 34
              Height = 13
              Caption = 'Ann'#233'e:'
            end
            object EditMois: TComboBox
              Left = 40
              Top = 4
              Width = 81
              Height = 21
              BevelKind = bkFlat
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 13
              ItemIndex = 0
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              Text = 'Janvier'
              OnChange = EditMoisChange
              OnEnter = EditMoisEnter
              OnKeyDown = EditMoisKeyDown
              OnKeyPress = EditMoisKeyPress
              OnSelect = EditMoisSelect
              Items.Strings = (
                'Janvier'
                'F'#233'vrier'
                'Mars'
                'Avril'
                'Mai'
                'Juin'
                'Juillet'
                'Ao'#251't'
                'Septembre'
                'Octobre'
                'Novembre'
                'D'#233'cembre')
            end
            object EditAnnee: TComboBox
              Left = 168
              Top = 4
              Width = 65
              Height = 21
              BevelKind = bkFlat
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 13
              ItemIndex = 0
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
              Text = '2014'
              OnEnter = EditAnneeEnter
              OnSelect = EditAnneeSelect
              Items.Strings = (
                '2014'
                '2015')
            end
          end
          object AfficheListeMouvementPeriodique: TPanel
            Left = 48
            Top = 120
            Width = 457
            Height = 217
            BevelInner = bvLowered
            Color = 8454143
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 15
            Visible = False
            OnMouseDown = AfficheListeMouvementPeriodiqueMouseDown
            object Bevel85: TBevel
              Left = 8
              Top = 8
              Width = 89
              Height = 41
            end
            object Bevel86: TBevel
              Left = 360
              Top = 8
              Width = 89
              Height = 41
            end
            object Bevel90: TBevel
              Left = 112
              Top = 8
              Width = 233
              Height = 41
            end
            object BitBtn34: TBitBtn
              Left = 16
              Top = 16
              Width = 75
              Height = 25
              TabOrder = 0
              OnClick = BitBtn34Click
              Kind = bkCancel
            end
            object BitBtn36: TBitBtn
              Left = 368
              Top = 16
              Width = 75
              Height = 25
              Caption = 'Valider'
              TabOrder = 1
              OnClick = BitBtn36Click
              Kind = bkAll
            end
            object AfficheCacheHeure: TPanel
              Left = 8
              Top = 176
              Width = 441
              Height = 33
              BevelInner = bvLowered
              Enabled = False
              TabOrder = 2
              object Label119: TLabel
                Left = 8
                Top = 12
                Width = 32
                Height = 13
                Caption = 'Heure:'
              end
              object EditHeureLMBeginPriodique: TDateTimePicker
                Left = 48
                Top = 4
                Width = 169
                Height = 21
                CalAlignment = dtaLeft
                Date = 44336.9006135069
                Time = 44336.9006135069
                DateFormat = dfLong
                DateMode = dmComboBox
                Kind = dtkTime
                ParseInput = False
                TabOrder = 0
              end
              object EditHeureLMEndPriodique: TDateTimePicker
                Left = 224
                Top = 4
                Width = 177
                Height = 21
                CalAlignment = dtaLeft
                Date = 44336.9006135069
                Time = 44336.9006135069
                DateFormat = dfLong
                DateMode = dmComboBox
                Kind = dtkTime
                ParseInput = False
                TabOrder = 1
              end
            end
            object AfficheCacheDate: TPanel
              Left = 8
              Top = 136
              Width = 441
              Height = 33
              BevelInner = bvLowered
              Enabled = False
              TabOrder = 3
              object Label118: TLabel
                Left = 8
                Top = 12
                Width = 26
                Height = 13
                Caption = 'Date:'
              end
              object EditDateLMBeginPriodique: TDateTimePicker
                Left = 48
                Top = 4
                Width = 169
                Height = 21
                CalAlignment = dtaLeft
                Date = 44336.9006135069
                Time = 44336.9006135069
                DateFormat = dfLong
                DateMode = dmComboBox
                Kind = dtkDate
                ParseInput = False
                TabOrder = 0
              end
              object EditDateLMEndPriodique: TDateTimePicker
                Left = 224
                Top = 4
                Width = 177
                Height = 21
                CalAlignment = dtaLeft
                Date = 44336.9006135069
                Time = 44336.9006135069
                DateFormat = dfLong
                DateMode = dmComboBox
                Kind = dtkDate
                ParseInput = False
                TabOrder = 1
              end
            end
            object AfficheCacheNumLM: TPanel
              Left = 8
              Top = 96
              Width = 441
              Height = 33
              BevelInner = bvLowered
              Enabled = False
              TabOrder = 4
              object Label117: TLabel
                Left = 8
                Top = 12
                Width = 25
                Height = 13
                Caption = 'Num:'
              end
              object EditNumLMBeginPriodique: TEdit
                Left = 48
                Top = 6
                Width = 65
                Height = 19
                Ctl3D = False
                ParentCtl3D = False
                ReadOnly = True
                TabOrder = 0
                Text = '0'
              end
              object IncrimenteEditNumLMBeginUtilisateurPriodique: TUpDown
                Left = 113
                Top = 6
                Width = 17
                Height = 19
                Associate = EditNumLMBeginPriodique
                Min = 0
                Position = 0
                TabOrder = 1
                Thousands = False
                Wrap = False
              end
              object EditNumLMEndPriodique: TEdit
                Left = 224
                Top = 6
                Width = 65
                Height = 19
                Ctl3D = False
                ParentCtl3D = False
                ReadOnly = True
                TabOrder = 2
                Text = '0'
              end
              object IncrimenteEditNumLMEndUtilisateurPriodique: TUpDown
                Left = 289
                Top = 6
                Width = 17
                Height = 19
                Associate = EditNumLMEndPriodique
                Min = 0
                Position = 0
                TabOrder = 3
                Thousands = False
                Wrap = False
              end
            end
            object AfficheCacheUtilisateur: TPanel
              Left = 8
              Top = 56
              Width = 441
              Height = 33
              BevelInner = bvLowered
              Enabled = False
              TabOrder = 5
              object Label116: TLabel
                Left = 8
                Top = 12
                Width = 46
                Height = 13
                Caption = 'Utilisateur'
              end
              object EditCodeUtilisateurPriodique: TEdit
                Left = 64
                Top = 6
                Width = 65
                Height = 19
                Ctl3D = False
                ParentCtl3D = False
                ReadOnly = True
                TabOrder = 0
                OnEnter = EditCodeUtilisateurPriodiqueEnter
              end
              object EditUtilisateurPriodique: TEdit
                Left = 128
                Top = 6
                Width = 281
                Height = 19
                Ctl3D = False
                ParentCtl3D = False
                ReadOnly = True
                TabOrder = 1
              end
            end
            object RBAfficheCacheUtilisateur: TCheckBox
              Left = 424
              Top = 64
              Width = 17
              Height = 17
              Caption = '.'
              TabOrder = 6
              OnClick = RBAfficheCacheUtilisateurClick
            end
            object RBAfficheCacheNumLM: TCheckBox
              Left = 424
              Top = 104
              Width = 17
              Height = 17
              Caption = '.'
              TabOrder = 7
              OnClick = RBAfficheCacheNumLMClick
            end
            object RBAfficheCacheDate: TCheckBox
              Left = 424
              Top = 144
              Width = 17
              Height = 17
              Caption = '.'
              TabOrder = 8
              OnClick = RBAfficheCacheDateClick
            end
            object RBAfficheCacheHeure: TCheckBox
              Left = 424
              Top = 184
              Width = 17
              Height = 17
              Caption = '.'
              TabOrder = 9
              OnClick = RBAfficheCacheHeureClick
            end
            object TableauUtilisateurPeriodique: TStringGrid
              Left = 360
              Top = 194
              Width = 320
              Height = 120
              Color = 8454016
              ColCount = 3
              Ctl3D = False
              FixedColor = 8453888
              RowCount = 2
              ParentCtl3D = False
              TabOrder = 10
              Visible = False
              OnDblClick = TableauUtilisateurPeriodiqueDblClick
              ColWidths = (
                64
                64
                64)
            end
            object BitBtn43: TBitBtn
              Left = 120
              Top = 16
              Width = 217
              Height = 25
              Caption = 'Comptabliser la situation'
              TabOrder = 11
              OnClick = BitBtn43Click
              Kind = bkHelp
            end
          end
          object AfficheCliqueDroitTableauListeMouvement: TControlBar
            Left = 96
            Top = 369
            Width = 257
            Height = 272
            Color = 16121555
            ParentColor = False
            TabOrder = 11
            Visible = False
            OnMouseMove = AfficheCliqueDroitTableauListeMouvementMouseMove
            object StaticText1: TStaticText
              Left = 11
              Top = 2
              Width = 240
              Height = 22
              Caption = 'Transferer le mouvement vers un autres                 '
              Color = 16121555
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
              OnClick = StaticText1Click
              OnMouseMove = StaticText1MouseMove
            end
            object StaticText2: TStaticText
              Left = 11
              Top = 106
              Width = 240
              Height = 22
              Caption = 'Imprimer code barre mouvement                             '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = StaticText2Click
              OnMouseMove = StaticText2MouseMove
            end
            object StaticText3: TStaticText
              Left = 11
              Top = 54
              Width = 240
              Height = 22
              Caption = 'Contr'#244'ler les anomalies probables                           '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnClick = StaticText3Click
              OnMouseMove = StaticText3MouseMove
            end
            object StaticText4: TStaticText
              Left = 11
              Top = 80
              Width = 240
              Height = 22
              Caption = 
                'Imprimer l'#39#233'tat financier                                       ' +
                '    '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnClick = StaticText4Click
              OnMouseMove = StaticText4MouseMove
            end
            object StaticText5: TStaticText
              Left = 11
              Top = 28
              Width = 240
              Height = 22
              Caption = 'Annuler le transfert mouvement                              '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              OnClick = StaticText5Click
              OnMouseMove = StaticText5MouseMove
            end
            object StaticText7: TStaticText
              Left = 11
              Top = 132
              Width = 240
              Height = 22
              Caption = 'Imprimer le bordereau  remise code barre               '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              OnClick = StaticText7Click
              OnMouseMove = StaticText7MouseMove
            end
            object StaticText8: TStaticText
              Left = 11
              Top = 158
              Width = 240
              Height = 22
              Caption = 'Sauvegarder D'#233'tail mouvement dans un Support  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              OnClick = StaticText8Click
              OnMouseMove = StaticText8MouseMove
            end
            object StaticText9: TStaticText
              Left = 11
              Top = 184
              Width = 240
              Height = 22
              Caption = 'Importer D'#233'tail mouvement du Support                   '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              OnClick = StaticText9Click
              OnMouseMove = StaticText9MouseMove
            end
            object StaticText10: TStaticText
              Left = 11
              Top = 210
              Width = 240
              Height = 22
              Caption = 
                'Sauvegarder                                                     ' +
                '      '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
              OnMouseMove = StaticText10MouseMove
            end
          end
          object EditModeSelection: TEdit
            Left = 109
            Top = 19
            Width = 65
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 16
          end
          object BitBtn51: TBitBtn
            Left = 8
            Top = 8
            Width = 99
            Height = 41
            Caption = 'Modifier'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 17
            OnClick = BitBtn51Click
            Kind = bkRetry
          end
        end
        object AfficheListeAppartenanceMouvement: TPanel
          Left = 895
          Top = 120
          Width = 529
          Height = 648
          BevelInner = bvLowered
          BorderWidth = 1
          Color = 12189625
          TabOrder = 20
          Visible = False
          OnMouseDown = AfficheListeAppartenanceMouvementMouseDown
          object Bevel42: TBevel
            Left = 360
            Top = 312
            Width = 161
            Height = 65
          end
          object Bevel31: TBevel
            Left = 8
            Top = 56
            Width = 185
            Height = 41
          end
          object Bevel30: TBevel
            Left = 8
            Top = 8
            Width = 513
            Height = 41
          end
          object Label2: TLabel
            Left = 40
            Top = 20
            Width = 54
            Height = 13
            Caption = 'P'#233'riode du:'
          end
          object Label52: TLabel
            Left = 304
            Top = 20
            Width = 16
            Height = 13
            Caption = 'Au:'
          end
          object Label53: TLabel
            Left = 16
            Top = 68
            Width = 80
            Height = 13
            Caption = 'Avec Avis Etabli:'
          end
          object Bevel33: TBevel
            Left = 360
            Top = 232
            Width = 161
            Height = 41
          end
          object Bevel34: TBevel
            Left = 360
            Top = 136
            Width = 161
            Height = 89
          end
          object Label58: TLabel
            Left = 368
            Top = 320
            Width = 75
            Height = 13
            Caption = 'Montant Global:'
          end
          object Bevel43: TBevel
            Left = 360
            Top = 400
            Width = 161
            Height = 57
          end
          object Bevel59: TBevel
            Left = 424
            Top = 56
            Width = 97
            Height = 41
          end
          object Bevel60: TBevel
            Left = 224
            Top = 56
            Width = 169
            Height = 33
          end
          object InfoLMUF: TLabel
            Left = 362
            Top = 382
            Width = 27
            Height = 13
            Caption = '.........'
          end
          object TableauListeAppartenanceMouvement: TStringGrid
            Left = 8
            Top = 136
            Width = 345
            Height = 321
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            OnClick = TableauListeAppartenanceMouvementClick
            OnContextPopup = TableauListeAppartenanceMouvementContextPopup
            OnDblClick = TableauListeAppartenanceMouvementDblClick
            OnEnter = TableauListeAppartenanceMouvementEnter
            OnKeyDown = TableauListeAppartenanceMouvementKeyDown
            RowHeights = (
              24
              24
              24
              24
              24)
          end
          object EditDateDebutAppartenanceMouvement: TDateTimePicker
            Left = 104
            Top = 16
            Width = 186
            Height = 21
            BevelKind = bkFlat
            CalAlignment = dtaLeft
            Date = 42376.6165538773
            Time = 42376.6165538773
            DateFormat = dfLong
            DateMode = dmComboBox
            Kind = dtkDate
            ParseInput = False
            TabOrder = 1
            OnChange = EditDateDebutAppartenanceMouvementChange
          end
          object EditDateFinAppartenanceMouvement: TDateTimePicker
            Left = 328
            Top = 16
            Width = 186
            Height = 21
            BevelKind = bkFlat
            CalAlignment = dtaLeft
            Date = 42376.6166449884
            Time = 42376.6166449884
            DateFormat = dfLong
            DateMode = dmComboBox
            Kind = dtkDate
            ParseInput = False
            TabOrder = 2
            OnChange = EditDateFinAppartenanceMouvementChange
          end
          object OptionAvecAvisAppartenanceMouvement: TComboBox
            Left = 104
            Top = 64
            Width = 81
            Height = 21
            BevelKind = bkFlat
            Ctl3D = False
            ItemHeight = 13
            ItemIndex = 0
            ParentCtl3D = False
            TabOrder = 3
            Text = 'Tous'
            OnChange = OptionAvecAvisAppartenanceMouvementChange
            OnKeyPress = OptionAvecAvisAppartenanceMouvementKeyPress
            Items.Strings = (
              'Tous'
              'Oui'
              'Non')
          end
          object Panel7: TPanel
            Left = 8
            Top = 104
            Width = 513
            Height = 25
            Caption = 'S'#233'lectionner les mouvements concern'#233's'
            Color = 8454143
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -16
            Font.Name = 'Lucida Calligraphy'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object BitBtn9: TBitBtn
            Left = 368
            Top = 240
            Width = 145
            Height = 25
            TabOrder = 5
            OnClick = BitBtn9Click
            Kind = bkCancel
          end
          object TableauDetaiMouvementAppartenanceMouvemant: TStringGrid
            Left = 8
            Top = 464
            Width = 473
            Height = 177
            Ctl3D = False
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected]
            ParentCtl3D = False
            TabOrder = 6
          end
          object BitBtn11: TBitBtn
            Left = 368
            Top = 144
            Width = 145
            Height = 73
            Caption = 'Valider le chargement'
            TabOrder = 8
            OnClick = BitBtn11Click
            Kind = bkAll
          end
          object EditOrdreListeMouvementAppartenant: TEdit
            Left = 368
            Top = 432
            Width = 145
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 9
            OnDblClick = EditOrdreListeMouvementAppartenantDblClick
          end
          object EditMontantGlobaleAppartenanceMouvement: TMemo
            Left = 368
            Top = 344
            Width = 145
            Height = 25
            Alignment = taRightJustify
            BevelInner = bvLowered
            BevelKind = bkFlat
            Color = clBlack
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Lucida Calligraphy'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 10
          end
          object EditExerciceSourceA: TComboBox
            Left = 432
            Top = 64
            Width = 81
            Height = 21
            BevelKind = bkFlat
            Ctl3D = False
            ItemHeight = 13
            ParentCtl3D = False
            TabOrder = 11
            OnChange = EditExerciceSourceAChange
            OnKeyPress = EditExerciceSourceAKeyPress
          end
          object BitBtn19: TBitBtn
            Left = 232
            Top = 60
            Width = 153
            Height = 25
            Caption = 'Transfert en Fichier Excel'
            TabOrder = 12
            OnClick = BitBtn19Click
            Kind = bkHelp
            Margin = 0
          end
          object EditNbrRowAffiche: TEdit
            Left = 10
            Top = 138
            Width = 25
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 13
            Text = '0'
          end
          object RBModificationOperer: TCheckBox
            Left = 200
            Top = 64
            Width = 17
            Height = 17
            Enabled = False
            TabOrder = 14
          end
          object TableauPositionMouvement: TStringGrid
            Left = 483
            Top = 464
            Width = 37
            Height = 177
            ColCount = 1
            Ctl3D = False
            FixedCols = 0
            RowCount = 10
            ParentCtl3D = False
            ScrollBars = ssNone
            TabOrder = 7
            ColWidths = (
              35)
          end
          object EditNumAvisAppartenanceMouvement: TEdit
            Left = 368
            Top = 406
            Width = 145
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 15
          end
          object AfficherPatienterAutoCalcule: TPanel
            Left = 160
            Top = 336
            Width = 513
            Height = 321
            BevelInner = bvLowered
            Caption = 'Veuillez patienter SVP !'
            Color = 16777088
            TabOrder = 16
            Visible = False
          end
        end
        object EditDataSourceName: TMemo
          Left = 608
          Top = 592
          Width = 177
          Height = 33
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 25
        end
        object EditSourceName: TComboBox
          Left = 472
          Top = 600
          Width = 113
          Height = 21
          BevelKind = bkFlat
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          TabOrder = 26
          Text = 'B.Commande'
          Items.Strings = (
            'B.Commande: ')
        end
        object TableauCompteConcerne: TStringGrid
          Left = 1216
          Top = 488
          Width = 489
          Height = 521
          Color = 16777156
          ColCount = 18
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goAlwaysShowEditor]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 10
          Visible = False
          OnClick = TableauCompteConcerneClick
          OnDblClick = TableauCompteConcerneDblClick
          OnDrawCell = TableauCompteConcerneDrawCell
          OnKeyDown = TableauCompteConcerneKeyDown
          OnKeyPress = TableauCompteConcerneKeyPress
          RowHeights = (
            24
            24
            24
            24
            24)
        end
        object TableauTypeMouvement: TStringGrid
          Left = 1224
          Top = 504
          Width = 489
          Height = 305
          ColCount = 6
          Ctl3D = False
          FixedColor = 13303754
          RowCount = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goAlwaysShowEditor]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 7
          Visible = False
          OnDblClick = TableauTypeMouvementDblClick
          OnDrawCell = TableauTypeMouvementDrawCell
          OnKeyDown = TableauTypeMouvementKeyDown
          ColWidths = (
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
        object TableauMouvement: TStringGrid
          Left = 1208
          Top = 520
          Width = 489
          Height = 305
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
          TabOrder = 6
          Visible = False
          OnDblClick = TableauMouvementDblClick
          OnDrawCell = TableauMouvementDrawCell
          OnKeyDown = TableauMouvementKeyDown
          RowHeights = (
            24
            22
            24
            24
            24)
        end
        object TableauTypeFormule: TStringGrid
          Left = 1200
          Top = 529
          Width = 393
          Height = 240
          ColCount = 4
          Ctl3D = False
          DefaultColWidth = 40
          FixedColor = 16777156
          RowCount = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goAlwaysShowEditor]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          Visible = False
          OnDblClick = TableauTypeFormuleDblClick
          OnDrawCell = TableauTypeFormuleDrawCell
          ColWidths = (
            40
            2
            40
            40)
        end
        object TableauSelections: TStringGrid
          Left = 1184
          Top = 548
          Width = 393
          Height = 256
          Ctl3D = False
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
          ParentCtl3D = False
          TabOrder = 17
          Visible = False
          OnDrawCell = TableauSelectionsDrawCell
          OnKeyDown = TableauSelectionsKeyDown
          RowHeights = (
            24
            24
            24
            24
            24)
        end
        object AfficheNewArticle: TPanel
          Left = 792
          Top = 592
          Width = 529
          Height = 649
          BevelInner = bvLowered
          Color = 8454143
          TabOrder = 23
          Visible = False
          OnMouseDown = AfficheNewArticleMouseDown
          object Bevel44: TBevel
            Left = 8
            Top = 8
            Width = 513
            Height = 169
          end
          object Label60: TLabel
            Left = 52
            Top = 19
            Width = 28
            Height = 13
            Alignment = taRightJustify
            Caption = 'Code:'
          end
          object Label61: TLabel
            Left = 50
            Top = 48
            Width = 30
            Height = 13
            Alignment = taRightJustify
            Caption = 'D'#233'sig:'
          end
          object Label62: TLabel
            Left = 60
            Top = 85
            Width = 20
            Height = 13
            Alignment = taRightJustify
            Caption = 'R'#233'f:'
          end
          object Label63: TLabel
            Left = 57
            Top = 104
            Width = 23
            Height = 13
            Alignment = taRightJustify
            Caption = 'U.M:'
          end
          object Label67: TLabel
            Left = 14
            Top = 145
            Width = 66
            Height = 13
            Alignment = taRightJustify
            Caption = 'Prix de Vente:'
          end
          object CaptionNbrChar: TLabel
            Left = 448
            Top = 80
            Width = 6
            Height = 13
            Caption = '0'
          end
          object CaptionNbrCharLigne: TLabel
            Left = 448
            Top = 96
            Width = 6
            Height = 13
            Caption = '0'
          end
          object Bevel45: TBevel
            Left = 256
            Top = 88
            Width = 177
            Height = 49
          end
          object NomSFl: TLabel
            Left = 488
            Top = 155
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
          object Bevel95: TBevel
            Left = 8
            Top = 192
            Width = 513
            Height = 450
          end
          object Label22: TLabel
            Left = 238
            Top = 19
            Width = 56
            Height = 13
            Alignment = taRightJustify
            Caption = 'Code Barre:'
          end
          object Label121: TLabel
            Left = 22
            Top = 125
            Width = 58
            Height = 13
            Alignment = taRightJustify
            Caption = 'Prix d'#39'achat:'
          end
          object EditModifCodeProduit: TEdit
            Left = 88
            Top = 16
            Width = 65
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 12
          end
          object TableauListeCompteCP: TStringGrid
            Left = 40
            Top = 400
            Width = 425
            Height = 217
            Ctl3D = False
            DefaultColWidth = 40
            DefaultRowHeight = 20
            FixedColor = 8454143
            RowCount = 20
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
            ParentCtl3D = False
            TabOrder = 7
            ColWidths = (
              40
              50
              226
              2
              2)
          end
          object EditRef: TEdit
            Left = 88
            Top = 80
            Width = 121
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            OnKeyDown = EditRefKeyDown
          end
          object EditDesig: TMemo
            Left = 87
            Top = 36
            Width = 346
            Height = 43
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 2
            OnEnter = EditDesigEnter
            OnExit = EditDesigExit
            OnKeyDown = EditDesigKeyDown
            OnKeyPress = EditDesigKeyPress
            OnKeyUp = EditDesigKeyUp
          end
          object EditCodeProduit: TEdit
            Left = 88
            Top = 16
            Width = 81
            Height = 19
            Ctl3D = False
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 3
            OnKeyDown = EditCodeProduitKeyDown
          end
          object EditPrixVente: TEdit
            Left = 88
            Top = 142
            Width = 121
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 4
            OnExit = EditPrixVenteExit
            OnKeyDown = EditPrixVenteKeyDown
          end
          object AfficheSFamille: TPanel
            Left = 16
            Top = 200
            Width = 497
            Height = 441
            BevelInner = bvLowered
            Color = 11268585
            TabOrder = 0
            object Bevel53: TBevel
              Left = 8
              Top = 48
              Width = 481
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
              Left = 279
              Top = 19
              Width = 121
              Height = 13
              Caption = 'Ordre Compte Comptable:'
            end
            object Bevel52: TBevel
              Left = 272
              Top = 8
              Width = 185
              Height = 34
            end
            object EditRequette: TEdit
              Left = 256
              Top = 56
              Width = 73
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 4
            end
            object TableauSFamille: TStringGrid
              Left = 8
              Top = 96
              Width = 489
              Height = 337
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
              RowHeights = (
                20
                20
                20
                20
                20
                20
                20
                20
                20
                20
                20
                20
                20
                20
                20
                20
                20
                20
                20
                20)
            end
            object BitBtn39: TBitBtn
              Left = 460
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
              OnKeyDown = EditRechercheCodeSFamilleKeyDown
              OnKeyPress = EditRechercheCodeSFamilleKeyPress
              OnKeyUp = EditRechercheCodeSFamilleKeyUp
            end
            object EditRechercheDesigSFamille: TEdit
              Left = 160
              Top = 56
              Width = 321
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 3
              OnKeyDown = EditRechercheDesigSFamilleKeyDown
              OnKeyPress = EditRechercheDesigSFamilleKeyPress
              OnKeyUp = EditRechercheDesigSFamilleKeyUp
            end
            object EditOrdreCompteComptableArticle: TEdit
              Left = 407
              Top = 16
              Width = 25
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 5
              Text = '6'
            end
            object UpDown2: TUpDown
              Left = 432
              Top = 16
              Width = 16
              Height = 19
              Associate = EditOrdreCompteComptableArticle
              Min = 1
              Max = 6
              Position = 6
              TabOrder = 6
              Wrap = False
              OnClick = UpDown2Click
            end
          end
          object BitBtn13: TBitBtn
            Left = 480
            Top = 11
            Width = 37
            Height = 25
            Caption = '.'
            TabOrder = 5
            OnClick = BitBtn13Click
            Kind = bkCancel
          end
          object TrackBar1: TTrackBar
            Left = 436
            Top = 19
            Width = 33
            Height = 61
            Max = 14
            Orientation = trVertical
            Frequency = 1
            Position = 0
            SelEnd = 0
            SelStart = 0
            TabOrder = 6
            TickMarks = tmTopLeft
            TickStyle = tsAuto
          end
          object AfficheRechercheOptions: TPanel
            Left = 64
            Top = 486
            Width = 425
            Height = 137
            BevelInner = bvLowered
            Color = 8454143
            TabOrder = 8
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
            object RadioGroup12: TRadioGroup
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
              object RadioGroup13: TRadioGroup
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
          object BitValiderProduit: TBitBtn
            Left = 264
            Top = 96
            Width = 161
            Height = 33
            Caption = 'Valider'
            TabOrder = 9
            OnClick = BitRechercheArticleClick
            Kind = bkAll
          end
          object RBForcerSaisieCodeBarre: TCheckBox
            Left = 416
            Top = 16
            Width = 17
            Height = 17
            Caption = '.'
            TabOrder = 10
          end
          object EditCodeBarre: TEdit
            Left = 296
            Top = 16
            Width = 118
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 11
            OnDblClick = EditCodeBarreDblClick
            OnEnter = EditCodeBarreEnter
            OnKeyDown = EditCodeBarreKeyDown
          end
          object EditUM: TComboBox
            Left = 88
            Top = 100
            Width = 121
            Height = 21
            BevelKind = bkFlat
            Ctl3D = False
            ItemHeight = 13
            ItemIndex = 0
            ParentCtl3D = False
            TabOrder = 13
            Text = 'U     (Unit'#233')'
            OnKeyDown = EditUMKeyDown
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
          object EditPrixAchat: TEdit
            Left = 88
            Top = 122
            Width = 121
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 14
            OnKeyDown = EditPrixAchatKeyDown
          end
        end
        object AffichePatientez: TPanel
          Left = 184
          Top = 190
          Width = 471
          Height = 267
          BevelInner = bvLowered
          BevelWidth = 2
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 33
          Visible = False
          OnMouseDown = AffichePatientezMouseDown
          object RBSuspendreTraitement: TCheckBox
            Left = 325
            Top = 60
            Width = 136
            Height = 17
            Caption = 'Suspendre le traitement'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object RapportTraitementDomiciliation: TMemo
            Left = 8
            Top = 88
            Width = 457
            Height = 169
            TabStop = False
            Color = clBlack
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImeMode = imChinese
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 1
            WantReturns = False
            WordWrap = False
          end
          object Panel24: TPanel
            Left = 8
            Top = 8
            Width = 457
            Height = 41
            Caption = 'Patientez SVP ! ... L'#39'op'#233'ration peut prendre plusieurs minutes.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
        end
        object AfficheListeAvis: TPanel
          Left = -152
          Top = 104
          Width = 777
          Height = 313
          BevelInner = bvLowered
          Color = 8454016
          TabOrder = 22
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
            Top = 56
            Width = 761
            Height = 249
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
            OnChange = EditDateFinAvisChange
          end
          object BitBtn12: TBitBtn
            Left = 688
            Top = 16
            Width = 75
            Height = 25
            TabOrder = 3
            OnClick = BitBtn12Click
            Kind = bkCancel
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
            OnChange = EditEtatOrigineImputationAvisChange
            OnKeyPress = EditEtatOrigineImputationAvisKeyPress
            Items.Strings = (
              'Avis Non Imput'#233's !'
              'Avis Imput'#233's !'
              'Avis Imput'#233's et Non !')
          end
        end
        object AfficheTableauTiersConserne: TPanel
          Left = 560
          Top = 173
          Width = 713
          Height = 401
          BevelInner = bvLowered
          Color = 16777088
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 27
          Visible = False
          OnMouseDown = AfficheTableauTiersConserneMouseDown
          object Bevel68: TBevel
            Left = 8
            Top = 56
            Width = 457
            Height = 33
          end
          object Bevel54: TBevel
            Left = 8
            Top = 8
            Width = 457
            Height = 41
          end
          object Label68: TLabel
            Left = 16
            Top = 24
            Width = 151
            Height = 13
            Caption = 'Information suppl'#233'mentaire tiers:'
          end
          object Bevel55: TBevel
            Left = 472
            Top = 8
            Width = 185
            Height = 41
          end
          object Bevel56: TBevel
            Left = 664
            Top = 8
            Width = 41
            Height = 41
          end
          object TitreEditFunctionFichierConcerne: TLabel
            Left = 89
            Top = 67
            Width = 83
            Height = 13
            Alignment = taRightJustify
            Caption = 'Fichier Concerne:'
          end
          object TableauTiersConserne: TStringGrid
            Left = 16
            Top = 96
            Width = 697
            Height = 297
            Color = 12320767
            Ctl3D = False
            FixedColor = 8454143
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goAlwaysShowEditor]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            OnClick = TableauTiersConserneClick
            OnDblClick = TableauTiersConserneDblClick
            OnKeyDown = TableauTiersConserneKeyDown
          end
          object EditDataTiersSupplementaireModif: TEdit
            Left = 176
            Top = 19
            Width = 281
            Height = 19
            TabOrder = 1
            OnEnter = EditDataTiersSupplementaireModifEnter
            OnKeyDown = EditDataTiersSupplementaireModifKeyDown
            OnKeyUp = EditDataTiersSupplementaireModifKeyUp
          end
          object BitValiderTiers: TBitBtn
            Left = 480
            Top = 16
            Width = 169
            Height = 25
            Caption = 'Valider'
            TabOrder = 2
            OnClick = BitValiderTiersClick
            Kind = bkAll
          end
          object BitBtn18: TBitBtn
            Left = 672
            Top = 16
            Width = 25
            Height = 25
            HelpType = htKeyword
            Caption = '.'
            TabOrder = 3
            OnClick = BitBtn18Click
            Kind = bkCancel
          end
          object EditFunctionFichierConcerne: TComboBox
            Left = 176
            Top = 64
            Width = 281
            Height = 21
            BevelKind = bkFlat
            ItemHeight = 13
            TabOrder = 4
            OnKeyPress = EditFunctionFichierConcerneKeyPress
            OnSelect = EditFunctionFichierConcerneSelect
          end
          object TableauTiersSupplementaire: TStringGrid
            Left = 232
            Top = 96
            Width = 281
            Height = 169
            TabOrder = 5
            Visible = False
            OnKeyDown = TableauTiersSupplementaireKeyDown
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
        end
        object AfficherOperationsListeMouvement: TPanel
          Left = 72
          Top = 72
          Width = 601
          Height = 170
          BevelInner = bvLowered
          Color = clLime
          TabOrder = 36
          Visible = False
          OnExit = AfficherOperationsListeMouvementExit
          object RapportOperationListeMouvement: TMemo
            Left = 8
            Top = 62
            Width = 585
            Height = 99
            Ctl3D = False
            ParentCtl3D = False
            ScrollBars = ssBoth
            TabOrder = 0
          end
          object AfficherNatureOperationsListeMouvement: TPanel
            Left = 8
            Top = 8
            Width = 585
            Height = 41
            BevelInner = bvLowered
            BevelOuter = bvNone
            Color = clLime
            TabOrder = 1
            object BitBtn31: TBitBtn
              Left = 8
              Top = 8
              Width = 75
              Height = 25
              TabOrder = 0
              OnClick = BitBtn31Click
              Kind = bkNo
            end
            object BitOperationListeMouvement: TBitBtn
              Left = 504
              Top = 8
              Width = 75
              Height = 25
              Caption = 'OK'
              ModalResult = 1
              TabOrder = 1
              OnClick = BitOperationListeMouvementClick
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
        end
        object AfficheOperationMoyenTransport: TPanel
          Left = 144
          Top = 200
          Width = 529
          Height = 169
          BevelInner = bvLowered
          Color = 8454143
          TabOrder = 31
          Visible = False
          OnMouseDown = AfficheOperationMoyenTransportMouseDown
          object Bevel62: TBevel
            Left = 8
            Top = 8
            Width = 345
            Height = 153
          end
          object Bevel65: TBevel
            Left = 360
            Top = 120
            Width = 161
            Height = 41
          end
          object Label81: TLabel
            Left = 16
            Top = 179
            Width = 100
            Height = 13
            Caption = 'EditTypeFicheValider'
          end
          object Label82: TLabel
            Left = 16
            Top = 203
            Width = 181
            Height = 13
            Caption = 'EditNumMovementPrelevementValider'
          end
          object Label83: TLabel
            Left = 16
            Top = 227
            Width = 98
            Height = 13
            Caption = 'EditNumFicheValider'
          end
          object Bevel64: TBevel
            Left = 360
            Top = 8
            Width = 161
            Height = 41
          end
          object Bevel66: TBevel
            Left = 360
            Top = 64
            Width = 161
            Height = 41
          end
          object Label71: TLabel
            Left = 16
            Top = 19
            Width = 14
            Height = 13
            Caption = 'P'#176':'
          end
          object Label72: TLabel
            Left = 16
            Top = 43
            Width = 48
            Height = 13
            Caption = 'Transport:'
          end
          object Label76: TLabel
            Left = 16
            Top = 67
            Width = 46
            Height = 13
            Caption = 'Matricule:'
          end
          object Label78: TLabel
            Left = 16
            Top = 91
            Width = 74
            Height = 13
            Caption = 'Nom Chauffeur:'
          end
          object Label79: TLabel
            Left = 16
            Top = 115
            Width = 88
            Height = 13
            Caption = 'Pr'#233'nom Chauffeur:'
          end
          object Label80: TLabel
            Left = 16
            Top = 139
            Width = 68
            Height = 13
            Caption = 'Pi'#232'ce Identite:'
          end
          object Label84: TLabel
            Left = 16
            Top = 251
            Width = 98
            Height = 13
            Caption = 'EditCodeTiersValider'
          end
          object Label85: TLabel
            Left = 16
            Top = 275
            Width = 94
            Height = 13
            Caption = 'EditMatriculeEffectif'
          end
          object Bevel67: TBevel
            Left = 8
            Top = 168
            Width = 345
            Height = 129
          end
          object EditPositionMoyenTransport: TEdit
            Left = 136
            Top = 16
            Width = 57
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
          end
          object EditMoyenTransport: TEdit
            Left = 136
            Top = 40
            Width = 209
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            OnKeyDown = EditMoyenTransportKeyDown
          end
          object EditMatriculeTransport: TEdit
            Left = 136
            Top = 64
            Width = 209
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 2
            OnKeyDown = EditMatriculeTransportKeyDown
          end
          object EditNomChauffeur: TEdit
            Left = 136
            Top = 88
            Width = 209
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
            OnKeyDown = EditNomChauffeurKeyDown
          end
          object EditPrenomChauffeur: TEdit
            Left = 136
            Top = 112
            Width = 209
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 4
            OnKeyDown = EditPrenomChauffeurKeyDown
          end
          object EditPieceIdentite: TEdit
            Left = 136
            Top = 136
            Width = 209
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 5
            OnKeyDown = EditPieceIdentiteKeyDown
          end
          object BitBtn23: TBitBtn
            Left = 368
            Top = 128
            Width = 147
            Height = 25
            TabOrder = 6
            OnClick = BitBtn23Click
            Kind = bkCancel
          end
          object EditTypeFiche: TEdit
            Left = 208
            Top = 176
            Width = 121
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 7
          end
          object EditNumMovementPrelevement: TEdit
            Left = 208
            Top = 200
            Width = 121
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 8
          end
          object EditNumFiche: TEdit
            Left = 208
            Top = 224
            Width = 121
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 9
          end
          object BitOperationMoyenTransport: TBitBtn
            Left = 368
            Top = 16
            Width = 147
            Height = 25
            Caption = 'Valider'
            TabOrder = 10
            OnClick = BitOperationMoyenTransportClick
            Kind = bkAll
          end
          object BitBtn24: TBitBtn
            Left = 368
            Top = 72
            Width = 145
            Height = 25
            Caption = 'Ouvrir dans la fiche'
            TabOrder = 11
            OnClick = BitBtn24Click
            Kind = bkHelp
          end
          object EditCodeTiersValider: TEdit
            Left = 208
            Top = 246
            Width = 121
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 12
          end
          object EditMatriculeEffectifValider: TEdit
            Left = 208
            Top = 270
            Width = 121
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 13
          end
        end
        object AfficheOptionImpression: TPanel
          Left = 32
          Top = 136
          Width = 777
          Height = 233
          BevelInner = bvLowered
          Color = 16777088
          TabOrder = 12
          Visible = False
          object RadioGroup2: TRadioGroup
            Left = 8
            Top = 8
            Width = 761
            Height = 185
            Caption = 'Options d'#39'impression:'
            TabOrder = 0
          end
          object RadioGroup6: TRadioGroup
            Left = 16
            Top = 128
            Width = 153
            Height = 57
            TabOrder = 12
          end
          object RadioGroup3: TRadioGroup
            Left = 16
            Top = 32
            Width = 153
            Height = 89
            Caption = 'Chois des Etats'
            TabOrder = 11
          end
          object RBDetailMouvement: TCheckBox
            Left = 24
            Top = 56
            Width = 129
            Height = 17
            Caption = 'D'#233'tail'
            Checked = True
            State = cbChecked
            TabOrder = 1
            OnClick = RBDetailMouvementClick
          end
          object RBRecapeMouvement: TCheckBox
            Left = 24
            Top = 88
            Width = 129
            Height = 17
            Caption = 'R'#233'cape'
            Checked = True
            State = cbChecked
            TabOrder = 2
            OnClick = RBRecapeMouvementClick
          end
          object RadioGroup5: TRadioGroup
            Left = 200
            Top = 32
            Width = 177
            Height = 89
            Caption = 'Ordre d'#39'Impression: (Classement)'
            TabOrder = 3
          end
          object ClasseDetailMouvement: TEdit
            Left = 208
            Top = 56
            Width = 129
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 4
            Text = '1'
          end
          object ClasseRecapeMouvement: TEdit
            Left = 208
            Top = 88
            Width = 129
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 5
            Text = '2'
          end
          object RadioGroup4: TRadioGroup
            Left = 408
            Top = 32
            Width = 169
            Height = 89
            Caption = 'Ajustement du Tableau '#224' l'#39'Etat:'
            TabOrder = 6
          end
          object RBAjusterDetailMouvement: TCheckBox
            Left = 416
            Top = 56
            Width = 129
            Height = 17
            Caption = 'Ajuster !'
            Checked = True
            State = cbChecked
            TabOrder = 7
          end
          object RBAjusterRecapeMouvement: TCheckBox
            Left = 416
            Top = 88
            Width = 129
            Height = 17
            Caption = 'Ajuster !'
            TabOrder = 8
          end
          object Panel18: TPanel
            Left = 608
            Top = 133
            Width = 153
            Height = 50
            BevelWidth = 5
            TabOrder = 9
            object BitImprimerAfficheOptionImpression: TBitBtn
              Left = 16
              Top = 12
              Width = 121
              Height = 25
              Caption = 'Imprimer'
              TabOrder = 0
              OnClick = BitImprimerAfficheOptionImpressionClick
              Kind = bkHelp
            end
          end
          object BitBtn7: TBitBtn
            Left = 24
            Top = 144
            Width = 131
            Height = 25
            Caption = 'Quitter l'#39'impression'
            TabOrder = 10
            OnClick = BitBtn7Click
            Kind = bkCancel
          end
          object RadioGroup7: TRadioGroup
            Left = 608
            Top = 32
            Width = 153
            Height = 89
            Caption = 'Orientation du papier:'
            TabOrder = 14
          end
          object RBOrientationPapier: TComboBox
            Left = 616
            Top = 56
            Width = 129
            Height = 21
            BevelInner = bvLowered
            BevelKind = bkFlat
            Ctl3D = False
            ItemHeight = 13
            ItemIndex = 1
            ParentCtl3D = False
            TabOrder = 13
            Text = 'Portrait'
            Items.Strings = (
              'Automatique'
              'Portrait'
              'Paysage')
          end
          object EditEcartLigne: TEdit
            Left = 560
            Top = 160
            Width = 25
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 15
            Text = '1'
          end
          object UpDown1: TUpDown
            Left = 585
            Top = 160
            Width = 16
            Height = 19
            Associate = EditEcartLigne
            Min = 0
            Max = 10
            Position = 1
            TabOrder = 16
            Wrap = False
          end
        end
        object AfficheNouveauTiers: TPanel
          Left = 608
          Top = 158
          Width = 625
          Height = 123
          BevelInner = bvLowered
          BevelOuter = bvNone
          Color = 8454016
          TabOrder = 19
          Visible = False
          OnMouseDown = AfficheNouveauTiersMouseDown
          object Bevel2: TBevel
            Left = 8
            Top = 8
            Width = 369
            Height = 105
          end
          object Label45: TLabel
            Left = 40
            Top = 43
            Width = 25
            Height = 13
            Caption = 'Nom:'
          end
          object Label46: TLabel
            Left = 24
            Top = 67
            Width = 39
            Height = 13
            Caption = 'Pr'#233'nom:'
          end
          object Label47: TLabel
            Left = 24
            Top = 91
            Width = 41
            Height = 13
            Caption = 'Adresse:'
          end
          object Bevel28: TBevel
            Left = 512
            Top = 8
            Width = 105
            Height = 41
          end
          object Bevel29: TBevel
            Left = 384
            Top = 8
            Width = 121
            Height = 105
          end
          object Label49: TLabel
            Left = 40
            Top = 19
            Width = 28
            Height = 13
            Caption = 'Code:'
          end
          object Label50: TLabel
            Left = 240
            Top = 19
            Width = 62
            Height = 13
            Caption = 'Sous Famille:'
          end
          object EditNomTiers: TEdit
            Left = 72
            Top = 40
            Width = 297
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            OnKeyDown = EditNomTiersKeyDown
          end
          object EditPrenomTiers: TEdit
            Left = 72
            Top = 64
            Width = 297
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            OnKeyDown = EditPrenomTiersKeyDown
          end
          object EditAdresseTiers: TEdit
            Left = 72
            Top = 88
            Width = 297
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
            OnKeyDown = EditAdresseTiersKeyDown
          end
          object BitValiderNouveauTiers: TBitBtn
            Left = 392
            Top = 16
            Width = 105
            Height = 89
            Caption = 'Valider'
            TabOrder = 4
            OnClick = BitValiderNouveauTiersClick
            Kind = bkAll
          end
          object EditCompteTiersRecherche: TEdit
            Left = 304
            Top = 16
            Width = 65
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 5
          end
          object EditCodeTiers: TEdit
            Left = 72
            Top = 16
            Width = 121
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 6
            OnKeyDown = EditCodeTiersKeyDown
          end
          object TableauCompteTiers: TStringGrid
            Left = 8
            Top = 8
            Width = 497
            Height = 105
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 2
            Visible = False
            OnKeyDown = TableauCompteTiersKeyDown
            ColWidths = (
              64
              64
              98
              64
              64)
          end
          object BitBtn10: TBitBtn
            Left = 520
            Top = 16
            Width = 89
            Height = 25
            TabOrder = 7
            OnClick = BitBtn10Click
            Kind = bkCancel
          end
        end
        object AfficheOptionCompteConcerne: TPanel
          Left = 136
          Top = 132
          Width = 401
          Height = 193
          BevelInner = bvLowered
          Color = 16777156
          TabOrder = 8
          Visible = False
          OnMouseDown = AfficheOptionCompteConcerneMouseDown
          object Bevel6: TBevel
            Left = 8
            Top = 152
            Width = 385
            Height = 33
          end
          object Label10: TLabel
            Left = 8
            Top = 136
            Width = 49
            Height = 13
            Caption = 'Chercher !'
          end
          object RadioGroup1: TRadioGroup
            Left = 8
            Top = 8
            Width = 385
            Height = 105
            Caption = 'Options de rechrche:'
            TabOrder = 1
          end
          object EditRecherche: TEdit
            Left = 16
            Top = 160
            Width = 265
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            OnKeyDown = EditRechercheKeyDown
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
            TabOrder = 4
            OnClick = RBParDesignationArticleClick
          end
          object BitRechercheArticle: TBitBtn
            Left = 160
            Top = 24
            Width = 225
            Height = 73
            Caption = 'Recherche par liste S/Famille'
            TabOrder = 5
            OnClick = BitRechercheArticleClick
            Kind = bkHelp
          end
          object RBActiverRechercheBasePrincipale: TCheckBox
            Left = 152
            Top = 128
            Width = 233
            Height = 17
            Caption = 'Activer la recherche dans la base principale !'
            TabOrder = 6
            OnClick = RBActiverRechercheBasePrincipaleClick
          end
          object RBDistingueDesigRef: TCheckBox
            Left = 288
            Top = 161
            Width = 97
            Height = 17
            Caption = 'Disting D'#233's.R'#233'f'
            TabOrder = 7
            OnClick = RBDistingueDesigRefClick
          end
        end
        object AfficherChercherNumeroListeMouvement: TPanel
          Left = 176
          Top = 114
          Width = 489
          Height = 215
          Alignment = taLeftJustify
          BevelWidth = 5
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 35
          Visible = False
          OnDblClick = AfficherChercherNumeroListeMouvementDblClick
          OnEnter = AfficherChercherNumeroListeMouvementEnter
          OnMouseDown = AfficherChercherNumeroListeMouvementMouseDown
          object Label95: TLabel
            Left = 27
            Top = 99
            Width = 25
            Height = 20
            Caption = 'N'#176':'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Calisto MT'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label94: TLabel
            Left = 11
            Top = 127
            Width = 42
            Height = 20
            Caption = 'Tiers:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Calisto MT'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object EditDesignationMouvementRecherche: TLabel
            Left = 216
            Top = 72
            Width = 30
            Height = 16
            Caption = '..........'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object EditDesignationTypeMouvementRecherche: TLabel
            Left = 216
            Top = 48
            Width = 30
            Height = 16
            Caption = '..........'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label98: TLabel
            Left = 22
            Top = 155
            Width = 31
            Height = 20
            Caption = 'R'#233'f:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Calisto MT'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label99: TLabel
            Left = 14
            Top = 235
            Width = 201
            Height = 20
            Caption = 'Position D'#233'tail Mouvement:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Calisto MT'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label100: TLabel
            Left = 22
            Top = 179
            Width = 29
            Height = 20
            Caption = 'CB:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Calisto MT'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object EditChercherNumeroListeMouvement: TEdit
            Left = 56
            Top = 98
            Width = 425
            Height = 22
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            OnEnter = EditChercherNumeroListeMouvementEnter
            OnKeyDown = EditChercherNumeroListeMouvementKeyDown
          end
          object EditChercherCodeTiers: TEdit
            Left = 56
            Top = 127
            Width = 121
            Height = 22
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            OnEnter = EditChercherTiersEnter
          end
          object EditChercherTiers: TEdit
            Left = 176
            Top = 127
            Width = 305
            Height = 22
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
            OnEnter = EditChercherTiersEnter
            OnKeyDown = EditChercherTiersKeyDown
            OnKeyUp = EditChercherTiersKeyUp
          end
          object EditModeRecherche: TEdit
            Left = 368
            Top = 8
            Width = 33
            Height = 19
            Color = clSilver
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
          end
          object RadioGroup18: TRadioGroup
            Left = 8
            Top = 8
            Width = 201
            Height = 81
            Caption = 'Type Recherche: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object RBSpecifierMouvement: TRadioButton
            Left = 16
            Top = 32
            Width = 185
            Height = 17
            Caption = 'Sp'#233'cifier le mouvement'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            TabStop = True
            OnClick = RBSpecifierMouvementClick
          end
          object RBSpecifierTypeFormuleBase: TRadioButton
            Left = 16
            Top = 48
            Width = 185
            Height = 17
            Caption = 'Sp'#233'cifier le groupe'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnClick = RBSpecifierTypeFormuleBaseClick
          end
          object RBTousMouvement: TRadioButton
            Left = 16
            Top = 64
            Width = 185
            Height = 17
            Caption = 'Tous'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            OnClick = RBTousMouvementClick
          end
          object EditPositionTypeMouvementRecherche: TEdit
            Left = 392
            Top = 8
            Width = 33
            Height = 22
            Color = clSilver
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 9
          end
          object EditPositionMouvementRecherche: TEdit
            Left = 408
            Top = 8
            Width = 33
            Height = 22
            Color = clSilver
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 10
          end
          object EditCodeTypeFormuleBaseRecherche: TEdit
            Left = 360
            Top = 8
            Width = 73
            Height = 22
            Color = clSilver
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 11
          end
          object BitBtn30: TBitBtn
            Left = 360
            Top = 8
            Width = 121
            Height = 25
            Caption = 'Terminer'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ModalResult = 7
            ParentFont = False
            TabOrder = 3
            OnClick = BitBtn30Click
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
          object EditChercherReferenceMouvement: TEdit
            Left = 56
            Top = 154
            Width = 425
            Height = 22
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 12
            OnEnter = EditChercherReferenceMouvementEnter
            OnKeyDown = EditChercherReferenceMouvementKeyDown
          end
          object EditPositionChercherDetailMouvement: TEdit
            Left = 224
            Top = 234
            Width = 145
            Height = 22
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 9
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 13
            OnEnter = EditPositionChercherDetailMouvementEnter
            OnKeyDown = EditPositionChercherDetailMouvementKeyDown
            OnKeyPress = EditPositionChercherDetailMouvementKeyPress
          end
          object BitVoirEtatDM: TBitBtn
            Left = 376
            Top = 232
            Width = 105
            Height = 25
            Caption = 'Voir le d'#233'tail'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 14
            OnClick = BitVoirEtatDMClick
            Kind = bkHelp
          end
          object EditChercheCodebarre: TEdit
            Left = 56
            Top = 181
            Width = 425
            Height = 22
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            PasswordChar = '*'
            TabOrder = 15
            OnEnter = EditChercheCodebarreEnter
            OnExit = EditChercheCodebarreExit
            OnKeyDown = EditChercheCodebarreKeyDown
          end
        end
        object AfficheTableauNewNumListeMouvement: TPanel
          Left = 136
          Top = 0
          Width = 217
          Height = 361
          BevelInner = bvLowered
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 32
          Visible = False
          OnExit = AfficheTableauNewNumListeMouvementExit
          object TableauNewNumListeMouvementCopie: TStringGrid
            Left = 9
            Top = 48
            Width = 200
            Height = 305
            ColCount = 2
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            OnKeyDown = TableauNewNumListeMouvementKeyDown
            ColWidths = (
              64
              114)
          end
          object TableauNewNumListeMouvement: TStringGrid
            Left = 9
            Top = 48
            Width = 200
            Height = 305
            ColCount = 2
            Ctl3D = False
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
            ParentCtl3D = False
            TabOrder = 0
            OnKeyDown = TableauNewNumListeMouvementKeyDown
            ColWidths = (
              64
              114)
          end
          object Panel12: TPanel
            Left = 8
            Top = 8
            Width = 201
            Height = 33
            Caption = 'Liste des num'#233'ros '#224' ins'#233'rer'
            TabOrder = 2
          end
        end
        object AffichChoisOperationAppartenance: TPanel
          Left = 632
          Top = 184
          Width = 777
          Height = 145
          BevelInner = bvLowered
          Color = 8454143
          TabOrder = 21
          Visible = False
          OnEnter = AffichChoisOperationAppartenanceEnter
          object a: TBevel
            Left = 8
            Top = 8
            Width = 225
            Height = 73
          end
          object Bevel32: TBevel
            Left = 504
            Top = 8
            Width = 265
            Height = 73
          end
          object Bevel61: TBevel
            Left = 248
            Top = 8
            Width = 241
            Height = 73
          end
          object BitOperationManuel: TBitBtn
            Left = 16
            Top = 16
            Width = 209
            Height = 57
            Caption = 'Op'#233'ration manuel'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Lucida Calligraphy'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = BitOperationManuelClick
            Kind = bkAll
          end
          object BitOperationAutoSelection: TBitBtn
            Left = 512
            Top = 16
            Width = 249
            Height = 57
            Caption = 'Op'#233'ration auto-s'#233'lection'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Lucida Calligraphy'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = BitOperationAutoSelectionClick
            Kind = bkHelp
          end
          object AfficheTitreOperation: TPanel
            Left = 8
            Top = 96
            Width = 761
            Height = 41
            BevelInner = bvLowered
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Lucida Calligraphy'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object BitBtn21: TBitBtn
            Left = 16
            Top = 104
            Width = 97
            Height = 25
            TabOrder = 3
            OnClick = BitBtn21Click
            Kind = bkCancel
          end
          object BitBtn25: TBitBtn
            Left = 256
            Top = 16
            Width = 225
            Height = 57
            Caption = 'Importation Data'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Lucida Calligraphy'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnClick = BitBtn25Click
            Kind = bkHelp
          end
        end
        object AfficheDetailMouvement: TPanel
          Left = 8
          Top = 136
          Width = 777
          Height = 233
          BevelInner = bvLowered
          Color = 8454143
          TabOrder = 9
          Visible = False
          OnEnter = AfficheDetailMouvementEnter
          OnMouseDown = AfficheDetailMouvementMouseDown
          object Bevel27: TBevel
            Left = 496
            Top = 144
            Width = 273
            Height = 27
          end
          object Bevel25: TBevel
            Left = 160
            Top = 144
            Width = 329
            Height = 27
          end
          object Bevel13: TBevel
            Left = 464
            Top = 96
            Width = 201
            Height = 41
          end
          object Bevel12: TBevel
            Left = 200
            Top = 96
            Width = 257
            Height = 41
          end
          object Bevel9: TBevel
            Left = 8
            Top = 96
            Width = 185
            Height = 41
          end
          object TitreQuantiteMouvement: TLabel
            Left = 209
            Top = 112
            Width = 53
            Height = 13
            Caption = 'Quantit'#233':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object TitreEditPrixMouvement: TLabel
            Left = 468
            Top = 112
            Width = 26
            Height = 13
            Caption = 'Prix:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Bevel10: TBevel
            Left = 672
            Top = 8
            Width = 97
            Height = 41
          end
          object Bevel11: TBevel
            Left = 672
            Top = 56
            Width = 97
            Height = 81
          end
          object Label17: TLabel
            Left = 13
            Top = 112
            Width = 84
            Height = 13
            Caption = 'Qte. en Stock:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object UniteMesure: TLabel
            Left = 504
            Top = 152
            Width = 21
            Height = 13
            Caption = '.....'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object InfoTaxeAjouter: TLabel
            Left = 174
            Top = 150
            Width = 62
            Height = 13
            Caption = 'Taxe ajouter:'
          end
          object Bevel26: TBevel
            Left = 8
            Top = 144
            Width = 145
            Height = 27
          end
          object Bevel57: TBevel
            Left = 8
            Top = 176
            Width = 761
            Height = 49
          end
          object Label70: TLabel
            Left = 382
            Top = 112
            Width = 24
            Height = 13
            Caption = 'UM:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label23: TLabel
            Left = 16
            Top = 152
            Width = 25
            Height = 13
            Caption = 'Co'#251't:'
          end
          object LabelCout: TLabel
            Left = 48
            Top = 150
            Width = 41
            Height = 16
            Caption = '..........'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RBControleExitQuatiteMouvement: TCheckBox
            Left = 368
            Top = 96
            Width = 17
            Height = 17
            Caption = '.'
            TabOrder = 15
          end
          object EditQuantiteMouvement: TMemo
            Left = 264
            Top = 106
            Width = 105
            Height = 25
            Alignment = taRightJustify
            BiDiMode = bdLeftToRight
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Castellar'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            OnEnter = EditQuantiteMouvementEnter
            OnExit = EditQuantiteMouvementExit
            OnKeyDown = EditQuantiteMouvementKeyDown
            OnKeyPress = EditQuantiteMouvementKeyPress
            OnKeyUp = EditQuantiteMouvementKeyUp
          end
          object EditPrixMouvement: TMemo
            Left = 496
            Top = 106
            Width = 161
            Height = 25
            Alignment = taRightJustify
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Castellar'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            OnEnter = EditPrixMouvementEnter
            OnExit = EditPrixMouvementExit
            OnKeyDown = EditPrixMouvementKeyDown
            OnKeyPress = EditPrixMouvementKeyPress
          end
          object BitBtn2: TBitBtn
            Left = 728
            Top = 16
            Width = 33
            Height = 25
            Caption = '.'
            ModalResult = 2
            TabOrder = 2
            OnClick = BitBtn2Click
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
            Margin = 5
            NumGlyphs = 2
          end
          object BitOptionDetailMouvement: TBitBtn
            Left = 680
            Top = 64
            Width = 81
            Height = 65
            Caption = 'Valider'
            TabOrder = 3
            OnClick = BitOptionDetailMouvementClick
            Kind = bkAll
          end
          object EditQuantiteStock: TEdit
            Left = 104
            Top = 106
            Width = 81
            Height = 25
            Color = clSilver
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Castellar'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
          end
          object Panel1: TPanel
            Left = 8
            Top = 8
            Width = 625
            Height = 81
            BevelInner = bvLowered
            BevelOuter = bvLowered
            TabOrder = 5
            object Bevel7: TBevel
              Left = 8
              Top = 8
              Width = 609
              Height = 65
            end
            object Label12: TLabel
              Left = 16
              Top = 16
              Width = 49
              Height = 13
              Caption = 'Op'#233'ration:'
            end
            object Label15: TLabel
              Left = 16
              Top = 32
              Width = 105
              Height = 13
              Caption = 'Mouvement en Stock:'
            end
            object Label16: TLabel
              Left = 16
              Top = 48
              Width = 26
              Height = 13
              Caption = 'Tiers:'
            end
            object LabelOperation: TLabel
              Left = 128
              Top = 16
              Width = 30
              Height = 16
              Caption = '..........'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object LabelMouvementStock: TLabel
              Left = 128
              Top = 32
              Width = 30
              Height = 16
              Caption = '..........'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object LabelCodeTiers: TLabel
              Left = 128
              Top = 48
              Width = 30
              Height = 16
              Caption = '..........'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object LabelTiers: TLabel
              Left = 208
              Top = 48
              Width = 30
              Height = 16
              Caption = '..........'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
          end
          object Panel2: TPanel
            Left = 8
            Top = 8
            Width = 625
            Height = 81
            BevelInner = bvLowered
            BevelOuter = bvLowered
            TabOrder = 6
            object Bevel8: TBevel
              Left = 8
              Top = 8
              Width = 609
              Height = 73
            end
            object Label18: TLabel
              Left = 16
              Top = 16
              Width = 60
              Height = 13
              Caption = 'Code Article:'
            end
            object LabelCodeArticle: TLabel
              Left = 128
              Top = 16
              Width = 30
              Height = 16
              Caption = '..........'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object LabelDesignationArticle: TLabel
              Left = 128
              Top = 32
              Width = 30
              Height = 16
              Caption = '..........'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label21: TLabel
              Left = 16
              Top = 32
              Width = 91
              Height = 13
              Caption = 'D'#233'signation Article:'
            end
            object Label26: TLabel
              Left = 16
              Top = 48
              Width = 55
              Height = 13
              Caption = 'R'#233'f. Article:'
            end
            object LabelRefArticle: TLabel
              Left = 128
              Top = 48
              Width = 30
              Height = 16
              Caption = '..........'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object LabelUniteMusure: TLabel
              Left = 128
              Top = 64
              Width = 30
              Height = 16
              Caption = '..........'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label28: TLabel
              Left = 16
              Top = 64
              Width = 80
              Height = 13
              Caption = 'Unit'#233' de mesure:'
            end
          end
          object AfficheArticleSelection: TMemo
            Left = 16
            Top = 8
            Width = 657
            Height = 81
            Alignment = taCenter
            Color = clWhite
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -27
            Font.Name = 'Castellar'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 7
            OnDblClick = AfficheArticleSelectionDblClick
          end
          object BitBtn3: TBitBtn
            Left = 680
            Top = 16
            Width = 33
            Height = 25
            Caption = '.'
            TabOrder = 8
            OnClick = BitBtn3Click
            Kind = bkRetry
            Margin = 5
          end
          object EditTaxeAjouter: TEdit
            Left = 264
            Top = 148
            Width = 113
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 9
          end
          object EditTaxeBareme: TEdit
            Left = 384
            Top = 148
            Width = 97
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 10
          end
          object EditUniteMesure: TEdit
            Left = 408
            Top = 106
            Width = 41
            Height = 25
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Castellar'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 11
            OnKeyDown = EditUniteMesureKeyDown
          end
          object EditRowEditing: TEdit
            Left = 32
            Top = 192
            Width = 121
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 12
          end
          object TableauQteForfait: TStringGrid
            Left = 400
            Top = 200
            Width = 337
            Height = 97
            Ctl3D = False
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
            ParentCtl3D = False
            TabOrder = 14
            Visible = False
            OnExit = TableauQteForfaitExit
            OnKeyDown = TableauQteForfaitKeyDown
            RowHeights = (
              24
              24)
          end
          object AfficheDetailMouvementCodeBarre: TPanel
            Left = -760
            Top = 64
            Width = 761
            Height = 217
            BevelInner = bvLowered
            Color = 8454143
            TabOrder = 13
            Visible = False
            object Label115: TLabel
              Left = 241
              Top = 128
              Width = 53
              Height = 13
              Caption = 'Quantit'#233':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object EditDecimaleQuantiteMouvementCodeBarre: TLabel
              Left = 456
              Top = 128
              Width = 51
              Height = 20
              Caption = '..........'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object AfficheArticleSelectionCodeBarre: TMemo
              Left = 8
              Top = 8
              Width = 745
              Height = 81
              Alignment = taCenter
              Color = clWhite
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -27
              Font.Name = 'Castellar'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              OnDblClick = AfficheArticleSelectionDblClick
            end
            object EditQuantiteMouvementCodeBarre: TComboBox
              Left = 296
              Top = 120
              Width = 145
              Height = 32
              BevelKind = bkFlat
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ItemHeight = 24
              ParentFont = False
              TabOrder = 1
              OnEnter = EditQuantiteMouvementCodeBarreEnter
              OnKeyDown = EditQuantiteMouvementCodeBarreKeyDown
              OnKeyPress = EditQuantiteMouvementCodeBarreKeyPress
              OnKeyUp = EditQuantiteMouvementCodeBarreKeyUp
            end
            object EditCodeBareArticleSelect: TEdit
              Left = 8
              Top = 96
              Width = 121
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 2
            end
            object EditQuantiteMouvementCodeBarreSelect: TEdit
              Left = 128
              Top = 96
              Width = 41
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 3
            end
          end
          object AfficheQuantiteReferenceBareme: TPanel
            Left = 200
            Top = 96
            Width = 257
            Height = 41
            BevelInner = bvLowered
            TabOrder = 16
            Visible = False
            object Label139: TLabel
              Left = 13
              Top = 14
              Width = 130
              Height = 13
              Caption = 'Quantit'#233' r'#233'ference Bar'#234'me:'
            end
            object Bevel102: TBevel
              Left = 8
              Top = 8
              Width = 145
              Height = 25
            end
            object EditQuantiteReferenceBareme: TMemo
              Left = 160
              Top = 8
              Width = 89
              Height = 25
              Alignment = taRightJustify
              BiDiMode = bdLeftToRight
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Castellar'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              OnKeyDown = EditQuantiteReferenceBaremeKeyDown
              OnKeyUp = EditQuantiteReferenceBaremeKeyUp
            end
          end
          object EditRubriqueApplicationTaxeAjouter: TEdit
            Left = 264
            Top = 180
            Width = 217
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 17
          end
        end
        object TableauDetaiMouvementData: TStringGrid
          Left = -880
          Top = 591
          Width = 905
          Height = 370
          Cursor = crHandPoint
          Color = cl3DLight
          ColCount = 8
          Ctl3D = False
          DefaultColWidth = 30
          FixedColor = 14737632
          RowCount = 7
          FixedRows = 6
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSizing, goColSizing, goEditing, goAlwaysShowEditor]
          ParentCtl3D = False
          ParentFont = False
          ScrollBars = ssNone
          TabOrder = 37
          Visible = False
          OnContextPopup = TableauDetaiMouvementDataContextPopup
          OnDrawCell = TableauDetaiMouvementDataDrawCell
          OnExit = TableauDetaiMouvementDataExit
          ColWidths = (
            30
            30
            30
            30
            30
            30
            30
            30)
        end
        object BitEchap: TBitBtn
          Left = 786
          Top = 10
          Width = 6
          Height = 25
          Cancel = True
          Caption = 'Retour au tableau'
          ModalResult = 4
          TabOrder = 40
          OnClick = BitEchapClick
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
            33333333333F8888883F33330000324334222222443333388F3833333388F333
            000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
            F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
            223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
            3338888300003AAAAAAA33333333333888888833333333330000333333333333
            333333333333333333FFFFFF000033333333333344444433FFFF333333888888
            00003A444333333A22222438888F333338F3333800003A2243333333A2222438
            F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
            22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
            33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
            3333333333338888883333330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
        end
        object AfficheRecuRendu: TPanel
          Left = 176
          Top = 117
          Width = 377
          Height = 153
          BevelInner = bvLowered
          Color = 8454016
          TabOrder = 38
          Visible = False
          object Bevel70: TBevel
            Left = 8
            Top = 56
            Width = 361
            Height = 41
          end
          object Label101: TLabel
            Left = 16
            Top = 72
            Width = 32
            Height = 13
            Caption = 'Re'#231'u: '
          end
          object Label102: TLabel
            Left = 192
            Top = 72
            Width = 35
            Height = 13
            Caption = 'Rendu:'
          end
          object Bevel71: TBevel
            Left = 8
            Top = 104
            Width = 361
            Height = 41
          end
          object Bevel72: TBevel
            Left = 8
            Top = 8
            Width = 361
            Height = 41
          end
          object MontantMouvementRecuRendu: TLabel
            Left = 16
            Top = 24
            Width = 115
            Height = 13
            Caption = 'Montant du mouvement:'
          end
          object EditMontantRecu: TEdit
            Left = 53
            Top = 65
            Width = 121
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            OnEnter = EditMontantRecuEnter
            OnExit = EditMontantRecuExit
            OnKeyDown = EditMontantRecuKeyDown
            OnKeyUp = EditMontantRecuKeyUp
          end
          object EditMontantRendu: TEdit
            Left = 237
            Top = 65
            Width = 121
            Height = 19
            Color = 65408
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
          end
          object BitBtn33: TBitBtn
            Left = 16
            Top = 112
            Width = 75
            Height = 25
            TabOrder = 2
            OnClick = BitBtn33Click
            Kind = bkCancel
          end
          object BitValiderRecuRendu: TBitBtn
            Left = 288
            Top = 112
            Width = 75
            Height = 25
            Caption = 'Valider'
            TabOrder = 3
            OnClick = BitValiderRecuRenduClick
            Kind = bkAll
          end
          object EditMontantMouvementRecuRendu: TEdit
            Left = 141
            Top = 17
            Width = 132
            Height = 19
            Color = 14869218
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 4
          end
        end
        object AfficheATermeEspeceTiers: TPanel
          Left = 216
          Top = 112
          Width = 297
          Height = 81
          Color = clAqua
          TabOrder = 39
          Visible = False
          object Bevel73: TBevel
            Left = 8
            Top = 8
            Width = 281
            Height = 65
          end
          object BitEspece: TBitBtn
            Left = 16
            Top = 16
            Width = 97
            Height = 49
            Caption = 'Esp'#232'ce'
            TabOrder = 0
            OnClick = BitEspeceClick
            Kind = bkAll
          end
          object BitAterme: TBitBtn
            Left = 184
            Top = 16
            Width = 97
            Height = 49
            Caption = 'Aterme'
            TabOrder = 1
            OnClick = BitAtermeClick
            Kind = bkIgnore
          end
        end
        object AffichePrintBordereauRemiseCodeBarre: TPanel
          Left = 40
          Top = 336
          Width = 625
          Height = 417
          BevelInner = bvLowered
          Color = clLime
          TabOrder = 42
          Visible = False
          OnMouseDown = AffichePrintBordereauRemiseCodeBarreMouseDown
          object Bevel81: TBevel
            Left = 7
            Top = 12
            Width = 490
            Height = 43
          end
          object Label114: TLabel
            Left = 12
            Top = 16
            Width = 136
            Height = 13
            Caption = 'Nom et pr'#233'nom de l'#39'employ'#233':'
          end
          object Bevel80: TBevel
            Left = 504
            Top = 12
            Width = 114
            Height = 43
          end
          object Bevel82: TBevel
            Left = 504
            Top = 68
            Width = 113
            Height = 43
          end
          object Bevel83: TBevel
            Left = 504
            Top = 124
            Width = 113
            Height = 61
          end
          object Bevel84: TBevel
            Left = 504
            Top = 196
            Width = 113
            Height = 213
          end
          object EditNomPrenomEmploye: TEdit
            Left = 14
            Top = 31
            Width = 475
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            OnDblClick = EditNomPrenomEmployeDblClick
            OnKeyDown = EditNomPrenomEmployeKeyDown
            OnKeyUp = EditNomPrenomEmployeKeyUp
          end
          object TableauRemiseCodeBarre: TStringGrid
            Left = 8
            Top = 64
            Width = 489
            Height = 345
            Ctl3D = False
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goEditing]
            ParentCtl3D = False
            TabOrder = 1
            OnEnter = TableauRemiseCodeBarreEnter
            OnKeyDown = TableauRemiseCodeBarreKeyDown
          end
          object BitBtn8: TBitBtn
            Left = 512
            Top = 20
            Width = 99
            Height = 25
            TabOrder = 2
            OnClick = BitBtn8Click
            Kind = bkCancel
          end
          object BitImprimerRemiseCodeBarre: TBitBtn
            Left = 512
            Top = 76
            Width = 97
            Height = 25
            Caption = 'Imprimer'
            TabOrder = 3
            OnClick = BitImprimerRemiseCodeBarreClick
            Kind = bkAll
          end
          object BitBtn35: TBitBtn
            Left = 512
            Top = 128
            Width = 97
            Height = 49
            Caption = 'Code Barre'
            TabOrder = 4
            OnClick = BitBtn35Click
            Kind = bkAll
          end
          object TableauEffectifEquipe: TStringGrid
            Left = 16
            Top = 52
            Width = 425
            Height = 265
            ColCount = 7
            Ctl3D = False
            DefaultColWidth = 40
            DefaultRowHeight = 20
            FixedColor = clSilver
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
            ParentCtl3D = False
            TabOrder = 5
            Visible = False
            OnDblClick = TableauEffectifEquipeDblClick
            OnKeyDown = TableauEffectifEquipeKeyDown
            RowHeights = (
              20
              20)
          end
        end
        object TableauChercherTiers: TStringGrid
          Left = -520
          Top = 600
          Width = 569
          Height = 337
          Color = 16777173
          Ctl3D = False
          FixedColor = 16777088
          ParentCtl3D = False
          TabOrder = 34
          Visible = False
          OnDrawCell = TableauChercherTiersDrawCell
          OnKeyDown = TableauChercherTiersKeyDown
          RowHeights = (
            24
            24
            24
            24
            24)
        end
        object EditMontantMouvement: TMemo
          Left = 472
          Top = 584
          Width = 313
          Height = 57
          Alignment = taRightJustify
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -40
          Font.Name = 'Britannic Bold'
          Font.Style = [fsItalic]
          Lines.Strings = (
            '120.563,35')
          ParentFont = False
          ReadOnly = True
          TabOrder = 43
        end
        object AffichePrixVente: TPanel
          Left = 144
          Top = 160
          Width = 425
          Height = 145
          BevelInner = bvLowered
          Color = 8454016
          TabOrder = 44
          Visible = False
          OnMouseDown = AffichePrixVenteMouseDown
          object Bevel87: TBevel
            Left = 328
            Top = 8
            Width = 89
            Height = 41
          end
          object TableauPrixVente: TStringGrid
            Left = 8
            Top = 8
            Width = 313
            Height = 128
            ColCount = 2
            Ctl3D = False
            DefaultColWidth = 150
            DefaultRowHeight = 30
            RowCount = 4
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            OnKeyDown = TableauPrixVenteKeyDown
            ColWidths = (
              150
              156)
          end
          object BitBtn38: TBitBtn
            Left = 336
            Top = 16
            Width = 75
            Height = 25
            TabOrder = 1
            OnClick = BitBtn38Click
            Kind = bkCancel
          end
        end
        object AfficheIndiceListeMouvement: TPanel
          Left = 88
          Top = 552
          Width = 537
          Height = 385
          BevelInner = bvLowered
          BevelWidth = 10
          Color = 16777088
          TabOrder = 41
          Visible = False
          OnEnter = AfficheIndiceListeMouvementEnter
          OnMouseDown = AfficheIndiceListeMouvementMouseDown
          object Panel4: TPanel
            Left = 24
            Top = 24
            Width = 489
            Height = 153
            BevelInner = bvLowered
            TabOrder = 0
            object Bevel76: TBevel
              Left = 272
              Top = 40
              Width = 209
              Height = 105
            end
            object Bevel74: TBevel
              Left = 8
              Top = 40
              Width = 257
              Height = 50
            end
            object Label104: TLabel
              Left = 16
              Top = 59
              Width = 46
              Height = 13
              Caption = 'Matricule:'
            end
            object Label105: TLabel
              Left = 296
              Top = 83
              Width = 59
              Height = 13
              Caption = 'Indice Initial:'
            end
            object Label106: TLabel
              Left = 279
              Top = 114
              Width = 77
              Height = 13
              Caption = 'Valeur Calcul'#233'e:'
            end
            object Bevel75: TBevel
              Left = 8
              Top = 95
              Width = 257
              Height = 50
            end
            object Label103: TLabel
              Left = 16
              Top = 114
              Width = 98
              Height = 13
              Caption = 'Indice Pont Bascule:'
            end
            object InfoTempsPasse: TLabel
              Left = 216
              Top = 20
              Width = 27
              Height = 13
              Caption = '.........'
            end
            object Bevel78: TBevel
              Left = 8
              Top = 7
              Width = 473
              Height = 30
            end
            object Label111: TLabel
              Left = 400
              Top = 16
              Width = 40
              Height = 13
              Caption = 'N'#176' Pont:'
            end
            object EditMatriculePontBascule: TEdit
              Left = 120
              Top = 56
              Width = 129
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 0
              OnExit = EditMatriculePontBasculeExit
              OnKeyDown = EditMatriculePontBasculeKeyDown
            end
            object EditIndiceInialPontBascule: TEdit
              Left = 360
              Top = 80
              Width = 113
              Height = 19
              Color = 15132390
              Ctl3D = False
              Enabled = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 1
            end
            object EditDateIndiceInitial: TEdit
              Left = 280
              Top = 48
              Width = 89
              Height = 19
              Color = 15132390
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 2
            end
            object EditHeureIndiceInitial: TEdit
              Left = 384
              Top = 48
              Width = 89
              Height = 19
              Color = 15132390
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 3
            end
            object EditIndiceCalculePontBascule: TEdit
              Left = 360
              Top = 112
              Width = 113
              Height = 19
              Color = 15132390
              Ctl3D = False
              Enabled = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 4
            end
            object EditIndiceFinalPontBascule: TEdit
              Left = 120
              Top = 112
              Width = 129
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 5
              OnKeyDown = EditIndiceFinalPontBasculeKeyDown
              OnKeyUp = EditIndiceFinalPontBasculeKeyUp
            end
            object EditDateIndiceFinal: TDateTimePicker
              Left = 16
              Top = 12
              Width = 186
              Height = 21
              BevelInner = bvLowered
              CalAlignment = dtaLeft
              Date = 44307.6336207292
              Time = 44307.6336207292
              DateFormat = dfLong
              DateMode = dmComboBox
              Kind = dtkDate
              ParseInput = False
              TabOrder = 6
            end
            object EditHeureIndiceFinal: TDateTimePicker
              Left = 312
              Top = 12
              Width = 82
              Height = 21
              CalAlignment = dtaLeft
              Date = 44307.6337098843
              Time = 44307.6337098843
              DateFormat = dfLong
              DateMode = dmComboBox
              Kind = dtkTime
              ParseInput = False
              TabOrder = 7
            end
            object EditNumeroPont: TEdit
              Left = 448
              Top = 14
              Width = 25
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 8
              Text = '1'
            end
          end
          object Panel26: TPanel
            Left = 24
            Top = 184
            Width = 489
            Height = 177
            BevelInner = bvLowered
            TabOrder = 1
            object Bevel77: TBevel
              Left = 8
              Top = 11
              Width = 473
              Height = 86
            end
            object Label107: TLabel
              Left = 4
              Top = 3
              Width = 141
              Height = 13
              Caption = 'R'#233'sponsable du pr'#233'l'#232'vement:'
            end
            object Label108: TLabel
              Left = 24
              Top = 27
              Width = 28
              Height = 13
              Caption = 'Code:'
            end
            object Label109: TLabel
              Left = 24
              Top = 51
              Width = 25
              Height = 13
              Caption = 'Nom:'
            end
            object Label110: TLabel
              Left = 13
              Top = 75
              Width = 39
              Height = 13
              Caption = 'Pr'#233'nom:'
            end
            object Bevel79: TBevel
              Left = 8
              Top = 107
              Width = 473
              Height = 62
            end
            object Label112: TLabel
              Left = 16
              Top = 115
              Width = 85
              Height = 13
              Caption = 'Type du v'#233'hicule:'
            end
            object Label113: TLabel
              Left = 16
              Top = 139
              Width = 98
              Height = 13
              Caption = 'Tonage du v'#233'hicule:'
            end
            object RBModificationPontBascule: TCheckBox
              Left = 402
              Top = 32
              Width = 73
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Modification'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
            end
            object EditOrdreListeMouvementPontBascule: TEdit
              Left = 400
              Top = 14
              Width = 76
              Height = 19
              Color = 15132390
              Ctl3D = False
              Enabled = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 0
            end
            object EditCodeResponsablePrelevement: TEdit
              Left = 56
              Top = 24
              Width = 97
              Height = 19
              Color = clSilver
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 1
              OnEnter = EditCodeResponsablePrelevementEnter
              OnKeyDown = EditCodeResponsablePrelevementKeyDown
            end
            object EditNomResponsablePrelevement: TEdit
              Left = 56
              Top = 48
              Width = 417
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 2
              OnEnter = EditNomResponsablePrelevementEnter
              OnKeyDown = EditNomResponsablePrelevementKeyDown
              OnKeyUp = EditNomResponsablePrelevementKeyUp
            end
            object EditPrenomResponsablePrelevement: TEdit
              Left = 56
              Top = 72
              Width = 417
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 3
              OnKeyDown = EditPrenomResponsablePrelevementKeyDown
            end
            object EditTonageVehiculePrelevement: TEdit
              Left = 120
              Top = 136
              Width = 73
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 4
              OnKeyDown = EditTonageVehiculePrelevementKeyDown
            end
            object EditTypeVehiculePrelevement: TComboBox
              Left = 120
              Top = 112
              Width = 353
              Height = 21
              BevelInner = bvNone
              BevelKind = bkFlat
              Ctl3D = False
              ItemHeight = 13
              ItemIndex = 0
              ParentCtl3D = False
              TabOrder = 5
              Text = 'Camion'
              OnKeyDown = EditTypeVehiculePrelevementKeyDown
              Items.Strings = (
                'Camion')
            end
            object TableauRechercheChauffeur: TStringGrid
              Left = 56
              Top = 69
              Width = 417
              Height = 104
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 6
              Visible = False
              OnKeyDown = TableauRechercheChauffeurKeyDown
              ColWidths = (
                64
                64
                63
                64
                64)
            end
            object BitBtn42: TBitBtn
              Left = 184
              Top = 16
              Width = 177
              Height = 25
              Caption = 'Tare V'#233'hicule pont bascule'
              TabOrder = 7
              OnClick = BitBtn42Click
              Kind = bkHelp
            end
          end
        end
        object AfficherOperationDetailMouvement: TPanel
          Left = 610
          Top = 176
          Width = 607
          Height = 153
          BevelInner = bvLowered
          BiDiMode = bdLeftToRight
          Caption = 'Supprimer'
          Color = 11468718
          ParentBiDiMode = False
          TabOrder = 11
          Visible = False
          OnMouseDown = AfficherOperationDetailMouvementMouseDown
          object Bevel22: TBevel
            Left = 104
            Top = 8
            Width = 377
            Height = 41
          end
          object Bevel16: TBevel
            Left = 8
            Top = 8
            Width = 89
            Height = 41
          end
          object Bevel5: TBevel
            Left = 8
            Top = 96
            Width = 593
            Height = 33
          end
          object Label41: TLabel
            Left = 408
            Top = 106
            Width = 108
            Height = 13
            Caption = 'Ordre liste mouvement:'
          end
          object Label42: TLabel
            Left = 16
            Top = 106
            Width = 103
            Height = 13
            Caption = 'P'#176' D'#233'tail Mouvement:'
          end
          object Bevel23: TBevel
            Left = 488
            Top = 8
            Width = 113
            Height = 41
          end
          object Bevel24: TBevel
            Left = 16
            Top = 56
            Width = 593
            Height = 33
          end
          object BitOperationDetailMouvement: TBitBtn
            Left = 496
            Top = 16
            Width = 99
            Height = 25
            Caption = 'Supprimer'
            TabOrder = 0
            OnClick = BitOperationDetailMouvementClick
            Kind = bkCancel
          end
          object BitBtn6: TBitBtn
            Left = 16
            Top = 16
            Width = 75
            Height = 25
            TabOrder = 1
            OnClick = BitBtn6Click
            Kind = bkNo
          end
          object EditOperationPositionDetailMouvement: TEdit
            Left = 128
            Top = 103
            Width = 209
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 2
          end
          object EditOperationOrdreListeMouvement: TEdit
            Left = 528
            Top = 103
            Width = 65
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 3
          end
          object RBAjouterSupprimeDM: TCheckBox
            Left = 339
            Top = 104
            Width = 57
            Height = 17
            Caption = 'Ajouter'
            TabOrder = 4
          end
          object AfficherOperationDetailMouvementInfo: TPanel
            Left = 8
            Top = 132
            Width = 593
            Height = 17
            Color = clRed
            TabOrder = 5
          end
        end
        object AfficheChargementMultiArticle: TPanel
          Left = 512
          Top = 352
          Width = 529
          Height = 585
          BevelInner = bvLowered
          Color = clAqua
          TabOrder = 46
          Visible = False
          object Bevel91: TBevel
            Left = 8
            Top = 56
            Width = 513
            Height = 33
          end
          object Label169: TLabel
            Left = 16
            Top = 64
            Width = 66
            Height = 13
            Caption = 'Par S/Famille:'
          end
          object Bevel92: TBevel
            Left = 8
            Top = 8
            Width = 513
            Height = 41
          end
          object EditOrdreCompteComptableArticleMAJ: TComboBox
            Left = 400
            Top = 58
            Width = 121
            Height = 21
            BevelKind = bkFlat
            Ctl3D = False
            ItemHeight = 13
            ItemIndex = 0
            ParentCtl3D = False
            TabOrder = 0
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
          object EditRechercheDesigSFamilleMAJ: TEdit
            Left = 152
            Top = 60
            Width = 241
            Height = 19
            Color = clWhite
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            OnEnter = EditRechercheDesigSFamilleMAJEnter
            OnKeyDown = EditRechercheDesigSFamilleMAJKeyDown
            OnKeyUp = EditRechercheDesigSFamilleMAJKeyUp
          end
          object EditRechercheCodeSFamilleMAJ: TEdit
            Left = 88
            Top = 60
            Width = 65
            Height = 19
            Color = clWhite
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 2
            OnEnter = EditRechercheCodeSFamilleMAJEnter
            OnKeyDown = EditRechercheCodeSFamilleMAJKeyDown
            OnKeyUp = EditRechercheCodeSFamilleMAJKeyUp
          end
          object TableauMultiArticle: TStringGrid
            Left = 8
            Top = 96
            Width = 513
            Height = 481
            ColCount = 7
            Ctl3D = False
            FixedCols = 3
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goEditing, goTabs, goAlwaysShowEditor]
            ParentCtl3D = False
            TabOrder = 3
            OnKeyDown = TableauMultiArticleKeyDown
            OnKeyPress = TableauMultiArticleKeyPress
            RowHeights = (
              24
              24
              24
              24
              24)
          end
          object TableauRechercheFamille: TStringGrid
            Left = 72
            Top = 248
            Width = 433
            Height = 273
            Ctl3D = False
            FixedColor = clAqua
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
            ParentCtl3D = False
            TabOrder = 4
            Visible = False
            OnDblClick = TableauRechercheFamilleDblClick
            OnKeyDown = TableauRechercheFamilleKeyDown
          end
          object BitBtn44: TBitBtn
            Left = 440
            Top = 16
            Width = 75
            Height = 25
            TabOrder = 5
            OnClick = BitBtn44Click
            Kind = bkCancel
          end
          object EditTypeComptabilite: TEdit
            Left = 16
            Top = 16
            Width = 105
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 6
            Text = 'PlanComptable'
          end
        end
        object AfficheAttenteDetailMouvement: TPanel
          Left = 96
          Top = 304
          Width = 521
          Height = 33
          TabOrder = 47
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
          object ProgressAttenteDetailMouvement: TProgressBar
            Left = 8
            Top = 8
            Width = 505
            Height = 17
            Min = 0
            Max = 100
            Smooth = True
            Step = 1
            TabOrder = 0
          end
        end
        object AfficheEditReferenceListeMouvementTeste: TPanel
          Left = 632
          Top = 168
          Width = 625
          Height = 81
          BevelInner = bvLowered
          TabOrder = 48
          Visible = False
          OnExit = AfficheEditReferenceListeMouvementTesteExit
          object Label122: TLabel
            Left = 12
            Top = 14
            Width = 29
            Height = 19
            Caption = 'R'#233'f:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calisto MT'
            Font.Style = []
            ParentFont = False
          end
          object Bevel97: TBevel
            Left = 8
            Top = 8
            Width = 81
            Height = 65
          end
          object EditReferenceListeMouvementTeste: TRichEdit
            Left = 96
            Top = 8
            Width = 521
            Height = 65
            BevelInner = bvNone
            BevelOuter = bvSpace
            BevelKind = bkFlat
            ScrollBars = ssBoth
            TabOrder = 0
            WantTabs = True
          end
          object BitBtn47: TBitBtn
            Left = 16
            Top = 40
            Width = 67
            Height = 25
            Caption = 'Valider'
            TabOrder = 1
            OnClick = BitBtn47Click
            Kind = bkAll
          end
        end
        object AfficherSoldeTiers: TPanel
          Left = 80
          Top = 584
          Width = 617
          Height = 625
          BevelInner = bvLowered
          Color = 16777088
          TabOrder = 49
          Visible = False
          OnExit = AfficherSoldeTiersExit
          object Bevel101: TBevel
            Left = 8
            Top = 472
            Width = 305
            Height = 105
          end
          object Bevel100: TBevel
            Left = 8
            Top = 328
            Width = 305
            Height = 105
          end
          object Bevel99: TBevel
            Left = 8
            Top = 184
            Width = 305
            Height = 105
          end
          object Bevel98: TBevel
            Left = 8
            Top = 40
            Width = 305
            Height = 105
          end
          object Label123: TLabel
            Left = 24
            Top = 56
            Width = 45
            Height = 13
            Caption = 'DebitAvis'
          end
          object Label124: TLabel
            Left = 24
            Top = 87
            Width = 47
            Height = 13
            Caption = 'CreditAvis'
          end
          object Label125: TLabel
            Left = 24
            Top = 118
            Width = 72
            Height = 13
            Caption = 'DebitCreditAvis'
          end
          object Label126: TLabel
            Left = 24
            Top = 199
            Width = 81
            Height = 13
            Caption = 'DebitMouvement'
          end
          object Label127: TLabel
            Left = 24
            Top = 231
            Width = 83
            Height = 13
            Caption = 'CreditMouvement'
          end
          object Label128: TLabel
            Left = 24
            Top = 261
            Width = 108
            Height = 13
            Caption = 'DebitCreditMouvement'
          end
          object Label129: TLabel
            Left = 24
            Top = 343
            Width = 84
            Height = 13
            Caption = 'DebitPrelevement'
          end
          object Label130: TLabel
            Left = 24
            Top = 374
            Width = 86
            Height = 13
            Caption = 'CreditPrelevement'
          end
          object Label131: TLabel
            Left = 24
            Top = 407
            Width = 111
            Height = 13
            Caption = 'DebitCreditPrelevement'
          end
          object Label132: TLabel
            Left = 24
            Top = 487
            Width = 66
            Height = 13
            Caption = 'DebitSituation'
          end
          object Label133: TLabel
            Left = 24
            Top = 519
            Width = 68
            Height = 13
            Caption = 'CreditSituation'
          end
          object Label134: TLabel
            Left = 24
            Top = 551
            Width = 93
            Height = 13
            Caption = 'DebitCreditSituation'
          end
          object Label135: TLabel
            Left = 328
            Top = 24
            Width = 63
            Height = 13
            Caption = 'Type Proces:'
          end
          object Label136: TLabel
            Left = 328
            Top = 48
            Width = 61
            Height = 13
            Caption = 'Type Fichier:'
          end
          object Label137: TLabel
            Left = 328
            Top = 72
            Width = 54
            Height = 13
            Caption = 'Code Tiers:'
          end
          object Label138: TLabel
            Left = 328
            Top = 96
            Width = 43
            Height = 13
            Caption = 'Date Fin:'
          end
          object InfoTypeProces: TLabel
            Left = 400
            Top = 24
            Width = 117
            Height = 13
            Caption = '.......................................'
          end
          object InfoFichierTiersConserne: TLabel
            Left = 400
            Top = 48
            Width = 117
            Height = 13
            Caption = '.......................................'
          end
          object InfoCodeTiers: TLabel
            Left = 400
            Top = 72
            Width = 117
            Height = 13
            Caption = '.......................................'
          end
          object InfoDateFin: TLabel
            Left = 400
            Top = 96
            Width = 117
            Height = 13
            Caption = '.......................................'
          end
          object Panel30: TPanel
            Left = 8
            Top = 8
            Width = 225
            Height = 25
            Caption = 'Avis'
            TabOrder = 0
          end
          object Panel31: TPanel
            Left = 8
            Top = 152
            Width = 305
            Height = 25
            Caption = 'Mouvement'
            TabOrder = 1
          end
          object Panel32: TPanel
            Left = 8
            Top = 296
            Width = 305
            Height = 25
            Caption = 'Pr'#233'l'#232'vement'
            TabOrder = 2
          end
          object Panel33: TPanel
            Left = 8
            Top = 440
            Width = 305
            Height = 25
            Caption = 'Situation'
            TabOrder = 3
          end
          object EditAfficheDebitAvis: TRichEdit
            Left = 160
            Top = 48
            Width = 145
            Height = 25
            Alignment = taRightJustify
            BevelInner = bvNone
            BevelOuter = bvNone
            BevelKind = bkFlat
            ReadOnly = True
            TabOrder = 4
          end
          object EditAfficheCreditAvis: TRichEdit
            Left = 160
            Top = 80
            Width = 145
            Height = 25
            Alignment = taRightJustify
            BevelInner = bvNone
            BevelOuter = bvNone
            BevelKind = bkFlat
            ReadOnly = True
            TabOrder = 5
          end
          object EditAfficheDebitCreditAvis: TRichEdit
            Left = 160
            Top = 112
            Width = 145
            Height = 25
            Alignment = taRightJustify
            BevelInner = bvNone
            BevelOuter = bvNone
            BevelKind = bkFlat
            ReadOnly = True
            TabOrder = 6
          end
          object EditAfficheDebitMouvement: TRichEdit
            Left = 160
            Top = 192
            Width = 145
            Height = 25
            Alignment = taRightJustify
            BevelInner = bvNone
            BevelOuter = bvNone
            BevelKind = bkFlat
            ReadOnly = True
            TabOrder = 7
          end
          object EditAfficheCreditMouvement: TRichEdit
            Left = 160
            Top = 224
            Width = 145
            Height = 25
            Alignment = taRightJustify
            BevelInner = bvNone
            BevelOuter = bvNone
            BevelKind = bkFlat
            ReadOnly = True
            TabOrder = 8
          end
          object EditAfficheDebitCreditMouvement: TRichEdit
            Left = 160
            Top = 256
            Width = 145
            Height = 25
            Alignment = taRightJustify
            BevelInner = bvNone
            BevelOuter = bvNone
            BevelKind = bkFlat
            ReadOnly = True
            TabOrder = 9
          end
          object EditAfficheDebitPrelevement: TRichEdit
            Left = 160
            Top = 336
            Width = 145
            Height = 25
            Alignment = taRightJustify
            BevelInner = bvNone
            BevelOuter = bvNone
            BevelKind = bkFlat
            ReadOnly = True
            TabOrder = 10
          end
          object EditAfficheCreditPrelevement: TRichEdit
            Left = 160
            Top = 368
            Width = 145
            Height = 25
            Alignment = taRightJustify
            BevelInner = bvNone
            BevelOuter = bvNone
            BevelKind = bkFlat
            ReadOnly = True
            TabOrder = 11
          end
          object EditAfficheDebitCreditPrelevement: TRichEdit
            Left = 160
            Top = 400
            Width = 145
            Height = 25
            Alignment = taRightJustify
            BevelInner = bvNone
            BevelOuter = bvNone
            BevelKind = bkFlat
            ReadOnly = True
            TabOrder = 12
          end
          object EditAfficheDebitSituation: TRichEdit
            Left = 160
            Top = 480
            Width = 145
            Height = 25
            Alignment = taRightJustify
            BevelInner = bvNone
            BevelOuter = bvNone
            BevelKind = bkFlat
            ReadOnly = True
            TabOrder = 13
          end
          object EditAfficheCreditSituation: TRichEdit
            Left = 160
            Top = 512
            Width = 145
            Height = 25
            Alignment = taRightJustify
            BevelInner = bvNone
            BevelOuter = bvNone
            BevelKind = bkFlat
            ReadOnly = True
            TabOrder = 14
          end
          object EditAfficheDebitCreditSituation: TRichEdit
            Left = 160
            Top = 544
            Width = 145
            Height = 25
            Alignment = taRightJustify
            BevelInner = bvNone
            BevelOuter = bvNone
            BevelKind = bkFlat
            ReadOnly = True
            TabOrder = 15
          end
          object BitBtn49: TBitBtn
            Left = 240
            Top = 8
            Width = 75
            Height = 25
            TabOrder = 16
            OnClick = BitBtn49Click
            Kind = bkCancel
          end
          object EditSoldeTiers: TRichEdit
            Left = 160
            Top = 584
            Width = 145
            Height = 25
            Alignment = taRightJustify
            BevelInner = bvNone
            BevelOuter = bvNone
            BevelKind = bkFlat
            ReadOnly = True
            TabOrder = 17
          end
        end
        object AfficheSoldeAnterieur: TPanel
          Left = 168
          Top = 224
          Width = 913
          Height = 73
          BevelInner = bvLowered
          Caption = 'AfficheSoldeAnterieur'
          Color = clBlack
          TabOrder = 50
          Visible = False
          OnMouseDown = AfficheSoldeAnterieurMouseDown
          object Label140: TLabel
            Left = 16
            Top = 24
            Width = 163
            Height = 29
            Caption = 'Ancien Solde:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -24
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DebitCreditSoldeAnterieur: TLabel
            Left = 192
            Top = 24
            Width = 128
            Height = 29
            Caption = '(Cr'#233'diteur)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -24
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object EditSoldeAnterieur: TMemo
            Left = 344
            Top = 8
            Width = 265
            Height = 57
            Alignment = taRightJustify
            Color = clBlack
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -40
            Font.Name = 'Britannic Bold'
            Font.Style = [fsItalic]
            ParentFont = False
            TabOrder = 0
            WantReturns = False
            WordWrap = False
            OnEnter = EditSoldeAnterieurEnter
            OnExit = EditSoldeAnterieurExit
            OnKeyDown = EditSoldeAnterieurKeyDown
          end
          object BitConfirmeSoldeAnterieur: TBitBtn
            Left = 624
            Top = 8
            Width = 110
            Height = 57
            Caption = 'Confirm'#233
            TabOrder = 1
            OnClick = BitConfirmeSoldeAnterieurClick
            Kind = bkAll
          end
          object RBConfirmerSoldeAnterieur: TCheckBox
            Left = 312
            Top = 8
            Width = 25
            Height = 17
            Caption = '.'
            Enabled = False
            TabOrder = 2
          end
          object BitBtn50: TBitBtn
            Left = 816
            Top = 8
            Width = 91
            Height = 57
            TabOrder = 3
            OnClick = BitBtn50Click
            Kind = bkCancel
          end
          object ProgresseSoldeAnterieur: TProgressBar
            Left = 344
            Top = 20
            Width = 265
            Height = 33
            Min = 0
            Max = 100
            Smooth = True
            Step = 1
            TabOrder = 4
            Visible = False
          end
        end
      end
    end
    object PageAnalyseDonneesgeostrategiques: TTabSheet
      Caption = '     Analyse de donn'#233'es  g'#233'ostrat'#233'giques     '
      ImageIndex = 1
      OnShow = PageAnalyseDonneesgeostrategiquesShow
      object TableauAnalyseListeMouvement: TStringGrid
        Left = 0
        Top = 248
        Width = 1081
        Height = 400
        Ctl3D = False
        FixedColor = 8454143
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnDblClick = TableauAnalyseListeMouvementDblClick
        OnDrawCell = TableauAnalyseListeMouvementDrawCell
        RowHeights = (
          24
          24
          24
          24
          24)
      end
      object TableauAnalyseMouvement: TStringGrid
        Left = 480
        Top = 43
        Width = 657
        Height = 150
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
        TabOrder = 1
        OnClick = TableauAnalyseMouvementClick
        OnDrawCell = TableauAnalyseMouvementDrawCell
        RowHeights = (
          24
          22
          24
          24
          24)
      end
      object TableauAnalyseTypeMouvement: TStringGrid
        Left = 0
        Top = 43
        Width = 473
        Height = 150
        ColCount = 6
        Ctl3D = False
        FixedColor = 13303754
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goAlwaysShowEditor]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        OnClick = TableauAnalyseTypeMouvementClick
        OnDrawCell = TableauAnalyseTypeMouvementDrawCell
        ColWidths = (
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
      object AfficheLiseMouvementAnalyse: TPanel
        Left = 0
        Top = 200
        Width = 470
        Height = 41
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        Color = 8454143
        TabOrder = 3
        object Label29: TLabel
          Left = 6
          Top = 16
          Width = 57
          Height = 13
          Caption = 'P'#233'riode du: '
        end
        object Label30: TLabel
          Left = 256
          Top = 16
          Width = 18
          Height = 13
          Caption = 'au: '
        end
        object EditDateMouvementDebut: TDateTimePicker
          Left = 64
          Top = 11
          Width = 186
          Height = 21
          BevelKind = bkFlat
          CalAlignment = dtaLeft
          Date = 42173.4985881366
          Time = 42173.4985881366
          DateFormat = dfLong
          DateMode = dmComboBox
          Kind = dtkDate
          ParseInput = False
          TabOrder = 0
          OnChange = EditDateMouvementDebutChange
        end
        object EditDateMouvementFin: TDateTimePicker
          Left = 278
          Top = 11
          Width = 186
          Height = 21
          BevelKind = bkFlat
          CalAlignment = dtaLeft
          Date = 42173.4985881366
          Time = 42173.4985881366
          DateFormat = dfLong
          DateMode = dmComboBox
          Kind = dtkDate
          ParseInput = False
          TabOrder = 1
          OnChange = EditDateMouvementFinChange
        end
      end
      object TitreTableauAnalyseTypeMouvement: TPanel
        Left = 1
        Top = 0
        Width = 472
        Height = 41
        BevelOuter = bvLowered
        Caption = 'Type Mouvements'
        Color = 8454143
        TabOrder = 4
      end
      object TitreTableauAnalyseMouvement: TPanel
        Left = 480
        Top = 0
        Width = 657
        Height = 41
        BevelOuter = bvLowered
        Caption = 'Mouvement'
        Color = 8454143
        TabOrder = 5
      end
      object TableauAnalyseLocalisationGeographique: TStringGrid
        Left = 824
        Top = 248
        Width = 257
        Height = 329
        Color = 16777196
        ColCount = 3
        Ctl3D = False
        FixedColor = 16777170
        RowCount = 2
        ParentCtl3D = False
        TabOrder = 6
        Visible = False
        OnDblClick = TableauAnalyseLocalisationGeographiqueDblClick
        OnDrawCell = TableauAnalyseLocalisationGeographiqueDrawCell
        ColWidths = (
          64
          64
          64)
        RowHeights = (
          24
          24)
      end
      object AfficheDateLimiteExecution: TPanel
        Left = 480
        Top = 200
        Width = 657
        Height = 41
        BevelOuter = bvLowered
        Color = 8454143
        TabOrder = 7
        object EditDateLimiteExecution: TDateTimePicker
          Left = 216
          Top = 11
          Width = 186
          Height = 21
          BevelKind = bkFlat
          CalAlignment = dtaLeft
          Date = 42173.5943236343
          Time = 42173.5943236343
          DateFormat = dfLong
          DateMode = dmComboBox
          Kind = dtkDate
          ParseInput = False
          TabOrder = 0
          OnChange = EditDateLimiteExecutionChange
        end
        object RBDateLimiteExecution: TCheckBox
          Left = 8
          Top = 13
          Width = 193
          Height = 17
          Caption = 'Afficher '#224' la date limite d'#39'ex'#233'cution:'
          TabOrder = 1
          OnClick = RBDateLimiteExecutionClick
        end
      end
      object AfficherInfoStratigique: TPanel
        Left = 1088
        Top = 247
        Width = 241
        Height = 400
        BevelInner = bvLowered
        TabOrder = 8
        object Bevel19: TBevel
          Left = 8
          Top = 263
          Width = 225
          Height = 58
        end
        object Bevel20: TBevel
          Left = 16
          Top = 272
          Width = 209
          Height = 41
        end
        object Bevel21: TBevel
          Left = 8
          Top = 328
          Width = 225
          Height = 65
        end
        object EditOKExecution: TEdit
          Left = 52
          Top = 283
          Width = 49
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 8
          Text = 'Tous'
        end
        object EditEtatExecution: TEdit
          Left = 30
          Top = 283
          Width = 83
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 9
          Text = 'Accomplies et Non Accomplies'
        end
        object EditTitreEtatLocalisation: TMemo
          Left = 24
          Top = 280
          Width = 81
          Height = 25
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object Panel5: TPanel
          Left = 8
          Top = 8
          Width = 225
          Height = 145
          BevelOuter = bvLowered
          Color = 8454143
          TabOrder = 0
          object Label31: TLabel
            Left = 7
            Top = 52
            Width = 23
            Height = 13
            Caption = 'Pays'
          end
          object Label32: TLabel
            Left = 7
            Top = 76
            Width = 32
            Height = 13
            Caption = 'Wilaya'
          end
          object Label36: TLabel
            Left = 7
            Top = 100
            Width = 25
            Height = 13
            Caption = 'Daira'
          end
          object Label37: TLabel
            Left = 7
            Top = 124
            Width = 47
            Height = 13
            Caption = 'Commune'
          end
          object EditAnalyseCodePaysExecutionMouvement: TEdit
            Left = 63
            Top = 48
            Width = 74
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
          end
          object EditAnalyseCodeWilayaExecutionMouvement: TEdit
            Left = 63
            Top = 72
            Width = 74
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
          end
          object EditAnalyseCodeDairaExecutionMouvement: TEdit
            Left = 64
            Top = 96
            Width = 73
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 2
          end
          object EditAnalyseCodeCommuneExecutionMouvement: TEdit
            Left = 63
            Top = 118
            Width = 74
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
          end
          object EditAnalysePaysExecutionMouvement: TEdit
            Left = 63
            Top = 48
            Width = 153
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 4
            OnEnter = EditAnalysePaysExecutionMouvementEnter
          end
          object EditAnalyseWilayaExecutionMouvement: TEdit
            Left = 63
            Top = 72
            Width = 153
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 5
            OnEnter = EditAnalyseWilayaExecutionMouvementEnter
          end
          object EditAnalyseDairaExecutionMouvement: TEdit
            Left = 63
            Top = 96
            Width = 153
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 6
            OnEnter = EditAnalyseDairaExecutionMouvementEnter
          end
          object EditAnalyseCommuneExecutionMouvement: TEdit
            Left = 63
            Top = 118
            Width = 153
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 7
            OnEnter = EditAnalyseCommuneExecutionMouvementEnter
          end
          object Panel6: TPanel
            Left = 8
            Top = 8
            Width = 209
            Height = 25
            BevelInner = bvLowered
            Caption = 'Localisation G'#233'ographique'
            TabOrder = 8
          end
        end
        object BitBtn4: TBitBtn
          Left = 24
          Top = 280
          Width = 89
          Height = 25
          Caption = 'Imprimer'
          TabOrder = 1
          OnClick = BitBtn4Click
          Kind = bkHelp
        end
        object RBOrientationPapierLocalisationGeoStratigique: TComboBox
          Left = 120
          Top = 282
          Width = 97
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
        object RadioGroup8: TRadioGroup
          Left = 8
          Top = 160
          Width = 225
          Height = 97
          Caption = 'Etat d'#39'ex'#233'cution:'
          TabOrder = 4
        end
        object RBMouvementsExecutes: TRadioButton
          Left = 13
          Top = 184
          Width = 212
          Height = 17
          Caption = 'Mouvements Ex'#233'cut'#233's !'
          TabOrder = 5
          OnClick = RBMouvementsExecutesClick
        end
        object RBMouvementsNonExecutes: TRadioButton
          Left = 12
          Top = 208
          Width = 213
          Height = 17
          Caption = 'Mouvements Non ex'#233'cut'#233's !'
          TabOrder = 6
          OnClick = RBMouvementsNonExecutesClick
        end
        object RBMouvementsExecutesEtNonExecutes: TRadioButton
          Left = 12
          Top = 232
          Width = 217
          Height = 17
          Caption = 'Mouvements ex'#233'cut'#233's et Non ex'#233'cut'#233's !'
          Checked = True
          TabOrder = 7
          TabStop = True
          OnClick = RBMouvementsExecutesEtNonExecutesClick
        end
        object RBAfficherTotalListeMouvement: TCheckBox
          Left = 16
          Top = 368
          Width = 209
          Height = 17
          Caption = 'Afficher les totaux des '#233'tats !'
          Checked = True
          State = cbChecked
          TabOrder = 10
          OnClick = RBAfficherTotalListeMouvementClick
        end
        object RBAfficherValeursMonetaires: TCheckBox
          Left = 16
          Top = 340
          Width = 209
          Height = 17
          Caption = 'Afficher les valeurs mon'#233'taires !'
          Checked = True
          State = cbChecked
          TabOrder = 11
          OnClick = RBAfficherValeursMonetairesClick
        end
      end
      object AfficheVoirEtat: TPanel
        Left = 0
        Top = 248
        Width = 1081
        Height = 401
        BevelInner = bvLowered
        Color = clSilver
        TabOrder = 9
        object Bevel88: TBevel
          Left = 440
          Top = 136
          Width = 185
          Height = 42
        end
        object BitBtn40: TBitBtn
          Left = 448
          Top = 144
          Width = 169
          Height = 25
          Caption = 'Voir l'#39'Etat'
          TabOrder = 0
          OnClick = BitBtn40Click
          Kind = bkAll
        end
      end
      object RBMouvementGeoStrategique: TCheckBox
        Left = 1144
        Top = 208
        Width = 187
        Height = 17
        Caption = 'Afficher Mouvement g'#233'ostrat'#233'gique'
        Checked = True
        State = cbChecked
        TabOrder = 10
      end
    end
    object PageOptions: TTabSheet
      Caption = '     Options     '
      ImageIndex = 2
      OnShow = PageOptionsShow
      object Bevel58: TBevel
        Left = 224
        Top = 456
        Width = 146
        Height = 41
      end
      object TitreEditBaseAvis: TLabel
        Left = 784
        Top = 13
        Width = 42
        Height = 13
        Caption = '..............'
      end
      object Label54: TLabel
        Left = 384
        Top = 328
        Width = 50
        Height = 13
        Caption = 'Composit'#176':'
      end
      object RadioGroup14: TRadioGroup
        Left = 0
        Top = 368
        Width = 185
        Height = 145
        Caption = 'Nombre Chiffres Apr'#233's vergule:'
        TabOrder = 13
      end
      object TableauRowCapacity: TStringGrid
        Left = 0
        Top = 520
        Width = 185
        Height = 57
        ColCount = 2
        Ctl3D = False
        RowCount = 2
        ParentCtl3D = False
        TabOrder = 11
        ColWidths = (
          64
          181)
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 8
        Width = 377
        Height = 353
        Caption = 'Options d'#39'affichage Mode payement:'
        TabOrder = 0
        object Label141: TLabel
          Left = 272
          Top = 232
          Width = 70
          Height = 13
          Caption = 'Font Titre Etat:'
        end
        object TitreEtatFontStyle: TEdit
          Left = 272
          Top = 248
          Width = 89
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 19
        end
        object RBModePayementNumAvis: TCheckBox
          Left = 16
          Top = 24
          Width = 177
          Height = 17
          Caption = 'Afficher Num Avis !'
          TabOrder = 0
          OnClick = RBModePayementNumAvisClick
        end
        object RBModePayementModePayement: TCheckBox
          Left = 16
          Top = 48
          Width = 177
          Height = 17
          Caption = 'Afficher Mode de payement !'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = RBModePayementModePayementClick
        end
        object RBModePayementDomiciliation: TCheckBox
          Left = 16
          Top = 72
          Width = 177
          Height = 17
          Caption = 'Afficher Domiciliation !'
          Checked = True
          State = cbChecked
          TabOrder = 2
          OnClick = RBModePayementDomiciliationClick
        end
        object RBModePayementNumPiece: TCheckBox
          Left = 16
          Top = 96
          Width = 177
          Height = 17
          Caption = 'Afficher num Pi'#232'ce !'
          Checked = True
          State = cbChecked
          TabOrder = 3
          OnClick = RBModePayementNumPieceClick
        end
        object RBAfficherHeureImpression: TCheckBox
          Left = 16
          Top = 120
          Width = 177
          Height = 17
          Caption = 'Afficher l'#39'heure  de l'#39'impression'
          TabOrder = 4
          OnClick = RBAfficherHeureImpressionClick
        end
        object RBAfficherCodeArticleComplet: TCheckBox
          Left = 16
          Top = 144
          Width = 177
          Height = 17
          Caption = 'Afficher le code article complet'
          TabOrder = 5
          OnClick = RBAfficherCodeArticleCompletClick
        end
        object RBAfficheCryptageEtat: TCheckBox
          Left = 16
          Top = 168
          Width = 177
          Height = 17
          Caption = 'Afficher le cryptage des '#233'tats !'
          TabOrder = 6
          OnClick = RBAfficheCryptageEtatClick
        end
        object RBAfficheReferenceListeMouvement: TCheckBox
          Left = 16
          Top = 192
          Width = 201
          Height = 17
          Caption = 'Afficher la r'#233'f'#233'rence liste mouvement'
          Checked = True
          State = cbChecked
          TabOrder = 7
          OnClick = RBAfficheReferenceListeMouvementClick
        end
        object EditTitreReferenceListeMouvement: TComboBox
          Left = 216
          Top = 189
          Width = 153
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          ItemHeight = 13
          TabOrder = 8
          OnExit = EditTitreReferenceListeMouvementExit
          OnSelect = EditTitreReferenceListeMouvementSelect
          Items.Strings = (
            'BL'
            'BC'
            'Facture'
            'Bon')
        end
        object RBAfficherValeurNulle: TCheckBox
          Left = 208
          Top = 32
          Width = 161
          Height = 17
          Caption = 'Afficher valeur nulle'
          TabOrder = 9
          OnClick = RBAfficherValeurNulleClick
        end
        object RBDemiEtat: TCheckBox
          Left = 216
          Top = 168
          Width = 97
          Height = 17
          Caption = 'Demi Etat'
          Checked = True
          State = cbChecked
          TabOrder = 10
          OnClick = RBDemiEtatClick
        end
        object RadioGroup21: TRadioGroup
          Left = 208
          Top = 56
          Width = 161
          Height = 97
          Caption = 'Type Num Etat'
          TabOrder = 11
        end
        object RBNumEtatType1: TRadioButton
          Left = 216
          Top = 72
          Width = 113
          Height = 17
          Caption = 'Etat N'#176' 000000N'#176
          Checked = True
          TabOrder = 12
          TabStop = True
          OnClick = RBNumEtatType1Click
        end
        object RBNumEtatType2: TRadioButton
          Left = 216
          Top = 91
          Width = 113
          Height = 17
          Caption = 'Etat N'#176' 00AA00N'#176
          TabOrder = 13
          OnClick = RBNumEtatType2Click
        end
        object RBNumEtatType3: TRadioButton
          Left = 216
          Top = 110
          Width = 113
          Height = 17
          Caption = 'Etat N'#176' AAAA00N'#176
          TabOrder = 14
          OnClick = RBNumEtatType3Click
        end
        object RBValiderValeurNulle: TCheckBox
          Left = 208
          Top = 11
          Width = 137
          Height = 17
          Caption = 'Valider les valeurs nulles.'
          TabOrder = 15
        end
        object RBNumEtatType4: TRadioButton
          Left = 216
          Top = 129
          Width = 113
          Height = 17
          Caption = 'Etat N'#176' AA0000N'#176
          TabOrder = 16
          OnClick = RBNumEtatType4Click
        end
        object RBAfficherInfosBasPage: TCheckBox
          Left = 16
          Top = 216
          Width = 193
          Height = 17
          Caption = 'Afficher infos entreprise bas de page'
          TabOrder = 17
          OnClick = RBAfficherInfosBasPageClick
        end
        object TitreEtatFontNam: TEdit
          Left = 272
          Top = 248
          Width = 97
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 18
          OnDblClick = TitreEtatFontNamDblClick
        end
        object RBToujourNouvelleDateMouvement: TCheckBox
          Left = 16
          Top = 240
          Width = 193
          Height = 17
          Caption = 'Toujour Nouvelle date Mouvement'
          TabOrder = 20
          OnClick = RBToujourNouvelleDateMouvementClick
        end
      end
      object Panel8: TPanel
        Left = 8
        Top = 272
        Width = 257
        Height = 81
        BevelInner = bvLowered
        TabOrder = 1
        object RadioGroup11: TRadioGroup
          Left = 8
          Top = 8
          Width = 241
          Height = 65
          Caption = 'Date:'
          TabOrder = 0
        end
        object RBModePayementDateAvis: TRadioButton
          Left = 24
          Top = 24
          Width = 217
          Height = 17
          Caption = 'Afficher la date  de l'#39'Avis !'
          Checked = True
          TabOrder = 1
          TabStop = True
          OnClick = RBModePayementDateAvisClick
        end
        object RBModePayementDateExecution: TRadioButton
          Left = 24
          Top = 48
          Width = 217
          Height = 17
          Caption = 'Afficher la date d'#39'Execution !'
          TabOrder = 2
          OnClick = RBModePayementDateExecutionClick
        end
      end
      object EditListeNumAvisTrouver: TEdit
        Left = 384
        Top = 16
        Width = 177
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
      end
      object EditListeModePaiementTrouver: TEdit
        Left = 384
        Top = 40
        Width = 177
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
      end
      object EditListeDomiciliationAvisTrouver: TEdit
        Left = 384
        Top = 64
        Width = 177
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 4
      end
      object EditListeNumPieceTrouver: TEdit
        Left = 384
        Top = 112
        Width = 177
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 5
      end
      object EditListeDateTrouver: TEdit
        Left = 384
        Top = 136
        Width = 177
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 6
      end
      object EditMemoLiseAvisTrouver: TMemo
        Left = 384
        Top = 160
        Width = 385
        Height = 73
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 7
      end
      object TableauListeAvisTrouver: TStringGrid
        Left = 384
        Top = 240
        Width = 721
        Height = 81
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 8
      end
      object AfficherTransformationMouvement: TPanel
        Left = 1240
        Top = 368
        Width = 1041
        Height = 641
        BevelInner = bvLowered
        Color = 8454143
        TabOrder = 9
        Visible = False
        object Bevel38: TBevel
          Left = 8
          Top = 8
          Width = 553
          Height = 41
        end
        object Bevel39: TBevel
          Left = 568
          Top = 8
          Width = 465
          Height = 41
        end
        object Bevel40: TBevel
          Left = 568
          Top = 216
          Width = 465
          Height = 41
        end
        object Bevel41: TBevel
          Left = 568
          Top = 440
          Width = 465
          Height = 73
        end
        object TableauListeMouvementTransformation: TStringGrid
          Left = 8
          Top = 56
          Width = 553
          Height = 577
          Ctl3D = False
          RowCount = 2
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
          ParentCtl3D = False
          TabOrder = 0
          OnDblClick = TableauListeMouvementTransformationDblClick
        end
        object TableauTypeMouvementTransformation: TStringGrid
          Left = 568
          Top = 56
          Width = 464
          Height = 153
          Ctl3D = False
          RowCount = 2
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
          ParentCtl3D = False
          TabOrder = 1
          OnClick = TableauTypeMouvementTransformationClick
          OnDblClick = TableauTypeMouvementTransformationDblClick
        end
        object TableauMouvementTransformation: TStringGrid
          Left = 568
          Top = 264
          Width = 465
          Height = 161
          Ctl3D = False
          RowCount = 2
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
          ParentCtl3D = False
          TabOrder = 2
          OnDblClick = TableauMouvementTransformationDblClick
        end
        object BitValiderTransformation: TBitBtn
          Left = 576
          Top = 448
          Width = 449
          Height = 57
          Caption = 'Valider la Transformation'
          TabOrder = 3
          OnClick = BitValiderTransformationClick
          Kind = bkAll
        end
        object BitSelectAll: TBitBtn
          Left = 16
          Top = 16
          Width = 161
          Height = 25
          Caption = 'S'#233'lectionner Tous !'
          TabOrder = 4
          OnClick = BitSelectAllClick
          Kind = bkHelp
        end
        object EditPositionTypeMouvementTransformation: TEdit
          Left = 968
          Top = 24
          Width = 57
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
        end
        object EditPositionMouvementTransformation: TEdit
          Left = 968
          Top = 232
          Width = 57
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 6
        end
      end
      object AfficheCodeAutorisation: TPanel
        Left = 8
        Top = 616
        Width = 265
        Height = 41
        BevelInner = bvLowered
        TabOrder = 10
        OnClick = AfficheCodeAutorisationClick
        object Label69: TLabel
          Left = 11
          Top = 12
          Width = 50
          Height = 13
          Caption = 'Signataire:'
        end
        object EditSignataire: TComboBox
          Left = 64
          Top = 8
          Width = 193
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          ItemHeight = 13
          ItemIndex = 2
          TabOrder = 0
          Text = 'L'#39'Entreprise'
          OnSelect = EditSignataireSelect
          Items.Strings = (
            'Service commercial'
            'Le G'#233'rant'
            'L'#39'Entreprise')
        end
      end
      object BitBtn20: TBitBtn
        Left = 232
        Top = 464
        Width = 129
        Height = 25
        Caption = 'Composition'
        TabOrder = 14
        OnClick = BitBtn20Click
        Kind = bkHelp
      end
      object BitBtn22: TBitBtn
        Left = 248
        Top = 408
        Width = 121
        Height = 41
        Caption = 'Comptabilisation'
        TabOrder = 15
        OnClick = BitBtn22Click
        Kind = bkHelp
      end
      object EditListeDomiciliationPieceTrouver: TEdit
        Left = 384
        Top = 88
        Width = 177
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 16
      end
      object Panel13: TPanel
        Left = 776
        Top = 88
        Width = 201
        Height = 145
        TabOrder = 17
        object RadioGroup16: TRadioGroup
          Left = 8
          Top = 8
          Width = 185
          Height = 97
          Caption = 'Option Trie: '
          TabOrder = 0
        end
        object RBTrieNum: TRadioButton
          Left = 16
          Top = 56
          Width = 169
          Height = 17
          Caption = 'Trie par num'#233'ro'
          Checked = True
          TabOrder = 1
          TabStop = True
          OnClick = RBTrieNumClick
        end
        object RBTrieDate: TRadioButton
          Left = 16
          Top = 32
          Width = 169
          Height = 17
          Caption = 'Trie par date'
          TabOrder = 2
          OnClick = RBTrieDateClick
        end
        object RBTrieAucun: TRadioButton
          Left = 16
          Top = 80
          Width = 169
          Height = 17
          Caption = 'Pas de trie'
          TabOrder = 3
          OnClick = RBTrieAucunClick
        end
        object RBTrierRubriqueSelecte: TCheckBox
          Left = 8
          Top = 112
          Width = 185
          Height = 17
          Caption = 'Trier par la rubrique s'#233'lectionn'#233'e !'
          TabOrder = 4
          OnClick = RBTrierRubriqueSelecteClick
        end
      end
      object Panel14: TPanel
        Left = 576
        Top = 8
        Width = 201
        Height = 57
        TabOrder = 18
        object RadioGroup15: TRadioGroup
          Left = 8
          Top = 3
          Width = 185
          Height = 46
          TabOrder = 2
        end
        object RBListeMouvementMaintenue: TRadioButton
          Left = 16
          Top = 19
          Width = 81
          Height = 17
          Caption = 'Maintenue'
          TabOrder = 0
        end
        object RBListeMouvementAnnuler: TRadioButton
          Left = 112
          Top = 19
          Width = 65
          Height = 17
          Caption = 'Annuler'
          TabOrder = 1
        end
      end
      object RBNbrChiffreApresVerguleAutomatique: TCheckBox
        Left = 8
        Top = 386
        Width = 169
        Height = 17
        Caption = 'Nbr chiffre automatique'
        Checked = True
        State = cbChecked
        TabOrder = 19
        OnClick = RBNbrChiffreApresVerguleAutomatiqueClick
      end
      object AfficheNbrChiffreApresVergule: TPanel
        Left = 8
        Top = 406
        Width = 161
        Height = 83
        Enabled = False
        TabOrder = 20
        object Panel9: TPanel
          Left = 8
          Top = 7
          Width = 81
          Height = 19
          BevelInner = bvLowered
          Caption = 'Quantit'#233':'
          TabOrder = 0
        end
        object EditNbrChiffreApresVerguleQte: TEdit
          Left = 96
          Top = 7
          Width = 41
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          Text = '2'
          OnExit = EditNbrChiffreApresVerguleQteExit
        end
        object IncrimenteEditNbrChiffreApresVerguleQte: TUpDown
          Left = 137
          Top = 7
          Width = 16
          Height = 19
          Associate = EditNbrChiffreApresVerguleQte
          Min = 0
          Position = 2
          TabOrder = 2
          Wrap = False
          OnClick = IncrimenteEditNbrChiffreApresVerguleQteClick
        end
        object Panel10: TPanel
          Left = 8
          Top = 30
          Width = 81
          Height = 19
          BevelInner = bvLowered
          Caption = 'Prix:'
          TabOrder = 3
        end
        object EditNbrChiffreApresVergulePrix: TEdit
          Left = 96
          Top = 30
          Width = 41
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
          Text = '2'
          OnExit = EditNbrChiffreApresVergulePrixExit
        end
        object IncrimenteEditNbrChiffreApresVergulePrix: TUpDown
          Left = 137
          Top = 30
          Width = 16
          Height = 19
          Associate = EditNbrChiffreApresVergulePrix
          Min = 0
          Position = 2
          TabOrder = 5
          Wrap = False
          OnClick = IncrimenteEditNbrChiffreApresVergulePrixClick
        end
        object Panel11: TPanel
          Left = 8
          Top = 52
          Width = 81
          Height = 19
          BevelInner = bvLowered
          Caption = 'Co'#251't'
          TabOrder = 6
        end
        object EditNbrChiffreApresVerguleCout: TEdit
          Left = 96
          Top = 52
          Width = 41
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 7
          Text = '2'
          OnExit = EditNbrChiffreApresVerguleCoutExit
        end
        object IncrimenteEditNbrChiffreApresVerguleCout: TUpDown
          Left = 137
          Top = 52
          Width = 16
          Height = 19
          Associate = EditNbrChiffreApresVerguleCout
          Min = 0
          Position = 2
          TabOrder = 8
          Wrap = False
          OnClick = IncrimenteEditNbrChiffreApresVerguleCoutClick
        end
      end
      object Panel15: TPanel
        Left = 984
        Top = 136
        Width = 185
        Height = 97
        TabOrder = 21
        object RadioGroup17: TRadioGroup
          Left = 8
          Top = 8
          Width = 169
          Height = 81
          Caption = 'Orientation Bon Quantitatif'
          TabOrder = 0
        end
        object RBImprimePortrait: TRadioButton
          Left = 24
          Top = 32
          Width = 145
          Height = 17
          Caption = 'Portrait'
          Checked = True
          TabOrder = 1
          TabStop = True
        end
        object RBImprimePaysage: TRadioButton
          Left = 24
          Top = 56
          Width = 145
          Height = 17
          Caption = 'Paysage'
          TabOrder = 2
        end
      end
      object EditBaseAvis: TComboBox
        Left = 848
        Top = 8
        Width = 169
        Height = 21
        BevelKind = bkFlat
        ItemHeight = 0
        TabOrder = 22
        Text = 'FAvis'
      end
      object RBTailleColonneMax: TCheckBox
        Left = 784
        Top = 32
        Width = 177
        Height = 17
        Caption = 'Appliquer la taille de colonne max:'
        Checked = True
        State = cbChecked
        TabOrder = 23
        OnClick = RBTailleColonneMaxClick
      end
      object EditTailleColonneMax: TEdit
        Left = 968
        Top = 32
        Width = 41
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 24
        Text = '500'
        OnExit = EditTailleColonneMaxExit
      end
      object IncrimenteEditTailleColonneMax: TUpDown
        Left = 1009
        Top = 32
        Width = 16
        Height = 19
        Associate = EditTailleColonneMax
        Min = 1
        Max = 1000
        Position = 500
        TabOrder = 25
        Wrap = False
        OnClick = IncrimenteEditTailleColonneMaxClick
      end
      object RBChargerPointeur: TCheckBox
        Left = 280
        Top = 620
        Width = 161
        Height = 17
        Caption = 'Chargement des pointeurs'
        Checked = True
        State = cbChecked
        TabOrder = 26
        Visible = False
      end
      object RBActiverReaffichageListeMouvement: TCheckBox
        Left = 8
        Top = 592
        Width = 241
        Height = 17
        Caption = 'Activer le r'#233'affichage liste mouvements'
        TabOrder = 27
      end
      object RBReaffichageListeMouvementDejasEffectue: TCheckBox
        Left = 280
        Top = 592
        Width = 241
        Height = 17
        Caption = 'R'#233'affichage liste mouvements d'#233'jas '#233'ffectu'#233' !'
        TabOrder = 28
      end
      object RBAfficherInfoTiersSupplementaire: TCheckBox
        Left = 576
        Top = 72
        Width = 193
        Height = 17
        Caption = 'Afficher Info-Tiers suppl'#233'mentaire'
        TabOrder = 29
      end
      object RBSuspendreDetailMouvement: TCheckBox
        Left = 280
        Top = 638
        Width = 97
        Height = 17
        Caption = 'Suspendre DM'
        TabOrder = 30
      end
      object EditAutoSelectionArticle: TEdit
        Left = 592
        Top = 608
        Width = 121
        Height = 19
        Color = clSilver
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 31
      end
      object RBAfficherTauxFormules: TCheckBox
        Left = 9
        Top = 493
        Width = 168
        Height = 17
        Caption = 'Afficher les taux formules'
        TabOrder = 32
        OnClick = RBAfficherTauxFormulesClick
      end
      object TableauValeurParVariable: TStringGrid
        Left = 384
        Top = 376
        Width = 569
        Height = 97
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 33
        OnContextPopup = TableauValeurParVariableContextPopup
      end
      object MemoValeurParVariable: TMemo
        Left = 384
        Top = 480
        Width = 529
        Height = 97
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 34
      end
      object EditLongMaxVariable: TEdit
        Left = 916
        Top = 480
        Width = 37
        Height = 19
        Color = clSilver
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 35
      end
      object BitBtn1: TBitBtn
        Left = 1112
        Top = 248
        Width = 209
        Height = 25
        Caption = 'EnregistrerOptionsFicheSaisie'
        TabOrder = 36
        OnClick = BitBtn1Click
        Kind = bkAll
      end
      object BitBtn32: TBitBtn
        Left = 1112
        Top = 280
        Width = 209
        Height = 25
        Caption = 'ChargerOptionsFicheSaisie'
        TabOrder = 37
        OnClick = BitBtn32Click
        Kind = bkAll
      end
      object AutoriserEnregistrementOptionsFicheSaisie: TCheckBox
        Left = 432
        Top = 640
        Width = 233
        Height = 17
        Caption = 'AutoriserEnregistrementOptionsFicheSaisie'
        TabOrder = 38
      end
      object RBEditionTableauDetaiMouvement: TCheckBox
        Left = 192
        Top = 560
        Width = 185
        Height = 17
        Caption = 'Tableau d'#233'tail mouvement Editing'
        TabOrder = 39
        OnClick = RBEditionTableauDetaiMouvementClick
      end
      object EditDebitCreditMouvement: TEdit
        Left = 576
        Top = 104
        Width = 121
        Height = 19
        Color = clSilver
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 40
      end
      object EditCodeTiersOrigineAvis: TEdit
        Left = 760
        Top = 608
        Width = 121
        Height = 19
        Color = clSilver
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 41
      end
      object EditOrdreListeMouvementAppartenantSauvgarde: TEdit
        Left = 448
        Top = 326
        Width = 657
        Height = 19
        Color = clSilver
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 42
      end
      object RBAfficherDateHeureImpression: TCheckBox
        Left = 984
        Top = 116
        Width = 209
        Height = 17
        Caption = 'Afficher le date et l'#39'heure d'#39'impr'#233'ssion'
        TabOrder = 43
      end
      object Panel27: TPanel
        Left = 1032
        Top = 0
        Width = 241
        Height = 105
        BevelInner = bvLowered
        TabOrder = 44
        object ImageCodebarre: TImage
          Left = 8
          Top = 8
          Width = 209
          Height = 89
          AutoSize = True
        end
      end
      object BitBtn27: TBitBtn
        Left = 1184
        Top = 136
        Width = 137
        Height = 25
        Caption = 'Ouvrir fichier cible'
        TabOrder = 45
        OnClick = BitBtn27Click
      end
      object AfficheDataCibleDetailMouvement: TPanel
        Left = 1264
        Top = 336
        Width = 1337
        Height = 657
        Color = 8454143
        TabOrder = 12
        Visible = False
        object Bevel46: TBevel
          Left = 8
          Top = 56
          Width = 657
          Height = 33
        end
        object Label64: TLabel
          Left = 16
          Top = 64
          Width = 60
          Height = 13
          Caption = 'Fichier Cible:'
        end
        object Bevel47: TBevel
          Left = 680
          Top = 56
          Width = 649
          Height = 33
        end
        object Label65: TLabel
          Left = 688
          Top = 69
          Width = 86
          Height = 13
          Caption = 'Fichier Distination:'
        end
        object Bevel48: TBevel
          Left = 8
          Top = 8
          Width = 241
          Height = 41
        end
        object Bevel49: TBevel
          Left = 1080
          Top = 8
          Width = 249
          Height = 41
        end
        object Bevel50: TBevel
          Left = 680
          Top = 8
          Width = 177
          Height = 41
        end
        object Bevel51: TBevel
          Left = 360
          Top = 8
          Width = 305
          Height = 41
        end
        object Label66: TLabel
          Left = 368
          Top = 24
          Width = 138
          Height = 13
          Caption = 'Validation D'#233'tail Mouvement:'
        end
        object FichierCibleAfficher: TLabel
          Left = 256
          Top = 24
          Width = 27
          Height = 13
          Caption = '.........'
        end
        object EditAdresseFichierCible: TEdit
          Left = 80
          Top = 64
          Width = 553
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
        end
        object BitOuvrirFichierCible: TBitBtn
          Left = 16
          Top = 16
          Width = 225
          Height = 25
          Caption = 'Ouvrir le fichier sible !'
          TabOrder = 1
          OnClick = BitOuvrirFichierCibleClick
          Kind = bkHelp
        end
        object TableauDetaiMouvementFichierCible: TStringGrid
          Left = 8
          Top = 96
          Width = 657
          Height = 521
          Cursor = crHandPoint
          Color = cl3DLight
          ColCount = 8
          Ctl3D = False
          DefaultColWidth = 30
          DefaultRowHeight = 20
          RowCount = 16
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSizing, goColSizing, goAlwaysShowEditor]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          OnDblClick = TableauDetaiMouvementFichierCibleDblClick
          RowHeights = (
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20)
        end
        object BitBtn15: TBitBtn
          Left = 688
          Top = 16
          Width = 155
          Height = 25
          Caption = 'Valider le transfert !'
          TabOrder = 3
          OnClick = BitBtn15Click
          Kind = bkAll
        end
        object EditAdresseFichierDistination: TEdit
          Left = 784
          Top = 64
          Width = 537
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
        end
        object BitBtn16: TBitBtn
          Left = 1088
          Top = 16
          Width = 225
          Height = 25
          Caption = 'Indiquer l'#39#39'adresse du fichier distination !'
          TabOrder = 5
          OnClick = BitBtn16Click
          Kind = bkHelp
        end
        object TableauDetaiMouvementFichierDistination: TStringGrid
          Left = 680
          Top = 96
          Width = 649
          Height = 521
          Cursor = crHandPoint
          Color = cl3DLight
          ColCount = 8
          Ctl3D = False
          DefaultColWidth = 30
          DefaultRowHeight = 20
          RowCount = 16
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSizing, goColSizing, goAlwaysShowEditor]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 6
          RowHeights = (
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20)
        end
        object EditListeDetailMouvement: TEdit
          Left = 144
          Top = 624
          Width = 1185
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 7
        end
        object BitBtn17: TBitBtn
          Left = 8
          Top = 621
          Width = 97
          Height = 25
          Caption = 'Chercher !'
          TabOrder = 8
          OnClick = BitBtn17Click
          Kind = bkHelp
        end
        object EditRowSelect: TEdit
          Left = 112
          Top = 624
          Width = 25
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 9
        end
        object EditValidationDetailMouvement: TComboBox
          Left = 512
          Top = 16
          Width = 145
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 10
          Text = 'Tous'
          OnKeyPress = EditValidationDetailMouvementKeyPress
          OnSelect = EditValidationDetailMouvementSelect
          Items.Strings = (
            'Tous'
            'Oui'
            'Non')
        end
        object BitBtn28: TBitBtn
          Left = 637
          Top = 59
          Width = 25
          Height = 25
          Caption = '.'
          TabOrder = 11
          OnClick = BitBtn28Click
          Kind = bkCancel
        end
        object AfficherListeMouvement: TPanel
          Left = 672
          Top = 8
          Width = 657
          Height = 609
          TabOrder = 12
          object Bevel96: TBevel
            Left = 8
            Top = 8
            Width = 305
            Height = 41
          end
          object TableauListeMouvementResultat: TStringGrid
            Left = 8
            Top = 88
            Width = 609
            Height = 513
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            OnDblClick = TableauxListeMouvementTransfertDblClick
          end
          object BitBtn46: TBitBtn
            Left = 16
            Top = 16
            Width = 209
            Height = 25
            Caption = 'Valider la liste mouvement'
            TabOrder = 1
            OnClick = BitBtn46Click
            Kind = bkAll
          end
        end
      end
      object EditCodeTypeFormuleRecape: TComboBox
        Left = 216
        Top = 520
        Width = 145
        Height = 21
        BevelInner = bvLowered
        BevelKind = bkFlat
        Ctl3D = True
        ItemHeight = 0
        ParentCtl3D = False
        TabOrder = 46
        OnChange = EditCodeTypeFormuleRecapeChange
      end
      object RBAfficherDetailVariable: TCheckBox
        Left = 384
        Top = 352
        Width = 217
        Height = 17
        Caption = 'Afficher le d'#233'tail des Variables et Taxes'
        Checked = True
        State = cbChecked
        TabOrder = 48
        OnClick = RBAfficherDetailVariableClick
      end
      object RBPreciserDestinationMouvement: TCheckBox
        Left = 566
        Top = 136
        Width = 209
        Height = 17
        Caption = 'Pr'#233'ciser la d'#233'stination des mouvements'
        TabOrder = 49
        OnClick = RBPreciserDestinationMouvementClick
      end
      object EditVariableConcerneTypeFormule: TEdit
        Left = 792
        Top = 579
        Width = 121
        Height = 19
        Color = clSilver
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 50
        Text = 'Timbre'
      end
      object RBAppliquerFormuleComposition: TCheckBox
        Left = 968
        Top = 384
        Width = 201
        Height = 17
        Caption = 'Appliquer Formules de compositions'
        TabOrder = 51
        OnClick = RBAppliquerFormuleCompositionClick
      end
      object RadioGroup24: TRadioGroup
        Left = 968
        Top = 416
        Width = 257
        Height = 105
        Caption = 'Application Bar'#234'me: '
        Enabled = False
        TabOrder = 52
      end
      object RBAppliquerResultatBaremePrix: TRadioButton
        Left = 976
        Top = 448
        Width = 233
        Height = 17
        Caption = 'Appliquer le r'#233'sultat du bar'#234'me sur le prix'
        Enabled = False
        TabOrder = 53
      end
      object RBAppliquerResultatBaremeQuantite: TRadioButton
        Left = 976
        Top = 480
        Width = 241
        Height = 17
        Caption = 'Appliquer le r'#233'sultat du bar'#234'me sur la quantit'#233
        Enabled = False
        TabOrder = 54
      end
      object RBAccuseReceptionTransporteur: TCheckBox
        Left = 976
        Top = 560
        Width = 209
        Height = 17
        Caption = 'Accus'#233' de r'#233'ception par transporteur'
        TabOrder = 55
        OnClick = RBAccuseReceptionTransporteurClick
      end
      object RBAfficherSoldeAnterieur: TCheckBox
        Left = 976
        Top = 584
        Width = 201
        Height = 17
        Caption = 'Afficher le Solde Ant'#233'rieur'
        TabOrder = 56
        OnClick = RBAfficherSoldeAnterieurClick
      end
      object CachePageOptions: TPanel
        Left = 0
        Top = 0
        Width = 185
        Height = 41
        BevelInner = bvLowered
        TabOrder = 47
      end
      object RBPrixUnitaireTTC: TCheckBox
        Left = 192
        Top = 368
        Width = 153
        Height = 17
        Caption = 'Prix unitaire en TTC'
        TabOrder = 57
      end
      object RBEtatSimplifier: TCheckBox
        Left = 192
        Top = 392
        Width = 81
        Height = 17
        Caption = 'Etat Simplifier'
        TabOrder = 58
        OnClick = RBEtatSimplifierClick
      end
      object EditListeRubriqueFormuleTTC: TComboBox
        Left = 280
        Top = 389
        Width = 89
        Height = 21
        BevelKind = bkFlat
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        TabOrder = 59
        OnSelect = EditListeRubriqueFormuleTTCSelect
        Items.Strings = (
          'TTC')
      end
    end
    object PageParametres: TTabSheet
      Caption = '     Param'#232'tres     '
      ImageIndex = 3
      OnShow = PageParametresShow
      object TableauIndiqueAdresseListeMouvement: TStringGrid
        Left = 0
        Top = 8
        Width = 713
        Height = 120
        Ctl3D = False
        RowCount = 2
        ParentCtl3D = False
        TabOrder = 0
      end
      object BitMiseAJourPDetailMouvement: TBitBtn
        Left = 480
        Top = 144
        Width = 225
        Height = 25
        Caption = 'Mise '#224' jour position d'#233'tail mouvement'
        TabOrder = 1
        OnClick = BitMiseAJourPDetailMouvementClick
        Kind = bkHelp
      end
      object Panel16: TPanel
        Left = 480
        Top = 176
        Width = 225
        Height = 65
        BevelInner = bvLowered
        TabOrder = 2
        object Label48: TLabel
          Left = 8
          Top = 8
          Width = 44
          Height = 13
          Caption = 'P'#176' Begin:'
        end
        object Label55: TLabel
          Left = 120
          Top = 8
          Width = 36
          Height = 13
          Caption = 'P'#176' End:'
        end
        object Label97: TLabel
          Left = 26
          Top = 40
          Width = 138
          Height = 13
          Alignment = taRightJustify
          Caption = 'P'#176' D'#233'tail Mouvement affich'#233':'
        end
        object EditPositionDetailMouvementBegin: TEdit
          Left = 56
          Top = 6
          Width = 49
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
        object EditPositionDetailMouvementEnd: TEdit
          Left = 168
          Top = 6
          Width = 49
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object EditPositionDetailMouvementAfficher: TEdit
          Left = 168
          Top = 38
          Width = 49
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
        end
      end
      object Panel17: TPanel
        Left = 0
        Top = 176
        Width = 241
        Height = 337
        BevelInner = bvLowered
        TabOrder = 3
        object Label87: TLabel
          Left = 8
          Top = 8
          Width = 44
          Height = 13
          Caption = 'P'#176' Begin:'
        end
        object Label88: TLabel
          Left = 144
          Top = 8
          Width = 36
          Height = 13
          Caption = 'P'#176' End:'
        end
        object Label89: TLabel
          Left = 8
          Top = 272
          Width = 44
          Height = 13
          Caption = 'P'#176' Begin:'
        end
        object Label90: TLabel
          Left = 136
          Top = 272
          Width = 36
          Height = 13
          Caption = 'P'#176' End:'
        end
        object Label91: TLabel
          Left = 120
          Top = 304
          Width = 61
          Height = 13
          Caption = 'P'#176' End New:'
        end
        object Label93: TLabel
          Left = 16
          Top = 304
          Width = 32
          Height = 13
          Caption = 'P'#176'Mvt:'
        end
        object EditPositionListeMouvementBegin: TEdit
          Left = 56
          Top = 6
          Width = 49
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
        object EditPositionListeMouvementEnd: TEdit
          Left = 184
          Top = 6
          Width = 49
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object TableauPositionListeMouvementPeriode: TStringGrid
          Left = 8
          Top = 32
          Width = 225
          Height = 225
          ColCount = 3
          Ctl3D = False
          DefaultColWidth = 60
          DefaultRowHeight = 16
          RowCount = 13
          ParentCtl3D = False
          TabOrder = 2
          RowHeights = (
            16
            16
            16
            16
            16
            16
            16
            16
            16
            16
            16
            16
            16)
        end
        object EditPositionListeMouvementBeginAffiche: TEdit
          Left = 56
          Top = 270
          Width = 49
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object EditPositionListeMouvementEndAffiche: TEdit
          Left = 184
          Top = 270
          Width = 49
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
        end
        object EditPositionListeMouvementEndNew: TEdit
          Left = 184
          Top = 302
          Width = 49
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
        end
        object EditPositionMouvementAfficher: TEdit
          Left = 56
          Top = 302
          Width = 49
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 6
        end
      end
      object BitMiseAJourPListeMouvement: TBitBtn
        Left = 0
        Top = 144
        Width = 241
        Height = 25
        Caption = 'Mise '#224' jour position liste mouvement'
        TabOrder = 4
        OnClick = BitMiseAJourPListeMouvementClick
        Kind = bkHelp
      end
      object Panel19: TPanel
        Left = 720
        Top = 40
        Width = 609
        Height = 153
        BevelInner = bvLowered
        TabOrder = 5
        object BitBtn29: TBitBtn
          Left = 8
          Top = 8
          Width = 257
          Height = 25
          Caption = 'R'#233'indixation des donn'#233'es mouvements !'
          TabOrder = 0
          OnClick = BitBtn29Click
          Kind = bkAll
        end
        object AfficheResultatReindixationListeMouvement: TPanel
          Left = 8
          Top = 40
          Width = 593
          Height = 25
          BevelInner = bvLowered
          TabOrder = 1
        end
        object Panel21: TPanel
          Left = 8
          Top = 104
          Width = 169
          Height = 41
          BevelInner = bvLowered
          TabOrder = 2
          object BitAfficherListeMouvement: TBitBtn
            Left = 8
            Top = 8
            Width = 153
            Height = 25
            Caption = 'Afficher liste mouvement'
            TabOrder = 0
            OnClick = BitAfficherListeMouvementClick
            Kind = bkAll
          end
        end
        object AfficheResultatReindixationDetailMouvement: TPanel
          Left = 8
          Top = 72
          Width = 593
          Height = 25
          BevelInner = bvLowered
          TabOrder = 3
        end
        object BitBtn45: TBitBtn
          Left = 320
          Top = 8
          Width = 275
          Height = 25
          Caption = 'Charger liste mouvement dans d'#233'tail mouvement'
          TabOrder = 4
          OnClick = BitBtn45Click
          Kind = bkAll
        end
      end
      object TableauxListeMouvementTransfert: TStringGrid
        Left = 720
        Top = 264
        Width = 609
        Height = 137
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        OnDblClick = TableauxListeMouvementTransfertDblClick
      end
      object AfficheAdresseListeMouvement: TPanel
        Left = 145
        Top = 536
        Width = 569
        Height = 17
        Alignment = taLeftJustify
        BevelInner = bvLowered
        TabOrder = 7
      end
      object AfficheAdresseDetailMouvement: TPanel
        Left = 145
        Top = 560
        Width = 569
        Height = 17
        Alignment = taLeftJustify
        BevelInner = bvLowered
        TabOrder = 8
      end
      object Panel20: TPanel
        Left = 8
        Top = 536
        Width = 137
        Height = 17
        Alignment = taLeftJustify
        BevelInner = bvLowered
        Caption = 'Adresse Liste mouvement:'
        DragMode = dmAutomatic
        TabOrder = 9
      end
      object Panel22: TPanel
        Left = 8
        Top = 560
        Width = 137
        Height = 17
        Alignment = taLeftJustify
        BevelInner = bvLowered
        Caption = 'Adresse D'#233'tail Mouvement:'
        TabOrder = 10
      end
      object Panel23: TPanel
        Left = 8
        Top = 592
        Width = 137
        Height = 17
        Alignment = taLeftJustify
        BevelInner = bvLowered
        Caption = 'Adresse Type Mouvement:'
        TabOrder = 11
      end
      object AfficheAdresseTypeMouvement: TPanel
        Left = 145
        Top = 592
        Width = 569
        Height = 17
        Alignment = taLeftJustify
        BevelInner = bvLowered
        TabOrder = 12
      end
      object Panel25: TPanel
        Left = 8
        Top = 616
        Width = 137
        Height = 17
        Alignment = taLeftJustify
        BevelInner = bvLowered
        Caption = 'Adresse Mouvement:'
        TabOrder = 13
      end
      object AfficheAdresseMouvement: TPanel
        Left = 145
        Top = 616
        Width = 569
        Height = 17
        Alignment = taLeftJustify
        BevelInner = bvLowered
        TabOrder = 14
      end
      object RBChargerPointeurListeMouvement: TCheckBox
        Left = 8
        Top = 516
        Width = 233
        Height = 17
        Caption = 'Charger Pointeur Liste Mouvement'
        Checked = True
        State = cbChecked
        TabOrder = 15
      end
      object RBChargerPointeurDetailMouvement: TCheckBox
        Left = 512
        Top = 252
        Width = 193
        Height = 17
        Caption = 'Charger Pointeur D'#233'tail Mouvement'
        Checked = True
        State = cbChecked
        TabOrder = 16
      end
      object AfficheTransfertMouvemantversAutre: TPanel
        Left = 1248
        Top = 376
        Width = 1257
        Height = 401
        Color = 8454143
        TabOrder = 17
        Visible = False
        object TableauDetaiMouvementTransfert: TStringGrid
          Left = 8
          Top = 88
          Width = 1241
          Height = 177
          Cursor = crHandPoint
          Color = cl3DLight
          ColCount = 8
          Ctl3D = False
          DefaultColWidth = 30
          DefaultRowHeight = 20
          RowCount = 16
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSizing, goColSizing, goEditing, goAlwaysShowEditor]
          ParentCtl3D = False
          ParentFont = False
          ScrollBars = ssNone
          TabOrder = 0
          RowHeights = (
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20)
        end
        object TableauListeMouvementTransfert: TStringGrid
          Left = 8
          Top = 8
          Width = 1241
          Height = 73
          Ctl3D = False
          FixedCols = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          RowHeights = (
            24
            24
            24
            24
            24)
        end
        object TableauDataTransfert: TStringGrid
          Left = 8
          Top = 272
          Width = 320
          Height = 120
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
        end
      end
      object RBUtiliserIndexation: TCheckBox
        Left = 248
        Top = 214
        Width = 113
        Height = 17
        Caption = 'Utiliser l'#39'indexation'
        Checked = True
        State = cbChecked
        TabOrder = 18
      end
      object RBNouvelleNumerotationPourChaqueExercice: TCheckBox
        Left = 248
        Top = 266
        Width = 241
        Height = 17
        Caption = 'Nouvelle num'#233'rotation pour chaque exercice'
        Checked = True
        State = cbChecked
        TabOrder = 19
      end
      object TestePrintFacureDinamique: TMemo
        Left = 248
        Top = 440
        Width = 369
        Height = 89
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Lucida Bright'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 20
      end
      object TestePrintFacureDinamiqueCount: TEdit
        Left = 632
        Top = 432
        Width = 49
        Height = 21
        TabOrder = 21
      end
      object IncrimenteIndiceHeight: TUpDown
        Left = 657
        Top = 464
        Width = 16
        Height = 21
        Associate = EditIndiceHeight
        Min = 10
        Position = 30
        TabOrder = 22
        Wrap = False
      end
      object EditIndiceHeight: TEdit
        Left = 632
        Top = 464
        Width = 25
        Height = 21
        TabOrder = 23
        Text = '30'
      end
      object TesteMemoLigneaire: TMemo
        Left = 248
        Top = 400
        Width = 369
        Height = 33
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Lucida Bright'
        Font.Style = []
        Lines.Strings = (
          '')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 24
        WantReturns = False
      end
      object TesteMemoLigneaireCount: TEdit
        Left = 632
        Top = 400
        Width = 49
        Height = 21
        TabOrder = 25
      end
      object RBUtiliserEtatDinamique: TCheckBox
        Left = 248
        Top = 238
        Width = 153
        Height = 17
        Caption = 'Utiliser Etat Dinamique !'
        Checked = True
        State = cbChecked
        TabOrder = 26
      end
      object RadioGroup20: TRadioGroup
        Left = 248
        Top = 316
        Width = 457
        Height = 49
        Caption = 'Recherche:'
        TabOrder = 27
      end
      object RBChercheArticleParCodeArticle: TRadioButton
        Left = 256
        Top = 335
        Width = 105
        Height = 17
        Caption = 'Par Code Article.'
        TabOrder = 28
        OnClick = RBChercheArticleParCodeArticleClick
      end
      object RBChercheArticleParCodeBarre: TRadioButton
        Left = 400
        Top = 335
        Width = 105
        Height = 17
        Caption = 'Par Code Barre.'
        TabOrder = 29
        OnClick = RBChercheArticleParCodeBarreClick
      end
      object RBActiverRecuRendu: TCheckBox
        Left = 568
        Top = 291
        Width = 129
        Height = 17
        Caption = 'Activer Re'#231'u Rendu'
        TabOrder = 30
        OnClick = RBActiverRecuRenduClick
      end
      object RBChercheArticleParPontBascule: TRadioButton
        Left = 560
        Top = 335
        Width = 105
        Height = 17
        Caption = 'Par Pont Bascule.'
        TabOrder = 31
        OnClick = RBChercheArticleParPontBasculeClick
      end
      object RBActiverChargementArticleManuel: TCheckBox
        Left = 248
        Top = 291
        Width = 193
        Height = 17
        Caption = 'Activer Chargement Article Manuel'
        TabOrder = 32
        OnClick = RBActiverChargementArticleManuelClick
      end
      object RBAutoNouveauMouvement: TCheckBox
        Left = 248
        Top = 376
        Width = 193
        Height = 17
        Caption = 'Nouveau mouvement automatique'
        TabOrder = 33
        OnClick = RBAutoNouveauMouvementClick
      end
      object RBImprimerPlusiersFois: TCheckBox
        Left = 472
        Top = 376
        Width = 137
        Height = 17
        Caption = 'Imprimer plusiers fois !'
        TabOrder = 34
        OnClick = RBImprimerPlusiersFoisClick
      end
      object EditEtatImprimerPlusieursFois: TEdit
        Left = 664
        Top = 373
        Width = 27
        Height = 19
        Color = clSilver
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 35
      end
      object EditLastOrdreImprimerPlusieursFois: TEdit
        Left = 600
        Top = 373
        Width = 59
        Height = 19
        Color = clSilver
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 36
      end
      object RBManipulationAutresUtilisateurAutorise: TCheckBox
        Left = 248
        Top = 144
        Width = 217
        Height = 17
        Caption = 'Manipulation d'#39'autre utilisateurs autoris'#233' !'
        TabOrder = 37
        OnClick = RBManipulationAutresUtilisateurAutoriseClick
      end
      object RBAutoriserSuppression: TCheckBox
        Left = 248
        Top = 168
        Width = 145
        Height = 17
        Caption = 'RBAutoriserSuppression'
        Checked = True
        State = cbChecked
        TabOrder = 38
        OnClick = RBAutoriserSuppressionClick
      end
      object RBAutoriserModification: TCheckBox
        Left = 248
        Top = 190
        Width = 137
        Height = 17
        Caption = 'Autoriser la modification'
        Checked = True
        State = cbChecked
        TabOrder = 39
        OnClick = RBAutoriserModificationClick
      end
      object RBActiverAutorisationsManipulations: TCheckBox
        Left = 1088
        Top = 152
        Width = 217
        Height = 17
        Caption = 'Activer les autorisations de manipulations.'
        Checked = True
        Enabled = False
        State = cbChecked
        TabOrder = 40
      end
      object EditIndiceHeightDouble: TEdit
        Left = 632
        Top = 496
        Width = 25
        Height = 21
        TabOrder = 41
        Text = '20'
      end
      object UpDown3: TUpDown
        Left = 657
        Top = 496
        Width = 16
        Height = 21
        Associate = EditIndiceHeightDouble
        Min = 10
        Position = 20
        TabOrder = 42
        Wrap = False
      end
      object RBActiverCalculePrixUnitaireParMHT: TCheckBox
        Left = 728
        Top = 416
        Width = 225
        Height = 17
        Caption = 'Activer le calcule du prix unitaire par MHT'
        TabOrder = 43
        OnClick = RBActiverCalculePrixUnitaireParMHTClick
      end
      object TextInfoAvantBasPage: TMemo
        Left = 728
        Top = 480
        Width = 329
        Height = 57
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 44
      end
      object RBInclureInfoAvantBasPage: TCheckBox
        Left = 728
        Top = 456
        Width = 185
        Height = 17
        Caption = 'Inclure l'#39'info. Avant Bas de page.'
        TabOrder = 45
        OnClick = RBInclureInfoAvantBasPageClick
      end
      object TextInfoBasPage: TMemo
        Left = 728
        Top = 576
        Width = 329
        Height = 57
        Ctl3D = False
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Lucida Bright'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 46
      end
      object RBInclureInfoBasPage: TCheckBox
        Left = 728
        Top = 552
        Width = 185
        Height = 17
        Caption = 'Inclure l'#39'info. Avant Bas de page.'
        TabOrder = 47
        OnClick = RBInclureInfoBasPageClick
      end
      object Panel28: TPanel
        Left = 1064
        Top = 464
        Width = 177
        Height = 81
        BevelInner = bvLowered
        TabOrder = 48
        object RadioGroup22: TRadioGroup
          Left = 8
          Top = 8
          Width = 161
          Height = 65
          Caption = 'Info Avant bas de page:'
          TabOrder = 0
        end
        object RBInfoAvantBasPageAucun: TRadioButton
          Left = 16
          Top = 24
          Width = 145
          Height = 17
          Caption = 'Aucun.'
          Checked = True
          TabOrder = 1
          TabStop = True
          OnClick = RBInfoAvantBasPageAucunClick
        end
        object RBInfoAvantBasPageAccuseReception: TRadioButton
          Left = 16
          Top = 48
          Width = 145
          Height = 17
          Caption = 'Accus'#233' de r'#233'ception.'
          TabOrder = 2
          OnClick = RBInfoAvantBasPageAccuseReceptionClick
        end
      end
      object Panel29: TPanel
        Left = 1064
        Top = 552
        Width = 177
        Height = 81
        BevelInner = bvLowered
        TabOrder = 49
        object RadioGroup23: TRadioGroup
          Left = 8
          Top = 8
          Width = 161
          Height = 65
          Caption = 'Info bas de page:'
          TabOrder = 0
        end
        object RBInfoBasPageAucun: TRadioButton
          Left = 16
          Top = 24
          Width = 145
          Height = 17
          Caption = 'Aucun.'
          Checked = True
          TabOrder = 1
          TabStop = True
          OnClick = RBInfoBasPageAucunClick
        end
        object RBInfoBasPageConditionPaiement: TRadioButton
          Left = 16
          Top = 48
          Width = 145
          Height = 17
          Caption = 'Condition de paiement.'
          TabOrder = 2
          OnClick = RBInfoBasPageConditionPaiementClick
        end
      end
      object RBArretSystemealAarretProgramme: TCheckBox
        Left = 1024
        Top = 408
        Width = 209
        Height = 17
        Caption = 'Arr'#234't du syst'#232'me '#224' l'#39'arr'#234't du programme'
        TabOrder = 50
        OnClick = RBArretSystemealAarretProgrammeClick
      end
      object AfficheAttenteAnomalie: TPanel
        Left = 720
        Top = 200
        Width = 593
        Height = 57
        TabOrder = 51
        Visible = False
        object AdresseMouvement: TLabel
          Left = 8
          Top = 32
          Width = 30
          Height = 13
          Caption = '..........'
        end
        object Edit1: TEdit
          Left = 144
          Top = 7
          Width = 9
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object ProgressAttenteAnomalie: TProgressBar
          Left = 8
          Top = 6
          Width = 577
          Height = 21
          Min = 0
          Max = 100
          Smooth = True
          Step = 1
          TabOrder = 0
        end
      end
      object AfficheEtatTableauAfficheRubrique: TPanel
        Left = 718
        Top = 6
        Width = 382
        Height = 25
        BevelInner = bvLowered
        Caption = 'Chois de rubriques '#224' afficher !'
        Color = 8454016
        TabOrder = 52
        OnClick = AfficheEtatTableauAfficheRubriqueClick
        object Bevel93: TBevel
          Left = 8
          Top = 32
          Width = 177
          Height = 41
        end
        object Bevel94: TBevel
          Left = 192
          Top = 32
          Width = 185
          Height = 41
        end
        object Label25: TLabel
          Left = 200
          Top = 50
          Width = 161
          Height = 13
          Caption = 'Double clique pour une s'#233'lection !'
        end
        object TableauEtatAfficheRubrique: TStringGrid
          Left = 8
          Top = 80
          Width = 369
          Height = 441
          ColCount = 2
          Ctl3D = False
          DefaultColWidth = 50
          FixedCols = 0
          RowCount = 1
          FixedRows = 0
          ParentCtl3D = False
          ScrollBars = ssNone
          TabOrder = 0
          OnDblClick = TableauEtatAfficheRubriqueDblClick
        end
        object BitEtatAfficherTousRubrique: TBitBtn
          Left = 16
          Top = 40
          Width = 161
          Height = 25
          Caption = 'S'#233'lectionner tous !'
          TabOrder = 1
          OnClick = BitEtatAfficherTousRubriqueClick
          Kind = bkAll
        end
      end
      object CachePageParametres: TPanel
        Left = 0
        Top = 0
        Width = 185
        Height = 41
        BevelInner = bvLowered
        TabOrder = 53
      end
    end
    object PageDataOptions: TTabSheet
      Caption = '     Data Options          '
      ImageIndex = 4
      OnShow = PageDataOptionsShow
      object Bevel69: TBevel
        Left = 496
        Top = 264
        Width = 153
        Height = 105
      end
      object Bevel89: TBevel
        Left = 1176
        Top = 264
        Width = 153
        Height = 41
      end
      object TitreTableauFinancePeriodique: TStringGrid
        Left = 8
        Top = 328
        Width = 153
        Height = 41
        ColCount = 1
        Ctl3D = False
        DefaultColWidth = 500
        FixedCols = 0
        RowCount = 1
        FixedRows = 0
        ParentCtl3D = False
        TabOrder = 4
      end
      object TitreTableauListeMouvement: TStringGrid
        Left = 8
        Top = 328
        Width = 137
        Height = 25
        ColCount = 1
        Ctl3D = False
        DefaultColWidth = 500
        FixedCols = 0
        RowCount = 1
        FixedRows = 0
        ParentCtl3D = False
        TabOrder = 5
      end
      object FichierMemo: TMemo
        Left = 8
        Top = 24
        Width = 689
        Height = 233
        Ctl3D = False
        ParentCtl3D = False
        ScrollBars = ssBoth
        TabOrder = 0
      end
      object TableauFinancePeriodique: TStringGrid
        Left = 168
        Top = 328
        Width = 321
        Height = 329
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 80
        Top = 264
        Width = 329
        Height = 25
        Caption = 'Voir l'#39#233'tat p'#233'riodique'
        TabOrder = 2
        OnClick = BitBtn5Click
        Kind = bkHelp
      end
      object BitImprimerEtatFinancierPeriodique: TBitBtn
        Left = 504
        Top = 272
        Width = 137
        Height = 25
        Caption = 'Imprimer'
        TabOrder = 3
        OnClick = BitImprimerEtatFinancierPeriodiqueClick
        Kind = bkHelp
      end
      object StaticText6: TStaticText
        Left = 504
        Top = 315
        Width = 105
        Height = 17
        Caption = 'Orientation du papier:'
        TabOrder = 6
      end
      object RBOrientationPapierPrelevement: TComboBox
        Left = 504
        Top = 336
        Width = 129
        Height = 21
        BevelInner = bvLowered
        BevelKind = bkFlat
        Ctl3D = False
        ItemHeight = 13
        ItemIndex = 0
        ParentCtl3D = False
        TabOrder = 7
        Text = 'Portrait'
        Items.Strings = (
          'Portrait'
          'Paysage')
      end
      object RBAjusterTableauFinancePeriodique: TCheckBox
        Left = 704
        Top = 448
        Width = 193
        Height = 17
        Caption = 'Ajuster Tableau finance p'#233'riodique'
        TabOrder = 8
      end
      object RBAjusterTableauListeMouvement: TCheckBox
        Left = 704
        Top = 416
        Width = 193
        Height = 17
        Caption = 'Ajuster Tableau finance p'#233'riodique'
        Checked = True
        State = cbChecked
        TabOrder = 9
      end
      object RBImprimerTableauListeMouvement: TCheckBox
        Left = 496
        Top = 416
        Width = 193
        Height = 17
        Caption = 'Imprimer tableau liste mouvements'
        Checked = True
        State = cbChecked
        TabOrder = 10
      end
      object RBImprimerTableauFinancePeriodique: TCheckBox
        Left = 496
        Top = 448
        Width = 193
        Height = 17
        Caption = 'Imprimer Tableau finance P'#233'riodique'
        Checked = True
        State = cbChecked
        TabOrder = 11
      end
      object BitBtn37: TBitBtn
        Left = 504
        Top = 552
        Width = 177
        Height = 25
        Caption = 'Publier Mouvement affich'#233
        TabOrder = 12
        OnClick = BitBtn37Click
        Kind = bkHelp
      end
      object RBOpererEnregistrerOptionsFicheSaisie: TCheckBox
        Left = 8
        Top = 6
        Width = 257
        Height = 17
        Caption = 'Op'#233'rer l'#39'Enregistrement Options Fiche de Saisie'
        Enabled = False
        TabOrder = 13
      end
      object TableauListeMouvementPeriodique: TStringGrid
        Left = 8
        Top = 328
        Width = 153
        Height = 329
        Ctl3D = False
        FixedCols = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 14
        ColWidths = (
          64
          64
          63
          64
          63)
        RowHeights = (
          24
          24
          24
          24
          24)
      end
      object InfoCodeUtilisateur: TEdit
        Left = 8
        Top = 272
        Width = 57
        Height = 19
        Color = clSilver
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 15
      end
      object InfoDateBegin: TEdit
        Left = 152
        Top = 296
        Width = 57
        Height = 19
        Color = clSilver
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 16
      end
      object InfoDateEnd: TEdit
        Left = 216
        Top = 296
        Width = 57
        Height = 19
        Color = clSilver
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 17
      end
      object InfoHeureBegin: TEdit
        Left = 296
        Top = 296
        Width = 57
        Height = 19
        Color = clSilver
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 18
      end
      object InfoHeureEnd: TEdit
        Left = 360
        Top = 296
        Width = 57
        Height = 19
        Color = clSilver
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 19
      end
      object InfoNumBegin: TEdit
        Left = 8
        Top = 296
        Width = 57
        Height = 19
        Color = clSilver
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 20
      end
      object InfoNumEnd: TEdit
        Left = 72
        Top = 296
        Width = 57
        Height = 19
        Color = clSilver
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 21
      end
      object BitBtn41: TBitBtn
        Left = 1184
        Top = 272
        Width = 137
        Height = 25
        Caption = 'Anomalies Avis'
        TabOrder = 22
        OnClick = BitBtn41Click
        Kind = bkHelp
      end
      object TableAvisErronnes: TStringGrid
        Left = 920
        Top = 312
        Width = 409
        Height = 305
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 23
      end
      object MemoTeste: TMemo
        Left = 704
        Top = 536
        Width = 185
        Height = 89
        TabOrder = 24
      end
      object RapportMiseAJourStock: TMemo
        Left = 712
        Top = 24
        Width = 617
        Height = 233
        Ctl3D = False
        ParentCtl3D = False
        ScrollBars = ssBoth
        TabOrder = 25
      end
      object RBRelanceRechercheArticle: TCheckBox
        Left = 512
        Top = 616
        Width = 145
        Height = 17
        Caption = 'Relancer recherceh article'
        TabOrder = 26
      end
      object EditBasPage: TMemo
        Left = 712
        Top = 256
        Width = 457
        Height = 41
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 28
      end
      object CachePageDataOptions: TPanel
        Left = 0
        Top = 0
        Width = 185
        Height = 41
        BevelInner = bvLowered
        TabOrder = 27
      end
      object TableauRecapitulatifDetailMouvements: TStringGrid
        Left = 704
        Top = 320
        Width = 169
        Height = 65
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 29
      end
      object AfficheBonSimplifier: TPanel
        Left = 280
        Top = 128
        Width = 793
        Height = 353
        BevelInner = bvLowered
        Color = clYellow
        TabOrder = 30
        object TableauDetaiMouvementSimplifier: TStringGrid
          Left = 8
          Top = 12
          Width = 777
          Height = 205
          Cursor = crHandPoint
          Color = cl3DLight
          ColCount = 8
          Ctl3D = False
          DefaultColWidth = 30
          RowCount = 16
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSizing, goColSizing, goEditing, goAlwaysShowEditor]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnContextPopup = TableauDetaiMouvementSimplifierContextPopup
          RowHeights = (
            24
            24
            24
            24
            24
            24
            24
            24
            24
            24
            24
            24
            24
            24
            24
            24)
        end
        object TableauFormulesSimplifier: TStringGrid
          Left = 472
          Top = 224
          Width = 313
          Height = 121
          Color = 16117218
          ColCount = 6
          Ctl3D = False
          DefaultColWidth = 55
          DefaultRowHeight = 20
          FixedCols = 5
          RowCount = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goAlwaysShowEditor]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          RowHeights = (
            20
            20
            20
            20
            19
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20
            20)
        end
      end
    end
  end
  object TimerControleCouleur: TTimer
    Enabled = False
    Interval = 150
    OnTimer = TimerControleCouleurTimer
    Left = 616
  end
  object OuvrirUnFichier: TOpenDialog
    FilterIndex = 0
    Left = 584
  end
  object TimerLancerAfficheTiers: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerLancerAfficheTiersTimer
    Left = 680
  end
  object TimerAfficheTiers: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerAfficheTiersTimer
    Left = 648
  end
  object TimerImporterDetailListeMouvement: TTimer
    Enabled = False
    Interval = 1
    OnTimer = TimerImporterDetailListeMouvementTimer
    Left = 768
  end
  object TimerControleMontant: TTimer
    Enabled = False
    Interval = 250
    OnTimer = TimerControleMontantTimer
    Left = 896
  end
  object TimerControleAutoImporteAvis: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerControleAutoImporteAvisTimer
    Left = 928
  end
  object TimerVKUP: TTimer
    Enabled = False
    Interval = 1
    OnTimer = TimerVKUPTimer
    Left = 16
    Top = 216
  end
  object TimerPontBascule: TTimer
    Enabled = False
    OnTimer = TimerPontBasculeTimer
    Left = 960
  end
  object Sauvegarder: TSaveDialog
    Left = 952
    Top = 8
  end
  object TimerLancerImporterDetailListeMouvement: TTimer
    Enabled = False
    Interval = 150
    OnTimer = TimerLancerImporterDetailListeMouvementTimer
    Left = 800
  end
  object TimerClickTableauListeMouvement: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerClickTableauListeMouvementTimer
    Left = 848
  end
  object TimerChargerValeurVariableOnDetailMouvement: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerChargerValeurVariableOnDetailMouvementTimer
    Left = 16
    Top = 184
  end
  object TimerValeurBareme: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerValeurBaremeTimer
    Left = 16
    Top = 152
  end
  object ChoisirFont: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Device = fdPrinter
    MinFontSize = 0
    MaxFontSize = 0
    Left = 336
    Top = 192
  end
end
