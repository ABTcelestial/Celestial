object FSPublicationReseaux: TFSPublicationReseaux
  Left = 352
  Top = 216
  Width = 642
  Height = 96
  Caption = 'Publication r'#233'seaux'
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
  object EditJourPublication: TEdit
    Left = 96
    Top = 16
    Width = 121
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 2
  end
  object EditHeurePublication: TEdit
    Left = 216
    Top = 16
    Width = 121
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 3
  end
  object EditJourPublier: TEdit
    Left = 336
    Top = 16
    Width = 121
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 4
  end
  object EditHeurePublier: TEdit
    Left = 456
    Top = 16
    Width = 121
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 5
  end
  object RBApplicationTerminate: TCheckBox
    Left = 24
    Top = 24
    Width = 97
    Height = 17
    Caption = 'application.Terminate'
    TabOrder = 1
  end
  object AfficheMessage: TPanel
    Left = 8
    Top = 7
    Width = 609
    Height = 42
    BevelInner = bvLowered
    BiDiMode = bdRightToLeftReadingOnly
    Caption = 'Patientez SVP ! Publication r'#233'seaux !'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    object RBPublicationActive: TCheckBox
      Left = 8
      Top = 16
      Width = 33
      Height = 17
      Caption = '...'
      Enabled = False
      TabOrder = 0
    end
  end
  object TimerPublicationReseaux: TTimer
    Enabled = False
    Interval = 150
    OnTimer = TimerPublicationReseauxTimer
    Left = 576
    Top = 16
  end
end
