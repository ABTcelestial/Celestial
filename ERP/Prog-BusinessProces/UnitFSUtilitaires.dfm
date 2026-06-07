object FSUtilitaires: TFSUtilitaires
  Left = 332
  Top = 120
  Width = 749
  Height = 376
  Caption = 'FSUtilitaires'
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
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 713
    Height = 321
    ActivePage = PageChiffreEnLettre
    TabIndex = 0
    TabOrder = 0
    object PageChiffreEnLettre: TTabSheet
      Caption = 'Chiffres en Lettres'
      object Bevel1: TBevel
        Left = 536
        Top = 8
        Width = 161
        Height = 41
      end
      object Bevel2: TBevel
        Left = 536
        Top = 56
        Width = 161
        Height = 41
      end
      object Panel2: TPanel
        Left = 8
        Top = 8
        Width = 521
        Height = 65
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 35
          Width = 100
          Height = 13
          Caption = 'Chiffre en num'#233'rique:'
        end
        object ChiffreNumerique: TLabel
          Left = 368
          Top = 35
          Width = 30
          Height = 13
          Caption = '..........'
        end
        object EditChiffre: TMemo
          Left = 112
          Top = 16
          Width = 249
          Height = 33
          TabStop = False
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnEnter = EditChiffreEnter
          OnKeyDown = EditChiffreKeyDown
          OnKeyPress = EditChiffreKeyPress
          OnKeyUp = EditChiffreKeyUp
        end
      end
      object Panel3: TPanel
        Left = 8
        Top = 80
        Width = 521
        Height = 209
        TabOrder = 1
        object Label2: TLabel
          Left = 8
          Top = 24
          Width = 74
          Height = 13
          Caption = 'Chiffre en lettre:'
        end
        object TextChiffreenlettre: TMemo
          Left = 8
          Top = 48
          Width = 505
          Height = 153
          Color = clWhite
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Lines.Strings = (
            '')
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          OnEnter = TextChiffreenlettreEnter
        end
      end
      object BitBtn1: TBitBtn
        Left = 544
        Top = 16
        Width = 145
        Height = 25
        Caption = 'Copier'
        TabOrder = 2
        OnClick = BitBtn1Click
        Kind = bkOK
      end
      object BitBtn2: TBitBtn
        Left = 544
        Top = 64
        Width = 145
        Height = 25
        Caption = 'Coller'
        TabOrder = 3
        OnClick = BitBtn2Click
        Kind = bkAll
      end
      object EditSelection: TEdit
        Left = 536
        Top = 264
        Width = 161
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 4
      end
      object RadioGroup1: TRadioGroup
        Left = 536
        Top = 112
        Width = 161
        Height = 97
        Caption = 'Format de lecture :'
        TabOrder = 5
      end
      object RBLectureMonetaire: TRadioButton
        Left = 544
        Top = 144
        Width = 113
        Height = 17
        Caption = 'Lecture mon'#233'taire'
        Checked = True
        TabOrder = 6
        TabStop = True
        OnClick = RBLectureMonetaireClick
      end
      object RBLectureNumerique: TRadioButton
        Left = 544
        Top = 176
        Width = 113
        Height = 17
        Caption = 'Lecture num'#233'rique'
        TabOrder = 7
        OnClick = RBLectureNumeriqueClick
      end
    end
    object TabSheet2: TTabSheet
      ImageIndex = 1
      object Label3: TLabel
        Left = 8
        Top = 8
        Width = 130
        Height = 13
        Caption = 'Pointeurs chiffres en lettres:'
      end
      object TableauPointeurChiffresEnLettres: TStringGrid
        Left = 8
        Top = 32
        Width = 689
        Height = 74
        ColCount = 19
        Ctl3D = False
        RowCount = 2
        ParentCtl3D = False
        TabOrder = 0
      end
    end
  end
end
