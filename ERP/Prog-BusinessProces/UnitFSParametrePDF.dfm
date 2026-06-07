object FSParametrePDF: TFSParametrePDF
  Left = 371
  Top = 241
  Width = 587
  Height = 122
  Caption = 'Param'#232'tres PDF'
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
  object ImprimanteSelectionner: TLabel
    Left = 56
    Top = 57
    Width = 30
    Height = 13
    Caption = '..........'
  end
  object IndexImprimantePDF: TLabel
    Left = 5
    Top = 57
    Width = 30
    Height = 13
    Alignment = taRightJustify
    Caption = '..........'
  end
  object BitBtn3: TBitBtn
    Left = 10
    Top = 8
    Width = 297
    Height = 25
    Caption = 'Choisir l'#39'imprimante'
    TabOrder = 0
    OnClick = BitBtn3Click
    Kind = bkHelp
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 24
    Top = 32
  end
end
