object FSFacturationCommerciales: TFSFacturationCommerciales
  Left = 1
  Top = 1
  Width = 1366
  Height = 727
  Caption = 'FSFacturationCommerciales'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid1: TStringGrid
    Left = 8
    Top = 56
    Width = 1329
    Height = 625
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 417
    Height = 41
    Caption = 'Liste des factures'
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 280
    Top = 136
    Width = 745
    Height = 417
    BevelInner = bvLowered
    Color = 8454143
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 19
      Width = 26
      Height = 13
      Caption = 'Date:'
    end
    object Label2: TLabel
      Left = 16
      Top = 51
      Width = 29
      Height = 13
      Caption = 'Client:'
    end
    object Edit1: TEdit
      Left = 88
      Top = 48
      Width = 81
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
    end
    object MaskEdit1: TMaskEdit
      Left = 88
      Top = 16
      Width = 81
      Height = 19
      BevelInner = bvNone
      BevelOuter = bvNone
      BevelKind = bkFlat
      Ctl3D = False
      EditMask = '!99/99/9999;1;_'
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 1
      Text = '  /  /    '
    end
    object Edit2: TEdit
      Left = 168
      Top = 48
      Width = 273
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
    end
    object DateTimePicker1: TDateTimePicker
      Left = 176
      Top = 16
      Width = 186
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      BevelKind = bkFlat
      CalAlignment = dtaLeft
      Date = 42376.2776334259
      Time = 42376.2776334259
      DateFormat = dfLong
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 3
    end
  end
  object Panel3: TPanel
    Left = 992
    Top = 112
    Width = 185
    Height = 41
    Caption = 'Panel3'
    TabOrder = 3
  end
end
