object FSTransfertMagnetiqueDonnesCommerciales: TFSTransfertMagnetiqueDonnesCommerciales
  Left = 16
  Top = 10
  Width = 1265
  Height = 716
  Caption = 'Transfert magn'#233'tique de donn'#233's commerciales'
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
  object PagePrincipale: TPageControl
    Left = 8
    Top = 8
    Width = 1233
    Height = 657
    ActivePage = PageGenererFichierMagnetique
    TabIndex = 0
    TabOrder = 0
    object PageGenererFichierMagnetique: TTabSheet
      Caption = '     G'#233'n'#233'ration de fichier magn'#233'tique     '
      object EditAdresseTransfertListe: TEdit
        Left = 816
        Top = 176
        Width = 201
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
      end
      object EditNomFichierListe: TEdit
        Left = 600
        Top = 176
        Width = 201
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
      end
      object EditAdresseListe: TEdit
        Left = 440
        Top = 176
        Width = 201
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
      end
      object TableauMouvement: TStringGrid
        Left = 8
        Top = 88
        Width = 417
        Height = 121
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
        OnContextPopup = TableauMouvementContextPopup
        OnDblClick = TableauMouvementDblClick
        RowHeights = (
          24
          22
          24
          24
          24)
      end
      object PageControl2: TPageControl
        Left = 8
        Top = 216
        Width = 1209
        Height = 409
        ActivePage = PageTransfertMouvement
        TabIndex = 0
        TabOrder = 2
        object PageTransfertMouvement: TTabSheet
          Caption = '               D'#233'tail Mouvement               '
          ImageIndex = 1
          object EditAdresseTransfertMouvement: TEdit
            Left = 768
            Top = 360
            Width = 425
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
          end
          object EditNomFichierMouvement: TEdit
            Left = 480
            Top = 360
            Width = 265
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 3
          end
          object EditAdresseMouvement: TEdit
            Left = 0
            Top = 360
            Width = 473
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 2
          end
          object TableauTransfertMagnetiqueMouvement: TStringGrid
            Left = 0
            Top = 8
            Width = 1201
            Height = 372
            Ctl3D = False
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goAlwaysShowEditor]
            ParentCtl3D = False
            TabOrder = 0
            OnDblClick = TableauTransfertMagnetiqueMouvementDblClick
          end
        end
        object PageTransfertDetail: TTabSheet
          Caption = '                 D'#233'tail Article                  '
          object EditAdresseTransfertDetail: TEdit
            Left = 744
            Top = 360
            Width = 457
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
          end
          object EditNomFichierDetail: TEdit
            Left = 472
            Top = 360
            Width = 265
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 3
          end
          object EditAdresseDetail: TEdit
            Left = 8
            Top = 360
            Width = 457
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 2
          end
          object TableauTransfertMagnetiqueArticle: TStringGrid
            Left = 0
            Top = 4
            Width = 1201
            Height = 376
            Ctl3D = False
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
            ParentCtl3D = False
            TabOrder = 0
          end
        end
      end
      object Panel1: TPanel
        Left = 1032
        Top = 56
        Width = 185
        Height = 177
        BevelInner = bvLowered
        TabOrder = 3
        object Bevel2: TBevel
          Left = 8
          Top = 8
          Width = 169
          Height = 41
        end
        object Bevel3: TBevel
          Left = 8
          Top = 128
          Width = 169
          Height = 41
        end
        object BitBtn1: TBitBtn
          Left = 16
          Top = 16
          Width = 153
          Height = 25
          Caption = 'Afficher'
          TabOrder = 0
          OnClick = BitBtn1Click
          Kind = bkAll
        end
        object BitBtn2: TBitBtn
          Left = 16
          Top = 136
          Width = 153
          Height = 25
          Caption = 'G'#233'n'#233'rer le transfert'
          TabOrder = 1
          OnClick = BitBtn2Click
          Kind = bkHelp
        end
        object RadioGroup1: TRadioGroup
          Left = 8
          Top = 56
          Width = 169
          Height = 65
          Caption = 'Option r'#233'seaux:'
          TabOrder = 2
        end
        object RBSousResaux: TRadioButton
          Left = 16
          Top = 72
          Width = 153
          Height = 17
          Caption = 'Sous r'#233'seaux'
          TabOrder = 3
        end
        object RBClasique: TRadioButton
          Left = 16
          Top = 96
          Width = 153
          Height = 17
          Caption = 'Clasique'
          Checked = True
          TabOrder = 4
          TabStop = True
        end
      end
      object TableauListeTransfertMagnetique: TStringGrid
        Left = 432
        Top = 56
        Width = 593
        Height = 153
        Ctl3D = False
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goAlwaysShowEditor]
        ParentCtl3D = False
        TabOrder = 1
        OnClick = TableauListeTransfertMagnetiqueClick
        RowHeights = (
          24
          24
          24
          24
          24)
      end
      object Panel7: TPanel
        Left = 8
        Top = 56
        Width = 417
        Height = 25
        BevelInner = bvLowered
        Color = 8454143
        TabOrder = 7
        object RBAutoSelectMouvementMemeType: TCheckBox
          Left = 8
          Top = 4
          Width = 253
          Height = 17
          Caption = 'Auto-S'#233'lection des mouvements du m'#232'me type !'
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
      end
    end
    object PageImportationFichierMagnetique: TTabSheet
      Caption = 'Importation de fichier magn'#233'tique     '
      ImageIndex = 1
      OnShow = PageImportationFichierMagnetiqueShow
      object PageControl3: TPageControl
        Left = 8
        Top = 216
        Width = 1209
        Height = 409
        ActivePage = PageImportMouvement
        TabIndex = 0
        TabOrder = 0
        object PageImportMouvement: TTabSheet
          Caption = '               D'#233'tail Mouvement               '
          ImageIndex = 1
          object TableauImportMagnetiqueMouvement: TStringGrid
            Left = 0
            Top = 0
            Width = 1201
            Height = 377
            Ctl3D = False
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goAlwaysShowEditor]
            ParentCtl3D = False
            TabOrder = 0
            OnDblClick = TableauImportMagnetiqueMouvementDblClick
            RowHeights = (
              24
              24
              24
              24
              24)
          end
        end
        object PageImportDetail: TTabSheet
          Caption = '                 D'#233'tail Article                  '
          object TableauImportMagnetiqueArticle: TStringGrid
            Left = 0
            Top = 0
            Width = 1201
            Height = 377
            Ctl3D = False
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
            ParentCtl3D = False
            TabOrder = 0
          end
        end
      end
      object TableauListeImportMagnetique: TStringGrid
        Left = 376
        Top = 56
        Width = 841
        Height = 177
        Ctl3D = False
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goAlwaysShowEditor]
        ParentCtl3D = False
        TabOrder = 1
        OnClick = TableauListeImportMagnetiqueClick
        RowHeights = (
          24
          24
          24
          24
          24)
      end
      object AfficheSuportOperation: TPanel
        Left = 8
        Top = 56
        Width = 361
        Height = 153
        BevelInner = bvLowered
        TabOrder = 2
        object Bevel4: TBevel
          Left = 8
          Top = 56
          Width = 345
          Height = 90
        end
        object Bevel5: TBevel
          Left = 8
          Top = 8
          Width = 345
          Height = 41
        end
        object Label54: TLabel
          Left = 16
          Top = 123
          Width = 26
          Height = 13
          Caption = 'Tiers:'
        end
        object Label53: TLabel
          Left = 16
          Top = 67
          Width = 78
          Height = 13
          Alignment = taRightJustify
          Caption = 'Type de Proces:'
        end
        object TitreEditTiersFichierConserne: TLabel
          Left = 16
          Top = 91
          Width = 81
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fichier consern'#233':'
        end
        object BitBtn3: TBitBtn
          Left = 16
          Top = 16
          Width = 329
          Height = 25
          Caption = 'Importer'
          TabOrder = 0
          OnClick = BitBtn3Click
          Kind = bkHelp
        end
        object EditTiersCodeTiers: TEdit
          Left = 112
          Top = 119
          Width = 89
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object EditTiersNomTiers: TEdit
          Left = 48
          Top = 119
          Width = 257
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
          TabOrder = 2
          OnEnter = EditTiersNomTiersEnter
          OnKeyDown = EditTiersNomTiersKeyDown
          OnKeyUp = EditTiersNomTiersKeyUp
        end
        object EditTiersFichierConserne: TComboBox
          Left = 104
          Top = 87
          Width = 113
          Height = 21
          BevelKind = bkFlat
          Ctl3D = True
          Enabled = False
          ItemHeight = 13
          ItemIndex = 0
          ParentCtl3D = False
          TabOrder = 3
          Text = 'FFournisseur'
          Items.Strings = (
            'FFournisseur'
            'FClient'
            'FPersonnel')
        end
        object EditTiersTypeProces: TComboBox
          Left = 104
          Top = 63
          Width = 113
          Height = 21
          BevelKind = bkFlat
          Enabled = False
          ItemHeight = 13
          TabOrder = 4
          Text = 'Commercial'
          Items.Strings = (
            'Business'
            'Commercial'
            'Paie'
            'Comptabilit'#233
            'Social')
        end
        object BitBtn4: TBitBtn
          Left = 224
          Top = 64
          Width = 123
          Height = 41
          Caption = 'Transf'#233'rer (FSOC)'
          TabOrder = 5
          OnClick = BitBtn4Click
          Kind = bkAll
        end
        object BitBtn8: TBitBtn
          Left = 314
          Top = 116
          Width = 33
          Height = 25
          Caption = '.'
          TabOrder = 6
          OnClick = BitBtn8Click
          Kind = bkNo
        end
      end
      object TableauTiersListeTiers: TStringGrid
        Left = 72
        Top = 200
        Width = 801
        Height = 393
        ColCount = 10
        Ctl3D = False
        DefaultColWidth = 40
        DefaultRowHeight = 18
        RowCount = 20
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
        ParentCtl3D = False
        TabOrder = 3
        Visible = False
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
      object AfficheImportation: TPanel
        Left = 464
        Top = 96
        Width = 657
        Height = 57
        BevelOuter = bvLowered
        Color = 8454143
        TabOrder = 4
        Visible = False
        object Bevel6: TBevel
          Left = 8
          Top = 8
          Width = 209
          Height = 41
        end
        object Bevel7: TBevel
          Left = 224
          Top = 8
          Width = 209
          Height = 41
        end
        object Bevel8: TBevel
          Left = 544
          Top = 8
          Width = 105
          Height = 41
        end
        object Bevel9: TBevel
          Left = 440
          Top = 8
          Width = 97
          Height = 41
        end
        object BitBtn5: TBitBtn
          Left = 16
          Top = 16
          Width = 193
          Height = 25
          Caption = 'Auto-Importe "R'#233'seaux"'
          TabOrder = 0
          OnClick = BitBtn5Click
          Kind = bkHelp
        end
        object BitBtn6: TBitBtn
          Left = 232
          Top = 16
          Width = 193
          Height = 25
          Caption = 'Importer les donn'#233'es d'#39'un fichier'
          TabOrder = 1
          OnClick = BitBtn6Click
          Kind = bkHelp
        end
        object BitBtn7: TBitBtn
          Left = 552
          Top = 16
          Width = 91
          Height = 25
          TabOrder = 2
          OnClick = BitBtn7Click
          Kind = bkCancel
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = '    Options     '
      ImageIndex = 2
      object LabelTypeProces: TLabel
        Left = 13
        Top = 325
        Width = 30
        Height = 13
        Caption = '..........'
      end
      object LabelFichierConcerne: TLabel
        Left = 13
        Top = 339
        Width = 30
        Height = 13
        Caption = '..........'
      end
      object TitreEditTiersFichierConserneTableauBohr: TLabel
        Left = 14
        Top = 390
        Width = 82
        Height = 13
        Caption = 'Fichier concerne:'
      end
      object TableauListePosteReseauxTransfertMagnitique: TStringGrid
        Left = 8
        Top = 96
        Width = 1209
        Height = 225
        Ctl3D = False
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
        ParentCtl3D = False
        TabOrder = 0
      end
      object Panel2: TPanel
        Left = 8
        Top = 56
        Width = 1209
        Height = 33
        BevelInner = bvLowered
        TabOrder = 1
        object RBChoisPosteReseauxAffiche: TCheckBox
          Left = 8
          Top = 8
          Width = 193
          Height = 17
          Caption = 'Chois du poste r'#233'seaux '#224' afficher !'
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
      end
      object EditRowFirstSelectDebitCredit: TEdit
        Left = 16
        Top = 360
        Width = 25
        Height = 19
        Color = clSilver
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
      end
      object EditDebitCreditPositif: TComboBox
        Left = 40
        Top = 360
        Width = 73
        Height = 21
        BevelKind = bkFlat
        Color = clSilver
        Ctl3D = True
        ItemHeight = 13
        ItemIndex = 0
        ParentCtl3D = False
        TabOrder = 3
        Text = 'D'#233'bit'
        Items.Strings = (
          'D'#233'bit'
          'Cr'#233'dit')
      end
      object EditTiersFichierConserneTableauBohr: TComboBox
        Left = 108
        Top = 386
        Width = 145
        Height = 21
        BevelKind = bkFlat
        Ctl3D = True
        ItemHeight = 13
        ItemIndex = 0
        ParentCtl3D = False
        TabOrder = 4
        Text = 'FFournisseur'
        Items.Strings = (
          'FFournisseur'
          'FClient'
          'FPersonnel')
      end
      object EditExtentionFichier: TEdit
        Left = 16
        Top = 408
        Width = 121
        Height = 19
        Color = clSilver
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 5
      end
    end
  end
  object AfficheSelectData: TPanel
    Left = 16
    Top = 32
    Width = 1217
    Height = 49
    BevelInner = bvLowered
    Color = 8454143
    TabOrder = 1
    object Bevel44: TBevel
      Left = 328
      Top = 7
      Width = 433
      Height = 34
    end
    object Bevel36: TBevel
      Left = 8
      Top = 8
      Width = 145
      Height = 34
    end
    object Label6: TLabel
      Left = 16
      Top = 20
      Width = 44
      Height = 13
      Caption = 'Exercice:'
    end
    object Label7: TLabel
      Left = 552
      Top = 20
      Width = 16
      Height = 13
      Caption = 'Au:'
    end
    object Label27: TLabel
      Left = 336
      Top = 20
      Width = 17
      Height = 13
      Caption = 'Du:'
    end
    object Bevel1: TBevel
      Left = 160
      Top = 7
      Width = 145
      Height = 34
    end
    object EditDateFin: TDateTimePicker
      Left = 584
      Top = 16
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
      TabOrder = 0
    end
    object EditDateDebut: TDateTimePicker
      Left = 368
      Top = 16
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
      TabOrder = 1
    end
    object EditExercice: TComboBox
      Left = 64
      Top = 16
      Width = 81
      Height = 21
      BevelInner = bvLowered
      BevelKind = bkFlat
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 2
      OnSelect = EditExerciceSelect
    end
    object EditMois: TComboBox
      Left = 176
      Top = 16
      Width = 105
      Height = 21
      BevelKind = bkFlat
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 3
      Text = '(01) janvier'
      OnSelect = EditMoisSelect
      Items.Strings = (
        '(01) janvier'
        '(02) f'#233'vrier'
        '(03) mars'
        '(04) avril'
        '(05) mai'
        '(06) juin'
        '(07) juillet'
        '(08) ao'#251't'
        '(09) septembre'
        '(10) octobre'
        '(11) novembre'
        '(12) d'#233'cembre')
    end
    object RBAfficheMouvementPrelevement: TCheckBox
      Left = 776
      Top = 16
      Width = 201
      Height = 17
      Caption = 'Afficher Mouvement et pr'#233'l'#232'vement !'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object RBCumulerMemeArticle: TCheckBox
      Left = 1016
      Top = 16
      Width = 161
      Height = 17
      Caption = 'Cumuler les m'#234'mes articles !'
      TabOrder = 5
      OnClick = TableauListeImportMagnetiqueClick
    end
  end
  object AffichePatienterSVP: TPanel
    Left = 272
    Top = 272
    Width = 737
    Height = 137
    BevelInner = bvLowered
    Caption = 'Patienter SVP !'
    Color = 8454143
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -24
    Font.Name = 'MS Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
  end
  object OuvrireUnFichier: TOpenDialog
    Left = 1152
    Top = 104
  end
  object EnregistrerUnFichier: TSaveDialog
    Left = 1184
    Top = 104
  end
  object TimerAffichage: TTimer
    Enabled = False
    Interval = 200
    OnTimer = TimerAffichageTimer
    Left = 304
    Top = 40
  end
  object TimerImporter: TTimer
    Enabled = False
    Interval = 200
    OnTimer = TimerImporterTimer
    Left = 344
    Top = 40
  end
  object TimerImporterReseaux: TTimer
    Enabled = False
    Interval = 200
    OnTimer = TimerImporterReseauxTimer
    Left = 392
    Top = 40
  end
end
