object FSOrigineListeMouvementAvis: TFSOrigineListeMouvementAvis
  Left = 37
  Top = 59
  Width = 1113
  Height = 567
  Caption = 'Liste Mouvement Origine avis'
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
    Left = 8
    Top = 344
    Width = 353
    Height = 178
  end
  object Bevel3: TBevel
    Left = 16
    Top = 352
    Width = 337
    Height = 57
  end
  object Label4: TLabel
    Left = 24
    Top = 368
    Width = 62
    Height = 13
    Caption = 'Type proces:'
  end
  object Label5: TLabel
    Left = 24
    Top = 392
    Width = 82
    Height = 13
    Caption = 'Fichier concerne:'
  end
  object Bevel2: TBevel
    Left = 16
    Top = 416
    Width = 337
    Height = 97
  end
  object Label6: TLabel
    Left = 24
    Top = 480
    Width = 49
    Height = 13
    Caption = 'Total avis:'
  end
  object Label7: TLabel
    Left = 32
    Top = 436
    Width = 38
    Height = 13
    Caption = 'N'#176' Avis:'
  end
  object Bevel4: TBevel
    Left = 368
    Top = 480
    Width = 721
    Height = 41
  end
  object Label8: TLabel
    Left = 376
    Top = 496
    Width = 123
    Height = 13
    Caption = 'N'#176' Ordre liste mouvement:'
  end
  object TableauMouvement: TStringGrid
    Left = 8
    Top = 56
    Width = 353
    Height = 281
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    OnDblClick = TableauMouvementDblClick
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 1081
    Height = 41
    BevelInner = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 13
      Width = 26
      Height = 13
      Caption = 'Tiers:'
    end
    object Label2: TLabel
      Left = 384
      Top = 14
      Width = 15
      Height = 13
      Caption = 'du:'
    end
    object Label3: TLabel
      Left = 600
      Top = 14
      Width = 15
      Height = 13
      Caption = 'au:'
    end
    object EditCodeTiersOrigine: TEdit
      Left = 40
      Top = 11
      Width = 89
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
    object EditTiers: TEdit
      Left = 128
      Top = 11
      Width = 217
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object EditDateDebut: TDateTimePicker
      Left = 408
      Top = 11
      Width = 186
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      BevelKind = bkFlat
      CalAlignment = dtaLeft
      Date = 44352.7166866319
      Time = 44352.7166866319
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 2
    end
    object EditDateFin: TDateTimePicker
      Left = 624
      Top = 11
      Width = 186
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      BevelKind = bkFlat
      CalAlignment = dtaLeft
      Date = 44352.716818287
      Time = 44352.716818287
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 3
    end
    object BitValide: TBitBtn
      Left = 920
      Top = 8
      Width = 155
      Height = 25
      Caption = 'Valider'
      TabOrder = 4
      OnClick = BitValideClick
      Kind = bkAll
    end
  end
  object TableauListeMouvement: TStringGrid
    Left = 368
    Top = 56
    Width = 721
    Height = 417
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    OnDblClick = TableauListeMouvementDblClick
    RowHeights = (
      24
      24
      24
      24
      24)
  end
  object EditTypeProces: TEdit
    Left = 112
    Top = 363
    Width = 121
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 3
  end
  object EditFichierConcerne: TEdit
    Left = 112
    Top = 387
    Width = 209
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 4
  end
  object EditTotalAvis: TMemo
    Left = 112
    Top = 464
    Width = 233
    Height = 41
    Alignment = taRightJustify
    Color = clSilver
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 5
    OnKeyPress = EditTotalAvisKeyPress
  end
  object EditNumAvisOrigine: TEdit
    Left = 112
    Top = 432
    Width = 121
    Height = 19
    Color = clSilver
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 6
  end
  object EditOrdreListeMouvement: TEdit
    Left = 512
    Top = 492
    Width = 569
    Height = 19
    Color = clSilver
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 7
  end
end
