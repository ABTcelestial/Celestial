object FSCourrierMail: TFSCourrierMail
  Left = 360
  Top = 92
  Width = 870
  Height = 593
  Caption = 'FSCourrierMail'
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
  object Bevel5: TBevel
    Left = 8
    Top = 72
    Width = 425
    Height = 89
  end
  object Label3: TLabel
    Left = 16
    Top = 80
    Width = 18
    Height = 24
    Caption = 'A:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Tiers: TLabel
    Left = 48
    Top = 104
    Width = 27
    Height = 13
    Caption = '.........'
  end
  object Label4: TLabel
    Left = 16
    Top = 132
    Width = 28
    Height = 13
    Caption = 'Objet:'
  end
  object Bevel6: TBevel
    Left = 440
    Top = 72
    Width = 161
    Height = 89
  end
  object Label5: TLabel
    Left = 8
    Top = 349
    Width = 61
    Height = 13
    Caption = 'Pi'#232'ce Jointe:'
  end
  object Label6: TLabel
    Left = 8
    Top = 496
    Width = 77
    Height = 13
    Caption = 'Application Mail:'
  end
  object Label7: TLabel
    Left = 8
    Top = 520
    Width = 63
    Height = 13
    Caption = 'Fichier envoi:'
  end
  object Bevel8: TBevel
    Left = 752
    Top = 8
    Width = 89
    Height = 41
  end
  object Bevel12: TBevel
    Left = 608
    Top = 208
    Width = 233
    Height = 113
  end
  object EditIncrimenteTimer: TEdit
    Left = 640
    Top = 400
    Width = 33
    Height = 19
    Color = clSilver
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 20
  end
  object EditResultatEnvoi: TEdit
    Left = 680
    Top = 400
    Width = 137
    Height = 19
    Color = clSilver
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 21
  end
  object AfficheMaiEntreprise: TPanel
    Left = 8
    Top = 8
    Width = 593
    Height = 57
    BevelInner = bvLowered
    TabOrder = 1
    object MailEntreprise: TEdit
      Left = 8
      Top = 8
      Width = 385
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
      OnDblClick = MailEntrepriseDblClick
    end
    object CodeSecuriteMailEntreprise: TEdit
      Left = 8
      Top = 32
      Width = 385
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
      OnDblClick = CodeSecuriteMailEntrepriseDblClick
    end
    object BitBtn4: TBitBtn
      Left = 480
      Top = 16
      Width = 107
      Height = 25
      Caption = 'Annuler l'#39'envoi'
      ModalResult = 2
      TabOrder = 2
      OnClick = BitBtn4Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BitOuvrirFichierParametresMail: TBitBtn
      Left = 400
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Ouvrir'
      TabOrder = 3
      OnClick = BitOuvrirFichierParametresMailClick
      Kind = bkHelp
    end
  end
  object EditMailTiers: TEdit
    Left = 48
    Top = 80
    Width = 377
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    OnDblClick = EditMailTiersDblClick
  end
  object EditObjet: TEdit
    Left = 48
    Top = 128
    Width = 225
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
    OnKeyDown = EditObjetKeyDown
  end
  object BitBtn3: TBitBtn
    Left = 448
    Top = 80
    Width = 145
    Height = 73
    Caption = 'Envoyer'
    TabOrder = 4
    OnClick = BitBtn3Click
    Kind = bkAll
  end
  object EditPieceJointe: TEdit
    Left = 72
    Top = 346
    Width = 529
    Height = 19
    Color = clSilver
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 5
  end
  object EditAdresseApplicationMail: TEdit
    Left = 88
    Top = 491
    Width = 409
    Height = 19
    Color = clSilver
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 7
  end
  object EditAdresseFichierParametresMail: TEdit
    Left = 88
    Top = 520
    Width = 409
    Height = 19
    Color = clSilver
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 8
  end
  object FichierEnvoi: TMemo
    Left = 7
    Top = 368
    Width = 594
    Height = 81
    TabStop = False
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -7
    Font.Name = 'Courier'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 9
    WantReturns = False
    WordWrap = False
  end
  object EditMessageTexte: TEdit
    Left = 8
    Top = 464
    Width = 489
    Height = 21
    ReadOnly = True
    TabOrder = 10
  end
  object EditMessage: TMemo
    Left = 6
    Top = 168
    Width = 594
    Height = 177
    TabStop = False
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -7
    Font.Name = 'Courier'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 11
    WantReturns = False
    WordWrap = False
  end
  object TableauResultaEnvoi: TStringGrid
    Left = 608
    Top = 328
    Width = 233
    Height = 225
    ColCount = 2
    Ctl3D = False
    RowCount = 2
    ParentCtl3D = False
    TabOrder = 12
  end
  object RBMailEntreprise: TCheckBox
    Left = 616
    Top = 216
    Width = 209
    Height = 17
    Caption = 'RBMailEntreprise'
    Enabled = False
    TabOrder = 13
  end
  object RBCodeSecuriteMailEntreprise: TCheckBox
    Left = 616
    Top = 232
    Width = 209
    Height = 17
    Caption = 'RBCodeSecuriteMailEntreprise'
    Enabled = False
    TabOrder = 14
  end
  object RBEditMailTiers: TCheckBox
    Left = 616
    Top = 248
    Width = 209
    Height = 17
    Caption = 'RBEditMailTiers'
    Enabled = False
    TabOrder = 15
  end
  object RBEditObjet: TCheckBox
    Left = 616
    Top = 264
    Width = 209
    Height = 17
    Caption = 'RBEditObjet'
    Enabled = False
    TabOrder = 16
  end
  object RBEditMessage: TCheckBox
    Left = 616
    Top = 280
    Width = 209
    Height = 17
    Caption = 'RBEditMessage'
    Enabled = False
    TabOrder = 17
  end
  object RBEditPieceJointe: TCheckBox
    Left = 616
    Top = 296
    Width = 209
    Height = 17
    Caption = 'RBEditPieceJointe'
    Enabled = False
    TabOrder = 18
  end
  object AfficheNotificationEnvoiMail: TPanel
    Left = 608
    Top = 56
    Width = 233
    Height = 145
    BevelInner = bvLowered
    TabOrder = 19
    Visible = False
  end
  object BitBtn6: TBitBtn
    Left = 760
    Top = 16
    Width = 75
    Height = 25
    TabOrder = 22
    OnClick = BitBtn6Click
    Kind = bkClose
  end
  object AfficheIdentificateurEntreprise: TPanel
    Left = -488
    Top = 392
    Width = 593
    Height = 329
    Color = 8454143
    TabOrder = 0
    Visible = False
    object Bevel3: TBevel
      Left = 8
      Top = 8
      Width = 577
      Height = 33
    end
    object Bevel1: TBevel
      Left = 8
      Top = 48
      Width = 577
      Height = 273
    end
    object Bevel2: TBevel
      Left = 464
      Top = 56
      Width = 113
      Height = 89
    end
    object Label1: TLabel
      Left = 16
      Top = 59
      Width = 53
      Height = 13
      Caption = 'Organisme:'
    end
    object Label2: TLabel
      Left = 240
      Top = 19
      Width = 68
      Height = 13
      Caption = 'Data R'#233'sultat:'
    end
    object IDentifiantFindData: TLabel
      Left = 16
      Top = 16
      Width = 30
      Height = 13
      Caption = '..........'
    end
    object Bevel4: TBevel
      Left = 464
      Top = 272
      Width = 113
      Height = 41
    end
    object TableauIdentificateurEntreprise: TStringGrid
      Left = 16
      Top = 80
      Width = 441
      Height = 233
      Ctl3D = False
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
      ParentCtl3D = False
      TabOrder = 0
      OnClick = TableauIdentificateurEntrepriseClick
    end
    object EditOrganismeTutelle: TComboBox
      Left = 80
      Top = 56
      Width = 177
      Height = 21
      BevelKind = bkFlat
      ItemHeight = 13
      TabOrder = 1
      OnChange = EditOrganismeTutelleChange
    end
    object EditDataIdentificateurEntreprise: TEdit
      Left = 312
      Top = 16
      Width = 265
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 472
      Top = 64
      Width = 97
      Height = 73
      Caption = 'Valider'
      TabOrder = 3
      OnClick = BitBtn1Click
      Kind = bkAll
    end
    object BitBtn2: TBitBtn
      Left = 472
      Top = 280
      Width = 97
      Height = 25
      TabOrder = 4
      OnClick = BitBtn2Click
      Kind = bkCancel
    end
  end
  object AfficheTiers: TPanel
    Left = 688
    Top = 384
    Width = 777
    Height = 441
    BevelInner = bvLowered
    Color = 16777088
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 6
    Visible = False
    object Bevel10: TBevel
      Left = 8
      Top = 48
      Width = 473
      Height = 33
    end
    object Bevel9: TBevel
      Left = 488
      Top = 8
      Width = 145
      Height = 73
    end
    object Bevel7: TBevel
      Left = 8
      Top = 8
      Width = 473
      Height = 33
    end
    object Label83: TLabel
      Left = 16
      Top = 18
      Width = 81
      Height = 13
      Caption = 'Liste des Proces:'
    end
    object EditTitreFichierConcerne: TLabel
      Left = 218
      Top = 18
      Width = 88
      Height = 13
      Caption = 'Fichier Cons'#233'rner !'
    end
    object Label15: TLabel
      Left = 16
      Top = 58
      Width = 85
      Height = 13
      Caption = 'Rechercher Tiers:'
    end
    object Bevel11: TBevel
      Left = 720
      Top = 8
      Width = 49
      Height = 41
    end
    object EditSelectTypeProces: TComboBox
      Left = 104
      Top = 14
      Width = 97
      Height = 21
      BevelKind = bkFlat
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'Business'
      OnChange = EditSelectTypeProcesChange
      Items.Strings = (
        'Business'
        'Commercial'
        'Paie'
        'Comptabilit'#233
        'Social')
    end
    object EditFichierConcerne: TComboBox
      Left = 312
      Top = 14
      Width = 161
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 1
      Text = 'FClient'
      OnSelect = EditFichierConcerneSelect
      Items.Strings = (
        'FClient'
        'FFournisseur'
        'FPersonnel')
    end
    object TableauTiers: TStringGrid
      Left = 8
      Top = 88
      Width = 761
      Height = 345
      ColCount = 16
      Ctl3D = False
      DefaultRowHeight = 20
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing]
      ParentCtl3D = False
      TabOrder = 2
      OnDblClick = TableauTiersDblClick
      OnKeyDown = TableauTiersKeyDown
      ColWidths = (
        64
        64
        64
        64
        64
        63
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
        20
        20)
    end
    object EditRechercheTiers: TEdit
      Left = 104
      Top = 55
      Width = 369
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
    end
    object EditNbrKeyUp: TEdit
      Left = 493
      Top = 51
      Width = 12
      Height = 19
      Color = clBtnFace
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
    end
    object EditNbrKeyUpMemo: TEdit
      Left = 507
      Top = 51
      Width = 12
      Height = 19
      Color = clBtnFace
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
    end
    object RBRechercheTiersEntie: TRadioButton
      Left = 496
      Top = 30
      Width = 129
      Height = 17
      Caption = 'Recherche Tiers enti'#233
      Checked = True
      TabOrder = 6
      TabStop = True
    end
    object RBRechercheTiersMotCle: TRadioButton
      Left = 496
      Top = 14
      Width = 129
      Height = 17
      Caption = 'Recherche mots cl'#233
      TabOrder = 7
    end
    object BitBtn5: TBitBtn
      Left = 728
      Top = 16
      Width = 35
      Height = 25
      Caption = '.'
      TabOrder = 8
      OnClick = BitBtn5Click
      Kind = bkCancel
    end
  end
  object TimerAfficheTiers: TTimer
    Enabled = False
    Interval = 1
    OnTimer = TimerAfficheTiersTimer
    Left = 464
    Top = 48
  end
  object TimerLancerAfficheTiers: TTimer
    Enabled = False
    Interval = 1
    OnTimer = TimerLancerAfficheTiersTimer
    Left = 496
    Top = 48
  end
  object TimerNotificationEnvoiMail: TTimer
    Enabled = False
    Interval = 200
    OnTimer = TimerNotificationEnvoiMailTimer
    Left = 696
    Top = 16
  end
  object TimerControleParametresMail: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerControleParametresMailTimer
    Left = 616
    Top = 16
  end
  object TimerAttenteResultatEnvoiMail: TTimer
    Enabled = False
    Interval = 100000
    OnTimer = TimerAttenteResultatEnvoiMailTimer
    Left = 656
    Top = 16
  end
end
