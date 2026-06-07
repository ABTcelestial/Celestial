object FSAuthentificationreseaux: TFSAuthentificationreseaux
  Left = 316
  Top = 262
  Width = 640
  Height = 97
  BorderIcons = []
  Caption = 'Authentification r'#233'seaux'
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
  object EditNomMachine: TEdit
    Left = 24
    Top = 8
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
  object RBActiveControleTableReseaux: TCheckBox
    Left = 168
    Top = 8
    Width = 97
    Height = 17
    Caption = 'RBActiveControleTableReseaux'
    TabOrder = 2
  end
  object RBOKExisteMachineSousReseaux: TCheckBox
    Left = 24
    Top = 24
    Width = 97
    Height = 17
    Caption = 'RBOKExisteMachineSousReseaux'
    TabOrder = 3
  end
  object AfficheMessage: TPanel
    Left = 8
    Top = 7
    Width = 609
    Height = 42
    BevelInner = bvLowered
    BiDiMode = bdRightToLeftReadingOnly
    Caption = 'Authentification r'#233'seaux'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
  end
  object TimerShowmessage: TTimer
    Enabled = False
    Interval = 150
    OnTimer = TimerShowmessageTimer
    Left = 576
    Top = 16
  end
end
