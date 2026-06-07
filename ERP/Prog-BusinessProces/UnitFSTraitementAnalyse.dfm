object FSTraitementAnalyse: TFSTraitementAnalyse
  Left = 18
  Top = 7
  Width = 1286
  Height = 686
  Caption = 'Traitement'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1257
    Height = 641
    ActivePage = TabSheet5
    TabIndex = 4
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = '     Liste Mouvements     '
      object Bevel1: TBevel
        Left = 8
        Top = 8
        Width = 121
        Height = 41
      end
      object TableauListeAppartenanceMouvementTB: TStringGrid
        Left = 8
        Top = 224
        Width = 825
        Height = 377
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
      end
      object BitBtn1: TBitBtn
        Left = 16
        Top = 16
        Width = 105
        Height = 25
        Caption = 'Afficher'
        TabOrder = 1
        OnClick = BitBtn1Click
        Kind = bkAll
      end
      object RBSuspendreTBohr: TCheckBox
        Left = 8
        Top = 56
        Width = 113
        Height = 17
        Caption = 'Suspendre TBohr'
        TabOrder = 2
      end
      object Rapport: TMemo
        Left = 840
        Top = 16
        Width = 401
        Height = 601
        Ctl3D = False
        ParentCtl3D = False
        ScrollBars = ssBoth
        TabOrder = 3
        WantTabs = True
      end
      object TableauMouvement: TStringGrid
        Left = 8
        Top = 80
        Width = 821
        Height = 137
        ColCount = 14
        Ctl3D = False
        FixedColor = 13303754
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goAlwaysShowEditor]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        OnDblClick = TableauMouvementDblClick
        ColWidths = (
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64)
        RowHeights = (
          24
          22
          24
          24
          24)
      end
    end
    object TabSheet2: TTabSheet
      Caption = '   D'#233'tail Mouvements     '
      ImageIndex = 1
      object Bevel2: TBevel
        Left = 8
        Top = 8
        Width = 121
        Height = 41
      end
      object DataAdresse: TLabel
        Left = 152
        Top = 16
        Width = 41
        Height = 13
        Caption = 'Adresse:'
      end
      object TableauDetailMouvement: TStringGrid
        Left = 8
        Top = 224
        Width = 825
        Height = 369
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
      end
      object Memo1: TMemo
        Left = 840
        Top = 12
        Width = 401
        Height = 601
        Ctl3D = False
        ParentCtl3D = False
        ScrollBars = ssBoth
        TabOrder = 1
        WantTabs = True
      end
      object BitBtn2: TBitBtn
        Left = 16
        Top = 16
        Width = 105
        Height = 25
        Caption = 'Afficher'
        TabOrder = 2
        OnClick = BitBtn2Click
        Kind = bkAll
      end
      object CheckBox1: TCheckBox
        Left = 8
        Top = 56
        Width = 113
        Height = 17
        Caption = 'Suspendre TBohr'
        TabOrder = 3
      end
      object TableauTypeMouvement: TStringGrid
        Left = 8
        Top = 80
        Width = 821
        Height = 137
        ColCount = 14
        Ctl3D = False
        FixedColor = 13303754
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goAlwaysShowEditor]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        OnDblClick = TableauTypeMouvementDblClick
        ColWidths = (
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64)
        RowHeights = (
          24
          22
          24
          24
          24)
      end
    end
    object TabSheet3: TTabSheet
      Caption = '     Avis     '
      ImageIndex = 2
      object Bevel3: TBevel
        Left = 8
        Top = 8
        Width = 121
        Height = 41
      end
      object AdresseFAvis: TLabel
        Left = 152
        Top = 16
        Width = 41
        Height = 13
        Caption = 'Adresse:'
      end
      object TableauAvis: TStringGrid
        Left = 8
        Top = 56
        Width = 1241
        Height = 537
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
      end
      object BitBtn3: TBitBtn
        Left = 16
        Top = 16
        Width = 105
        Height = 25
        Caption = 'Afficher'
        TabOrder = 1
        OnClick = BitBtn3Click
        Kind = bkAll
      end
    end
    object TabSheet4: TTabSheet
      Caption = '     Autres     '
      ImageIndex = 3
      object EditFormule: TEdit
        Left = 40
        Top = 32
        Width = 209
        Height = 21
        TabOrder = 0
      end
      object BitCalculer: TBitBtn
        Left = 264
        Top = 32
        Width = 75
        Height = 25
        Caption = 'Calculer'
        TabOrder = 1
        OnClick = BitCalculerClick
        Kind = bkAll
      end
      object EditResultat: TEdit
        Left = 360
        Top = 32
        Width = 209
        Height = 21
        TabOrder = 2
      end
      object TableauData: TStringGrid
        Left = 48
        Top = 80
        Width = 320
        Height = 120
        TabOrder = 3
      end
      object BitBtn4: TBitBtn
        Left = 424
        Top = 96
        Width = 75
        Height = 25
        Caption = 'BitBtn4'
        TabOrder = 4
        OnClick = BitBtn4Click
      end
    end
    object TabSheet5: TTabSheet
      Caption = '     Taille des registres     '
      ImageIndex = 4
      object Label1: TLabel
        Left = 149
        Top = 19
        Width = 54
        Height = 13
        Caption = 'Buffer Size:'
      end
      object EditUniteMesureBufferSize: TLabel
        Left = 269
        Top = 19
        Width = 16
        Height = 13
        Caption = 'Ko.'
      end
      object TableauTailleRegistres: TStringGrid
        Left = 24
        Top = 56
        Width = 641
        Height = 545
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
      end
      object BitAfficherTailleRegistres: TBitBtn
        Left = 24
        Top = 16
        Width = 75
        Height = 25
        Caption = 'Afficher'
        TabOrder = 1
        OnClick = BitAfficherTailleRegistresClick
        Kind = bkAll
      end
      object EditBufferSize: TComboBox
        Left = 208
        Top = 16
        Width = 57
        Height = 21
        BevelInner = bvLowered
        BevelKind = bkFlat
        Ctl3D = False
        ItemHeight = 13
        ItemIndex = 0
        ParentCtl3D = False
        TabOrder = 2
        Text = '64'
        OnChange = EditBufferSizeChange
        Items.Strings = (
          '64'
          '128')
      end
      object AfficheOptionPrint: TPanel
        Left = 464
        Top = 10
        Width = 193
        Height = 271
        BevelInner = bvLowered
        Caption = 'Imprimer'
        Color = 8454143
        TabOrder = 3
        OnClick = AfficheOptionPrintClick
        object Bevel32: TBevel
          Left = 8
          Top = 40
          Width = 177
          Height = 169
        end
        object Bevel4: TBevel
          Left = 8
          Top = 216
          Width = 177
          Height = 49
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
        object BitBtn29: TBitBtn
          Left = 16
          Top = 229
          Width = 161
          Height = 25
          Caption = 'Transfert Excel'
          TabOrder = 5
          OnClick = BitBtn29Click
          Kind = bkHelp
          Margin = 0
        end
      end
    end
  end
end
