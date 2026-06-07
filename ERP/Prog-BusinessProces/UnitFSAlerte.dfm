object FSAlerte: TFSAlerte
  Left = 160
  Top = 36
  Width = 1045
  Height = 668
  Caption = 'FSAlerte'
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
  object AfficheTableauStockLimite: TPanel
    Left = 0
    Top = 0
    Width = 1025
    Height = 625
    BevelInner = bvLowered
    Color = 8454016
    TabOrder = 0
    object TableauStockLimite: TStringGrid
      Left = 8
      Top = 56
      Width = 1009
      Height = 561
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnClick = TableauStockLimiteClick
    end
    object AfficheInformationStockLimite: TPanel
      Left = 8
      Top = 8
      Width = 1009
      Height = 41
      BevelInner = bvLowered
      TabOrder = 1
    end
    object AfficheOptionPrintFinanceProjets: TPanel
      Left = 819
      Top = 13
      Width = 193
      Height = 31
      BevelInner = bvLowered
      Caption = 'Imprimer'
      Color = 8454143
      TabOrder = 2
      OnClick = AfficheOptionPrintFinanceProjetsClick
      object Bevel32: TBevel
        Left = 8
        Top = 40
        Width = 177
        Height = 169
      end
      object RadioGroup5: TRadioGroup
        Left = 16
        Top = 80
        Width = 161
        Height = 121
        Caption = 'Options d'#39'Impression:'
        TabOrder = 0
      end
      object StaticText2: TStaticText
        Left = 24
        Top = 107
        Width = 105
        Height = 17
        Caption = 'Orientation du papier:'
        TabOrder = 1
      end
      object RBOrientationPapier: TComboBox
        Left = 24
        Top = 128
        Width = 145
        Height = 21
        BevelInner = bvLowered
        BevelKind = bkFlat
        Ctl3D = False
        ItemHeight = 13
        ItemIndex = 0
        ParentCtl3D = False
        TabOrder = 2
        Text = 'Portrait'
        Items.Strings = (
          'Portrait'
          'Paysage'
          'Automatique')
      end
      object RBAjustement: TCheckBox
        Left = 24
        Top = 168
        Width = 113
        Height = 17
        Caption = 'Ajustement !'
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object BitBtn20: TBitBtn
        Left = 16
        Top = 48
        Width = 161
        Height = 25
        Caption = 'Imprimer'
        TabOrder = 4
        OnClick = BitBtn20Click
        Kind = bkHelp
      end
    end
  end
end
