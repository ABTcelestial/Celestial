object FSTicketTexte: TFSTicketTexte
  Left = 301
  Top = 17
  Width = 770
  Height = 695
  Caption = 'Ticket'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 745
    Height = 649
    ActivePage = PageOptions
    TabIndex = 1
    TabOrder = 0
    object PageTicket: TTabSheet
      Caption = '     Imprimer     '
      object Bevel2: TBevel
        Left = 624
        Top = 5
        Width = 105
        Height = 41
      end
      object EditTesteDesignation: TRichEdit
        Left = 4
        Top = 512
        Width = 409
        Height = 109
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 2
        WordWrap = False
      end
      object BitBtn2: TBitBtn
        Left = 632
        Top = 12
        Width = 91
        Height = 25
        Caption = 'Imprimer'
        TabOrder = 0
        OnClick = BitBtn2Click
        Kind = bkHelp
      end
      object EditTicket: TRichEdit
        Left = 4
        Top = 64
        Width = 725
        Height = 561
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 1
        WordWrap = False
      end
      object Panel1: TPanel
        Left = 8
        Top = 0
        Width = 377
        Height = 49
        BevelInner = bvLowered
        TabOrder = 3
        object Bevel1: TBevel
          Left = 5
          Top = 5
          Width = 116
          Height = 40
        end
        object Bevel11: TBevel
          Left = 253
          Top = 5
          Width = 116
          Height = 40
        end
        object BitImprimeEtat: TBitBtn
          Left = 14
          Top = 12
          Width = 97
          Height = 25
          Caption = 'Imprimer Etat'
          TabOrder = 0
          OnClick = BitImprimeEtatClick
          Kind = bkHelp
        end
        object BitCancel: TBitBtn
          Left = 263
          Top = 12
          Width = 97
          Height = 25
          TabOrder = 1
          OnClick = BitCancelClick
          Kind = bkCancel
        end
      end
    end
    object PageOptions: TTabSheet
      Caption = '     Options     '
      ImageIndex = 1
      object Bevel8: TBevel
        Left = 0
        Top = 0
        Width = 737
        Height = 50
      end
      object AfficheParametresTickets: TPanel
        Left = 0
        Top = 56
        Width = 737
        Height = 561
        BevelInner = bvLowered
        Enabled = False
        TabOrder = 0
        object Bevel10: TBevel
          Left = 8
          Top = 240
          Width = 401
          Height = 305
        end
        object Bevel4: TBevel
          Left = 8
          Top = 144
          Width = 209
          Height = 41
        end
        object Bevel3: TBevel
          Left = 8
          Top = 8
          Width = 209
          Height = 129
        end
        object Label1: TLabel
          Left = 16
          Top = 16
          Width = 61
          Height = 13
          Caption = 'Taille Totale:'
        end
        object Label2: TLabel
          Left = 16
          Top = 40
          Width = 71
          Height = 13
          Caption = 'Taille Unit'#233' M.:'
        end
        object Label3: TLabel
          Left = 16
          Top = 64
          Width = 71
          Height = 13
          Caption = 'Taille Quantit'#233':'
        end
        object Label4: TLabel
          Left = 16
          Top = 88
          Width = 62
          Height = 13
          Caption = 'Taille Prix U.:'
        end
        object Label5: TLabel
          Left = 16
          Top = 112
          Width = 70
          Height = 13
          Caption = 'Taille Montant:'
        end
        object Label6: TLabel
          Left = 16
          Top = 155
          Width = 58
          Height = 13
          Caption = 'Taille D'#233'sig:'
        end
        object Bevel5: TBevel
          Left = 416
          Top = 48
          Width = 313
          Height = 33
        end
        object Bevel6: TBevel
          Left = 416
          Top = 8
          Width = 313
          Height = 33
        end
        object Bevel7: TBevel
          Left = 416
          Top = 88
          Width = 313
          Height = 145
        end
        object IndexImprimanteTicket: TLabel
          Left = 688
          Top = 128
          Width = 30
          Height = 13
          Alignment = taRightJustify
          Caption = '..........'
        end
        object ImprimanteSelectionner: TLabel
          Left = 424
          Top = 152
          Width = 30
          Height = 13
          Caption = '..........'
        end
        object Label7: TLabel
          Left = 16
          Top = 400
          Width = 138
          Height = 13
          Caption = 'Liste imprimantes disponibles:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 16
          Top = 248
          Width = 63
          Height = 13
          Caption = 'Bas de page:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
        end
        object Bevel9: TBevel
          Left = 416
          Top = 240
          Width = 313
          Height = 313
        end
        object EditTailleTotale: TEdit
          Left = 104
          Top = 16
          Width = 33
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          Text = '48'
          OnKeyPress = EditTailleTotaleKeyPress
        end
        object EditTailleUnitM: TEdit
          Left = 104
          Top = 40
          Width = 33
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          Text = '3'
          OnKeyPress = EditTailleTotaleKeyPress
        end
        object EditTailleQuantite: TEdit
          Left = 104
          Top = 64
          Width = 33
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          Text = '6'
          OnKeyPress = EditTailleTotaleKeyPress
        end
        object EditTaillePrixU: TEdit
          Left = 104
          Top = 88
          Width = 33
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          Text = '10'
          OnKeyPress = EditTailleTotaleKeyPress
        end
        object EditTailleMontant: TEdit
          Left = 104
          Top = 112
          Width = 33
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
          Text = '10'
          OnKeyPress = EditTailleTotaleKeyPress
        end
        object EditTailleDesignation: TEdit
          Left = 104
          Top = 155
          Width = 33
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentCtl3D = False
          TabOrder = 5
          Text = '19'
          OnKeyPress = EditTailleTotaleKeyPress
        end
        object IncrimenteEditTailleTotale: TUpDown
          Left = 137
          Top = 16
          Width = 16
          Height = 19
          Associate = EditTailleTotale
          Min = 30
          Position = 48
          TabOrder = 6
          Wrap = False
          OnClick = IncrimenteEditTailleTotaleClick
        end
        object IncrimenteEditTailleUnitM: TUpDown
          Left = 137
          Top = 40
          Width = 16
          Height = 19
          Associate = EditTailleUnitM
          Min = 1
          Max = 5
          Position = 3
          TabOrder = 7
          Wrap = False
          OnClick = IncrimenteEditTailleTotaleClick
        end
        object IncrimenteEditTailleQuantite: TUpDown
          Left = 137
          Top = 64
          Width = 16
          Height = 19
          Associate = EditTailleQuantite
          Min = 3
          Max = 10
          Position = 6
          TabOrder = 8
          Wrap = False
          OnClick = IncrimenteEditTailleTotaleClick
        end
        object IncrimenteEditTaillePrixU: TUpDown
          Left = 137
          Top = 88
          Width = 16
          Height = 19
          Associate = EditTaillePrixU
          Min = 6
          Max = 15
          Position = 10
          TabOrder = 9
          Wrap = False
          OnClick = IncrimenteEditTailleTotaleClick
        end
        object IncrimenteEditTailleMontant: TUpDown
          Left = 137
          Top = 112
          Width = 16
          Height = 19
          Associate = EditTailleMontant
          Min = 6
          Max = 15
          Position = 10
          TabOrder = 10
          Wrap = False
          OnClick = IncrimenteEditTailleTotaleClick
        end
        object IncrimenteEditTailleDesignation: TUpDown
          Left = 137
          Top = 155
          Width = 16
          Height = 19
          Associate = EditTailleDesignation
          Enabled = False
          Min = 0
          Position = 19
          TabOrder = 11
          Wrap = False
        end
        object BitBtn6: TBitBtn
          Left = 424
          Top = 52
          Width = 297
          Height = 25
          Caption = 'Fond'
          TabOrder = 12
          OnClick = BitBtn6Click
          Kind = bkHelp
        end
        object BitBtn1: TBitBtn
          Left = 424
          Top = 12
          Width = 297
          Height = 25
          Caption = 'Param'#232'tres par d'#233'fauts'
          TabOrder = 13
          OnClick = BitBtn1Click
          Kind = bkHelp
        end
        object BitBtn3: TBitBtn
          Left = 424
          Top = 96
          Width = 297
          Height = 25
          Caption = 'Choisir l'#39'imprimante'
          TabOrder = 14
          OnClick = BitBtn3Click
          Kind = bkHelp
        end
        object RBImprimanteTicket: TCheckBox
          Left = 424
          Top = 128
          Width = 121
          Height = 17
          Caption = 'Imprimante ticket'
          Checked = True
          Enabled = False
          State = cbChecked
          TabOrder = 15
        end
        object EditListeImprimantesDisponibles: TMemo
          Left = 16
          Top = 416
          Width = 385
          Height = 137
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 16
          WantReturns = False
        end
        object RBDesignationPlusieursLignes: TCheckBox
          Left = 8
          Top = 208
          Width = 153
          Height = 17
          Caption = 'Designation plusieurs lignes'
          Checked = True
          State = cbChecked
          TabOrder = 17
        end
        object RadioGroup1: TRadioGroup
          Left = 424
          Top = 176
          Width = 297
          Height = 46
          Caption = 'Options:'
          TabOrder = 18
        end
        object RBImprimer: TRadioButton
          Left = 496
          Top = 196
          Width = 65
          Height = 17
          Caption = 'Imprimer'
          TabOrder = 19
        end
        object RBApercu: TRadioButton
          Left = 624
          Top = 196
          Width = 65
          Height = 17
          Caption = 'Ap'#233'r'#231'u'
          TabOrder = 20
        end
        object EditMessageBasPage: TComboBox
          Left = 16
          Top = 269
          Width = 385
          Height = 21
          BevelKind = bkFlat
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          TabOrder = 21
          Text = 'Merci pour votre visite'
          OnChange = EditMessageBasPageChange
          Items.Strings = (
            'Merci pour votre visite'
            'Veuillez v'#233'rifier votre monnaie '#224' la caisse'
            'Veuillez v'#233'rifier vos produits '#224' la caisse')
        end
        object MemoMessageBasPage: TRichEdit
          Left = 16
          Top = 296
          Width = 385
          Height = 97
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          ScrollBars = ssVertical
          TabOrder = 22
        end
        object RBInclureTailleUnitM: TCheckBox
          Left = 160
          Top = 43
          Width = 53
          Height = 17
          Caption = 'Inclure'
          Checked = True
          State = cbChecked
          TabOrder = 23
          OnClick = RBInclureTailleTotaleClick
        end
        object RBInclureTailleQuantite: TCheckBox
          Left = 160
          Top = 67
          Width = 53
          Height = 17
          Caption = 'Inclure'
          Checked = True
          State = cbChecked
          TabOrder = 24
          OnClick = RBInclureTailleTotaleClick
        end
        object RBInclureTaillePrixU: TCheckBox
          Left = 160
          Top = 91
          Width = 53
          Height = 17
          Caption = 'Inclure'
          Checked = True
          State = cbChecked
          TabOrder = 25
          OnClick = RBInclureTailleTotaleClick
        end
        object RBInclureTailleTotale: TCheckBox
          Left = 160
          Top = 19
          Width = 53
          Height = 17
          Caption = 'Inclure'
          Checked = True
          Enabled = False
          State = cbChecked
          TabOrder = 26
          OnClick = RBInclureTailleTotaleClick
        end
        object RBInclureTailleMontant: TCheckBox
          Left = 160
          Top = 115
          Width = 53
          Height = 17
          Caption = 'Inclure'
          Checked = True
          Enabled = False
          State = cbChecked
          TabOrder = 27
          OnClick = RBInclureTailleTotaleClick
        end
        object RBInclureTailleDesignation: TCheckBox
          Left = 160
          Top = 155
          Width = 53
          Height = 17
          Caption = 'Inclure'
          Checked = True
          Enabled = False
          State = cbChecked
          TabOrder = 28
        end
      end
      object BitBtn4: TBitBtn
        Left = 8
        Top = 8
        Width = 105
        Height = 33
        TabOrder = 1
        OnClick = BitBtn4Click
        Kind = bkCancel
      end
      object BitModifierParametres: TBitBtn
        Left = 584
        Top = 8
        Width = 147
        Height = 33
        Caption = 'Modifier les param'#232'tres'
        TabOrder = 2
        OnClick = BitModifierParametresClick
        Kind = bkAll
      end
    end
  end
  object ChoisirFont: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Device = fdPrinter
    MinFontSize = 0
    MaxFontSize = 0
    Left = 440
    Top = 24
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 288
    Top = 336
  end
end
