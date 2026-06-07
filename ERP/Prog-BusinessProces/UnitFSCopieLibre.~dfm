object FSCopieLibre: TFSCopieLibre
  Left = 103
  Top = 21
  Width = 1151
  Height = 636
  Caption = 'FSCopieLibre'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 616
    Top = 8
    Width = 513
    Height = 41
  end
  object Label5: TLabel
    Left = 16
    Top = 21
    Width = 34
    Height = 13
    Caption = 'Source'
  end
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 513
    Height = 41
  end
  object Label1: TLabel
    Left = 624
    Top = 21
    Width = 26
    Height = 13
    Caption = 'Cible:'
  end
  object EditSource: TEdit
    Left = 56
    Top = 19
    Width = 457
    Height = 19
    Color = clSilver
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 0
  end
  object ListeSource: TShellTreeView
    Left = 8
    Top = 56
    Width = 513
    Height = 233
    ObjectTypes = [otFolders]
    Root = 'rfDesktop'
    ShellListView = DetailSource
    UseShellImages = True
    AutoRefresh = True
    Ctl3d = False
    Indent = 19
    ParentColor = False
    ParentCtl3d = False
    RightClickSelect = True
    ShowRoot = False
    TabOrder = 1
    OnMouseUp = ListeSourceMouseUp
  end
  object EditCible: TEdit
    Left = 656
    Top = 19
    Width = 465
    Height = 19
    Color = clSilver
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 2
  end
  object Cible: TShellTreeView
    Left = 616
    Top = 56
    Width = 513
    Height = 233
    ObjectTypes = [otFolders]
    Root = 'rfDesktop'
    ShellListView = DetailCible
    UseShellImages = True
    AutoRefresh = True
    Ctl3d = False
    Indent = 19
    ParentColor = False
    ParentCtl3d = False
    RightClickSelect = True
    ShowRoot = False
    TabOrder = 3
    OnMouseUp = CibleMouseUp
  end
  object Panel1: TPanel
    Left = 528
    Top = 8
    Width = 81
    Height = 585
    Caption = '====>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object BitBtn1: TBitBtn
      Left = 8
      Top = 8
      Width = 65
      Height = 105
      Caption = 'Valider'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
      Kind = bkAll
    end
  end
  object DetailSource: TShellListView
    Left = 8
    Top = 296
    Width = 513
    Height = 297
    ObjectTypes = [otFolders, otNonFolders]
    Root = 'rfDesktop'
    ShellTreeView = ListeSource
    Sorted = True
    Ctl3D = False
    ReadOnly = False
    HideSelection = False
    OnMouseUp = DetailSourceMouseUp
    TabOrder = 5
    ViewStyle = vsReport
  end
  object DetailCible: TShellListView
    Left = 616
    Top = 293
    Width = 513
    Height = 297
    ObjectTypes = [otFolders, otNonFolders]
    Root = 'rfDesktop'
    ShellTreeView = Cible
    Sorted = True
    Ctl3D = False
    ReadOnly = False
    HideSelection = False
    OnMouseUp = DetailSourceMouseUp
    TabOrder = 6
    ViewStyle = vsReport
  end
end
