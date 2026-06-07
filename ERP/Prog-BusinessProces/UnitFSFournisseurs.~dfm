object FSFournisseurs: TFSFournisseurs
  Left = -5
  Top = 0
  Width = 807
  Height = 574
  Caption = 'Fiche Fournisseurs'
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
  object TableauFournisseur: TStringGrid
    Left = 8
    Top = 8
    Width = 777
    Height = 521
    ColCount = 10
    Ctl3D = False
    DefaultRowHeight = 20
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
    ParentCtl3D = False
    TabOrder = 0
    OnClick = TableauFournisseurClick
    OnKeyPress = TableauFournisseurKeyPress
  end
  object AfficheOperationFournisseur: TPanel
    Left = 128
    Top = 88
    Width = 561
    Height = 345
    BevelInner = bvLowered
    Color = 8454143
    TabOrder = 1
    Visible = False
    object Bevel4: TBevel
      Left = 8
      Top = 6
      Width = 409
      Height = 331
    end
    object Bevel2: TBevel
      Left = 16
      Top = 14
      Width = 97
      Height = 69
    end
    object Label1: TLabel
      Left = 82
      Top = 44
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nom:'
    end
    object Label2: TLabel
      Left = 23
      Top = 20
      Width = 85
      Height = 13
      Alignment = taRightJustify
      Caption = 'Code Fournisseur:'
    end
    object Label3: TLabel
      Left = 68
      Top = 68
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = 'Pr'#233'nom:'
    end
    object Bevel3: TBevel
      Left = 424
      Top = 8
      Width = 129
      Height = 41
    end
    object Bevel1: TBevel
      Left = 424
      Top = 56
      Width = 129
      Height = 137
    end
    object Bevel5: TBevel
      Left = 424
      Top = 200
      Width = 73
      Height = 137
    end
    object Bevel6: TBevel
      Left = 456
      Top = 208
      Width = 97
      Height = 121
    end
    object EditCodeOperation: TEdit
      Left = 112
      Top = 16
      Width = 73
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
    end
    object BitBtn1: TBitBtn
      Left = 432
      Top = 16
      Width = 113
      Height = 25
      Caption = 'Annuler'
      TabOrder = 0
      OnClick = BitBtn1Click
      Kind = bkNo
    end
    object BitOperationFournisseur: TBitBtn
      Left = 432
      Top = 64
      Width = 113
      Height = 121
      TabOrder = 1
      OnClick = BitOperationFournisseurClick
      Kind = bkRetry
    end
    object EditNom: TEdit
      Left = 112
      Top = 40
      Width = 297
      Height = 19
      Ctl3D = False
      MaxLength = 100
      ParentCtl3D = False
      TabOrder = 2
      OnEnter = EditNomEnter
      OnKeyDown = EditNomKeyDown
    end
    object EditCodeFournisseur: TEdit
      Left = 112
      Top = 16
      Width = 73
      Height = 19
      HelpType = htKeyword
      Color = clSilver
      Ctl3D = False
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 3
      OnEnter = EditCodeFournisseurEnter
      OnKeyDown = EditCodeFournisseurKeyDown
    end
    object EditPrenom: TEdit
      Left = 112
      Top = 64
      Width = 297
      Height = 19
      Ctl3D = False
      MaxLength = 100
      ParentCtl3D = False
      TabOrder = 4
      OnEnter = EditPrenomEnter
      OnKeyDown = EditPrenomKeyDown
    end
    object PageControl1: TPageControl
      Left = 16
      Top = 88
      Width = 393
      Height = 241
      ActivePage = PageCivil
      TabIndex = 0
      TabOrder = 6
      object PageCivil: TTabSheet
        Caption = 'Informations:'
        object Bevel7: TBevel
          Left = 8
          Top = 8
          Width = 369
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
        object Label12: TLabel
          Left = 16
          Top = 139
          Width = 83
          Height = 13
          Caption = 'Adresse..............:'
        end
        object Label13: TLabel
          Left = 16
          Top = 163
          Width = 81
          Height = 13
          Caption = 'T'#233'l.....................:'
        end
        object EditLieuNaissance: TEdit
          Left = 104
          Top = 40
          Width = 265
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
          Width = 265
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
        object EditMaskTelephone: TComboBox
          Left = 218
          Top = 160
          Width = 153
          Height = 21
          BevelKind = bkFlat
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 5
          Text = '9999-99-99-99'
          Items.Strings = (
            '9999-99-99-99'
            '999-99-99-99'
            '99999-99-99-99-99')
        end
        object EditNumTelephone: TMaskEdit
          Left = 104
          Top = 161
          Width = 113
          Height = 19
          Ctl3D = False
          EditMask = '999-99-99-99cccccc;1;_'
          MaxLength = 18
          ParentCtl3D = False
          TabOrder = 6
          Text = '   -  -  -        '
          OnEnter = EditNumTelephoneEnter
          OnKeyDown = EditNumTelephoneKeyDown
        end
        object EditAdresse: TEdit
          Left = 104
          Top = 136
          Width = 272
          Height = 19
          Ctl3D = False
          MaxLength = 100
          ParentCtl3D = False
          TabOrder = 7
          OnEnter = EditAdresseEnter
          OnKeyDown = EditAdresseKeyDown
        end
      end
      object PageAutre: TTabSheet
        Caption = 'Autres: '
        ImageIndex = 1
        object Bevel8: TBevel
          Left = 8
          Top = 8
          Width = 369
          Height = 201
        end
        object Label14: TLabel
          Left = 21
          Top = 68
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'Autre 1:'
        end
        object Label15: TLabel
          Left = 21
          Top = 96
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'Autre 2:'
        end
        object Label16: TLabel
          Left = 21
          Top = 120
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'Autre 3:'
        end
        object Label17: TLabel
          Left = 21
          Top = 144
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'Autre 4:'
        end
        object Label18: TLabel
          Left = 23
          Top = 168
          Width = 37
          Height = 13
          Caption = 'Autre 5:'
        end
        object Label24: TLabel
          Left = 24
          Top = 192
          Width = 37
          Height = 13
          Caption = 'Autre 6:'
        end
        object Label25: TLabel
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
        object Label4: TLabel
          Left = 230
          Top = 20
          Width = 68
          Height = 13
          Alignment = taRightJustify
          Caption = 'Code Agence:'
        end
        object EditRIB: TEdit
          Left = 64
          Top = 16
          Width = 145
          Height = 19
          Ctl3D = False
          MaxLength = 20
          ParentCtl3D = False
          TabOrder = 0
          OnExit = EditRIBExit
          OnKeyDown = EditRIBKeyDown
          OnKeyUp = EditRIBKeyUp
        end
        object EditAutre1: TEdit
          Left = 64
          Top = 64
          Width = 273
          Height = 19
          Ctl3D = False
          MaxLength = 100
          ParentCtl3D = False
          TabOrder = 1
          OnEnter = EditAutre1Enter
          OnKeyDown = EditAutre1KeyDown
        end
        object EditAutre2: TEdit
          Left = 65
          Top = 88
          Width = 272
          Height = 19
          Ctl3D = False
          MaxLength = 100
          ParentCtl3D = False
          TabOrder = 2
          OnEnter = EditAutre2Enter
          OnKeyDown = EditAutre2KeyDown
        end
        object EditAutre3: TEdit
          Left = 65
          Top = 112
          Width = 272
          Height = 19
          Ctl3D = False
          MaxLength = 100
          ParentCtl3D = False
          TabOrder = 3
          OnEnter = EditAutre3Enter
          OnKeyDown = EditAutre3KeyDown
        end
        object EditAutre4: TEdit
          Left = 65
          Top = 138
          Width = 272
          Height = 19
          Ctl3D = False
          MaxLength = 100
          ParentCtl3D = False
          TabOrder = 4
          OnEnter = EditAutre4Enter
          OnKeyDown = EditAutre4KeyDown
        end
        object EditAutre5: TEdit
          Left = 65
          Top = 162
          Width = 272
          Height = 19
          Ctl3D = False
          MaxLength = 100
          ParentCtl3D = False
          TabOrder = 5
          OnEnter = EditAutre5Enter
          OnKeyDown = EditAutre5KeyDown
        end
        object EditAutre6: TEdit
          Left = 65
          Top = 186
          Width = 272
          Height = 19
          Ctl3D = False
          MaxLength = 100
          ParentCtl3D = False
          TabOrder = 6
          OnEnter = EditAutre6Enter
          OnKeyDown = EditAutre6KeyDown
        end
        object EditLibelleAgence: TEdit
          Left = 64
          Top = 40
          Width = 305
          Height = 19
          Color = 15461355
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 8
        end
        object TableauAgenceBanque: TStringGrid
          Left = 8
          Top = 64
          Width = 369
          Height = 145
          ColCount = 3
          Ctl3D = False
          RowCount = 2
          ParentCtl3D = False
          TabOrder = 7
          Visible = False
        end
        object EditCodeAgenceBanque: TEdit
          Left = 304
          Top = 16
          Width = 65
          Height = 19
          Ctl3D = False
          MaxLength = 8
          ParentCtl3D = False
          TabOrder = 9
          OnKeyDown = EditCodeAgenceBanqueKeyDown
          OnKeyUp = EditCodeAgenceBanqueKeyUp
        end
      end
    end
  end
  object AfficheSFamille: TPanel
    Left = -72
    Top = 488
    Width = 364
    Height = 472
    BevelInner = bvLowered
    Color = 11268585
    TabOrder = 2
    Visible = False
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
      Left = 8
      Top = 27
      Width = 28
      Height = 13
      Caption = 'Code:'
    end
    object Label75: TLabel
      Left = 112
      Top = 27
      Width = 33
      Height = 13
      Caption = 'D'#233'sig.:'
    end
    object EditRequette: TEdit
      Left = 256
      Top = 24
      Width = 73
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
    end
    object TableauSFamille: TStringGrid
      Left = 8
      Top = 46
      Width = 345
      Height = 423
      Ctl3D = False
      DefaultColWidth = 40
      DefaultRowHeight = 20
      FixedColor = 11268585
      RowCount = 20
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
      ParentCtl3D = False
      TabOrder = 0
      OnKeyDown = TableauSFamilleKeyDown
      ColWidths = (
        40
        50
        226
        2
        2)
    end
    object BitBtn39: TBitBtn
      Left = 336
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
      Left = 40
      Top = 24
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
      Left = 152
      Top = 24
      Width = 177
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnKeyDown = EditRechercheDesigSFamilleKeyDown
      OnKeyPress = EditRechercheDesigSFamilleKeyPress
      OnKeyUp = EditRechercheDesigSFamilleKeyUp
    end
  end
end
