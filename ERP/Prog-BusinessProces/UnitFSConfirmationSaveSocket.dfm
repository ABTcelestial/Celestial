object FSConfirmationSaveSocket: TFSConfirmationSaveSocket
  Left = 396
  Top = 221
  Width = 399
  Height = 234
  Caption = 'Confirmation'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 5
    Top = 0
    Width = 369
    Height = 147
    Shape = bsBottomLine
  end
  object Label1: TLabel
    Left = 22
    Top = 37
    Width = 336
    Height = 47
    AutoSize = False
    Caption = '*'
    WordWrap = True
  end
  object Label2: TLabel
    Left = 7
    Top = 104
    Width = 40
    Height = 13
    Caption = 'Save As'
  end
  object Label3: TLabel
    Left = 217
    Top = 128
    Width = 89
    Height = 13
    Cursor = crHandPoint
    Caption = 'Double click her to'
    OnDblClick = Label3DblClick
  end
  object Label4: TLabel
    Left = 309
    Top = 128
    Width = 52
    Height = 13
    Cursor = crHandPoint
    Caption = 'BROUSE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SaveTo: TEdit
    Left = 55
    Top = 101
    Width = 306
    Height = 21
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 271
    Top = 157
    Width = 90
    Height = 25
    Caption = '&Accept'
    ModalResult = 1
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 175
    Top = 157
    Width = 90
    Height = 25
    Caption = '&Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object SaveD: TSaveDialog
    Left = 8
    Top = 152
  end
end
