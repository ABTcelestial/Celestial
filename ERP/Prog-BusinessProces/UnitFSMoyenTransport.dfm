object FSMoyenTransport: TFSMoyenTransport
  Left = 3
  Top = 0
  Width = 1364
  Height = 734
  Caption = 'Planificateur moyen de transport'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AfficheSupportMoyenTransport: TPanel
    Left = 8
    Top = 8
    Width = 1329
    Height = 681
    BevelInner = bvLowered
    TabOrder = 1
    object PageMoyenTransport: TPageControl
      Left = 8
      Top = 8
      Width = 1313
      Height = 665
      ActivePage = TabSheet1
      TabIndex = 0
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = '     Op'#233'ration Moyen transport     '
        object AfficheSupportOperationMoyenTransport: TPanel
          Left = 0
          Top = 8
          Width = 1305
          Height = 625
          BevelInner = bvLowered
          TabOrder = 0
          object EditMatriculeEffectif: TEdit
            Left = 216
            Top = 70
            Width = 65
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 12
          end
          object EditCodeTiers: TEdit
            Left = 152
            Top = 70
            Width = 57
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 11
          end
          object EditNumFiche: TEdit
            Left = 88
            Top = 70
            Width = 57
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 10
          end
          object EditNumMovementPrelevement: TEdit
            Left = 24
            Top = 70
            Width = 57
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 9
          end
          object Panel2: TPanel
            Left = 8
            Top = 8
            Width = 1289
            Height = 41
            BevelInner = bvLowered
            TabOrder = 0
            object Bevel5: TBevel
              Left = 288
              Top = 5
              Width = 441
              Height = 31
            end
            object Bevel4: TBevel
              Left = 8
              Top = 5
              Width = 273
              Height = 31
            end
            object Bevel36: TBevel
              Left = 1136
              Top = 4
              Width = 145
              Height = 31
            end
            object Label1: TLabel
              Left = 16
              Top = 16
              Width = 56
              Height = 13
              Caption = 'Type Fiche:'
            end
            object Label2: TLabel
              Left = 296
              Top = 14
              Width = 18
              Height = 13
              Caption = 'du: '
            end
            object Label3: TLabel
              Left = 514
              Top = 14
              Width = 15
              Height = 13
              Caption = 'au:'
            end
            object Label10: TLabel
              Left = 1144
              Top = 12
              Width = 44
              Height = 13
              Caption = 'Exercice:'
            end
            object EditTypeFiche: TComboBox
              Left = 88
              Top = 11
              Width = 185
              Height = 21
              BevelKind = bkFlat
              Ctl3D = False
              ItemHeight = 13
              ItemIndex = 0
              ParentCtl3D = False
              TabOrder = 0
              Text = 'Mouvement'
              OnKeyPress = EditTypeFicheKeyPress
              OnSelect = EditTypeFicheSelect
              Items.Strings = (
                'Mouvement'
                'Pr'#233'l'#232'vement')
            end
            object EditDateDebut: TDateTimePicker
              Left = 319
              Top = 11
              Width = 186
              Height = 21
              BevelKind = bkFlat
              CalAlignment = dtaLeft
              Date = 43152.6418078241
              Time = 43152.6418078241
              DateFormat = dfLong
              DateMode = dmComboBox
              Kind = dtkDate
              ParseInput = False
              TabOrder = 1
              OnChange = EditDateDebutChange
            end
            object EditDateFin: TDateTimePicker
              Left = 535
              Top = 11
              Width = 186
              Height = 21
              BevelKind = bkFlat
              CalAlignment = dtaLeft
              Date = 43152.6418703009
              Time = 43152.6418703009
              DateFormat = dfLong
              DateMode = dmComboBox
              Kind = dtkDate
              ParseInput = False
              TabOrder = 2
              OnChange = EditDateDebutChange
            end
            object EditExercice: TComboBox
              Left = 1192
              Top = 8
              Width = 81
              Height = 21
              BevelInner = bvLowered
              BevelKind = bkFlat
              Ctl3D = False
              ItemHeight = 13
              ParentCtl3D = False
              TabOrder = 3
              OnSelect = EditExerciceSelect
            end
          end
          object AfficheTitreMouvementPrelevement: TPanel
            Left = 8
            Top = 56
            Width = 625
            Height = 41
            BevelInner = bvLowered
            TabOrder = 1
          end
          object Panel3: TPanel
            Left = 639
            Top = 56
            Width = 26
            Height = 561
            BevelInner = bvLowered
            TabOrder = 2
          end
          object Panel6: TPanel
            Left = 672
            Top = 56
            Width = 625
            Height = 41
            BevelInner = bvLowered
            TabOrder = 3
            object RBAfficherTous: TCheckBox
              Left = 8
              Top = 13
              Width = 97
              Height = 17
              Caption = 'Afficher tous !'
              TabOrder = 0
              OnClick = RBAfficherTousClick
            end
            object RBSuspendre: TCheckBox
              Left = 592
              Top = 12
              Width = 25
              Height = 17
              Caption = '.'
              TabOrder = 1
            end
          end
          object TableauMouvement: TStringGrid
            Left = 8
            Top = 104
            Width = 625
            Height = 177
            ColCount = 14
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
            TabOrder = 4
            OnClick = TableauMouvementClick
            RowHeights = (
              24
              22)
          end
          object AfficheNumFiche: TPanel
            Left = 8
            Top = 288
            Width = 625
            Height = 41
            BevelInner = bvLowered
            TabOrder = 5
            object EditValeurPrecis: TComboBox
              Left = 8
              Top = 8
              Width = 145
              Height = 21
              BevelKind = bkFlat
              Ctl3D = False
              ItemHeight = 13
              ItemIndex = 0
              ParentCtl3D = False
              TabOrder = 0
              Text = 'Pr'#233'l'#232'vement Tiers'
              OnChange = EditValeurPrecisChange
              OnKeyPress = EditValeurPrecisKeyPress
              Items.Strings = (
                'Pr'#233'l'#232'vement Tiers'
                'Pr'#233'l'#232'vement Divers'
                'Tous Pr'#233'l'#232'vements')
            end
          end
          object TableauListeMouvement: TStringGrid
            Left = 8
            Top = 336
            Width = 625
            Height = 281
            Ctl3D = False
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
            ParentCtl3D = False
            TabOrder = 6
            OnClick = TableauListeMouvementClick
            ColWidths = (
              64
              64
              64
              64
              64)
          end
          object TableauMoyenTransport: TStringGrid
            Left = 672
            Top = 256
            Width = 625
            Height = 361
            Ctl3D = False
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
            ParentCtl3D = False
            TabOrder = 7
            OnClick = TableauMoyenTransportClick
            OnDblClick = TableauMoyenTransportDblClick
            OnKeyPress = TableauMoyenTransportKeyPress
            RowHeights = (
              24
              24)
          end
          object Panel1: TPanel
            Left = 672
            Top = 104
            Width = 625
            Height = 145
            BevelInner = bvLowered
            Color = 8454143
            TabOrder = 8
            object Bevel6: TBevel
              Left = 8
              Top = 8
              Width = 609
              Height = 129
            end
            object Label14: TLabel
              Left = 24
              Top = 19
              Width = 48
              Height = 13
              Caption = 'Transport:'
            end
            object Label15: TLabel
              Left = 24
              Top = 43
              Width = 46
              Height = 13
              Caption = 'Matricule:'
            end
            object Label16: TLabel
              Left = 24
              Top = 67
              Width = 74
              Height = 13
              Caption = 'Nom Chauffeur:'
            end
            object Label17: TLabel
              Left = 24
              Top = 91
              Width = 88
              Height = 13
              Caption = 'Pr'#233'nom Chauffeur:'
            end
            object Label18: TLabel
              Left = 24
              Top = 115
              Width = 68
              Height = 13
              Caption = 'Pi'#232'ce Identite:'
            end
            object LabelEditMoyenTransport: TLabel
              Left = 128
              Top = 19
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
            object LabelEditMatriculeTransport: TLabel
              Left = 128
              Top = 43
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
            object LabelEditNomChauffeur: TLabel
              Left = 128
              Top = 67
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
            object LabelEditPrenomChauffeur: TLabel
              Left = 128
              Top = 91
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
            object LabelEditPieceIdentite: TLabel
              Left = 128
              Top = 115
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
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = '     Traitement moyen transport     '
        ImageIndex = 1
        OnShow = TabSheet2Show
        object EditTitreEtat: TMemo
          Left = 872
          Top = 488
          Width = 409
          Height = 137
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 8
        end
        object TableauTiersMoyenTransport: TStringGrid
          Left = 0
          Top = 80
          Width = 1305
          Height = 553
          Ctl3D = False
          RowCount = 2
          ParentCtl3D = False
          TabOrder = 0
          OnClick = TableauTiersMoyenTransportClick
        end
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 433
          Height = 33
          BevelInner = bvLowered
          TabOrder = 1
          object Label53: TLabel
            Left = 16
            Top = 10
            Width = 78
            Height = 13
            Alignment = taRightJustify
            Caption = 'Type de Proces:'
          end
          object TitreEditTiersFichierConserne: TLabel
            Left = 232
            Top = 10
            Width = 81
            Height = 13
            Alignment = taRightJustify
            Caption = 'Fichier consern'#233':'
          end
          object EditTiersTypeProces: TComboBox
            Left = 104
            Top = 7
            Width = 105
            Height = 21
            BevelKind = bkFlat
            ItemHeight = 13
            TabOrder = 0
            Text = 'Commercial'
            OnEnter = EditTiersTypeProcesEnter
            OnSelect = EditTiersTypeProcesSelect
            Items.Strings = (
              'Business'
              'Commercial'
              'Paie'
              'Comptabilit'#233
              'Social')
          end
          object EditTiersFichierConserne: TComboBox
            Left = 320
            Top = 7
            Width = 105
            Height = 21
            BevelKind = bkFlat
            Ctl3D = True
            ItemHeight = 13
            ItemIndex = 0
            ParentCtl3D = False
            TabOrder = 1
            Text = 'FFournisseur'
            OnEnter = EditTiersFichierConserneEnter
            OnSelect = EditTiersFichierConserneSelect
            Items.Strings = (
              'FFournisseur'
              'FClient'
              'FPersonnel')
          end
        end
        object PanelTiers: TPanel
          Left = 0
          Top = 40
          Width = 1073
          Height = 33
          BevelInner = bvLowered
          TabOrder = 2
          object TitreEditTiers: TLabel
            Left = 390
            Top = 10
            Width = 45
            Height = 13
            Alignment = taRightJustify
            Caption = '...............'
          end
          object Label29: TLabel
            Left = 724
            Top = 10
            Width = 48
            Height = 13
            Caption = 'Transport:'
          end
          object Label22: TLabel
            Left = 6
            Top = 10
            Width = 59
            Height = 13
            Caption = 'Mouvement:'
          end
          object EditCodeTiersMT: TEdit
            Left = 440
            Top = 7
            Width = 73
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
          end
          object EditTitreInfoMoyenTransport: TComboBox
            Left = 776
            Top = 7
            Width = 89
            Height = 21
            BevelKind = bkFlat
            Ctl3D = False
            ItemHeight = 13
            ItemIndex = 1
            ParentCtl3D = False
            TabOrder = 2
            Text = 'Matricule'
            OnKeyPress = EditTitreInfoMoyenTransportKeyPress
            Items.Strings = (
              'Moyen transport'
              'Matricule'
              'Chauffeur'
              'Pi'#232'ce Identit'#233)
          end
          object EditInfoMoyenTransport: TEdit
            Left = 872
            Top = 7
            Width = 193
            Height = 19
            Color = clSilver
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 3
            OnEnter = EditInfoMoyenTransportEnter
          end
          object EditTiersMT: TEdit
            Left = 440
            Top = 7
            Width = 273
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            OnEnter = EditTiersMTEnter
          end
          object EditMouvement: TComboBox
            Left = 72
            Top = 8
            Width = 249
            Height = 21
            BevelKind = bkFlat
            Ctl3D = False
            ItemHeight = 0
            ParentCtl3D = False
            TabOrder = 4
          end
        end
        object TableauMoyenTransportMT: TStringGrid
          Left = 872
          Top = 74
          Width = 425
          Height = 369
          Ctl3D = False
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
          ParentCtl3D = False
          TabOrder = 3
          Visible = False
          OnKeyDown = TableauMoyenTransportMTKeyDown
        end
        object TableauTiersMT: TStringGrid
          Left = 441
          Top = 74
          Width = 752
          Height = 541
          Color = 16777192
          ColCount = 2
          Ctl3D = False
          DefaultColWidth = 50
          DefaultRowHeight = 20
          FixedColor = 16777181
          RowCount = 2
          ParentCtl3D = False
          TabOrder = 4
          Visible = False
          OnKeyDown = TableauTiersMTKeyDown
          ColWidths = (
            50
            50)
          RowHeights = (
            20
            20)
        end
        object Panel5: TPanel
          Left = 440
          Top = 0
          Width = 425
          Height = 33
          BevelInner = bvLowered
          TabOrder = 5
          object Label27: TLabel
            Left = 16
            Top = 10
            Width = 17
            Height = 13
            Caption = 'Du:'
          end
          object Label21: TLabel
            Left = 224
            Top = 10
            Width = 16
            Height = 13
            Caption = 'Au:'
          end
          object EditDateDebutMT: TDateTimePicker
            Left = 40
            Top = 7
            Width = 169
            Height = 21
            BevelInner = bvNone
            BevelKind = bkFlat
            CalAlignment = dtaLeft
            Date = 42426.4769398495
            Time = 42426.4769398495
            DateFormat = dfLong
            DateMode = dmComboBox
            Kind = dtkDate
            ParseInput = False
            TabOrder = 0
            OnChange = EditDateDebutMTChange
          end
          object EditDateFinMT: TDateTimePicker
            Left = 248
            Top = 7
            Width = 169
            Height = 21
            BevelInner = bvNone
            BevelKind = bkFlat
            CalAlignment = dtaLeft
            Date = 42426.4549775579
            Time = 42426.4549775579
            DateFormat = dfLong
            DateMode = dmComboBox
            Kind = dtkDate
            ParseInput = False
            TabOrder = 1
            OnChange = EditDateDebutMTChange
          end
        end
        object Panel7: TPanel
          Left = 872
          Top = 0
          Width = 433
          Height = 33
          BevelInner = bvLowered
          TabOrder = 6
          object RadioGroup1: TRadioGroup
            Left = 8
            Top = 2
            Width = 417
            Height = 30
            TabOrder = 0
          end
          object RBAfficherTotalAnterieur: TRadioButton
            Left = 16
            Top = 12
            Width = 153
            Height = 17
            Caption = 'Afficher le total ant'#233'rieure !'
            Checked = True
            TabOrder = 1
            TabStop = True
            OnClick = RBAfficherTotalAnterieurClick
          end
          object RBNaPasAfficherTotalAnterieur: TRadioButton
            Left = 224
            Top = 12
            Width = 193
            Height = 17
            Caption = 'Ne pas afficher le total ant'#233'rieur !'
            TabOrder = 2
            OnClick = RBNaPasAfficherTotalAnterieurClick
          end
        end
        object AfficheOptionPrint: TPanel
          Left = 1112
          Top = 42
          Width = 193
          Height = 31
          BevelInner = bvLowered
          Caption = 'Imprimer'
          Color = 8454143
          TabOrder = 7
          OnClick = AfficheOptionPrintClick
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
            Text = 'Portrait'
            Items.Strings = (
              'Portrait'
              'Paysage'
              'Automatique')
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
      end
    end
  end
  object AfficheOperationMoyenTransport: TPanel
    Left = 736
    Top = 360
    Width = 529
    Height = 169
    BevelInner = bvLowered
    Color = 8454143
    TabOrder = 0
    Visible = False
    object Bevel1: TBevel
      Left = 8
      Top = 8
      Width = 345
      Height = 153
    end
    object Label4: TLabel
      Left = 16
      Top = 19
      Width = 14
      Height = 13
      Caption = 'P'#176':'
    end
    object Label5: TLabel
      Left = 16
      Top = 43
      Width = 48
      Height = 13
      Caption = 'Transport:'
    end
    object Label6: TLabel
      Left = 16
      Top = 67
      Width = 46
      Height = 13
      Caption = 'Matricule:'
    end
    object Label7: TLabel
      Left = 16
      Top = 91
      Width = 74
      Height = 13
      Caption = 'Nom Chauffeur:'
    end
    object Label8: TLabel
      Left = 16
      Top = 115
      Width = 88
      Height = 13
      Caption = 'Pr'#233'nom Chauffeur:'
    end
    object Label9: TLabel
      Left = 16
      Top = 139
      Width = 68
      Height = 13
      Caption = 'Pi'#232'ce Identite:'
    end
    object Bevel2: TBevel
      Left = 360
      Top = 8
      Width = 161
      Height = 41
    end
    object Bevel3: TBevel
      Left = 360
      Top = 120
      Width = 161
      Height = 41
    end
    object Label11: TLabel
      Left = 16
      Top = 187
      Width = 100
      Height = 13
      Caption = 'EditTypeFicheValider'
    end
    object Label12: TLabel
      Left = 16
      Top = 211
      Width = 181
      Height = 13
      Caption = 'EditNumMovementPrelevementValider'
    end
    object Label13: TLabel
      Left = 16
      Top = 235
      Width = 98
      Height = 13
      Caption = 'EditNumFicheValider'
    end
    object Label19: TLabel
      Left = 16
      Top = 259
      Width = 98
      Height = 13
      Caption = 'EditCodeTiersValider'
    end
    object Label20: TLabel
      Left = 16
      Top = 283
      Width = 94
      Height = 13
      Caption = 'EditMatriculeEffectif'
    end
    object Bevel7: TBevel
      Left = 8
      Top = 168
      Width = 345
      Height = 137
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
      OnKeyDown = EditPositionMoyenTransportKeyDown
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
    object BitOperationMoyenTransport: TBitBtn
      Left = 368
      Top = 16
      Width = 147
      Height = 25
      Caption = 'Valider'
      TabOrder = 6
      OnClick = BitOperationMoyenTransportClick
      Kind = bkAll
    end
    object BitBtn2: TBitBtn
      Left = 368
      Top = 128
      Width = 147
      Height = 25
      TabOrder = 7
      OnClick = BitBtn2Click
      Kind = bkCancel
    end
    object EditTypeFicheValider: TEdit
      Left = 208
      Top = 184
      Width = 121
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 8
    end
    object EditNumMovementPrelevementValider: TEdit
      Left = 208
      Top = 208
      Width = 121
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 9
    end
    object EditNumFicheValider: TEdit
      Left = 208
      Top = 232
      Width = 121
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 10
    end
    object EditCodeTiersValider: TEdit
      Left = 208
      Top = 254
      Width = 121
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 11
    end
    object EditMatriculeEffectifValider: TEdit
      Left = 208
      Top = 278
      Width = 121
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 12
    end
  end
end
