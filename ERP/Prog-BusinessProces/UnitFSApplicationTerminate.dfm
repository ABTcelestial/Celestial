object FSApplicationTerminate: TFSApplicationTerminate
  Left = 241
  Top = 256
  Width = 870
  Height = 109
  BorderIcons = []
  Caption = 'FSApplicationTerminate'
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
  object AfficheApplicationTerminate: TPanel
    Left = 8
    Top = 8
    Width = 841
    Height = 57
    BevelInner = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object EditApplicationTerminate: TEdit
      Left = 784
      Top = 16
      Width = 41
      Height = 22
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object BitOK: TBitBtn
      Left = 688
      Top = 8
      Width = 147
      Height = 41
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitOKClick
      Kind = bkOK
    end
    object BitNon: TBitBtn
      Left = 6
      Top = 8
      Width = 147
      Height = 41
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitNonClick
      Kind = bkNo
    end
    object RBCodeFondateurParDefaut: TCheckBox
      Left = 664
      Top = 24
      Width = 17
      Height = 17
      Caption = 'Code Fondateur Par D'#233'faut'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
end
