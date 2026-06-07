object FSListeValeurs: TFSListeValeurs
  Left = 198
  Top = 124
  Width = 928
  Height = 480
  Caption = 'Liste Valeurs formule par article'
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
  object TableauListeValeurs: TStringGrid
    Left = 8
    Top = 48
    Width = 897
    Height = 385
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    OnClick = TableauListeValeursClick
    OnKeyPress = TableauListeValeursKeyPress
  end
  object AfficheOperationListeValeurs: TPanel
    Left = 192
    Top = 104
    Width = 489
    Height = 217
    BevelInner = bvLowered
    TabOrder = 1
    Visible = False
    object Bevel2: TBevel
      Left = 8
      Top = 56
      Width = 473
      Height = 153
    end
    object Bevel1: TBevel
      Left = 8
      Top = 8
      Width = 473
      Height = 41
    end
    object Label1: TLabel
      Left = 48
      Top = 115
      Width = 40
      Height = 13
      Caption = 'Formule:'
    end
    object Label2: TLabel
      Left = 56
      Top = 139
      Width = 32
      Height = 13
      Caption = 'Article:'
    end
    object Label3: TLabel
      Left = 16
      Top = 163
      Width = 75
      Height = 13
      Caption = 'Type Affichage:'
    end
    object Label4: TLabel
      Left = 56
      Top = 187
      Width = 33
      Height = 13
      Caption = 'Valeur:'
    end
    object Label5: TLabel
      Left = 24
      Top = 91
      Width = 67
      Height = 13
      Caption = 'Type Formule:'
    end
    object Label6: TLabel
      Left = 48
      Top = 67
      Width = 40
      Height = 13
      Caption = 'Position:'
    end
    object EditPositionFormule: TEdit
      Left = 96
      Top = 112
      Width = 65
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 10
    end
    object BitBtn1: TBitBtn
      Left = 16
      Top = 16
      Width = 75
      Height = 25
      TabOrder = 0
      OnClick = BitBtn1Click
      Kind = bkCancel
    end
    object BitOperationListeValeurs: TBitBtn
      Left = 384
      Top = 16
      Width = 91
      Height = 25
      TabOrder = 1
      OnClick = BitOperationListeValeursClick
      Kind = bkAll
    end
    object EditCodeFormule: TEdit
      Left = 96
      Top = 112
      Width = 65
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnEnter = EditCodeFormuleEnter
      OnKeyDown = EditCodeFormuleKeyDown
    end
    object EditFormule: TEdit
      Left = 160
      Top = 112
      Width = 313
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object EditCodeCompte: TEdit
      Left = 96
      Top = 136
      Width = 65
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      OnEnter = EditCodeCompteEnter
      OnKeyDown = EditCodeCompteKeyDown
    end
    object EditDesignationCompte: TEdit
      Left = 160
      Top = 136
      Width = 249
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
    end
    object EditTypeAffichage: TComboBox
      Left = 96
      Top = 160
      Width = 65
      Height = 21
      BevelKind = bkFlat
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 6
      OnKeyDown = EditTypeAffichageKeyDown
      Items.Strings = (
        'Num'
        '%')
    end
    object EditValeur: TEdit
      Left = 96
      Top = 184
      Width = 65
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
      OnKeyDown = EditValeurKeyDown
      OnKeyPress = EditValeurKeyPress
    end
    object EditCodeTypeFormule: TEdit
      Left = 96
      Top = 88
      Width = 65
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 8
      OnEnter = EditCodeTypeFormuleEnter
      OnKeyDown = EditCodeTypeFormuleKeyDown
    end
    object EditTypeFormule: TEdit
      Left = 160
      Top = 88
      Width = 313
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 9
    end
    object EditPositionListeValeur: TEdit
      Left = 96
      Top = 64
      Width = 65
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 11
      OnKeyDown = EditPositionListeValeurKeyDown
    end
    object EditNbrChiffreCompte: TComboBox
      Left = 416
      Top = 136
      Width = 57
      Height = 21
      BevelKind = bkFlat
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 12
      Text = '10'
      OnKeyPress = EditNbrChiffreCompteKeyPress
      OnSelect = EditNbrChiffreCompteSelect
      Items.Strings = (
        '10'
        '6'
        '5'
        '4'
        '3'
        '2'
        '1')
    end
  end
  object AfficheMoseAffichage: TPanel
    Left = 8
    Top = 8
    Width = 889
    Height = 33
    BevelInner = bvLowered
    TabOrder = 2
    object EditModeAffichage: TEdit
      Left = 800
      Top = 9
      Width = 81
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object TableauSelection: TStringGrid
    Left = 400
    Top = 344
    Width = 569
    Height = 161
    Ctl3D = False
    RowCount = 2
    ParentCtl3D = False
    TabOrder = 3
    Visible = False
    OnDblClick = TableauSelectionDblClick
  end
end
