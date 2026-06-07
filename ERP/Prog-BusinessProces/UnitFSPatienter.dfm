object FSPatienter: TFSPatienter
  Left = 323
  Top = 242
  Width = 548
  Height = 176
  Caption = 'Patienter SVP !'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 16
    Top = 8
    Width = 465
    Height = 81
    TabOrder = 1
    object RBPossibleAnnuler: TCheckBox
      Left = 8
      Top = 8
      Width = 145
      Height = 17
      Caption = 'RBPossibleAnnuler'
      TabOrder = 0
    end
    object RBChangeNomSiCollision: TCheckBox
      Left = 8
      Top = 24
      Width = 145
      Height = 17
      Caption = 'RBChangeNomSiCollision'
      TabOrder = 1
    end
    object RBSansConfirmation: TCheckBox
      Left = 8
      Top = 40
      Width = 153
      Height = 17
      Caption = 'RBSansConfirmation'
      TabOrder = 2
    end
    object RBSansProgression: TCheckBox
      Left = 8
      Top = 56
      Width = 153
      Height = 17
      Caption = 'RBSansProgression'
      TabOrder = 3
    end
    object EditAdresseSource: TEdit
      Left = 184
      Top = 14
      Width = 273
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
    end
    object EditAdresseCible: TEdit
      Left = 184
      Top = 38
      Width = 273
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
    end
  end
  object AffichePatientez: TPanel
    Left = 2
    Top = 1
    Width = 527
    Height = 96
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
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 4
    Top = 99
    Width = 524
    Height = 33
    TabOrder = 2
    object Pourcentage: TLabel
      Left = 500
      Top = 12
      Width = 14
      Height = 13
      Alignment = taRightJustify
      Caption = '0%'
    end
    object ProgressCDL: TProgressBar
      Left = 8
      Top = 8
      Width = 465
      Height = 17
      Min = 0
      Max = 100
      ParentShowHint = False
      Smooth = True
      Step = 1
      ShowHint = False
      TabOrder = 0
    end
  end
end
