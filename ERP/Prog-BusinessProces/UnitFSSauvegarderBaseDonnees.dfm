object FSSauvegarderBaseDonnees: TFSSauvegarderBaseDonnees
  Left = 107
  Top = 81
  Width = 1101
  Height = 485
  Caption = 'FSSauvegarderBaseDonnees'
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
  object AfficheCibleSauvegarde: TPanel
    Left = 8
    Top = 8
    Width = 1073
    Height = 433
    TabOrder = 0
    object Bevel1: TBevel
      Left = 8
      Top = 8
      Width = 513
      Height = 41
    end
    object Label5: TLabel
      Left = 16
      Top = 21
      Width = 26
      Height = 13
      Caption = 'Cible:'
    end
    object Bevel2: TBevel
      Left = 528
      Top = 8
      Width = 137
      Height = 41
    end
    object Bevel3: TBevel
      Left = 880
      Top = 8
      Width = 185
      Height = 41
    end
    object EditCible: TEdit
      Left = 48
      Top = 19
      Width = 465
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 536
      Top = 16
      Width = 121
      Height = 25
      Caption = 'Valider'
      TabOrder = 1
      OnClick = BitBtn1Click
      Kind = bkAll
    end
    object Cible: TShellListView
      Left = 528
      Top = 56
      Width = 537
      Height = 369
      ObjectTypes = [otFolders, otNonFolders]
      Root = 'rfDesktop'
      ShellTreeView = ListeCible
      Sorted = True
      Ctl3D = False
      ReadOnly = False
      HideSelection = False
      OnMouseUp = CibleMouseUp
      TabOrder = 2
      ViewStyle = vsReport
    end
    object ListeCible: TShellTreeView
      Left = 8
      Top = 56
      Width = 513
      Height = 369
      ObjectTypes = [otFolders]
      Root = 'rfDesktop'
      ShellListView = Cible
      UseShellImages = True
      AutoRefresh = True
      Ctl3d = False
      Indent = 19
      ParentColor = False
      ParentCtl3d = False
      RightClickSelect = True
      ShowRoot = False
      TabOrder = 3
      OnMouseUp = ListeCibleMouseUp
    end
    object BitBtn2: TBitBtn
      Left = 888
      Top = 16
      Width = 171
      Height = 25
      Caption = 'Chercher un emplacement'
      TabOrder = 4
      OnClick = BitBtn2Click
      Kind = bkHelp
    end
    object EditTypeRequette: TEdit
      Left = 792
      Top = 8
      Width = 81
      Height = 19
      Color = clBtnFace
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14671839
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 707
    Top = 21
  end
end
