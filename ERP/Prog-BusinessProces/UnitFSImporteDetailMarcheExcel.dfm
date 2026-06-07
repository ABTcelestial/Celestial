object FSImporteDetailMarcheExcel: TFSImporteDetailMarcheExcel
  Left = 2
  Top = 4
  Width = 1364
  Height = 734
  Caption = 'FSImporteDetailMarcheExcel'
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
  object Panel4: TPanel
    Left = 0
    Top = 84
    Width = 1329
    Height = 597
    Caption = 'Panel4'
    TabOrder = 0
    object Bevel1: TBevel
      Left = 504
      Top = 8
      Width = 185
      Height = 41
    end
    object Bevel3: TBevel
      Left = 8
      Top = 8
      Width = 297
      Height = 41
    end
    object Bevel4: TBevel
      Left = 312
      Top = 8
      Width = 185
      Height = 41
    end
    object Label3: TLabel
      Left = 1152
      Top = 19
      Width = 104
      Height = 13
      Caption = 'Largeur Max Colonne:'
    end
    object Bevel8: TBevel
      Left = 696
      Top = 8
      Width = 209
      Height = 41
    end
    object TableauTransfert: TStringGrid
      Left = 864
      Top = 320
      Width = 457
      Height = 273
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 8
    end
    object TableauDonnees: TStringGrid
      Left = 8
      Top = 112
      Width = 849
      Height = 481
      Ctl3D = False
      DefaultColWidth = 60
      FixedCols = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing]
      ParentCtl3D = False
      TabOrder = 0
      OnDblClick = TableauDonneesDblClick
    end
    object BitBtn16: TBitBtn
      Left = 512
      Top = 16
      Width = 169
      Height = 25
      Caption = 'Actualiser Excel!'
      TabOrder = 1
      OnClick = BitBtn16Click
      Kind = bkHelp
    end
    object BitBtn15: TBitBtn
      Left = 320
      Top = 16
      Width = 169
      Height = 25
      Caption = 'Fermer Excel'
      TabOrder = 2
      OnClick = BitBtn15Click
      Kind = bkNo
    end
    object BitBtn17: TBitBtn
      Left = 216
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Actualiser !'
      TabOrder = 3
      OnClick = BitBtn17Click
    end
    object EditColWidths: TEdit
      Left = 1264
      Top = 16
      Width = 33
      Height = 19
      Color = clBtnFace
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      Text = '500'
    end
    object UpDown5: TUpDown
      Left = 1297
      Top = 16
      Width = 16
      Height = 19
      Associate = EditColWidths
      Min = 1
      Max = 1000
      Position = 500
      TabOrder = 5
      Wrap = False
    end
    object TableauDetailMarche: TStringGrid
      Left = 8
      Top = 56
      Width = 1313
      Height = 52
      Ctl3D = False
      FixedCols = 0
      ParentCtl3D = False
      TabOrder = 6
      OnDblClick = TableauDetailMarcheDblClick
    end
    object EditEquivalenceColonne: TEdit
      Left = 1032
      Top = 16
      Width = 33
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 7
    end
    object TableauSelectionStructure: TStringGrid
      Left = 864
      Top = 111
      Width = 457
      Height = 202
      Ctl3D = False
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
      ParentCtl3D = False
      TabOrder = 9
      OnClick = TableauSelectionStructureClick
      OnDblClick = TableauSelectionStructureDblClick
      RowHeights = (
        24
        24)
    end
    object EditEquivalenceLigne: TEdit
      Left = 1064
      Top = 16
      Width = 33
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 10
    end
    object BitBtn3: TBitBtn
      Left = 704
      Top = 16
      Width = 193
      Height = 25
      Caption = 'Correspondance des rubriques !'
      TabOrder = 11
      OnClick = BitBtn3Click
      Kind = bkHelp
    end
    object EditRBegin: TEdit
      Left = 16
      Top = 19
      Width = 33
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 12
      Text = '1'
    end
    object EditREnd: TEdit
      Left = 48
      Top = 19
      Width = 33
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 13
      Text = '1'
    end
    object UpDown1: TUpDown
      Left = 81
      Top = 19
      Width = 16
      Height = 19
      Associate = EditREnd
      Min = 0
      Max = 1000
      Position = 1
      TabOrder = 14
      Wrap = False
    end
    object EditCBegin: TEdit
      Left = 120
      Top = 19
      Width = 33
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 15
      Text = '1'
    end
    object EditCEnd: TEdit
      Left = 152
      Top = 19
      Width = 33
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 16
      Text = '1'
    end
    object UpDown2: TUpDown
      Left = 185
      Top = 19
      Width = 16
      Height = 19
      Associate = EditCEnd
      Min = 0
      Max = 1000
      Position = 1
      TabOrder = 17
      Wrap = False
    end
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 777
    Height = 73
    BevelInner = bvLowered
    TabOrder = 1
    object Bevel5: TBevel
      Left = 8
      Top = 8
      Width = 185
      Height = 57
    end
    object Label1: TLabel
      Left = 16
      Top = 20
      Width = 95
      Height = 13
      Caption = '1er Ligne '#224' charger:'
    end
    object Label2: TLabel
      Left = 16
      Top = 44
      Width = 108
      Height = 13
      Caption = '1er Colonne '#224' charger:'
    end
    object Bevel6: TBevel
      Left = 584
      Top = 8
      Width = 185
      Height = 41
    end
    object Bevel7: TBevel
      Left = 392
      Top = 8
      Width = 185
      Height = 41
    end
    object Bevel2: TBevel
      Left = 200
      Top = 8
      Width = 185
      Height = 41
    end
    object Bevel9: TBevel
      Left = 200
      Top = 56
      Width = 569
      Height = 9
    end
    object EditCBeginIn: TEdit
      Left = 128
      Top = 40
      Width = 41
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      Text = '1'
    end
    object EditRBeginIn: TEdit
      Left = 128
      Top = 16
      Width = 41
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      Text = '1'
    end
    object UpDown3: TUpDown
      Left = 169
      Top = 16
      Width = 16
      Height = 19
      Associate = EditRBeginIn
      Min = 0
      Max = 1000
      Position = 1
      TabOrder = 2
      Wrap = False
    end
    object UpDown4: TUpDown
      Left = 169
      Top = 40
      Width = 16
      Height = 19
      Associate = EditCBeginIn
      Min = 0
      Max = 1000
      Position = 1
      TabOrder = 3
      Wrap = False
    end
    object BitValiderTransfert: TBitBtn
      Left = 592
      Top = 16
      Width = 169
      Height = 25
      Caption = 'Valider le transfert'
      Enabled = False
      TabOrder = 4
      OnClick = BitValiderTransfertClick
      Kind = bkAll
    end
    object BitChargerExcel: TBitBtn
      Left = 208
      Top = 16
      Width = 169
      Height = 25
      Caption = 'Charger le fichier Excel !'
      TabOrder = 5
      OnClick = BitChargerExcelClick
      Kind = bkAll
    end
    object BitPreparerTransfert: TBitBtn
      Left = 400
      Top = 16
      Width = 169
      Height = 25
      Caption = 'Pr'#233'parer le transfert'
      Enabled = False
      TabOrder = 6
      OnClick = BitPreparerTransfertClick
      Kind = bkHelp
    end
  end
  object OuvrireFichier: TOpenDialog
    Left = 360
    Top = 40
  end
end
