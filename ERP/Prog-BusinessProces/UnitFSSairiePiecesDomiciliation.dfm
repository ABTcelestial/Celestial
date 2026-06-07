object FSSairiePiecesDomiciliation: TFSSairiePiecesDomiciliation
  Left = 154
  Top = 131
  Width = 1008
  Height = 478
  Caption = 'Fiche de saisie s'#233'ries de pi'#232'ces domiciliations'
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
  object TableauSeriesPiecesDomiciliation: TStringGrid
    Left = 8
    Top = 64
    Width = 977
    Height = 369
    Ctl3D = False
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
    ParentCtl3D = False
    TabOrder = 0
    OnClick = TableauSeriesPiecesDomiciliationClick
    OnKeyDown = TableauSeriesPiecesDomiciliationKeyDown
    OnKeyPress = TableauSeriesPiecesDomiciliationKeyPress
    RowHeights = (
      24
      24
      24
      24
      24)
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 977
    Height = 49
    BevelInner = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 19
      Width = 62
      Height = 13
      Caption = 'Domiciliation:'
    end
    object EditNumDomiciliation: TEdit
      Left = 88
      Top = 16
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
    end
    object EditDomiciliation: TComboBox
      Left = 88
      Top = 16
      Width = 377
      Height = 21
      BevelKind = bkFlat
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 0
      OnSelect = EditDomiciliationSelect
    end
    object BitBtn3: TBitBtn
      Left = 816
      Top = 8
      Width = 155
      Height = 25
      Caption = 'Fichier Excel'
      TabOrder = 2
      OnClick = BitBtn3Click
      Kind = bkHelp
    end
  end
  object AfficheOperationSeriesPiecesDomiciliation: TPanel
    Left = 192
    Top = 112
    Width = 417
    Height = 233
    BevelInner = bvLowered
    Color = 8454143
    TabOrder = 2
    Visible = False
    object Label2: TLabel
      Left = 16
      Top = 43
      Width = 87
      Height = 13
      Caption = 'Num Domiciliation:'
    end
    object Label3: TLabel
      Left = 16
      Top = 91
      Width = 80
      Height = 13
      Caption = 'R'#233'f'#233'rence S'#233'rie:'
    end
    object Label4: TLabel
      Left = 16
      Top = 116
      Width = 59
      Height = 13
      Caption = 'D'#233'but S'#233'rie:'
    end
    object Label5: TLabel
      Left = 16
      Top = 139
      Width = 75
      Height = 13
      Caption = 'Nombre Pi'#232'ces:'
    end
    object Bevel1: TBevel
      Left = 8
      Top = 184
      Width = 401
      Height = 42
    end
    object InfoNumFinSerie: TLabel
      Left = 256
      Top = 139
      Width = 30
      Height = 13
      Caption = '..........'
    end
    object Label6: TLabel
      Left = 16
      Top = 19
      Width = 40
      Height = 13
      Caption = 'Position:'
    end
    object Label7: TLabel
      Left = 16
      Top = 163
      Width = 107
      Height = 13
      Caption = 'Nbr Avant Notification:'
    end
    object Label8: TLabel
      Left = 16
      Top = 67
      Width = 77
      Height = 13
      Caption = 'Mode Paiement:'
    end
    object Bevel3: TBevel
      Left = 256
      Top = 64
      Width = 153
      Height = 50
    end
    object EditChargeNumDomiciliation: TEdit
      Left = 152
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object EditNumReferenceSerieDomiciliation: TEdit
      Left = 128
      Top = 88
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnExit = EditNumReferenceSerieDomiciliationExit
      OnKeyDown = EditNumReferenceSerieDomiciliationKeyDown
      OnKeyPress = EditNumReferenceSerieDomiciliationKeyPress
    end
    object EditNumDebutSerie: TEdit
      Left = 128
      Top = 112
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnExit = EditNumDebutSerieExit
      OnKeyDown = EditNumDebutSerieKeyDown
      OnKeyPress = EditNumReferenceSerieDomiciliationKeyPress
      OnKeyUp = EditNumDebutSerieKeyUp
    end
    object EditNombrePieceDomiciliation: TEdit
      Left = 128
      Top = 136
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnKeyDown = EditNombrePieceDomiciliationKeyDown
      OnKeyPress = EditNumReferenceSerieDomiciliationKeyPress
      OnKeyUp = EditNombrePieceDomiciliationKeyUp
    end
    object BitBtn1: TBitBtn
      Left = 16
      Top = 192
      Width = 75
      Height = 25
      TabOrder = 4
      OnClick = BitBtn1Click
      Kind = bkCancel
    end
    object BitSeriesPiecesDomiciliation: TBitBtn
      Left = 328
      Top = 192
      Width = 75
      Height = 25
      TabOrder = 5
      OnClick = BitSeriesPiecesDomiciliationClick
      Kind = bkAll
    end
    object EditChargeDomiciliation: TComboBox
      Left = 128
      Top = 40
      Width = 281
      Height = 21
      BevelKind = bkFlat
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 6
      OnKeyDown = EditChargeDomiciliationKeyDown
      OnSelect = EditChargeDomiciliationSelect
    end
    object EditPositionSeriePieceDomiciliation: TEdit
      Left = 128
      Top = 16
      Width = 121
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 7
      OnKeyDown = EditPositionSeriePieceDomiciliationKeyDown
    end
    object EditNombreMinPieceAvantNotification: TEdit
      Left = 128
      Top = 160
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 8
      OnKeyDown = EditNombreMinPieceAvantNotificationKeyDown
    end
    object EditModePaiement: TComboBox
      Left = 128
      Top = 64
      Width = 121
      Height = 21
      BevelInner = bvLowered
      BevelKind = bkFlat
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 9
      Text = 'Ch'#232'que'
      OnKeyDown = EditModePaiementKeyDown
      Items.Strings = (
        'Ch'#232'que'
        'Esp'#232'ce'
        'Virement'
        'Bon'
        'Non Acquitt'#233)
    end
    object BitBtn2: TBitBtn
      Left = 280
      Top = 78
      Width = 105
      Height = 25
      Caption = 'D'#233'jas saisie !'
      TabOrder = 10
      OnClick = BitBtn2Click
      Kind = bkHelp
    end
  end
  object AfficheSeriePieceAvis: TPanel
    Left = 632
    Top = 72
    Width = 329
    Height = 329
    HelpType = htKeyword
    BevelInner = bvLowered
    Color = 8454143
    TabOrder = 3
    Visible = False
    object Bevel2: TBevel
      Left = 176
      Top = 8
      Width = 145
      Height = 33
    end
    object Bevel23: TBevel
      Left = 8
      Top = 274
      Width = 313
      Height = 41
    end
    object Label10: TLabel
      Left = 184
      Top = 19
      Width = 77
      Height = 13
      Caption = 'Contr'#244'le Pi'#232'ces:'
    end
    object TableauSeriePieceAvis: TStringGrid
      Left = 8
      Top = 48
      Width = 313
      Height = 217
      ColCount = 4
      Ctl3D = False
      DefaultColWidth = 80
      DefaultRowHeight = 20
      FixedCols = 0
      RowCount = 10
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
      ParentCtl3D = False
      TabOrder = 0
      OnDblClick = TableauSeriePieceAvisDblClick
      OnKeyDown = TableauSeriePieceAvisKeyDown
      ColWidths = (
        60
        66
        60
        62)
    end
    object BitValiderSeriePieceAvis: TBitBtn
      Left = 200
      Top = 282
      Width = 113
      Height = 25
      Caption = 'Valider'
      TabOrder = 1
      OnClick = BitValiderSeriePieceAvisClick
      Kind = bkAll
    end
    object BitBtn17: TBitBtn
      Left = 16
      Top = 282
      Width = 89
      Height = 25
      TabOrder = 2
      OnClick = BitBtn17Click
      Kind = bkNo
    end
    object EditLongueureSeriePiece: TEdit
      Left = 272
      Top = 16
      Width = 25
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
      Text = '3'
    end
    object IncrimentEditLongueureSeriePiece: TUpDown
      Left = 297
      Top = 16
      Width = 16
      Height = 19
      Associate = EditLongueureSeriePiece
      Min = 1
      Max = 10
      Position = 3
      TabOrder = 4
      Wrap = False
    end
  end
end
