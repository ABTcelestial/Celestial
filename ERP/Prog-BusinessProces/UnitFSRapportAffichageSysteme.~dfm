object FSRapportAffichageSysteme: TFSRapportAffichageSysteme
  Left = 315
  Top = 199
  Width = 702
  Height = 297
  Caption = 'Rapport'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RapportTraitement: TMemo
    Left = 8
    Top = 8
    Width = 673
    Height = 201
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 8
    Top = 216
    Width = 673
    Height = 33
    TabOrder = 1
    object Pourcentage: TLabel
      Left = 652
      Top = 12
      Width = 14
      Height = 13
      Alignment = taRightJustify
      Caption = '0%'
    end
    object ProgressCDL: TProgressBar
      Left = 8
      Top = 8
      Width = 617
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
  object TimerPourcentage: TTimer
    Enabled = False
    Interval = 10
    OnTimer = TimerPourcentageTimer
    Left = 88
    Top = 16
  end
end
