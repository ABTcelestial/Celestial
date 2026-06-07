object FSCompleteFormulesEtat: TFSCompleteFormulesEtat
  Left = 198
  Top = 124
  Width = 809
  Height = 423
  Caption = 'Compl'#233'ter les Formules des Etats suivant:'
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
    Left = 632
    Top = 96
    Width = 153
    Height = 65
  end
  object Bevel2: TBevel
    Left = 631
    Top = 168
    Width = 153
    Height = 89
  end
  object Bevel3: TBevel
    Left = 631
    Top = 264
    Width = 153
    Height = 113
  end
  object Bevel4: TBevel
    Left = 630
    Top = 48
    Width = 153
    Height = 41
  end
  object Label8: TLabel
    Left = 637
    Top = 275
    Width = 79
    Height = 13
    Caption = 'Type de calcule:'
  end
  object EditPositionEtat: TEdit
    Left = 16
    Top = 14
    Width = 25
    Height = 19
    Color = clSilver
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 0
  end
  object TableauRubriqueEtat: TStringGrid
    Left = 16
    Top = 60
    Width = 401
    Height = 205
    HelpType = htKeyword
    ColCount = 4
    Ctl3D = False
    DefaultColWidth = 40
    DefaultRowHeight = 20
    FixedCols = 2
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goEditing]
    ParentCtl3D = False
    TabOrder = 1
    ColWidths = (
      40
      2
      57
      275)
  end
  object EditTimerActive: TEdit
    Left = 688
    Top = 216
    Width = 49
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 2
  end
  object TableauCompleteFormulesEtat: TStringGrid
    Left = 8
    Top = 48
    Width = 617
    Height = 329
    ColCount = 8
    Ctl3D = False
    DefaultColWidth = 40
    DefaultRowHeight = 20
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    ParentCtl3D = False
    TabOrder = 3
  end
  object AfficheCompleteFormulesEtat: TPanel
    Left = 8
    Top = 8
    Width = 777
    Height = 33
    BevelInner = bvLowered
    Color = 8454016
    TabOrder = 4
  end
  object BitBtn1: TBitBtn
    Left = 640
    Top = 104
    Width = 137
    Height = 50
    Caption = 'Ne pas actualiser !'
    TabOrder = 5
    Kind = bkNo
  end
  object BitBtn2: TBitBtn
    Left = 640
    Top = 176
    Width = 137
    Height = 75
    Caption = 'Actualiser l'#39'Etat ?'
    TabOrder = 6
    Kind = bkAll
  end
  object BitBtn3: TBitBtn
    Left = 640
    Top = 56
    Width = 137
    Height = 25
    Caption = 'Quitter'
    TabOrder = 7
    Kind = bkCancel
  end
  object EditCodeTypeFormuleAfficher: TEdit
    Left = 640
    Top = 296
    Width = 113
    Height = 19
    Color = clSilver
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 8
  end
  object EditDesignationFormuleAfficher: TEdit
    Left = 640
    Top = 320
    Width = 137
    Height = 19
    Color = clSilver
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 9
  end
  object TableauTypeFormule: TStringGrid
    Left = 128
    Top = 112
    Width = 385
    Height = 177
    Color = 11796479
    ColCount = 4
    Ctl3D = False
    DefaultColWidth = 40
    DefaultRowHeight = 20
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goAlwaysShowEditor]
    ParentCtl3D = False
    TabOrder = 10
    Visible = False
    ColWidths = (
      40
      2
      40
      40)
  end
  object TimerChangeColor: TTimer
    Enabled = False
    Interval = 200
    Left = 752
    Top = 16
  end
end
