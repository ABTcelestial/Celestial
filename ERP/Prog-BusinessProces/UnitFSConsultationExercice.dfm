object FSConsultationExercice: TFSConsultationExercice
  Left = 273
  Top = 206
  Width = 299
  Height = 95
  Caption = 'Exercice'
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
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 265
    Height = 41
  end
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 101
    Height = 13
    Caption = 'Passage '#224' l'#39'Exercice:'
  end
  object EditExercice: TMaskEdit
    Left = 128
    Top = 16
    Width = 40
    Height = 22
    Ctl3D = False
    EditMask = '!0000;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 4
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    Text = '2000'
    OnKeyDown = EditExerciceKeyDown
  end
  object UpDown1: TUpDown
    Left = 168
    Top = 16
    Width = 17
    Height = 22
    Associate = EditExercice
    Min = 2000
    Max = 9999
    ParentShowHint = False
    Position = 2000
    ShowHint = False
    TabOrder = 1
    Thousands = False
    Wrap = False
  end
  object BitValiderExercice: TBitBtn
    Left = 192
    Top = 16
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Valider'
    ModalResult = 8
    TabOrder = 2
    OnClick = BitValiderExerciceClick
    Glyph.Data = {
      F2010000424DF201000000000000760000002800000024000000130000000100
      0400000000007C01000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
      3333333333388F3333333333000033334224333333333333338338F333333333
      0000333422224333333333333833338F33333333000033422222243333333333
      83333338F3333333000034222A22224333333338F33F33338F33333300003222
      A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
      38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
      2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
      0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
      333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
      33333A2224A2233333333338F338F83300003333333333A2224A333333333333
      8F338F33000033333333333A222433333333333338F338F30000333333333333
      A224333333333333338F38F300003333333333333A223333333333333338F8F3
      000033333333333333A3333333333333333383330000}
    NumGlyphs = 2
  end
end
