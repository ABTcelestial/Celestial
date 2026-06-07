object FSAccueilUtilisateurs: TFSAccueilUtilisateurs
  Left = 387
  Top = 92
  Width = 663
  Height = 518
  BorderIcons = []
  Caption = 'Accueil Utilisateurs'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 104
    Width = 153
    Height = 42
  end
  object Bevel3: TBevel
    Left = 240
    Top = 104
    Width = 169
    Height = 42
  end
  object Bevel4: TBevel
    Left = 168
    Top = 104
    Width = 65
    Height = 42
  end
  object Bevel5: TBevel
    Left = 488
    Top = 104
    Width = 153
    Height = 42
  end
  object Bevel6: TBevel
    Left = 416
    Top = 104
    Width = 65
    Height = 42
  end
  object EditCodeFondateurParDefaut: TEdit
    Left = 296
    Top = 114
    Width = 41
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 6
    OnKeyUp = EditCodeFondateurParDefautKeyUp
  end
  object BitOK: TBitBtn
    Left = 16
    Top = 112
    Width = 137
    Height = 25
    TabOrder = 0
    OnClick = BitOKClick
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 496
    Top = 112
    Width = 139
    Height = 25
    Caption = 'Quitter'
    ModalResult = 7
    TabOrder = 1
    OnClick = BitBtn2Click
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
  object AfficheUtilisateur: TPanel
    Left = 8
    Top = 8
    Width = 633
    Height = 41
    BevelInner = bvLowered
    Color = 11468799
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object AfficheFonction: TPanel
    Left = 7
    Top = 56
    Width = 634
    Height = 41
    Alignment = taLeftJustify
    BevelInner = bvLowered
    Color = 11468799
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object AfficheAjout: TPanel
    Left = 8
    Top = 152
    Width = 633
    Height = 321
    BevelInner = bvLowered
    TabOrder = 4
    object Bevel2: TBevel
      Left = 8
      Top = 8
      Width = 617
      Height = 81
    end
    object Label1: TLabel
      Left = 24
      Top = 44
      Width = 77
      Height = 13
      Caption = 'Code Utilisateur:'
    end
    object Label2: TLabel
      Left = 16
      Top = 68
      Width = 88
      Height = 13
      Caption = 'Code Poste Menu:'
    end
    object Label3: TLabel
      Left = 40
      Top = 20
      Width = 58
      Height = 13
      Caption = 'Num Acc'#233's:'
    end
    object EditCodeUtilisateur: TEdit
      Left = 112
      Top = 38
      Width = 185
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
    object EditCodePosteMenu: TEdit
      Left = 112
      Top = 62
      Width = 185
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object BitValiderAjout: TBitBtn
      Left = 320
      Top = 16
      Width = 299
      Height = 65
      Caption = 'Valider l'#39'Ajout !'
      TabOrder = 2
      OnClick = BitValiderAjoutClick
      Kind = bkAll
    end
    object EditNumeroAccesNewAcces: TEdit
      Left = 112
      Top = 16
      Width = 49
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object Panel2: TPanel
      Left = 8
      Top = 96
      Width = 305
      Height = 68
      BevelInner = bvLowered
      Color = 8454143
      TabOrder = 4
      object Bevel9: TBevel
        Left = 104
        Top = 8
        Width = 193
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
    object Panel3: TPanel
      Left = 320
      Top = 97
      Width = 305
      Height = 68
      BevelInner = bvLowered
      Color = 8454143
      TabOrder = 5
      object Bevel10: TBevel
        Left = 104
        Top = 8
        Width = 193
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
    object Panel4: TPanel
      Left = 8
      Top = 170
      Width = 305
      Height = 68
      BevelInner = bvLowered
      Color = 8454143
      TabOrder = 6
      object Bevel14: TBevel
        Left = 104
        Top = 8
        Width = 193
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
    object Panel5: TPanel
      Left = 320
      Top = 171
      Width = 305
      Height = 68
      BevelInner = bvLowered
      Color = 8454143
      TabOrder = 7
      object Bevel15: TBevel
        Left = 104
        Top = 8
        Width = 193
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
    object Panel6: TPanel
      Left = 8
      Top = 245
      Width = 305
      Height = 68
      BevelInner = bvLowered
      Color = 8454143
      TabOrder = 8
      object Bevel16: TBevel
        Left = 104
        Top = 8
        Width = 193
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
    object Panel1: TPanel
      Left = 320
      Top = 248
      Width = 305
      Height = 65
      BevelInner = bvLowered
      Color = 8454143
      TabOrder = 9
      object EditOpenForme: TEdit
        Left = 16
        Top = 24
        Width = 281
        Height = 19
        Color = clSilver
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
    end
  end
  object BitAjouter: TBitBtn
    Left = 248
    Top = 112
    Width = 153
    Height = 25
    Caption = 'Ajouter'
    TabOrder = 5
    OnClick = BitAjouterClick
    Kind = bkHelp
  end
end
