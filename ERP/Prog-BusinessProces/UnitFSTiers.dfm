object FSTiers: TFSTiers
  Left = 0
  Top = 0
  Width = 1366
  Height = 728
  Caption = 'Fichier Tiers'
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
  object Panel2: TPanel
    Left = 24
    Top = 128
    Width = 169
    Height = 169
    BevelOuter = bvLowered
    TabOrder = 5
    object EditTitreDataTiers1: TEdit
      Left = 8
      Top = 8
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
    object EditTitreDataTiers2: TEdit
      Left = 8
      Top = 34
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object EditTitreDataTiers3: TEdit
      Left = 8
      Top = 58
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object EditTitreDataTiers4: TEdit
      Left = 8
      Top = 82
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object EditTitreDataTiers5: TEdit
      Left = 8
      Top = 106
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
    end
    object EditTitreDataTiers6: TEdit
      Left = 8
      Top = 134
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
    end
    object RBChampsObligatoire6: TCheckBox
      Left = 138
      Top = 136
      Width = 15
      Height = 17
      Caption = '.'
      Enabled = False
      TabOrder = 6
    end
    object RBChampsObligatoire5: TCheckBox
      Left = 138
      Top = 107
      Width = 15
      Height = 17
      Caption = '.'
      Enabled = False
      TabOrder = 7
    end
    object RBChampsObligatoire4: TCheckBox
      Left = 138
      Top = 83
      Width = 15
      Height = 17
      Caption = '.'
      Enabled = False
      TabOrder = 8
    end
    object RBChampsObligatoire3: TCheckBox
      Left = 138
      Top = 59
      Width = 15
      Height = 17
      Caption = '.'
      Enabled = False
      TabOrder = 9
    end
    object RBChampsObligatoire2: TCheckBox
      Left = 138
      Top = 35
      Width = 15
      Height = 17
      Caption = '.'
      Enabled = False
      TabOrder = 10
    end
    object RBChampsObligatoire1: TCheckBox
      Left = 138
      Top = 10
      Width = 15
      Height = 17
      Caption = '.'
      Enabled = False
      TabOrder = 11
    end
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 1337
    Height = 41
    BevelInner = bvLowered
    TabOrder = 3
    object EditTitreFichierConcerne: TLabel
      Left = 274
      Top = 16
      Width = 88
      Height = 13
      Caption = 'Fichier Cons'#233'rner !'
    end
    object Label83: TLabel
      Left = 8
      Top = 16
      Width = 81
      Height = 13
      Caption = 'Liste des Proces:'
    end
    object Bevel13: TBevel
      Left = 544
      Top = 9
      Width = 337
      Height = 28
    end
    object EditCodeAcceSimulation: TEdit
      Left = 920
      Top = 10
      Width = 73
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
    end
    object EditFichierConcerne: TComboBox
      Left = 368
      Top = 12
      Width = 161
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'FClient'
      OnChange = EditFichierConcerneChange
      OnDblClick = EditFichierConcerneDblClick
      OnEnter = EditFichierConcerneEnter
      OnSelect = EditFichierConcerneSelect
      Items.Strings = (
        'FClient'
        'FFournisseur'
        'FPersonnel')
    end
    object EditSelectTypeProces: TComboBox
      Left = 96
      Top = 12
      Width = 145
      Height = 21
      BevelKind = bkFlat
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 1
      Text = 'Business'
      OnChange = EditSelectTypeProcesChange
      OnEnter = EditSelectTypeProcesEnter
      Items.Strings = (
        'Business'
        'Commercial'
        'Paie'
        'Comptabilit'#233
        'Social')
    end
    object BitBtn2: TBitBtn
      Left = 1168
      Top = 8
      Width = 89
      Height = 25
      Caption = 'Imprimer'
      TabOrder = 2
      OnClick = BitBtn2Click
      Kind = bkHelp
    end
    object RBAjuster: TCheckBox
      Left = 1264
      Top = 13
      Width = 65
      Height = 17
      Caption = 'Ajuster'
      TabOrder = 3
    end
    object BitBtn3: TBitBtn
      Left = 896
      Top = 8
      Width = 113
      Height = 25
      Caption = 'Simulation'
      TabOrder = 4
      OnClick = BitBtn3Click
      Kind = bkHelp
    end
    object RBIndiceRubriqueTriCol: TCheckBox
      Left = 552
      Top = 16
      Width = 193
      Height = 17
      Caption = 'Triers par la Rubrique s'#233'lectionner !'
      TabOrder = 6
    end
    object EditIndiceRubriqueTriCol: TEdit
      Left = 760
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
      TabOrder = 7
      Text = '2'
    end
    object EditTypeDataTrie: TEdit
      Left = 784
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
      TabOrder = 8
    end
    object EditTypeTrie: TComboBox
      Left = 832
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
      TabOrder = 9
      Text = '+'
      Items.Strings = (
        '+'
        '-')
    end
    object RBNouvelleCreation: TCheckBox
      Left = 1016
      Top = 16
      Width = 85
      Height = 13
      Caption = 'Nouvelle Nbr:'
      TabOrder = 10
    end
    object EditNbrSimulation: TEdit
      Left = 1104
      Top = 13
      Width = 25
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 11
      Text = '50'
    end
    object IncrimenteEditNbrSimulation: TUpDown
      Left = 1129
      Top = 13
      Width = 16
      Height = 19
      Associate = EditNbrSimulation
      Min = 1
      Position = 50
      TabOrder = 12
      Wrap = False
    end
  end
  object TableauTiers: TStringGrid
    Left = 8
    Top = 120
    Width = 1337
    Height = 567
    ColCount = 16
    Ctl3D = False
    DefaultRowHeight = 20
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing]
    ParentCtl3D = False
    TabOrder = 0
    OnClick = TableauTiersClick
    OnDrawCell = TableauTiersDrawCell
    OnKeyPress = TableauTiersKeyPress
    ColWidths = (
      64
      64
      64
      64
      64
      63
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
      20
      20)
  end
  object AfficheOperationTiers: TPanel
    Left = 192
    Top = 160
    Width = 697
    Height = 345
    BevelInner = bvLowered
    Color = 8454143
    TabOrder = 1
    Visible = False
    OnMouseDown = AfficheOperationTiersMouseDown
    object Bevel4: TBevel
      Left = 8
      Top = 6
      Width = 545
      Height = 331
    end
    object Bevel2: TBevel
      Left = 16
      Top = 14
      Width = 64
      Height = 71
    end
    object Label1: TLabel
      Left = 50
      Top = 44
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nom:'
    end
    object Label2: TLabel
      Left = 19
      Top = 20
      Width = 57
      Height = 13
      Alignment = taRightJustify
      Caption = 'Code Client:'
    end
    object Label3: TLabel
      Left = 36
      Top = 68
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = 'Pr'#233'nom:'
    end
    object Bevel3: TBevel
      Left = 560
      Top = 8
      Width = 129
      Height = 41
    end
    object Bevel1: TBevel
      Left = 560
      Top = 56
      Width = 129
      Height = 137
    end
    object Bevel5: TBevel
      Left = 560
      Top = 248
      Width = 65
      Height = 89
    end
    object Bevel6: TBevel
      Left = 568
      Top = 256
      Width = 121
      Height = 73
    end
    object Bevel9: TBevel
      Left = 560
      Top = 200
      Width = 129
      Height = 41
    end
    object Bevel14: TBevel
      Left = 576
      Top = 264
      Width = 105
      Height = 57
    end
    object EditCodeOperation: TEdit
      Left = 80
      Top = 16
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
    end
    object BitBtn1: TBitBtn
      Left = 568
      Top = 16
      Width = 113
      Height = 25
      Caption = 'Annuler'
      TabOrder = 0
      OnClick = BitBtn1Click
      Kind = bkNo
    end
    object BitOperationTiers: TBitBtn
      Left = 568
      Top = 64
      Width = 113
      Height = 121
      TabOrder = 1
      OnClick = BitOperationTiersClick
      Kind = bkRetry
    end
    object EditNom: TEdit
      Left = 80
      Top = 40
      Width = 457
      Height = 19
      Ctl3D = False
      MaxLength = 100
      ParentCtl3D = False
      TabOrder = 2
      OnEnter = EditNomEnter
      OnKeyDown = EditNomKeyDown
    end
    object EditCodeTiers: TEdit
      Left = 80
      Top = 16
      Width = 129
      Height = 19
      HelpType = htKeyword
      Color = clSilver
      Ctl3D = False
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 3
      OnEnter = EditCodeTiersEnter
      OnKeyDown = EditCodeTiersKeyDown
    end
    object EditPrenom: TEdit
      Left = 80
      Top = 64
      Width = 457
      Height = 19
      Ctl3D = False
      MaxLength = 100
      ParentCtl3D = False
      TabOrder = 4
      OnEnter = EditPrenomEnter
      OnKeyDown = EditPrenomKeyDown
    end
    object PageTiers: TPageControl
      Left = 16
      Top = 88
      Width = 529
      Height = 241
      ActivePage = PageCivil
      TabIndex = 0
      TabOrder = 6
      object PageCivil: TTabSheet
        Caption = 'Informations:'
        OnShow = PageCivilShow
        object Bevel7: TBevel
          Left = 0
          Top = 8
          Width = 521
          Height = 201
        end
        object Label7: TLabel
          Left = 16
          Top = 20
          Width = 83
          Height = 13
          Caption = 'Date Nais...........:'
        end
        object Label8: TLabel
          Left = 16
          Top = 44
          Width = 83
          Height = 13
          Caption = 'Lieu Nais............:'
        end
        object Label9: TLabel
          Left = 16
          Top = 68
          Width = 83
          Height = 13
          Caption = 'Identit'#233'...............:'
        end
        object Label10: TLabel
          Left = 16
          Top = 92
          Width = 83
          Height = 13
          Caption = 'Num_d'#233'livrance.:'
        end
        object Label11: TLabel
          Left = 16
          Top = 116
          Width = 83
          Height = 13
          Caption = 'Fonction.............:'
        end
        object Label4: TLabel
          Left = 16
          Top = 139
          Width = 83
          Height = 13
          Caption = 'Adresse..............:'
        end
        object Label6: TLabel
          Left = 16
          Top = 163
          Width = 81
          Height = 13
          Caption = 'T'#233'l.....................:'
        end
        object Label16: TLabel
          Left = 16
          Top = 187
          Width = 128
          Height = 13
          Caption = 'Non-Autoriser non autoris'#233':'
        end
        object EditLieuNaissance: TEdit
          Left = 104
          Top = 40
          Width = 409
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnKeyDown = EditLieuNaissanceKeyDown
        end
        object EditDateNaissance: TMaskEdit
          Left = 104
          Top = 16
          Width = 81
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvNone
          BevelKind = bkFlat
          EditMask = '!99/99/9999;1;_'
          MaxLength = 10
          TabOrder = 1
          Text = '  /  /    '
          OnKeyDown = EditDateNaissanceKeyDown
        end
        object EditNaturePieceIdentite: TComboBox
          Left = 104
          Top = 64
          Width = 137
          Height = 21
          BevelKind = bkFlat
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 2
          Text = 'Cate d'#39'Identit'#233' N.'
          OnKeyDown = EditNaturePieceIdentiteKeyDown
          Items.Strings = (
            'Cate d'#39'Identit'#233' N.'
            'Permis de Conduire'
            'Passeport')
        end
        object EditNumPieceIdentite: TEdit
          Left = 104
          Top = 88
          Width = 409
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          OnKeyDown = EditNumPieceIdentiteKeyDown
        end
        object EditFonction: TComboBox
          Left = 104
          Top = 112
          Width = 265
          Height = 21
          BevelKind = bkFlat
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 4
          Text = 'Employ'#233
          OnKeyDown = EditFonctionKeyDown
          Items.Strings = (
            'Employ'#233
            'Commer'#231'ant'
            'Artisan')
        end
        object EditAdresse: TEdit
          Left = 105
          Top = 136
          Width = 264
          Height = 19
          Ctl3D = False
          MaxLength = 100
          ParentCtl3D = False
          TabOrder = 5
          OnKeyDown = EditAdresseKeyDown
        end
        object EditNumTelephone: TMaskEdit
          Left = 104
          Top = 160
          Width = 107
          Height = 19
          Ctl3D = False
          EditMask = '9999-99-99-99;1;_'
          MaxLength = 13
          ParentCtl3D = False
          TabOrder = 6
          Text = '    -  -  -  '
          OnKeyDown = EditNumTelephoneKeyDown
        end
        object EditMaskTelephone: TComboBox
          Left = 216
          Top = 160
          Width = 153
          Height = 21
          BevelKind = bkFlat
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 7
          Text = '9999-99-99-99'
          OnSelect = EditMaskTelephoneSelect
          Items.Strings = (
            '9999-99-99-99'
            '999-99-99-99'
            '99999-99-99-99-99')
        end
        object EditListeNomPosteReseauxNonAutoriser: TEdit
          Left = 152
          Top = 184
          Width = 361
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 8
          OnEnter = EditListeNomPosteReseauxNonAutoriserEnter
        end
      end
      object PageAutre: TTabSheet
        Caption = 'Autres: '
        ImageIndex = 1
        object Bevel8: TBevel
          Left = 8
          Top = 8
          Width = 513
          Height = 201
        end
        object Label5: TLabel
          Left = 21
          Top = 140
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'Autre 1:'
        end
        object Label19: TLabel
          Left = 269
          Top = 144
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'Autre 2:'
        end
        object Label20: TLabel
          Left = 21
          Top = 168
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'Autre 3:'
        end
        object Label21: TLabel
          Left = 269
          Top = 168
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'Autre 4:'
        end
        object Label22: TLabel
          Left = 23
          Top = 192
          Width = 37
          Height = 13
          Caption = 'Autre 5:'
        end
        object Label23: TLabel
          Left = 272
          Top = 192
          Width = 37
          Height = 13
          Caption = 'Autre 6:'
        end
        object Label12: TLabel
          Left = 37
          Top = 20
          Width = 21
          Height = 13
          Alignment = taRightJustify
          Caption = 'RIB:'
        end
        object Label82: TLabel
          Left = 14
          Top = 43
          Width = 40
          Height = 13
          Alignment = taRightJustify
          Caption = 'Agence:'
        end
        object Label13: TLabel
          Left = 230
          Top = 20
          Width = 68
          Height = 13
          Alignment = taRightJustify
          Caption = 'Code Agence:'
        end
        object Label17: TLabel
          Left = 32
          Top = 67
          Width = 22
          Height = 13
          Alignment = taRightJustify
          Caption = 'Mail:'
        end
        object Label18: TLabel
          Left = 12
          Top = 91
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'C.S.Mail:'
        end
        object EditAutre6: TEdit
          Left = 313
          Top = 186
          Width = 200
          Height = 19
          Ctl3D = False
          MaxLength = 100
          ParentCtl3D = False
          TabOrder = 0
          OnKeyDown = EditAutre6KeyDown
          OnKeyUp = EditAutre6KeyUp
        end
        object EditAutre5: TEdit
          Left = 65
          Top = 186
          Width = 192
          Height = 19
          Ctl3D = False
          MaxLength = 100
          ParentCtl3D = False
          TabOrder = 1
          OnKeyDown = EditAutre5KeyDown
          OnKeyUp = EditAutre5KeyUp
        end
        object EditAutre4: TEdit
          Left = 313
          Top = 162
          Width = 200
          Height = 19
          Ctl3D = False
          MaxLength = 100
          ParentCtl3D = False
          TabOrder = 2
          OnKeyDown = EditAutre4KeyDown
          OnKeyUp = EditAutre4KeyUp
        end
        object EditAutre3: TEdit
          Left = 65
          Top = 162
          Width = 200
          Height = 19
          Ctl3D = False
          MaxLength = 100
          ParentCtl3D = False
          TabOrder = 3
          OnKeyDown = EditAutre3KeyDown
          OnKeyUp = EditAutre3KeyUp
        end
        object EditAutre2: TEdit
          Left = 313
          Top = 138
          Width = 200
          Height = 19
          Ctl3D = False
          MaxLength = 100
          ParentCtl3D = False
          TabOrder = 4
          OnKeyDown = EditAutre2KeyDown
          OnKeyUp = EditAutre2KeyUp
        end
        object EditAutre1: TEdit
          Left = 64
          Top = 136
          Width = 200
          Height = 19
          Ctl3D = False
          MaxLength = 100
          ParentCtl3D = False
          TabOrder = 5
          OnKeyDown = EditAutre1KeyDown
          OnKeyUp = EditAutre1KeyUp
        end
        object EditRIB: TEdit
          Left = 64
          Top = 16
          Width = 145
          Height = 19
          Ctl3D = False
          MaxLength = 20
          ParentCtl3D = False
          TabOrder = 6
          OnEnter = EditRIBEnter
          OnKeyDown = EditRIBKeyDown
          OnKeyUp = EditRIBKeyUp
        end
        object EditLibelleAgence: TEdit
          Left = 64
          Top = 40
          Width = 449
          Height = 19
          Color = 15461355
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 7
        end
        object EditCodeAgenceBanque: TEdit
          Left = 304
          Top = 16
          Width = 65
          Height = 19
          Ctl3D = False
          MaxLength = 8
          ParentCtl3D = False
          TabOrder = 8
          OnKeyDown = EditCodeAgenceBanqueKeyDown
          OnKeyUp = EditCodeAgenceBanqueKeyUp
        end
        object EditMailEntreprise: TEdit
          Left = 64
          Top = 64
          Width = 449
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 9
        end
        object EditCodeSecuriteMail: TEdit
          Left = 64
          Top = 88
          Width = 233
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 10
        end
      end
      object TabSheet1: TTabSheet
        Caption = '     Changement de fichier concerne     '
        ImageIndex = 2
        OnShow = TabSheet1Show
        object Bevel15: TBevel
          Left = 8
          Top = 8
          Width = 505
          Height = 41
        end
        object EditTitreFichierConcerneTranfert: TLabel
          Left = 49
          Top = 19
          Width = 88
          Height = 13
          Caption = 'Fichier Cons'#233'rner !'
        end
        object Bevel16: TBevel
          Left = 8
          Top = 56
          Width = 505
          Height = 153
        end
        object EditFichierConcerneTranfert: TComboBox
          Left = 152
          Top = 16
          Width = 345
          Height = 21
          ItemHeight = 0
          TabOrder = 0
        end
        object BitBtn4: TBitBtn
          Left = 144
          Top = 64
          Width = 289
          Height = 25
          Caption = 'Tranferer'
          TabOrder = 1
          OnClick = BitBtn4Click
          Kind = bkHelp
        end
      end
    end
    object BitImporteData: TBitBtn
      Left = 568
      Top = 208
      Width = 113
      Height = 25
      Caption = 'Importer Titres'
      TabOrder = 7
      OnClick = BitImporteDataClick
      Kind = bkHelp
    end
    object AfficheOKDatModifier: TPanel
      Left = 88
      Top = 248
      Width = 393
      Height = 41
      BevelInner = bvLowered
      Color = 8454016
      TabOrder = 8
      Visible = False
      object BitBtn5: TBitBtn
        Left = 8
        Top = 8
        Width = 75
        Height = 25
        TabOrder = 0
        OnClick = BitBtn5Click
        Kind = bkNo
      end
      object BitOKImporteData: TBitBtn
        Left = 312
        Top = 8
        Width = 75
        Height = 25
        TabOrder = 1
        OnClick = BitOKImporteDataClick
        Kind = bkOK
      end
    end
    object RBSaisieManuel: TCheckBox
      Left = 224
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Saisie manuel'
      TabOrder = 9
      OnClick = RBSaisieManuelClick
    end
  end
  object AfficheCompteTiers: TPanel
    Left = -352
    Top = 488
    Width = 561
    Height = 345
    BevelInner = bvLowered
    Color = 8454143
    TabOrder = 4
    Visible = False
    OnMouseDown = AfficheCompteTiersMouseDown
    object TableauCompteTiers: TStringGrid
      Left = 8
      Top = 8
      Width = 545
      Height = 329
      Ctl3D = False
      DefaultColWidth = 40
      DefaultRowHeight = 20
      FixedCols = 2
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
      ParentCtl3D = False
      TabOrder = 0
      OnDrawCell = TableauCompteTiersDrawCell
      OnKeyDown = TableauCompteTiersKeyDown
      ColWidths = (
        40
        2
        81
        341
        79)
    end
  end
  object Panel3: TPanel
    Left = 8
    Top = 56
    Width = 1337
    Height = 41
    BevelInner = bvLowered
    TabOrder = 6
    object Label15: TLabel
      Left = 8
      Top = 14
      Width = 85
      Height = 13
      Caption = 'Rechercher Tiers:'
    end
    object EditRechercheTiers: TEdit
      Left = 104
      Top = 11
      Width = 409
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnKeyDown = EditRechercheTiersKeyDown
      OnKeyUp = EditRechercheTiersKeyUp
    end
    object RadioGroup1: TRadioGroup
      Left = 547
      Top = 4
      Width = 438
      Height = 32
      Caption = 'Option de recherche: '
      TabOrder = 1
    end
    object RBRechercheTiersEntie: TRadioButton
      Left = 672
      Top = 14
      Width = 129
      Height = 17
      Caption = 'Recherche Tiers enti'#233
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = RBRechercheTiersEntieClick
    end
    object RBRechercheTiersMotCle: TRadioButton
      Left = 832
      Top = 14
      Width = 129
      Height = 17
      Caption = 'Recherche mots cl'#233
      TabOrder = 3
      OnClick = RBRechercheTiersMotCleClick
    end
    object RBEditingTable: TCheckBox
      Left = 1224
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Editing Table'
      TabOrder = 4
      OnClick = RBEditingTableClick
    end
    object EditNbrKeyUp: TEdit
      Left = 517
      Top = 11
      Width = 12
      Height = 19
      Color = clBtnFace
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
    end
    object EditNbrKeyUpMemo: TEdit
      Left = 531
      Top = 11
      Width = 12
      Height = 19
      Color = clBtnFace
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 6
    end
  end
  object AfficheListeCompteCP: TPanel
    Left = 904
    Top = 56
    Width = 440
    Height = 630
    BevelInner = bvLowered
    Color = 8454143
    TabOrder = 2
    Visible = False
    OnEnter = AfficheListeCompteCPEnter
    OnMouseDown = AfficheListeCompteCPMouseDown
    object Bevel12: TBevel
      Left = 8
      Top = 48
      Width = 129
      Height = 34
    end
    object Bevel11: TBevel
      Left = 144
      Top = 48
      Width = 289
      Height = 34
    end
    object Bevel10: TBevel
      Left = 216
      Top = 8
      Width = 185
      Height = 34
    end
    object Label73: TLabel
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
    object Label74: TLabel
      Left = 16
      Top = 59
      Width = 28
      Height = 13
      Caption = 'Code:'
    end
    object Label14: TLabel
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
      Height = 535
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
    object BitBtn39: TBitBtn
      Left = 411
      Top = 4
      Width = 25
      Height = 25
      Caption = '.'
      TabOrder = 1
      OnClick = BitBtn39Click
      Kind = bkCancel
      Margin = 0
    end
    object EditNumCptPrincipal: TEdit
      Left = 48
      Top = 56
      Width = 81
      Height = 19
      Ctl3D = False
      MaxLength = 6
      ParentCtl3D = False
      TabOrder = 2
      OnKeyDown = EditNumCptPrincipalKeyDown
      OnKeyPress = EditNumCptPrincipalKeyPress
      OnKeyUp = EditNumCptPrincipalKeyUp
    end
    object EditOrdreCompteComptable: TEdit
      Left = 351
      Top = 16
      Width = 25
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
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
      TabOrder = 4
      Wrap = False
      OnClick = IncrimentOrdreCompteComptableClick
    end
    object RBRechercheMotCle: TCheckBox
      Left = 152
      Top = 58
      Width = 153
      Height = 17
      Caption = 'Recherche Par Mot Cl'#233' !'
      TabOrder = 5
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
      TabOrder = 6
      OnKeyDown = EditMotCleKeyDown
      OnKeyUp = EditMotCleKeyUp
    end
  end
  object AfficheAdresseFichierConcerne: TPanel
    Left = 8
    Top = 100
    Width = 673
    Height = 17
    Alignment = taLeftJustify
    BevelInner = bvLowered
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 7
  end
  object TableauAgenceBanque: TStringGrid
    Left = 528
    Top = 512
    Width = 369
    Height = 313
    ColCount = 3
    Ctl3D = False
    RowCount = 2
    ParentCtl3D = False
    TabOrder = 8
    Visible = False
    OnDrawCell = TableauAgenceBanqueDrawCell
  end
  object TableauPosteReseaux: TStringGrid
    Left = 364
    Top = 478
    Width = 481
    Height = 169
    Ctl3D = False
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
    ParentCtl3D = False
    TabOrder = 9
    Visible = False
    OnDblClick = TableauPosteReseauxDblClick
    OnExit = TableauPosteReseauxExit
    OnKeyDown = TableauPosteReseauxKeyDown
    RowHeights = (
      24
      24
      24
      24
      24)
  end
  object EditFichierConcerneAfficher: TEdit
    Left = 712
    Top = 99
    Width = 161
    Height = 19
    Color = clSilver
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 10
  end
  object RBModificationOperer: TCheckBox
    Left = 688
    Top = 100
    Width = 17
    Height = 17
    Enabled = False
    TabOrder = 11
  end
  object TimerLancerAfficheTiers: TTimer
    Enabled = False
    Interval = 1
    OnTimer = TimerLancerAfficheTiersTimer
    Left = 104
    Top = 88
  end
  object TimerAfficheTiers: TTimer
    Enabled = False
    Interval = 1
    OnTimer = TimerAfficheTiersTimer
    Left = 64
    Top = 88
  end
  object TimerPublicationTiers: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerPublicationTiersTimer
    Left = 1032
    Top = 8
  end
end
