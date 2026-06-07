object FSShowmessage: TFSShowmessage
  Left = 155
  Top = 208
  AutoScroll = False
  Caption = 'Attention !'
  ClientHeight = 152
  ClientWidth = 865
  Color = clBtnFace
  DefaultMonitor = dmPrimary
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PrintScale = poNone
  WindowState = wsMinimized
  OnClose = FormClose
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AfficheMessage: TPanel
    Left = 8
    Top = 7
    Width = 849
    Height = 82
    BevelInner = bvLowered
    BiDiMode = bdRightToLeftReadingOnly
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
  object AfficheBitAfficheMessage: TPanel
    Left = 368
    Top = 96
    Width = 137
    Height = 49
    BevelInner = bvLowered
    TabOrder = 1
    object Bevel22: TBevel
      Left = 8
      Top = 7
      Width = 121
      Height = 34
    end
    object BitAfficheMessage: TBitBtn
      Left = 14
      Top = 11
      Width = 110
      Height = 25
      Caption = 'OK'
      TabOrder = 0
      OnClick = BitAfficheMessageClick
      Kind = bkAll
    end
  end
  object EditNbrExecutionTimer: TEdit
    Left = 832
    Top = 96
    Width = 25
    Height = 19
    Color = clBtnFace
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 15329769
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object RBAutoClosed: TCheckBox
    Left = 776
    Top = 120
    Width = 81
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Auto-Closed'
    Checked = True
    State = cbChecked
    TabOrder = 3
  end
  object TimerShowmessage: TTimer
    Enabled = False
    Interval = 500
    OnTimer = TimerShowmessageTimer
    Left = 576
    Top = 16
  end
end
