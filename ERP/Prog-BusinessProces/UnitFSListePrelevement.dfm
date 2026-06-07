object FSListePrelevement: TFSListePrelevement
  Left = 0
  Top = 1
  Width = 1247
  Height = 727
  Caption = 'Liste des pr'#233'l'#232'vements'
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
  object Label6: TLabel
    Left = 8
    Top = 633
    Width = 399
    Height = 13
    Caption = 
      'Key:  ('#39'm'#39'=> modifier);  (end=> notification); (key: efi51 mettr' +
      'e valeurModifier='#39'archive'#39')'
  end
  object RBSuspendreControleAutomatique: TCheckBox
    Left = 1032
    Top = 632
    Width = 193
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Suspendre le contr'#244'le automatique'
    TabOrder = 15
  end
  object Panel3: TPanel
    Left = 8
    Top = 48
    Width = 1217
    Height = 41
    BevelInner = bvLowered
    TabOrder = 8
    object Bevel5: TBevel
      Left = 576
      Top = 4
      Width = 329
      Height = 33
    end
    object Label10: TLabel
      Left = 8
      Top = 16
      Width = 36
      Height = 13
      Caption = 'Eff'#233'ctif:'
    end
    object Bevel12: TBevel
      Left = 5
      Top = 5
      Width = 420
      Height = 32
    end
    object Bevel6: TBevel
      Left = 431
      Top = 4
      Width = 138
      Height = 33
    end
    object Label1: TLabel
      Left = 584
      Top = 12
      Width = 163
      Height = 13
      Caption = 'Type Chargement de pr'#233'l'#232'vement:'
    end
    object EditMatriculeEffectif: TEdit
      Left = 72
      Top = 13
      Width = 57
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
    object EditEffectifEquipe: TEdit
      Left = 48
      Top = 13
      Width = 257
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnEnter = EditEffectifEquipeEnter
    end
    object BitBtn7: TBitBtn
      Left = 312
      Top = 8
      Width = 105
      Height = 25
      Caption = 'Aucun eff'#233'ctif'
      TabOrder = 2
      OnClick = BitBtn7Click
      Kind = bkIgnore
    end
    object EditCodeAutorisationControle: TEdit
      Left = 1048
      Top = 16
      Width = 121
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
    end
    object RBTableauVolatile: TCheckBox
      Left = 440
      Top = 11
      Width = 121
      Height = 17
      Caption = 'Affichage Volatile !'
      TabOrder = 4
      OnClick = RBTableauVolatileClick
    end
    object EditTypeAffichge: TComboBox
      Left = 752
      Top = 8
      Width = 145
      Height = 21
      BevelKind = bkFlat
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 5
      Text = 'Par Pr'#233'l'#232'vement'
      OnChange = EditTypeAffichgeChange
      Items.Strings = (
        'Par Pr'#233'l'#232'vement'
        'Par Equipe'
        'Par Jour')
    end
    object RBAbregerTitreRubrique: TCheckBox
      Left = 912
      Top = 10
      Width = 97
      Height = 17
      Caption = 'Abr'#233'ger !'
      TabOrder = 6
      OnClick = RBAbregerTitreRubriqueClick
    end
  end
  object MemoTitre: TMemo
    Left = 56
    Top = 312
    Width = 425
    Height = 89
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 7
  end
  object TableauListePrelevement: TStringGrid
    Left = 8
    Top = 96
    Width = 1217
    Height = 537
    Color = 14286809
    ColCount = 10
    Ctl3D = False
    DefaultColWidth = 50
    DefaultRowHeight = 20
    FixedColor = 8454016
    FixedCols = 2
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goColSizing]
    ParentCtl3D = False
    TabOrder = 0
    OnClick = TableauListePrelevementClick
    OnContextPopup = TableauListePrelevementContextPopup
    OnDblClick = TableauListePrelevementDblClick
    OnDrawCell = TableauListePrelevementDrawCell
    OnKeyDown = TableauListePrelevementKeyDown
    OnKeyPress = TableauListePrelevementKeyPress
    OnMouseDown = TableauListePrelevementMouseDown
    ColWidths = (
      50
      50
      50
      50
      50
      50
      50
      50
      50
      50)
    RowHeights = (
      20
      20)
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 1217
    Height = 33
    BevelInner = bvLowered
    Color = 8454016
    TabOrder = 1
    object LabelTypeAffichage: TLabel
      Left = 8
      Top = 8
      Width = 100
      Height = 13
      Caption = 'Type d'#39'affichage:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object TypeAffichagePeriode: TLabel
      Left = 120
      Top = 8
      Width = 41
      Height = 13
      Caption = '..........'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 592
      Top = 11
      Width = 18
      Height = 13
      Caption = 'du: '
    end
    object Label9: TLabel
      Left = 792
      Top = 11
      Width = 15
      Height = 13
      Caption = 'au:'
    end
    object Label12: TLabel
      Left = 317
      Top = 12
      Width = 44
      Height = 13
      Caption = 'Exercice:'
    end
    object EditDateDebutPrelevement: TDateTimePicker
      Left = 616
      Top = 8
      Width = 172
      Height = 21
      BevelKind = bkFlat
      CalAlignment = dtaLeft
      Date = 43152.6418078241
      Time = 43152.6418078241
      DateFormat = dfLong
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 0
      OnChange = EditDateDebutPrelevementChange
    end
    object EditDateFinPrelevement: TDateTimePicker
      Left = 811
      Top = 8
      Width = 172
      Height = 21
      BevelKind = bkFlat
      CalAlignment = dtaLeft
      Date = 43152.6418703009
      Time = 43152.6418703009
      DateFormat = dfLong
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 1
      OnChange = EditDateDebutPrelevementChange
    end
    object EditMoisListePrelevement: TComboBox
      Left = 458
      Top = 8
      Width = 105
      Height = 21
      BevelKind = bkFlat
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 2
      Text = '(01) janvier'
      OnDropDown = EditMoisListePrelevementDropDown
      OnKeyPress = EditMoisListePrelevementKeyPress
      OnSelect = EditMoisListePrelevementSelect
      Items.Strings = (
        '(01) janvier'
        '(02) f'#233'vrier'
        '(03) mars'
        '(04) avril'
        '(05) mai'
        '(06) juin'
        '(07) juillet'
        '(08) ao'#251't'
        '(09) septembre'
        '(10) octobre'
        '(11) novembre'
        '(12) d'#233'cembre')
    end
    object EditExercicePrelevement: TComboBox
      Left = 365
      Top = 7
      Width = 73
      Height = 21
      BevelKind = bkFlat
      ItemHeight = 13
      TabOrder = 3
      OnSelect = EditExercicePrelevementSelect
    end
    object RBProcListeMouvementActive: TCheckBox
      Left = 440
      Top = 9
      Width = 17
      Height = 17
      Caption = '.'
      Enabled = False
      TabOrder = 4
    end
    object RBSuspendre: TCheckBox
      Left = 564
      Top = 9
      Width = 19
      Height = 17
      Caption = '.'
      Enabled = False
      TabOrder = 5
    end
  end
  object AfficheOperationPrelevement: TPanel
    Left = 352
    Top = 184
    Width = 401
    Height = 169
    BevelInner = bvLowered
    Color = 8454143
    TabOrder = 2
    Visible = False
    object Bevel2: TBevel
      Left = 8
      Top = 56
      Width = 385
      Height = 105
    end
    object Label2: TLabel
      Left = 48
      Top = 72
      Width = 25
      Height = 13
      Caption = 'Num:'
    end
    object Label3: TLabel
      Left = 16
      Top = 96
      Width = 58
      Height = 13
      Caption = 'NumEquipe:'
    end
    object Label4: TLabel
      Left = 48
      Top = 120
      Width = 26
      Height = 13
      Caption = 'Date:'
    end
    object Label5: TLabel
      Left = 40
      Top = 144
      Width = 32
      Height = 13
      Caption = 'Heure:'
    end
    object Bevel1: TBevel
      Left = 8
      Top = 8
      Width = 385
      Height = 41
    end
    object Label11: TLabel
      Left = 264
      Top = 69
      Width = 46
      Height = 13
      Caption = 'Matricule:'
    end
    object BitOperationPrelevement: TBitBtn
      Left = 288
      Top = 16
      Width = 99
      Height = 25
      TabOrder = 0
      OnClick = BitOperationPrelevementClick
      Kind = bkCancel
    end
    object EditNumPrelevement: TEdit
      Left = 88
      Top = 64
      Width = 49
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object EditNumEquipe: TEdit
      Left = 88
      Top = 88
      Width = 49
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnEnter = EditNumEquipeEnter
    end
    object BitBtn1: TBitBtn
      Left = 16
      Top = 16
      Width = 121
      Height = 25
      Caption = 'Valider'
      TabOrder = 3
      OnClick = BitBtn1Click
      Kind = bkAll
    end
    object EditDesignationEquipe: TEdit
      Left = 136
      Top = 88
      Width = 249
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
    end
    object EditDatePrelevement: TDateTimePicker
      Left = 88
      Top = 112
      Width = 186
      Height = 21
      BevelKind = bkFlat
      CalAlignment = dtaLeft
      Date = 40455.5259714931
      Time = 40455.5259714931
      DateFormat = dfLong
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 5
    end
    object EditHeurePrelevement: TDateTimePicker
      Left = 88
      Top = 136
      Width = 81
      Height = 21
      BevelKind = bkFlat
      CalAlignment = dtaLeft
      Date = 40455.5262384259
      Time = 40455.5262384259
      DateFormat = dfLong
      DateMode = dmComboBox
      Kind = dtkTime
      ParseInput = False
      TabOrder = 6
    end
    object EditMatricule: TEdit
      Left = 312
      Top = 64
      Width = 73
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 7
    end
  end
  object TableauEquipe: TStringGrid
    Left = 482
    Top = 296
    Width = 327
    Height = 209
    ColCount = 7
    Ctl3D = False
    DefaultColWidth = 40
    DefaultRowHeight = 20
    FixedColor = 8454016
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
    ParentCtl3D = False
    TabOrder = 3
    Visible = False
    OnDblClick = TableauEquipeDblClick
    OnDrawCell = TableauEquipeDrawCell
    OnExit = TableauEquipeExit
    RowHeights = (
      20
      20)
  end
  object AfficheAuthentification: TPanel
    Left = 32
    Top = 168
    Width = 1153
    Height = 270
    BevelInner = bvLowered
    TabOrder = 4
    object Bevel3: TBevel
      Left = 8
      Top = 56
      Width = 97
      Height = 41
    end
    object Bevel4: TBevel
      Left = 944
      Top = 8
      Width = 201
      Height = 41
    end
    object Bevel7: TBevel
      Left = 944
      Top = 56
      Width = 201
      Height = 41
    end
    object Bevel8: TBevel
      Left = 112
      Top = 56
      Width = 825
      Height = 41
    end
    object TableauAuthentification: TStringGrid
      Left = 8
      Top = 112
      Width = 1137
      Height = 150
      ColCount = 7
      Ctl3D = False
      DefaultColWidth = 40
      ParentCtl3D = False
      TabOrder = 0
      OnContextPopup = TableauAuthentificationContextPopup
      OnDrawCell = TableauAuthentificationDrawCell
    end
    object BitBtn2: TBitBtn
      Left = 16
      Top = 64
      Width = 81
      Height = 25
      Caption = 'Imprimer'
      TabOrder = 1
      OnClick = BitBtn2Click
      Kind = bkHelp
    end
    object BitAnnulerCorrectionAutomatique: TBitBtn
      Left = 952
      Top = 16
      Width = 187
      Height = 25
      Caption = 'Annuler'
      ModalResult = 2
      TabOrder = 2
      OnClick = BitAnnulerCorrectionAutomatiqueClick
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
    object AfficheRapport: TPanel
      Left = 8
      Top = 8
      Width = 929
      Height = 41
      BevelInner = bvLowered
      Color = 8454143
      TabOrder = 3
      object RBSelectNext: TCheckBox
        Left = 8
        Top = 13
        Width = 145
        Height = 17
        Caption = 'Selectionner le suivant'
        TabOrder = 0
      end
      object RBExecutionAutomatique: TCheckBox
        Left = 792
        Top = 13
        Width = 129
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Ex'#233'cution automatique'
        TabOrder = 1
        OnClick = RBExecutionAutomatiqueClick
      end
    end
    object BitCorrectionAutomatique: TBitBtn
      Left = 952
      Top = 64
      Width = 185
      Height = 25
      Caption = 'Correction automatique'
      TabOrder = 4
      OnClick = BitCorrectionAutomatiqueClick
      Kind = bkAll
    end
    object BitBtn10: TBitBtn
      Left = 120
      Top = 64
      Width = 129
      Height = 25
      Caption = 'Tableau en Excel'
      TabOrder = 5
      OnClick = BitBtn10Click
      Kind = bkHelp
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 647
    Width = 1217
    Height = 34
    BevelInner = bvLowered
    TabOrder = 6
    object Label8: TLabel
      Left = 1032
      Top = 12
      Width = 67
      Height = 13
      Caption = 'Devise Utilis'#233':'
    end
    object RBAfficherEcartSuperieur: TCheckBox
      Left = 688
      Top = 11
      Width = 265
      Height = 17
      Caption = 'Afficher uniquement les '#233'carts sup'#233'rieur ou '#233'gale '#224':'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = RBAfficherEcartSuperieurClick
    end
    object EditSoldeMinimum: TEdit
      Left = 956
      Top = 9
      Width = 29
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      Text = '5'
      OnEnter = EditSoldeMinimumEnter
    end
    object EditSigleDevise: TEdit
      Left = 984
      Top = 9
      Width = 25
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object EditDesignationDevise: TEdit
      Left = 1104
      Top = 9
      Width = 105
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object RBAfficheSoldeAnterieur: TCheckBox
      Left = 448
      Top = 11
      Width = 153
      Height = 17
      Caption = 'Afficher le solde ant'#233'rieur !'
      Checked = True
      State = cbChecked
      TabOrder = 4
      OnClick = RBAfficheSoldeAnterieurClick
    end
  end
  object AfficheControleImportePrelevement: TPanel
    Left = 1004
    Top = 52
    Width = 217
    Height = 269
    BevelInner = bvLowered
    Caption = 'Cont'#244'le importe Pr'#233'l'#232'vement'
    Color = 8454143
    TabOrder = 9
    OnClick = AfficheControleImportePrelevementClick
    object Panel4: TPanel
      Left = 8
      Top = 40
      Width = 201
      Height = 153
      BevelInner = bvLowered
      TabOrder = 0
      object Bevel9: TBevel
        Left = 8
        Top = 8
        Width = 185
        Height = 41
      end
      object Bevel10: TBevel
        Left = 8
        Top = 56
        Width = 185
        Height = 41
      end
      object Bevel11: TBevel
        Left = 8
        Top = 104
        Width = 185
        Height = 41
      end
      object RBControleTableauAffiche: TCheckBox
        Left = 32
        Top = 135
        Width = 49
        Height = 17
        Caption = 'CTA'
        Checked = True
        State = cbChecked
        TabOrder = 5
      end
      object BitBtn6: TBitBtn
        Left = 16
        Top = 16
        Width = 169
        Height = 25
        Caption = 'Cont'#244'le Importe Pr'#233'l'#232'vement'
        TabOrder = 0
        OnClick = BitBtn6Click
        Kind = bkHelp
        Margin = 0
      end
      object BitValiderImportePrelevement: TBitBtn
        Left = 16
        Top = 64
        Width = 169
        Height = 25
        Caption = 'Enregistrer l'#39'importation !'
        Enabled = False
        TabOrder = 1
        OnClick = BitValiderImportePrelevementClick
        Kind = bkAll
      end
      object BitControleAnomalies: TBitBtn
        Left = 16
        Top = 112
        Width = 116
        Height = 25
        Caption = 'Contr'#244'le anomalies'
        TabOrder = 2
        OnClick = BitControleAnomaliesClick
        Kind = bkHelp
        Margin = 0
      end
      object RBControleAnomalieSelect: TCheckBox
        Left = 134
        Top = 108
        Width = 49
        Height = 17
        Caption = 'S'#233'lect'
        Checked = True
        Enabled = False
        State = cbChecked
        TabOrder = 3
      end
      object RBControleAnomalieUnParUn: TCheckBox
        Left = 135
        Top = 126
        Width = 56
        Height = 17
        Caption = 'Un/Un !'
        TabOrder = 4
      end
    end
    object Panel5: TPanel
      Left = 8
      Top = 200
      Width = 201
      Height = 57
      BevelInner = bvLowered
      TabOrder = 1
      object Bevel13: TBevel
        Left = 8
        Top = 8
        Width = 185
        Height = 41
      end
      object RBUtiliserPositionArchive: TCheckBox
        Left = 16
        Top = 20
        Width = 169
        Height = 17
        Caption = 'Utiliser La position archives !'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
    end
  end
  object AfficheOptionPrelevement: TPanel
    Left = 999
    Top = 8
    Width = 226
    Height = 33
    BevelInner = bvLowered
    Color = 8454143
    TabOrder = 5
    object Bevel32: TBevel
      Left = 8
      Top = 64
      Width = 209
      Height = 169
    end
    object Bevel14: TBevel
      Left = 9
      Top = 240
      Width = 209
      Height = 41
    end
    object Bevel15: TBevel
      Left = 9
      Top = 288
      Width = 209
      Height = 49
    end
    object BitBtn4: TBitBtn
      Left = 5
      Top = 4
      Width = 217
      Height = 25
      Caption = 'Options avanc'#233'es'
      TabOrder = 0
      OnClick = BitBtn4Click
      Kind = bkHelp
    end
    object BitBtn20: TBitBtn
      Left = 16
      Top = 72
      Width = 193
      Height = 25
      Caption = 'Imprimer'
      TabOrder = 1
      OnClick = BitBtn20Click
      Kind = bkHelp
    end
    object RadioGroup5: TRadioGroup
      Left = 16
      Top = 104
      Width = 193
      Height = 121
      Caption = 'Options d'#39'Impression:'
      TabOrder = 2
    end
    object StaticText2: TStaticText
      Left = 24
      Top = 123
      Width = 105
      Height = 17
      Caption = 'Orientation du papier:'
      TabOrder = 3
    end
    object RBOrientationPapierPrelevement: TComboBox
      Left = 24
      Top = 144
      Width = 177
      Height = 21
      BevelInner = bvLowered
      BevelKind = bkFlat
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 4
      Text = 'Automatique'
      Items.Strings = (
        'Automatique'
        'Portrait'
        'Paysage')
    end
    object RBAjustementPrelevement: TCheckBox
      Left = 24
      Top = 184
      Width = 113
      Height = 17
      Caption = 'Ajustement !'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object BitBtn8: TBitBtn
      Left = 16
      Top = 248
      Width = 193
      Height = 25
      Caption = 'Transf'#233'rer en Excel'
      TabOrder = 6
      OnClick = BitBtn8Click
      Kind = bkHelp
    end
  end
  object TableauEffectifEquipe: TStringGrid
    Left = -408
    Top = 530
    Width = 569
    Height = 249
    ColCount = 12
    Ctl3D = False
    DefaultColWidth = 40
    DefaultRowHeight = 20
    FixedColor = 16777088
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
    ParentCtl3D = False
    TabOrder = 10
    Visible = False
    OnDblClick = TableauEffectifEquipeDblClick
    OnDrawCell = TableauEffectifEquipeDrawCell
    ColWidths = (
      40
      40
      40
      40
      40
      40
      40
      40
      40
      40
      40
      40)
    RowHeights = (
      20
      20)
  end
  object AffichePatienterSVP: TPanel
    Left = 192
    Top = 160
    Width = 737
    Height = 137
    BevelInner = bvLowered
    Caption = 'Patienter SVP !'
    Color = 8454143
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -24
    Font.Name = 'MS Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    Visible = False
    OnClick = AffichePatienterSVPClick
    object BitBtn5: TBitBtn
      Left = 48
      Top = 96
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Annuler'
      ModalResult = 2
      TabOrder = 3
      OnClick = BitBtn5Click
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
    object RBSelectLastTableau: TCheckBox
      Left = 48
      Top = 104
      Width = 33
      Height = 17
      Caption = '.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Panel7: TPanel
      Left = 8
      Top = 96
      Width = 721
      Height = 33
      Color = 8454143
      TabOrder = 0
      object ProgressPatienter: TProgressBar
        Left = 8
        Top = 8
        Width = 705
        Height = 17
        Min = 0
        Max = 100
        ParentShowHint = False
        Smooth = True
        Step = 1
        ShowHint = False
        TabOrder = 0
      end
    end
    object RBSuspendreListePrelevementMatricule: TCheckBox
      Left = 640
      Top = 8
      Width = 89
      Height = 17
      Caption = 'Suspendre'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = RBSuspendreListePrelevementMatriculeClick
    end
  end
  object Panel6: TPanel
    Left = 8
    Top = 648
    Width = 425
    Height = 33
    BevelInner = bvLowered
    TabOrder = 12
    object EditTypeDataTrie: TEdit
      Left = 184
      Top = 8
      Width = 17
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
      Text = 'Num'
    end
    object RBRubriqueTrie: TCheckBox
      Left = 9
      Top = 9
      Width = 172
      Height = 17
      Caption = 'Triers / Rubrique s'#233'lectionner !'
      TabOrder = 0
    end
    object EditRubriqueTrie: TEdit
      Left = 181
      Top = 8
      Width = 23
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
      Text = '2'
    end
    object TypeTrie: TRadioGroup
      Left = 208
      Top = 2
      Width = 209
      Height = 26
      Caption = '+'
      TabOrder = 3
    end
    object RadioButton1: TRadioButton
      Left = 216
      Top = 8
      Width = 97
      Height = 17
      Caption = 'Descendant (-)'
      TabOrder = 4
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 320
      Top = 8
      Width = 89
      Height = 17
      Caption = 'Ascendant (+)'
      Checked = True
      TabOrder = 5
      TabStop = True
      OnClick = RadioButton2Click
    end
  end
  object RBEtatArchive: TCheckBox
    Left = 424
    Top = 634
    Width = 73
    Height = 14
    Caption = 'Archive'
    TabOrder = 13
  end
  object AfficheOperationListePrelevement: TPanel
    Left = 136
    Top = 208
    Width = 849
    Height = 57
    BevelInner = bvLowered
    Color = 16777088
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    Visible = False
    object Bevel16: TBevel
      Left = 8
      Top = 8
      Width = 833
      Height = 41
    end
    object EditTypeAnalyse: TEdit
      Left = 48
      Top = 16
      Width = 9
      Height = 26
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object RBOKSupprissionManuel: TCheckBox
      Left = 688
      Top = 20
      Width = 121
      Height = 17
      Caption = 'Supprission Manuel'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object BitBtn3: TBitBtn
      Left = 16
      Top = 16
      Width = 81
      Height = 25
      Caption = 'Annuler'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn3Click
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
    object BitValiderOperationListePrelevement: TBitBtn
      Left = 664
      Top = 16
      Width = 171
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitValiderOperationListePrelevementClick
      Kind = bkAll
    end
  end
  object TimerControleImportePrelevement: TTimer
    Enabled = False
    Interval = 200
    OnTimer = TimerControleImportePrelevementTimer
    Left = 80
    Top = 40
  end
  object TimerControleAnomalie: TTimer
    Enabled = False
    Interval = 200
    OnTimer = TimerControleAnomalieTimer
    Left = 112
    Top = 40
  end
  object TimerEnregistrerImpostation: TTimer
    Enabled = False
    Interval = 200
    OnTimer = TimerEnregistrerImpostationTimer
    Left = 176
    Top = 40
  end
  object TimerControleAnomalieTableauAffiche: TTimer
    Enabled = False
    Interval = 200
    OnTimer = TimerControleAnomalieTableauAfficheTimer
    Left = 144
    Top = 40
  end
  object TimerControleSystimatique: TTimer
    Enabled = False
    Interval = 500
    OnTimer = TimerControleSystimatiqueTimer
    Left = 224
    Top = 40
  end
end
