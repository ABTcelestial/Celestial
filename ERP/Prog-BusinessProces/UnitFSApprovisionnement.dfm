object FSApprovisionnement: TFSApprovisionnement
  Left = 251
  Top = 88
  Width = 807
  Height = 576
  Caption = 'FSApprovisionnement'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 4
    Top = 3
    Width = 783
    Height = 531
    Color = 12058623
    TabOrder = 0
    object Bevel1: TBevel
      Left = 8
      Top = 7
      Width = 401
      Height = 73
    end
    object Bevel2: TBevel
      Left = 680
      Top = 8
      Width = 89
      Height = 41
    end
    object Label1: TLabel
      Left = 25
      Top = 15
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = 'March'#233':'
    end
    object Label2: TLabel
      Left = 18
      Top = 36
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = 'Structure:'
    end
    object Label3: TLabel
      Left = 21
      Top = 56
      Width = 43
      Height = 13
      Alignment = taRightJustify
      Caption = 'Avenant:'
    end
    object Label5: TLabel
      Left = 440
      Top = 11
      Width = 26
      Height = 13
      Caption = 'Date:'
    end
    object TableauApprovisionnement: TStringGrid
      Left = 8
      Top = 128
      Width = 767
      Height = 393
      ColCount = 9
      Ctl3D = False
      DefaultColWidth = 50
      DefaultRowHeight = 20
      FixedColor = 8454143
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
      ParentCtl3D = False
      ScrollBars = ssVertical
      TabOrder = 0
      OnClick = TableauApprovisionnementClick
      OnContextPopup = TableauApprovisionnementContextPopup
      OnKeyDown = TableauApprovisionnementKeyDown
      OnKeyPress = TableauApprovisionnementKeyPress
      OnKeyUp = TableauApprovisionnementKeyUp
      ColWidths = (
        50
        74
        270
        50
        74
        74
        98
        50
        2)
      RowHeights = (
        20
        20)
    end
    object BitBtn2: TBitBtn
      Left = 688
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Quitter'
      TabOrder = 1
      OnClick = BitBtn2Click
      Kind = bkNo
    end
    object EditNSMarche: TEdit
      Left = 72
      Top = 11
      Width = 33
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
    object EditNStructure: TEdit
      Left = 72
      Top = 32
      Width = 33
      Height = 21
      ReadOnly = True
      TabOrder = 3
    end
    object EditNAvenant: TEdit
      Left = 72
      Top = 53
      Width = 33
      Height = 21
      ReadOnly = True
      TabOrder = 4
    end
    object EditMarche: TEdit
      Left = 104
      Top = 11
      Width = 297
      Height = 21
      ReadOnly = True
      TabOrder = 5
    end
    object EditStructure: TEdit
      Left = 104
      Top = 32
      Width = 297
      Height = 21
      ReadOnly = True
      TabOrder = 6
    end
    object EditAvenant: TEdit
      Left = 104
      Top = 53
      Width = 297
      Height = 21
      ReadOnly = True
      TabOrder = 7
    end
    object EditDateApprovisionnement: TDateTimePicker
      Left = 480
      Top = 8
      Width = 186
      Height = 21
      CalAlignment = dtaLeft
      Date = 39946.3458561111
      Time = 39946.3458561111
      DateFormat = dfLong
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 8
    end
    object AfficheFournisseur: TPanel
      Left = 141
      Top = 160
      Width = 509
      Height = 289
      BevelInner = bvLowered
      Color = clSkyBlue
      TabOrder = 10
      Visible = False
      object Bevel5: TBevel
        Left = 184
        Top = 240
        Width = 137
        Height = 42
      end
      object TableauFournisseur: TStringGrid
        Left = 8
        Top = 7
        Width = 489
        Height = 226
        ColCount = 11
        Ctl3D = False
        DefaultColWidth = 40
        DefaultRowHeight = 20
        RowCount = 20
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
        ParentCtl3D = False
        TabOrder = 0
        OnKeyDown = TableauFournisseurKeyDown
        ColWidths = (
          40
          70
          237
          245
          242
          205
          200
          212
          213
          206
          195)
        RowHeights = (
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20)
      end
      object BitBtn8: TBitBtn
        Left = 216
        Top = 248
        Width = 75
        Height = 25
        TabOrder = 1
        OnClick = BitBtn8Click
        Kind = bkCancel
      end
    end
    object AfficheOptionPrintApprovisionnement: TPanel
      Left = 256
      Top = 176
      Width = 241
      Height = 145
      BevelInner = bvLowered
      Color = 12058623
      TabOrder = 9
      Visible = False
      object RadioGroup1: TRadioGroup
        Left = 16
        Top = 8
        Width = 217
        Height = 97
        Caption = 'Options:'
        TabOrder = 0
      end
      object BitBtn3: TBitBtn
        Left = 32
        Top = 112
        Width = 185
        Height = 25
        Caption = 'Imprimer'
        TabOrder = 1
        OnClick = BitBtn3Click
        Kind = bkHelp
      end
      object RBBonCommande: TRadioButton
        Left = 24
        Top = 40
        Width = 121
        Height = 17
        Caption = 'Bon de Commande.'
        TabOrder = 2
      end
      object RBListeApprovisionnement: TRadioButton
        Left = 24
        Top = 72
        Width = 105
        Height = 17
        Caption = 'Liste des Valeurs.'
        TabOrder = 3
      end
    end
    object AfficheOperationsApp: TPanel
      Left = 520
      Top = 80
      Width = 257
      Height = 129
      Color = 12058623
      TabOrder = 12
      object Bevel3: TBevel
        Left = 8
        Top = 48
        Width = 241
        Height = 105
      end
      object BitBtn4: TBitBtn
        Left = 16
        Top = 53
        Width = 225
        Height = 25
        Caption = 'Liste des Fournisseurs'
        TabOrder = 0
        OnClick = BitBtn4Click
        Kind = bkHelp
      end
      object BitBtn1: TBitBtn
        Left = 16
        Top = 88
        Width = 225
        Height = 25
        Caption = 'Imprimer'
        TabOrder = 1
        OnClick = BitBtn1Click
        Kind = bkHelp
      end
      object BitOption3: TBitBtn
        Left = 16
        Top = 120
        Width = 225
        Height = 26
        Caption = 'Valider le Bon de Commande'
        ModalResult = 1
        TabOrder = 2
        OnClick = BitOption3Click
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333388F3333333333000033334224333333333333
          338338F3333333330000333422224333333333333833338F3333333300003342
          222224333333333383333338F3333333000034222A22224333333338F338F333
          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
          0000333333333A222433333333333338F338F33300003333333333A222433333
          333333338F338F33000033333333333A222433333333333338F338F300003333
          33333333A222433333333333338F338F00003333333333333A22433333333333
          3338F38F000033333333333333A223333333333333338F830000333333333333
          333A333333333333333338330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
      object BitBtn5: TBitBtn
        Left = 8
        Top = 8
        Width = 241
        Height = 25
        Caption = 'Op'#233'rations'
        TabOrder = 3
        OnClick = BitBtn5Click
      end
    end
    object TableauCommandeFornisseurs: TStringGrid
      Left = 8
      Top = 80
      Width = 505
      Height = 43
      ColCount = 4
      Ctl3D = False
      DefaultColWidth = 70
      DefaultRowHeight = 20
      RowCount = 30
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
      ParentCtl3D = False
      TabOrder = 11
      OnClick = TableauCommandeFornisseursClick
      OnDblClick = TableauCommandeFornisseursDblClick
      ColWidths = (
        70
        70
        70
        272)
    end
    object BitBtn6: TBitBtn
      Left = 10
      Top = 81
      Width = 69
      Height = 22
      TabOrder = 13
      OnClick = BitBtn6Click
      Kind = bkHelp
    end
  end
end
