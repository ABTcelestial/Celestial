object FSEffectifs: TFSEffectifs
  Left = 0
  Top = 0
  Width = 805
  Height = 572
  Caption = 'Fiche Eff'#233'ctifs'
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
  object TableauEffectifs: TStringGrid
    Left = 8
    Top = 8
    Width = 777
    Height = 521
    ColCount = 7
    Ctl3D = False
    DefaultRowHeight = 20
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
    ParentCtl3D = False
    TabOrder = 0
    OnClick = TableauEffectifsClick
    OnKeyPress = TableauEffectifsKeyPress
  end
  object AfficheOperationEffectif: TPanel
    Left = 216
    Top = 128
    Width = 385
    Height = 161
    BevelInner = bvLowered
    Color = 8454143
    TabOrder = 1
    Visible = False
    object Bevel2: TBevel
      Left = 8
      Top = 8
      Width = 273
      Height = 145
    end
    object Bevel1: TBevel
      Left = 16
      Top = 16
      Width = 58
      Height = 128
    end
    object Label1: TLabel
      Left = 19
      Top = 20
      Width = 46
      Height = 13
      Caption = 'Matricule:'
    end
    object Label4: TLabel
      Left = 40
      Top = 40
      Width = 25
      Height = 13
      Caption = 'Nom:'
    end
    object Label5: TLabel
      Left = 26
      Top = 61
      Width = 39
      Height = 13
      Caption = 'Prenom:'
    end
    object Label18: TLabel
      Left = 43
      Top = 82
      Width = 21
      Height = 13
      Caption = 'Sex:'
    end
    object Label7: TLabel
      Left = 20
      Top = 104
      Width = 44
      Height = 13
      Caption = 'D.L.Nais:'
    end
    object Label10: TLabel
      Left = 26
      Top = 124
      Width = 41
      Height = 13
      Caption = 'Adresse:'
    end
    object Bevel3: TBevel
      Left = 288
      Top = 8
      Width = 89
      Height = 41
    end
    object Bevel4: TBevel
      Left = 288
      Top = 56
      Width = 89
      Height = 97
    end
    object EditMatriculeOperation: TEdit
      Left = 72
      Top = 16
      Width = 40
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 9
    end
    object BitBtn1: TBitBtn
      Left = 296
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Annuler'
      TabOrder = 0
      OnClick = BitBtn1Click
      Kind = bkNo
    end
    object BitOperationEffectif: TBitBtn
      Left = 296
      Top = 64
      Width = 75
      Height = 81
      TabOrder = 1
      OnClick = BitOperationEffectifClick
      Kind = bkAll
    end
    object EditMatricule: TEdit
      Left = 72
      Top = 16
      Width = 40
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnKeyDown = EditMatriculeKeyDown
    end
    object EditNom: TEdit
      Left = 72
      Top = 37
      Width = 200
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnKeyDown = EditNomKeyDown
    end
    object EditPrenom: TEdit
      Left = 72
      Top = 59
      Width = 200
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      OnKeyDown = EditPrenomKeyDown
    end
    object EditSex: TComboBox
      Left = 72
      Top = 80
      Width = 49
      Height = 21
      BevelKind = bkFlat
      Ctl3D = False
      ItemHeight = 13
      MaxLength = 1
      ParentCtl3D = False
      TabOrder = 5
      OnKeyDown = EditSexKeyDown
      Items.Strings = (
        'M'
        'F')
    end
    object EditDateNais: TMaskEdit
      Left = 72
      Top = 103
      Width = 68
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1;_'
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 6
      Text = '  /  /    '
      OnKeyDown = EditDateNaisKeyDown
    end
    object EditLieuNais: TEdit
      Left = 139
      Top = 103
      Width = 134
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
      OnKeyDown = EditLieuNaisKeyDown
    end
    object EditAdresse: TEdit
      Left = 72
      Top = 124
      Width = 201
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 8
      OnKeyDown = EditAdresseKeyDown
    end
  end
end
