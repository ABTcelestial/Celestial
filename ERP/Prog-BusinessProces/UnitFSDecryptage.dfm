object FSDecryptage: TFSDecryptage
  Left = 269
  Top = 151
  Width = 863
  Height = 296
  Caption = 'D'#233'cryptage'
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
  object Bevel3: TBevel
    Left = 704
    Top = 3
    Width = 129
    Height = 30
  end
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 569
    Height = 81
  end
  object Label1: TLabel
    Left = 17
    Top = 21
    Width = 64
    Height = 13
    Caption = 'Code Crypt'#233' :'
  end
  object Label2: TLabel
    Left = 16
    Top = 58
    Width = 75
    Height = 13
    Caption = 'Code d'#233'crypt'#233' :'
  end
  object Label3: TLabel
    Left = 737
    Top = 11
    Width = 55
    Height = 13
    Caption = 'Pr'#233'quence:'
  end
  object Bevel2: TBevel
    Left = 584
    Top = 8
    Width = 113
    Height = 81
  end
  object EditCodeCrypter: TEdit
    Left = 96
    Top = 19
    Width = 473
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    OnEnter = EditCodeCrypterEnter
  end
  object EditCodeDecrypter: TEdit
    Left = 96
    Top = 56
    Width = 473
    Height = 19
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    OnEnter = EditCodeDecrypterEnter
  end
  object BitBtn1: TBitBtn
    Left = 592
    Top = 16
    Width = 97
    Height = 25
    Caption = 'D'#233'crypter'
    TabOrder = 2
    OnClick = BitBtn1Click
    Kind = bkHelp
  end
  object BitBtn2: TBitBtn
    Left = 592
    Top = 56
    Width = 97
    Height = 25
    Caption = 'Crypter'
    TabOrder = 3
    OnClick = BitBtn2Click
    Kind = bkHelp
  end
  object EditFrequence: TEdit
    Left = 800
    Top = 8
    Width = 25
    Height = 19
    Ctl3D = False
    MaxLength = 2
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 4
  end
  object Panel5: TPanel
    Left = 8
    Top = 94
    Width = 833
    Height = 155
    BevelInner = bvLowered
    TabOrder = 5
    object Bevel4: TBevel
      Left = 8
      Top = 8
      Width = 817
      Height = 137
    end
    object Label11: TLabel
      Left = 16
      Top = 24
      Width = 116
      Height = 13
      Caption = 'Nom du r'#233'pertoire racine'
    end
    object Label12: TLabel
      Left = 16
      Top = 48
      Width = 133
      Height = 13
      Caption = 'Nom du  Volume (du disque)'
    end
    object LabelNomVolume: TLabel
      Left = 192
      Top = 48
      Width = 83
      Height = 13
      Caption = 'LabelNomVolume'
    end
    object Label13: TLabel
      Left = 16
      Top = 72
      Width = 163
      Height = 13
      Caption = 'Longueur maxi des noms de fichier'
    end
    object LabelLongueurMaxiNomFichier: TLabel
      Left = 192
      Top = 72
      Width = 146
      Height = 13
      Caption = 'LabelLongueurMaxiNomFichier'
    end
    object LabelNumSerie: TLabel
      Left = 192
      Top = 96
      Width = 52
      Height = 13
      Caption = 'N'#176' de s'#233'rie'
    end
    object Label14: TLabel
      Left = 16
      Top = 96
      Width = 128
      Height = 13
      Caption = 'Num'#233'ro de s'#233'rie du Disque'
    end
    object Label15: TLabel
      Left = 16
      Top = 120
      Width = 97
      Height = 13
      Caption = 'Syst'#232'me de fichiers :'
    end
    object LabelSystemeDeFichier: TLabel
      Left = 192
      Top = 120
      Width = 111
      Height = 13
      Caption = 'LabelSystemeDeFichier'
    end
    object Label4: TLabel
      Left = 528
      Top = 19
      Width = 138
      Height = 13
      Caption = 'S'#233'lectionner un autre disque:'
    end
    object EditNomRepertoireRacine: TEdit
      Left = 192
      Top = 18
      Width = 145
      Height = 19
      Color = clBtnFace
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
      Text = 'C:\'
    end
    object EditSelectDisque: TDriveComboBox
      Left = 672
      Top = 16
      Width = 145
      Height = 19
      BevelInner = bvNone
      BevelKind = bkFlat
      Ctl3D = False
      ImeName = 'C:\'
      ParentCtl3D = False
      TabOrder = 1
      TextCase = tcUpperCase
      OnChange = EditSelectDisqueChange
    end
  end
end
