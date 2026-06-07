object FSAttente: TFSAttente
  Left = 198
  Top = 124
  Width = 490
  Height = 111
  Caption = 'FSAttente'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object AffichePatientez: TPanel
    Left = 0
    Top = 0
    Width = 471
    Height = 70
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
  object TimerControleFormulesEtat: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerControleFormulesEtatTimer
    Left = 416
    Top = 24
  end
end
