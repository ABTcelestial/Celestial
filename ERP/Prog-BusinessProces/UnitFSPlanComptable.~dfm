object FSPlanComptable: TFSPlanComptable
  Left = -1
  Top = 2
  Width = 1368
  Height = 731
  Caption = 'FSPlanComptable'
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
  object Panel1: TPanel
    Left = 2
    Top = 1
    Width = 1335
    Height = 688
    TabOrder = 0
    object AfficheListeSousFamille: TPanel
      Left = 8
      Top = 8
      Width = 1201
      Height = 673
      Color = 12645876
      TabOrder = 5
      object Label6: TLabel
        Left = 709
        Top = 504
        Width = 54
        Height = 10
        Caption = 'Sous Famille '#39'6'#39
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object AdresseFichierConcerne: TPanel
        Left = 8
        Top = 5
        Width = 1121
        Height = 17
        BevelInner = bvLowered
        TabOrder = 9
      end
      object TableauSousFamille: TStringGrid
        Left = 8
        Top = 24
        Width = 1119
        Height = 641
        ColCount = 8
        Ctl3D = False
        DefaultColWidth = 40
        DefaultRowHeight = 20
        FixedColor = 12645876
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
        ParentCtl3D = False
        TabOrder = 1
        OnClick = TableauSousFamilleClick
        OnContextPopup = TableauSousFamilleContextPopup
        OnKeyDown = TableauSousFamilleKeyDown
        OnKeyPress = TableauSousFamilleKeyPress
        ColWidths = (
          40
          57
          443
          74
          31
          29
          2
          2)
        RowHeights = (
          20
          20)
      end
      object AfficheSousFamille: TPanel
        Left = 8
        Top = 8
        Width = 345
        Height = 257
        BevelInner = bvLowered
        Color = 12645876
        TabOrder = 0
        Visible = False
        object Bevel5: TBevel
          Left = 8
          Top = 13
          Width = 81
          Height = 156
        end
        object Label21: TLabel
          Left = 58
          Top = 18
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'Code:'
        end
        object Label22: TLabel
          Left = 27
          Top = 39
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = 'D'#233'signation:'
        end
        object Bevel6: TBevel
          Left = 8
          Top = 206
          Width = 329
          Height = 44
        end
        object EditCodeModifSousFamille: TEdit
          Left = 88
          Top = 14
          Width = 57
          Height = 19
          Ctl3D = False
          MaxLength = 6
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object EditCodeSousFamille: TEdit
          Left = 88
          Top = 14
          Width = 57
          Height = 19
          Ctl3D = False
          MaxLength = 6
          ParentCtl3D = False
          TabOrder = 0
          OnEnter = EditCodeSousFamilleEnter
          OnKeyDown = EditCodeSousFamilleKeyDown
        end
        object EditDesignSousFamille: TEdit
          Left = 88
          Top = 35
          Width = 249
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnKeyDown = EditDesignSousFamilleKeyDown
        end
        object BitValiderSousFamille: TBitBtn
          Left = 16
          Top = 216
          Width = 121
          Height = 25
          Caption = 'Valider'
          TabOrder = 4
          OnClick = BitValiderSousFamilleClick
          Kind = bkAll
        end
        object BitBtn102: TBitBtn
          Left = 224
          Top = 216
          Width = 105
          Height = 25
          TabOrder = 2
          OnClick = BitBtn102Click
          Kind = bkCancel
        end
        object RadioGroup1: TRadioGroup
          Left = 152
          Top = 4
          Width = 105
          Height = 28
          TabOrder = 5
        end
        object RBAlphSousFamille: TRadioButton
          Left = 156
          Top = 12
          Width = 45
          Height = 17
          Caption = 'Alph.'
          TabOrder = 6
        end
        object RBNumSousFamille: TRadioButton
          Left = 204
          Top = 12
          Width = 45
          Height = 17
          Caption = 'Num.'
          Checked = True
          TabOrder = 7
          TabStop = True
        end
        object Panel18: TPanel
          Left = 9
          Top = 55
          Width = 328
          Height = 32
          BevelInner = bvLowered
          Color = 14547893
          TabOrder = 8
          object Label23: TLabel
            Left = 13
            Top = 11
            Width = 49
            Height = 13
            Alignment = taRightJustify
            Caption = 'Ctre. Prtie:'
          end
          object RadioGroup19: TRadioGroup
            Left = 64
            Top = 2
            Width = 257
            Height = 25
            TabOrder = 0
          end
          object RBAutoriserSousFamille: TRadioButton
            Left = 76
            Top = 8
            Width = 65
            Height = 17
            Caption = 'Autoriser.'
            TabOrder = 1
            OnKeyDown = RBAutoriserSousFamilleKeyDown
          end
          object RBNePasAutoriserSousFamille: TRadioButton
            Left = 185
            Top = 8
            Width = 101
            Height = 17
            Caption = 'Ne pas Autoriser.'
            TabOrder = 2
            OnKeyDown = RBNePasAutoriserSousFamilleKeyDown
          end
        end
        object Panel19: TPanel
          Left = 9
          Top = 88
          Width = 328
          Height = 29
          BevelInner = bvLowered
          Color = 14547893
          TabOrder = 9
          object Label24: TLabel
            Left = 18
            Top = 9
            Width = 44
            Height = 13
            Alignment = taRightJustify
            Caption = 'Comptes:'
          end
          object RadioGroup20: TRadioGroup
            Left = 64
            Top = 2
            Width = 257
            Height = 25
            TabOrder = 0
          end
          object RBTousSousFamille: TRadioButton
            Left = 76
            Top = 8
            Width = 57
            Height = 17
            Caption = 'Tous.'
            TabOrder = 1
            OnKeyDown = RBTousSousFamilleKeyDown
          end
          object RBListeComptesSousFamille: TRadioButton
            Left = 185
            Top = 8
            Width = 97
            Height = 17
            Caption = 'Liste Comptes.'
            TabOrder = 2
            OnKeyDown = RBListeComptesSousFamilleKeyDown
          end
        end
        object Panel20: TPanel
          Left = 9
          Top = 118
          Width = 328
          Height = 52
          BevelInner = bvLowered
          Color = 14547893
          TabOrder = 10
          object Label27: TLabel
            Left = 8
            Top = 9
            Width = 52
            Height = 13
            Alignment = taRightJustify
            Caption = 'Sp'#233'cificit'#233':'
          end
          object RadioGroup21: TRadioGroup
            Left = 64
            Top = 2
            Width = 257
            Height = 47
            TabOrder = 0
          end
          object RBComptePrecisSousFamille: TRadioButton
            Left = 76
            Top = 8
            Width = 163
            Height = 17
            Caption = 'Compte s'#233'lectionn'#233' (pr'#233'cis).'
            TabOrder = 1
            OnKeyDown = RBComptePrecisSousFamilleKeyDown
          end
          object RBCompteSousCompteSousFamille: TRadioButton
            Left = 76
            Top = 27
            Width = 163
            Height = 17
            Caption = 'Compte et sous comptes.'
            TabOrder = 2
            OnKeyDown = RBCompteSousCompteSousFamilleKeyDown
          end
        end
        object Panel26: TPanel
          Left = 9
          Top = 171
          Width = 328
          Height = 32
          BevelInner = bvLowered
          Color = 14547893
          TabOrder = 11
          object Label48: TLabel
            Left = 6
            Top = 11
            Width = 48
            Height = 13
            Alignment = taRightJustify
            Caption = 'Comporte:'
          end
          object RadioGroup27: TRadioGroup
            Left = 64
            Top = 2
            Width = 257
            Height = 25
            TabOrder = 0
          end
          object RBTiersSousFamille: TRadioButton
            Left = 76
            Top = 8
            Width = 53
            Height = 17
            Caption = 'Tiers.'
            TabOrder = 1
            OnKeyDown = RBTiersSousFamilleKeyDown
          end
          object RBNonTiersSousFamille: TRadioButton
            Left = 185
            Top = 8
            Width = 80
            Height = 17
            Caption = 'Non Tiers'
            TabOrder = 2
            OnKeyDown = RBNonTiersSousFamilleKeyDown
          end
        end
        object RBSousFamilleActive: TCheckBox
          Left = 272
          Top = 5
          Width = 65
          Height = 17
          Caption = 'Active'
          Checked = True
          State = cbChecked
          TabOrder = 12
        end
      end
      object AfficheOptionsSousFamille: TControlBar
        Left = 16
        Top = 352
        Width = 161
        Height = 121
        Color = 12645876
        ParentColor = False
        TabOrder = 2
        Visible = False
        object BitListeSousFamille: TBitBtn
          Left = 11
          Top = 2
          Width = 142
          Height = 22
          Caption = 'Liste des Sous Familles'
          TabOrder = 0
          OnClick = BitListeSousFamilleClick
          Kind = bkHelp
          Margin = 0
        end
        object BitBtn37: TBitBtn
          Left = 11
          Top = 28
          Width = 142
          Height = 22
          Caption = 'Nouvelle Sous Famille'
          ModalResult = 1
          TabOrder = 1
          OnClick = BitBtn37Click
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333330000333333333333333333333333F33333333333
            00003333344333333333333333388F3333333333000033334224333333333333
            338338F3333333330000333422224333333333333833338F3333333300003342
            222224333333333383333338F3333333000034222A22224333333338F338F333
            8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
            33333338F83338F338F33333000033A33333A222433333338333338F338F3333
            0000333333333A222433333333333338F338F33300003333333333A222433333
            333333338F338F33000033333333333A222433333333333338F338F300003333
            33333333A222433333333333338F338F00003333333333333A22433333333333
            3338F38F000033333333333333A223333333333333338F830000333333333333
            333A333333333333333338330000333333333333333333333333333333333333
            0000}
          Margin = 0
          NumGlyphs = 2
        end
        object BitBtn44: TBitBtn
          Left = 11
          Top = 54
          Width = 142
          Height = 22
          Caption = 'Modifier'
          TabOrder = 2
          OnClick = BitBtn44Click
          Kind = bkRetry
          Margin = 0
        end
        object BitBtn47: TBitBtn
          Left = 11
          Top = 80
          Width = 142
          Height = 22
          Caption = 'Supprimer'
          TabOrder = 3
          OnClick = BitBtn47Click
          Kind = bkCancel
          Margin = 0
        end
      end
      object BitBtn10: TBitBtn
        Left = 1136
        Top = 8
        Width = 57
        Height = 25
        Caption = 'Info.'
        ModalResult = 1
        TabOrder = 3
        OnClick = BitBtn10Click
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333388F3333333333000033334224333333333333
          338338F3333333330000333422224333333333333833338F3333333300003342
          222224333333333383333338F3333333000034222A22224333333338F338F333
          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
          0000333333333A222433333333333338F338F33300003333333333A222433333
          333333338F338F33000033333333333A222433333333333338F338F300003333
          33333333A222433333333333338F338F00003333333333333A22433333333333
          3338F38F000033333333333333A223333333333333338F830000333333333333
          333A333333333333333338330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
      object BitBtn11: TBitBtn
        Left = 1136
        Top = 40
        Width = 57
        Height = 25
        Caption = 'Voir'
        TabOrder = 4
        OnClick = BitBtn11Click
        Kind = bkHelp
      end
      object BitBtn24: TBitBtn
        Left = 1136
        Top = 72
        Width = 59
        Height = 25
        Caption = 'Cpt CP'
        TabOrder = 5
        OnClick = BitBtn24Click
        Kind = bkHelp
      end
      object RadioGroup29: TRadioGroup
        Left = 1136
        Top = 107
        Width = 57
        Height = 70
        Caption = 'Options:'
        TabOrder = 6
      end
      object RBPortrait: TRadioButton
        Left = 1144
        Top = 128
        Width = 43
        Height = 17
        Caption = 'Portr.'
        TabOrder = 7
      end
      object RBPaysage: TRadioButton
        Left = 1144
        Top = 152
        Width = 45
        Height = 17
        Caption = 'Pays.'
        TabOrder = 8
      end
    end
    object AfficheListeFamille: TPanel
      Left = 144
      Top = 105
      Width = 793
      Height = 560
      BevelInner = bvLowered
      Color = 14547893
      TabOrder = 4
      Visible = False
      object Label5: TLabel
        Left = 568
        Top = 449
        Width = 45
        Height = 14
        Caption = 'Famille '#39'5'#39
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object TableauFamille: TStringGrid
        Left = 8
        Top = 8
        Width = 777
        Height = 521
        ColCount = 8
        Ctl3D = False
        DefaultColWidth = 40
        DefaultRowHeight = 20
        FixedColor = 14547893
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
        ParentCtl3D = False
        TabOrder = 1
        OnClick = TableauFamilleClick
        OnContextPopup = TableauFamilleContextPopup
        OnKeyDown = TableauFamilleKeyDown
        OnKeyPress = TableauFamilleKeyPress
        ColWidths = (
          40
          47
          361
          73
          32
          33
          2
          2)
        RowHeights = (
          20
          20)
      end
      object AfficheFamille: TPanel
        Left = 8
        Top = 8
        Width = 329
        Height = 257
        BevelInner = bvLowered
        Color = 14547893
        TabOrder = 0
        Visible = False
        object Bevel8: TBevel
          Left = 8
          Top = 13
          Width = 81
          Height = 156
        end
        object Label25: TLabel
          Left = 58
          Top = 18
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'Code:'
        end
        object Label26: TLabel
          Left = 27
          Top = 39
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = 'D'#233'signation:'
        end
        object Bevel9: TBevel
          Left = 8
          Top = 205
          Width = 313
          Height = 44
        end
        object EditCodeModifFamille: TEdit
          Left = 88
          Top = 14
          Width = 49
          Height = 19
          Ctl3D = False
          MaxLength = 5
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object EditCodeFamille: TEdit
          Left = 88
          Top = 14
          Width = 49
          Height = 19
          Ctl3D = False
          MaxLength = 5
          ParentCtl3D = False
          TabOrder = 0
          OnKeyDown = EditCodeFamilleKeyDown
        end
        object EditDesignFamille: TEdit
          Left = 88
          Top = 35
          Width = 233
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          OnKeyDown = EditDesignFamilleKeyDown
        end
        object BitValiderFamille: TBitBtn
          Left = 16
          Top = 216
          Width = 121
          Height = 25
          Caption = 'Valider'
          TabOrder = 4
          OnClick = BitValiderFamilleClick
          Kind = bkAll
        end
        object BitBtn100: TBitBtn
          Left = 208
          Top = 216
          Width = 105
          Height = 25
          TabOrder = 1
          OnClick = BitBtn100Click
          Kind = bkCancel
        end
        object RadioGroup2: TRadioGroup
          Left = 144
          Top = 3
          Width = 105
          Height = 28
          TabOrder = 5
        end
        object RBAlphFamille: TRadioButton
          Left = 152
          Top = 11
          Width = 49
          Height = 17
          Caption = 'Alph.'
          TabOrder = 6
          OnClick = RBAlphFamilleClick
        end
        object RBNumFamille: TRadioButton
          Left = 200
          Top = 11
          Width = 41
          Height = 17
          Caption = 'Num.'
          Checked = True
          TabOrder = 7
          TabStop = True
          OnClick = RBNumFamilleClick
        end
        object Panel15: TPanel
          Left = 9
          Top = 55
          Width = 312
          Height = 32
          BevelInner = bvLowered
          Color = 14547893
          TabOrder = 8
          object Label32: TLabel
            Left = 13
            Top = 11
            Width = 49
            Height = 13
            Alignment = taRightJustify
            Caption = 'Ctre. Prtie:'
          end
          object RadioGroup16: TRadioGroup
            Left = 64
            Top = 2
            Width = 241
            Height = 25
            TabOrder = 0
          end
          object RBAutoriserFamille: TRadioButton
            Left = 76
            Top = 8
            Width = 65
            Height = 17
            Caption = 'Autoriser.'
            TabOrder = 1
            OnKeyDown = RBAutoriserFamilleKeyDown
          end
          object RBNePasAutoriserFamille: TRadioButton
            Left = 177
            Top = 8
            Width = 101
            Height = 17
            Caption = 'Ne pas Autoriser.'
            TabOrder = 2
            OnKeyDown = RBNePasAutoriserFamilleKeyDown
          end
        end
        object Panel16: TPanel
          Left = 9
          Top = 88
          Width = 312
          Height = 29
          BevelInner = bvLowered
          Color = 14547893
          TabOrder = 9
          object Label35: TLabel
            Left = 18
            Top = 9
            Width = 44
            Height = 13
            Alignment = taRightJustify
            Caption = 'Comptes:'
          end
          object RadioGroup17: TRadioGroup
            Left = 64
            Top = 2
            Width = 241
            Height = 25
            TabOrder = 0
          end
          object RBTousFamille: TRadioButton
            Left = 76
            Top = 8
            Width = 57
            Height = 17
            Caption = 'Tous.'
            TabOrder = 1
            OnKeyDown = RBTousFamilleKeyDown
          end
          object RBListeComptesFamille: TRadioButton
            Left = 177
            Top = 8
            Width = 97
            Height = 17
            Caption = 'Liste Comptes.'
            TabOrder = 2
            OnKeyDown = RBListeComptesFamilleKeyDown
          end
        end
        object Panel17: TPanel
          Left = 9
          Top = 118
          Width = 312
          Height = 52
          BevelInner = bvLowered
          Color = 14547893
          TabOrder = 10
          object Label36: TLabel
            Left = 8
            Top = 9
            Width = 52
            Height = 13
            Alignment = taRightJustify
            Caption = 'Sp'#233'cificit'#233':'
          end
          object RadioGroup18: TRadioGroup
            Left = 64
            Top = 2
            Width = 241
            Height = 47
            TabOrder = 0
          end
          object RBComptePrecisFamille: TRadioButton
            Left = 76
            Top = 8
            Width = 163
            Height = 17
            Caption = 'Compte s'#233'lectionn'#233' (pr'#233'cis).'
            TabOrder = 1
            OnKeyDown = RBComptePrecisFamilleKeyDown
          end
          object RBCompteSousCompteFamille: TRadioButton
            Left = 76
            Top = 27
            Width = 163
            Height = 17
            Caption = 'Compte et sous comptes.'
            TabOrder = 2
            OnKeyDown = RBCompteSousCompteFamilleKeyDown
          end
        end
        object Panel25: TPanel
          Left = 9
          Top = 171
          Width = 312
          Height = 32
          BevelInner = bvLowered
          Color = 14547893
          TabOrder = 11
          object Label47: TLabel
            Left = 6
            Top = 11
            Width = 48
            Height = 13
            Alignment = taRightJustify
            Caption = 'Comporte:'
          end
          object RadioGroup26: TRadioGroup
            Left = 64
            Top = 2
            Width = 241
            Height = 25
            TabOrder = 0
          end
          object RBTiersFamille: TRadioButton
            Left = 76
            Top = 8
            Width = 53
            Height = 17
            Caption = 'Tiers.'
            TabOrder = 1
            OnKeyDown = RBTiersFamilleKeyDown
          end
          object RBNonTiersFamille: TRadioButton
            Left = 177
            Top = 8
            Width = 80
            Height = 17
            Caption = 'Non Tiers'
            TabOrder = 2
            OnKeyDown = RBNonTiersFamilleKeyDown
          end
        end
        object RBFamilleActive: TCheckBox
          Left = 256
          Top = 5
          Width = 65
          Height = 17
          Caption = 'Active'
          Checked = True
          State = cbChecked
          TabOrder = 12
        end
      end
      object AfficheOptionsFamille: TControlBar
        Left = 16
        Top = 312
        Width = 161
        Height = 121
        Color = 14547893
        ParentColor = False
        TabOrder = 2
        Visible = False
        object BitListeFamille: TBitBtn
          Left = 11
          Top = 2
          Width = 142
          Height = 22
          Caption = 'Liste des Familles'
          TabOrder = 0
          OnClick = BitListeFamilleClick
          Kind = bkHelp
          Margin = 0
        end
        object BitBtn45: TBitBtn
          Left = 11
          Top = 28
          Width = 142
          Height = 22
          Caption = 'Nouvelle Famille'
          ModalResult = 1
          TabOrder = 1
          OnClick = BitBtn45Click
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333330000333333333333333333333333F33333333333
            00003333344333333333333333388F3333333333000033334224333333333333
            338338F3333333330000333422224333333333333833338F3333333300003342
            222224333333333383333338F3333333000034222A22224333333338F338F333
            8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
            33333338F83338F338F33333000033A33333A222433333338333338F338F3333
            0000333333333A222433333333333338F338F33300003333333333A222433333
            333333338F338F33000033333333333A222433333333333338F338F300003333
            33333333A222433333333333338F338F00003333333333333A22433333333333
            3338F38F000033333333333333A223333333333333338F830000333333333333
            333A333333333333333338330000333333333333333333333333333333333333
            0000}
          Margin = 0
          NumGlyphs = 2
        end
        object BitBtn46: TBitBtn
          Left = 11
          Top = 54
          Width = 142
          Height = 22
          Caption = 'Modifier'
          TabOrder = 2
          OnClick = BitBtn46Click
          Kind = bkRetry
          Margin = 0
        end
        object BitBtn48: TBitBtn
          Left = 11
          Top = 80
          Width = 142
          Height = 22
          Caption = 'Supprimer'
          TabOrder = 3
          OnClick = BitBtn48Click
          Kind = bkCancel
          Margin = 0
        end
      end
      object Annuler5: TBitBtn
        Left = 6
        Top = 531
        Width = 75
        Height = 25
        TabOrder = 3
        OnClick = Annuler5Click
        Kind = bkCancel
      end
    end
    object AfficheListeSousCategorie: TPanel
      Left = 304
      Top = 170
      Width = 721
      Height = 487
      BevelInner = bvLowered
      Color = 12645876
      TabOrder = 3
      Visible = False
      object Label4: TLabel
        Left = 448
        Top = 408
        Width = 87
        Height = 14
        Caption = 'Sous Cat'#233'gorie '#39'4'#39
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object TableauSousCategorie: TStringGrid
        Left = 8
        Top = 8
        Width = 705
        Height = 441
        ColCount = 8
        Ctl3D = False
        DefaultColWidth = 40
        DefaultRowHeight = 20
        FixedColor = 12645876
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
        ParentCtl3D = False
        TabOrder = 1
        OnClick = TableauSousCategorieClick
        OnContextPopup = TableauSousCategorieContextPopup
        OnKeyDown = TableauSousCategorieKeyDown
        OnKeyPress = TableauSousCategorieKeyPress
        ColWidths = (
          40
          37
          299
          71
          31
          28
          2
          2)
        RowHeights = (
          20
          20)
      end
      object AfficheSousCategorie: TPanel
        Left = 8
        Top = 8
        Width = 329
        Height = 257
        BevelInner = bvLowered
        Color = 12645876
        TabOrder = 0
        Visible = False
        object Bevel10: TBevel
          Left = 8
          Top = 13
          Width = 81
          Height = 156
        end
        object Label29: TLabel
          Left = 58
          Top = 18
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'Code:'
        end
        object Label30: TLabel
          Left = 27
          Top = 39
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = 'D'#233'signation:'
        end
        object Bevel11: TBevel
          Left = 8
          Top = 205
          Width = 313
          Height = 44
        end
        object EditCodeModifSousCategorie: TEdit
          Left = 88
          Top = 14
          Width = 41
          Height = 19
          Ctl3D = False
          MaxLength = 4
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object EditCodeSousCategorie: TEdit
          Left = 88
          Top = 14
          Width = 41
          Height = 19
          Ctl3D = False
          MaxLength = 4
          ParentCtl3D = False
          TabOrder = 0
          OnKeyDown = EditCodeSousCategorieKeyDown
        end
        object EditDesignSousCategorie: TEdit
          Left = 88
          Top = 35
          Width = 233
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          OnKeyDown = EditDesignSousCategorieKeyDown
        end
        object BitValiderSousCategorie: TBitBtn
          Left = 16
          Top = 216
          Width = 121
          Height = 25
          Caption = 'Valider'
          TabOrder = 4
          OnClick = BitValiderSousCategorieClick
          Kind = bkAll
        end
        object BitBtn9: TBitBtn
          Left = 208
          Top = 216
          Width = 105
          Height = 25
          TabOrder = 1
          OnClick = BitBtn9Click
          Kind = bkCancel
        end
        object Panel12: TPanel
          Left = 9
          Top = 55
          Width = 312
          Height = 32
          BevelInner = bvLowered
          Color = 14547893
          TabOrder = 5
          object Label19: TLabel
            Left = 13
            Top = 11
            Width = 49
            Height = 13
            Alignment = taRightJustify
            Caption = 'Ctre. Prtie:'
          end
          object RadioGroup13: TRadioGroup
            Left = 64
            Top = 2
            Width = 241
            Height = 25
            TabOrder = 0
          end
          object RBAutoriserSousCategorie: TRadioButton
            Left = 76
            Top = 8
            Width = 65
            Height = 17
            Caption = 'Autoriser.'
            TabOrder = 1
            OnKeyDown = RBAutoriserSousCategorieKeyDown
          end
          object RBNePasAutoriserSousCategorie: TRadioButton
            Left = 169
            Top = 8
            Width = 101
            Height = 17
            Caption = 'Ne pas Autoriser.'
            TabOrder = 2
            OnKeyDown = RBNePasAutoriserSousCategorieKeyDown
          end
        end
        object Panel13: TPanel
          Left = 9
          Top = 88
          Width = 312
          Height = 29
          BevelInner = bvLowered
          Color = 14547893
          TabOrder = 6
          object Label20: TLabel
            Left = 18
            Top = 9
            Width = 44
            Height = 13
            Alignment = taRightJustify
            Caption = 'Comptes:'
          end
          object RadioGroup14: TRadioGroup
            Left = 64
            Top = 2
            Width = 241
            Height = 25
            TabOrder = 0
          end
          object RBTousSousCategorie: TRadioButton
            Left = 76
            Top = 8
            Width = 57
            Height = 17
            Caption = 'Tous.'
            TabOrder = 1
            OnKeyDown = RBTousSousCategorieKeyDown
          end
          object RBListeComptesSousCategorie: TRadioButton
            Left = 169
            Top = 8
            Width = 97
            Height = 17
            Caption = 'Liste Comptes.'
            TabOrder = 2
            OnKeyDown = RBListeComptesSousCategorieKeyDown
          end
        end
        object Panel14: TPanel
          Left = 9
          Top = 118
          Width = 312
          Height = 52
          BevelInner = bvLowered
          Color = 14547893
          TabOrder = 7
          object Label31: TLabel
            Left = 8
            Top = 9
            Width = 52
            Height = 13
            Alignment = taRightJustify
            Caption = 'Sp'#233'cificit'#233':'
          end
          object RadioGroup15: TRadioGroup
            Left = 64
            Top = 2
            Width = 241
            Height = 47
            TabOrder = 0
          end
          object RBComptePrecisSousCategorie: TRadioButton
            Left = 76
            Top = 8
            Width = 163
            Height = 17
            Caption = 'Compte s'#233'lectionn'#233' (pr'#233'cis).'
            TabOrder = 1
            OnKeyDown = RBComptePrecisSousCategorieKeyDown
          end
          object RBCompteSousCompteSousCategorie: TRadioButton
            Left = 76
            Top = 27
            Width = 163
            Height = 17
            Caption = 'Compte et sous comptes.'
            TabOrder = 2
            OnKeyDown = RBCompteSousCompteSousCategorieKeyDown
          end
        end
        object Panel24: TPanel
          Left = 9
          Top = 170
          Width = 312
          Height = 32
          BevelInner = bvLowered
          Color = 14547893
          TabOrder = 8
          object Label46: TLabel
            Left = 6
            Top = 11
            Width = 48
            Height = 13
            Alignment = taRightJustify
            Caption = 'Comporte:'
          end
          object RadioGroup25: TRadioGroup
            Left = 64
            Top = 2
            Width = 241
            Height = 25
            TabOrder = 0
          end
          object RBTiersSousCategorie: TRadioButton
            Left = 76
            Top = 8
            Width = 53
            Height = 17
            Caption = 'Tiers.'
            TabOrder = 1
            OnKeyDown = RBTiersSousCategorieKeyDown
          end
          object RBNonTiersSousCategorie: TRadioButton
            Left = 169
            Top = 8
            Width = 80
            Height = 17
            Caption = 'Non Tiers'
            TabOrder = 2
            OnKeyDown = RBNonTiersSousCategorieKeyDown
          end
        end
        object RBSousCategorieActive: TCheckBox
          Left = 256
          Top = 5
          Width = 65
          Height = 17
          Caption = 'Active'
          Checked = True
          State = cbChecked
          TabOrder = 9
        end
      end
      object AfficheOptionsSousCategorie: TControlBar
        Left = 16
        Top = 272
        Width = 161
        Height = 121
        Color = 12645876
        ParentColor = False
        TabOrder = 2
        Visible = False
        object BitListeSousCategorie: TBitBtn
          Left = 11
          Top = 2
          Width = 142
          Height = 22
          Caption = 'Liste des Sous Cat'#233'gories'
          TabOrder = 0
          OnClick = BitListeSousCategorieClick
          Kind = bkHelp
          Margin = 0
        end
        object BitBtn43: TBitBtn
          Left = 11
          Top = 28
          Width = 142
          Height = 22
          Caption = 'Nouvelle Sous Cat'#233'gorie'
          ModalResult = 1
          TabOrder = 1
          OnClick = BitBtn43Click
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333330000333333333333333333333333F33333333333
            00003333344333333333333333388F3333333333000033334224333333333333
            338338F3333333330000333422224333333333333833338F3333333300003342
            222224333333333383333338F3333333000034222A22224333333338F338F333
            8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
            33333338F83338F338F33333000033A33333A222433333338333338F338F3333
            0000333333333A222433333333333338F338F33300003333333333A222433333
            333333338F338F33000033333333333A222433333333333338F338F300003333
            33333333A222433333333333338F338F00003333333333333A22433333333333
            3338F38F000033333333333333A223333333333333338F830000333333333333
            333A333333333333333338330000333333333333333333333333333333333333
            0000}
          Margin = 0
          NumGlyphs = 2
        end
        object BitBtn49: TBitBtn
          Left = 11
          Top = 54
          Width = 142
          Height = 22
          Caption = 'Modifier'
          TabOrder = 2
          OnClick = BitBtn49Click
          Kind = bkRetry
          Margin = 0
        end
        object BitBtn50: TBitBtn
          Left = 11
          Top = 80
          Width = 142
          Height = 22
          Caption = 'Supprimer'
          TabOrder = 3
          OnClick = BitBtn50Click
          Kind = bkCancel
          Margin = 0
        end
      end
      object Annuler4: TBitBtn
        Left = 6
        Top = 458
        Width = 75
        Height = 25
        TabOrder = 3
        OnClick = Annuler4Click
        Kind = bkCancel
      end
    end
    object AfficheListeCategorie: TPanel
      Left = 480
      Top = 243
      Width = 641
      Height = 398
      BevelInner = bvLowered
      Color = 14547893
      TabOrder = 2
      Visible = False
      object Label3: TLabel
        Left = 568
        Top = 375
        Width = 59
        Height = 14
        Caption = 'Cat'#233'gorie '#39'3'#39
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object TableauCategorie: TStringGrid
        Left = 8
        Top = 8
        Width = 625
        Height = 353
        ColCount = 8
        Ctl3D = False
        DefaultColWidth = 40
        DefaultRowHeight = 20
        FixedColor = 14547893
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
        ParentCtl3D = False
        TabOrder = 1
        OnClick = TableauCategorieClick
        OnContextPopup = TableauCategorieContextPopup
        OnKeyDown = TableauCategorieKeyDown
        OnKeyPress = TableauCategorieKeyPress
        ColWidths = (
          40
          31
          239
          51
          31
          34
          2
          2)
        RowHeights = (
          20
          20)
      end
      object AfficheOptionsCategorie: TControlBar
        Left = 16
        Top = 232
        Width = 161
        Height = 121
        Color = 14547893
        ParentColor = False
        TabOrder = 2
        Visible = False
        object BitListeCategorie: TBitBtn
          Left = 11
          Top = 2
          Width = 142
          Height = 22
          Caption = 'Liste des Cat'#233'gories'
          TabOrder = 0
          OnClick = BitListeCategorieClick
          Kind = bkHelp
          Margin = 0
        end
        object BitBtn53: TBitBtn
          Left = 11
          Top = 28
          Width = 142
          Height = 22
          Caption = 'Nouvelle Cat'#233'gorie'
          ModalResult = 1
          TabOrder = 1
          OnClick = BitBtn53Click
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333330000333333333333333333333333F33333333333
            00003333344333333333333333388F3333333333000033334224333333333333
            338338F3333333330000333422224333333333333833338F3333333300003342
            222224333333333383333338F3333333000034222A22224333333338F338F333
            8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
            33333338F83338F338F33333000033A33333A222433333338333338F338F3333
            0000333333333A222433333333333338F338F33300003333333333A222433333
            333333338F338F33000033333333333A222433333333333338F338F300003333
            33333333A222433333333333338F338F00003333333333333A22433333333333
            3338F38F000033333333333333A223333333333333338F830000333333333333
            333A333333333333333338330000333333333333333333333333333333333333
            0000}
          Margin = 0
          NumGlyphs = 2
        end
        object BitBtn54: TBitBtn
          Left = 11
          Top = 54
          Width = 142
          Height = 22
          Caption = 'Modifier'
          TabOrder = 2
          OnClick = BitBtn54Click
          Kind = bkRetry
          Margin = 0
        end
        object BitBtn55: TBitBtn
          Left = 11
          Top = 80
          Width = 142
          Height = 22
          Caption = 'Supprimer'
          TabOrder = 3
          OnClick = BitBtn55Click
          Kind = bkCancel
          Margin = 0
        end
      end
      object AfficheCategorie: TPanel
        Left = 8
        Top = 8
        Width = 329
        Height = 257
        BevelInner = bvLowered
        Color = 14547893
        TabOrder = 0
        Visible = False
        object Bevel12: TBevel
          Left = 8
          Top = 13
          Width = 81
          Height = 156
        end
        object Label33: TLabel
          Left = 58
          Top = 18
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'Code:'
        end
        object Label34: TLabel
          Left = 27
          Top = 39
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = 'D'#233'signation:'
        end
        object Bevel13: TBevel
          Left = 8
          Top = 205
          Width = 313
          Height = 44
        end
        object EditCodeModifCategorie: TEdit
          Left = 88
          Top = 14
          Width = 33
          Height = 19
          Ctl3D = False
          MaxLength = 3
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object EditCodeCategorie: TEdit
          Left = 88
          Top = 14
          Width = 33
          Height = 19
          Ctl3D = False
          MaxLength = 3
          ParentCtl3D = False
          TabOrder = 0
          OnKeyDown = EditCodeCategorieKeyDown
        end
        object EditDesignCategorie: TEdit
          Left = 88
          Top = 35
          Width = 233
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          OnKeyDown = EditDesignCategorieKeyDown
        end
        object BitValiderCategorie: TBitBtn
          Left = 16
          Top = 216
          Width = 121
          Height = 25
          Caption = 'Valider'
          TabOrder = 4
          OnClick = BitValiderCategorieClick
          Kind = bkAll
        end
        object BitBtn52: TBitBtn
          Left = 208
          Top = 208
          Width = 105
          Height = 25
          TabOrder = 1
          OnClick = BitBtn52Click
          Kind = bkCancel
        end
        object Panel9: TPanel
          Left = 9
          Top = 55
          Width = 312
          Height = 32
          BevelInner = bvLowered
          Color = 14547893
          TabOrder = 5
          object Label16: TLabel
            Left = 13
            Top = 11
            Width = 49
            Height = 13
            Alignment = taRightJustify
            Caption = 'Ctre. Prtie:'
          end
          object RadioGroup10: TRadioGroup
            Left = 64
            Top = 2
            Width = 241
            Height = 25
            TabOrder = 0
          end
          object RBAutoriserCategorie: TRadioButton
            Left = 76
            Top = 8
            Width = 65
            Height = 17
            Caption = 'Autoriser.'
            TabOrder = 1
            OnKeyDown = RBAutoriserCategorieKeyDown
          end
          object RBNePasAutoriserCategorie: TRadioButton
            Left = 177
            Top = 8
            Width = 101
            Height = 17
            Caption = 'Ne pas Autoriser.'
            TabOrder = 2
            OnKeyDown = RBNePasAutoriserCategorieKeyDown
          end
        end
        object Panel10: TPanel
          Left = 9
          Top = 88
          Width = 312
          Height = 29
          BevelInner = bvLowered
          Color = 14547893
          TabOrder = 6
          object Label17: TLabel
            Left = 18
            Top = 9
            Width = 44
            Height = 13
            Alignment = taRightJustify
            Caption = 'Comptes:'
          end
          object RadioGroup11: TRadioGroup
            Left = 64
            Top = 2
            Width = 241
            Height = 25
            TabOrder = 0
          end
          object RBTousCategorie: TRadioButton
            Left = 76
            Top = 8
            Width = 57
            Height = 17
            Caption = 'Tous.'
            TabOrder = 1
            OnKeyDown = RBTousCategorieKeyDown
          end
          object RBListeComptesCategorie: TRadioButton
            Left = 177
            Top = 8
            Width = 97
            Height = 17
            Caption = 'Liste Comptes.'
            TabOrder = 2
            OnKeyDown = RBListeComptesCategorieKeyDown
          end
        end
        object Panel11: TPanel
          Left = 9
          Top = 118
          Width = 312
          Height = 52
          BevelInner = bvLowered
          Color = 14547893
          TabOrder = 7
          object Label18: TLabel
            Left = 8
            Top = 9
            Width = 52
            Height = 13
            Alignment = taRightJustify
            Caption = 'Sp'#233'cificit'#233':'
          end
          object RadioGroup12: TRadioGroup
            Left = 64
            Top = 2
            Width = 241
            Height = 47
            TabOrder = 0
          end
          object RBComptePrecisCategorie: TRadioButton
            Left = 76
            Top = 8
            Width = 163
            Height = 17
            Caption = 'Compte s'#233'lectionn'#233' (pr'#233'cis).'
            TabOrder = 1
            OnKeyDown = RBComptePrecisCategorieKeyDown
          end
          object RBCompteSousCompteCategorie: TRadioButton
            Left = 76
            Top = 27
            Width = 163
            Height = 17
            Caption = 'Compte et sous comptes.'
            TabOrder = 2
            OnKeyDown = RBCompteSousCompteCategorieKeyDown
          end
        end
        object Panel23: TPanel
          Left = 9
          Top = 171
          Width = 312
          Height = 32
          BevelInner = bvLowered
          Color = 14547893
          TabOrder = 8
          object Label45: TLabel
            Left = 6
            Top = 11
            Width = 48
            Height = 13
            Alignment = taRightJustify
            Caption = 'Comporte:'
          end
          object RadioGroup24: TRadioGroup
            Left = 64
            Top = 2
            Width = 241
            Height = 25
            TabOrder = 0
          end
          object RBTiersCategorie: TRadioButton
            Left = 76
            Top = 8
            Width = 53
            Height = 17
            Caption = 'Tiers.'
            TabOrder = 1
            OnKeyDown = RBTiersCategorieKeyDown
          end
          object RBNonTiersCategorie: TRadioButton
            Left = 177
            Top = 8
            Width = 80
            Height = 17
            Caption = 'Non Tiers'
            TabOrder = 2
            OnKeyDown = RBNonTiersCategorieKeyDown
          end
        end
        object RBCategorieActive: TCheckBox
          Left = 256
          Top = 5
          Width = 65
          Height = 17
          Caption = 'Active'
          Checked = True
          State = cbChecked
          TabOrder = 9
        end
      end
      object Annuler3: TBitBtn
        Left = 6
        Top = 370
        Width = 75
        Height = 25
        TabOrder = 3
        OnClick = Annuler3Click
        Kind = bkCancel
      end
    end
    object AfficheListeSousClasse: TPanel
      Left = 648
      Top = 276
      Width = 577
      Height = 348
      BevelInner = bvLowered
      Color = 12645876
      TabOrder = 1
      Visible = False
      object Label2: TLabel
        Left = 496
        Top = 326
        Width = 74
        Height = 14
        Caption = 'Sous Classe '#39'2'#39
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object TableauSousClasse: TStringGrid
        Left = 8
        Top = 8
        Width = 561
        Height = 311
        ColCount = 8
        Ctl3D = False
        DefaultColWidth = 40
        DefaultRowHeight = 20
        FixedColor = 12645876
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
        ParentCtl3D = False
        TabOrder = 1
        OnClick = TableauSousClasseClick
        OnContextPopup = TableauSousClasseContextPopup
        OnKeyDown = TableauSousClasseKeyDown
        OnKeyPress = TableauSousClasseKeyPress
        ColWidths = (
          40
          25
          181
          42
          31
          27
          2
          2)
        RowHeights = (
          20
          20)
      end
      object AfficheOptionsSousClasse: TControlBar
        Left = 16
        Top = 192
        Width = 161
        Height = 121
        Color = 12645876
        ParentColor = False
        TabOrder = 2
        Visible = False
        object BitListeSousClasse: TBitBtn
          Left = 11
          Top = 2
          Width = 142
          Height = 22
          Caption = 'Liste des Sous Classes'
          TabOrder = 0
          OnClick = BitListeSousClasseClick
          Kind = bkHelp
          Margin = 0
        end
        object BitBtn58: TBitBtn
          Left = 11
          Top = 28
          Width = 142
          Height = 22
          Caption = 'Nouvelle Sous Classe'
          ModalResult = 1
          TabOrder = 1
          OnClick = BitBtn58Click
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333330000333333333333333333333333F33333333333
            00003333344333333333333333388F3333333333000033334224333333333333
            338338F3333333330000333422224333333333333833338F3333333300003342
            222224333333333383333338F3333333000034222A22224333333338F338F333
            8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
            33333338F83338F338F33333000033A33333A222433333338333338F338F3333
            0000333333333A222433333333333338F338F33300003333333333A222433333
            333333338F338F33000033333333333A222433333333333338F338F300003333
            33333333A222433333333333338F338F00003333333333333A22433333333333
            3338F38F000033333333333333A223333333333333338F830000333333333333
            333A333333333333333338330000333333333333333333333333333333333333
            0000}
          Margin = 0
          NumGlyphs = 2
        end
        object BitBtn59: TBitBtn
          Left = 11
          Top = 54
          Width = 142
          Height = 22
          Caption = 'Modifier'
          TabOrder = 2
          OnClick = BitBtn59Click
          Kind = bkRetry
          Margin = 0
        end
        object BitBtn60: TBitBtn
          Left = 11
          Top = 80
          Width = 142
          Height = 22
          Caption = 'Supprimer'
          TabOrder = 3
          OnClick = BitBtn60Click
          Kind = bkCancel
          Margin = 0
        end
      end
      object AfficheSousClasse: TPanel
        Left = 8
        Top = 8
        Width = 329
        Height = 259
        BevelInner = bvLowered
        Color = 12645876
        TabOrder = 0
        Visible = False
        object Bevel14: TBevel
          Left = 8
          Top = 13
          Width = 81
          Height = 193
        end
        object Label37: TLabel
          Left = 58
          Top = 18
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'Code:'
        end
        object Label38: TLabel
          Left = 27
          Top = 39
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = 'D'#233'signation:'
        end
        object Bevel15: TBevel
          Left = 8
          Top = 208
          Width = 313
          Height = 44
        end
        object EditCodeModifSousClasse: TEdit
          Left = 88
          Top = 14
          Width = 25
          Height = 19
          Ctl3D = False
          MaxLength = 2
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object EditCodeSousClasse: TEdit
          Left = 88
          Top = 14
          Width = 25
          Height = 19
          Ctl3D = False
          MaxLength = 2
          ParentCtl3D = False
          TabOrder = 0
          OnKeyDown = EditCodeSousClasseKeyDown
        end
        object EditDesignSousClasse: TEdit
          Left = 88
          Top = 35
          Width = 233
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          OnKeyDown = EditDesignSousClasseKeyDown
        end
        object BitValiderSousClasse: TBitBtn
          Left = 16
          Top = 216
          Width = 121
          Height = 25
          Caption = 'Valider'
          TabOrder = 4
          OnClick = BitValiderSousClasseClick
          Kind = bkAll
        end
        object BitBtn57: TBitBtn
          Left = 200
          Top = 216
          Width = 105
          Height = 25
          TabOrder = 1
          OnClick = BitBtn57Click
          Kind = bkCancel
        end
        object Panel5: TPanel
          Left = 9
          Top = 57
          Width = 312
          Height = 32
          BevelInner = bvLowered
          Color = 14547893
          TabOrder = 5
          object Label13: TLabel
            Left = 13
            Top = 11
            Width = 49
            Height = 13
            Alignment = taRightJustify
            Caption = 'Ctre. Prtie:'
          end
          object RadioGroup7: TRadioGroup
            Left = 64
            Top = 2
            Width = 241
            Height = 25
            TabOrder = 0
          end
          object RBAutoriserSousClasse: TRadioButton
            Left = 76
            Top = 8
            Width = 65
            Height = 17
            Caption = 'Autoriser.'
            TabOrder = 1
            OnKeyDown = RBAutoriserSousClasseKeyDown
          end
          object RBNePasAutoriserSousClasse: TRadioButton
            Left = 185
            Top = 8
            Width = 101
            Height = 17
            Caption = 'Ne pas Autoriser.'
            TabOrder = 2
            OnKeyDown = RBNePasAutoriserSousClasseKeyDown
          end
        end
        object Panel7: TPanel
          Left = 9
          Top = 90
          Width = 312
          Height = 29
          BevelInner = bvLowered
          Color = 14547893
          TabOrder = 6
          object Label14: TLabel
            Left = 18
            Top = 9
            Width = 44
            Height = 13
            Alignment = taRightJustify
            Caption = 'Comptes:'
          end
          object RadioGroup8: TRadioGroup
            Left = 64
            Top = 2
            Width = 241
            Height = 25
            TabOrder = 0
          end
          object RBTousSousClasse: TRadioButton
            Left = 76
            Top = 8
            Width = 57
            Height = 17
            Caption = 'Tous.'
            TabOrder = 1
            OnKeyDown = RBTousSousClasseKeyDown
          end
          object RBListeComptesSousClasse: TRadioButton
            Left = 185
            Top = 8
            Width = 97
            Height = 17
            Caption = 'Liste Comptes.'
            TabOrder = 2
            OnKeyDown = RBListeComptesSousClasseKeyDown
          end
        end
        object Panel8: TPanel
          Left = 9
          Top = 120
          Width = 312
          Height = 52
          BevelInner = bvLowered
          Color = 14547893
          TabOrder = 7
          object Label15: TLabel
            Left = 8
            Top = 9
            Width = 52
            Height = 13
            Alignment = taRightJustify
            Caption = 'Sp'#233'cificit'#233':'
          end
          object RadioGroup9: TRadioGroup
            Left = 64
            Top = 2
            Width = 241
            Height = 47
            TabOrder = 0
          end
          object RBComptePrecisSousClasse: TRadioButton
            Left = 76
            Top = 8
            Width = 163
            Height = 17
            Caption = 'Compte s'#233'lectionn'#233' (pr'#233'cis).'
            TabOrder = 1
            OnKeyDown = RBComptePrecisSousClasseKeyDown
          end
          object RBCompteSousCompteSousClasse: TRadioButton
            Left = 76
            Top = 27
            Width = 163
            Height = 17
            Caption = 'Compte et sous comptes.'
            TabOrder = 2
            OnKeyDown = RBCompteSousCompteSousClasseKeyDown
          end
        end
        object Panel22: TPanel
          Left = 9
          Top = 173
          Width = 312
          Height = 32
          BevelInner = bvLowered
          Color = 14547893
          TabOrder = 8
          object Label40: TLabel
            Left = 6
            Top = 11
            Width = 48
            Height = 13
            Alignment = taRightJustify
            Caption = 'Comporte:'
          end
          object RadioGroup23: TRadioGroup
            Left = 64
            Top = 2
            Width = 241
            Height = 25
            TabOrder = 0
          end
          object RBTiersSousClasse: TRadioButton
            Left = 76
            Top = 8
            Width = 53
            Height = 17
            Caption = 'Tiers.'
            TabOrder = 1
            OnKeyDown = RBTiersSousClasseKeyDown
          end
          object RBNonTiersSousClasse: TRadioButton
            Left = 185
            Top = 8
            Width = 80
            Height = 17
            Caption = 'Non Tiers'
            TabOrder = 2
            OnKeyDown = RBNonTiersSousClasseKeyDown
          end
        end
        object RBSousClasseActive: TCheckBox
          Left = 256
          Top = 5
          Width = 65
          Height = 17
          Caption = 'Active'
          Checked = True
          State = cbChecked
          TabOrder = 9
        end
      end
      object Annuler2: TBitBtn
        Left = 6
        Top = 321
        Width = 75
        Height = 25
        TabOrder = 3
        OnClick = Annuler2Click
        Kind = bkCancel
      end
    end
    object AfficheListeClasse: TPanel
      Left = 808
      Top = 309
      Width = 513
      Height = 304
      BevelInner = bvLowered
      Color = 14547893
      TabOrder = 0
      Visible = False
      object Label1: TLabel
        Left = 456
        Top = 286
        Width = 46
        Height = 14
        Caption = 'Classe '#39'1'#39
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object TableauClasse: TStringGrid
        Left = 8
        Top = 8
        Width = 497
        Height = 265
        ColCount = 8
        Ctl3D = False
        DefaultColWidth = 40
        DefaultRowHeight = 20
        FixedColor = 14547893
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
        ParentCtl3D = False
        TabOrder = 1
        OnClick = TableauClasseClick
        OnContextPopup = TableauClasseContextPopup
        OnKeyDown = TableauClasseKeyDown
        OnKeyPress = TableauClasseKeyPress
        ColWidths = (
          28
          19
          131
          29
          31
          20
          2
          2)
        RowHeights = (
          20
          20)
      end
      object AfficheOptionsClasse: TControlBar
        Left = 16
        Top = 144
        Width = 161
        Height = 121
        Color = 14547893
        ParentColor = False
        TabOrder = 2
        Visible = False
        object BitListeClasse: TBitBtn
          Left = 11
          Top = 2
          Width = 142
          Height = 22
          Caption = 'Liste des Classes'
          TabOrder = 0
          OnClick = BitListeClasseClick
          Kind = bkHelp
          Margin = 0
        end
        object BitBtn63: TBitBtn
          Left = 11
          Top = 28
          Width = 142
          Height = 22
          Caption = 'Nouvelle Classe'
          ModalResult = 1
          TabOrder = 1
          OnClick = BitBtn63Click
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333330000333333333333333333333333F33333333333
            00003333344333333333333333388F3333333333000033334224333333333333
            338338F3333333330000333422224333333333333833338F3333333300003342
            222224333333333383333338F3333333000034222A22224333333338F338F333
            8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
            33333338F83338F338F33333000033A33333A222433333338333338F338F3333
            0000333333333A222433333333333338F338F33300003333333333A222433333
            333333338F338F33000033333333333A222433333333333338F338F300003333
            33333333A222433333333333338F338F00003333333333333A22433333333333
            3338F38F000033333333333333A223333333333333338F830000333333333333
            333A333333333333333338330000333333333333333333333333333333333333
            0000}
          Margin = 0
          NumGlyphs = 2
        end
        object BitBtn64: TBitBtn
          Left = 11
          Top = 54
          Width = 142
          Height = 22
          Caption = 'Modifier'
          TabOrder = 2
          OnClick = BitBtn64Click
          Kind = bkRetry
          Margin = 0
        end
        object BitBtn65: TBitBtn
          Left = 11
          Top = 80
          Width = 142
          Height = 22
          Caption = 'Supprimer'
          TabOrder = 3
          OnClick = BitBtn65Click
          Kind = bkCancel
          Margin = 0
        end
      end
      object AfficheClasse: TPanel
        Left = 8
        Top = 8
        Width = 273
        Height = 241
        BevelInner = bvLowered
        Color = 14547893
        TabOrder = 0
        Visible = False
        object Bevel16: TBevel
          Left = 6
          Top = 6
          Width = 87
          Height = 187
        end
        object Label41: TLabel
          Left = 46
          Top = 10
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'Code:'
        end
        object Label42: TLabel
          Left = 15
          Top = 28
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = 'D'#233'signation:'
        end
        object Bevel17: TBevel
          Left = 6
          Top = 199
          Width = 260
          Height = 34
        end
        object EditCodeModifClasse: TEdit
          Left = 76
          Top = 6
          Width = 17
          Height = 19
          Ctl3D = False
          MaxLength = 1
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object EditCodeClasse: TEdit
          Left = 76
          Top = 6
          Width = 17
          Height = 19
          Ctl3D = False
          MaxLength = 1
          ParentCtl3D = False
          TabOrder = 0
          OnKeyDown = EditCodeClasseKeyDown
        end
        object EditDesignClasse: TEdit
          Left = 76
          Top = 26
          Width = 189
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          OnKeyDown = EditDesignClasseKeyDown
        end
        object BitValiderClasse: TBitBtn
          Left = 16
          Top = 204
          Width = 121
          Height = 25
          Caption = 'Valider'
          TabOrder = 4
          OnClick = BitValiderClasseClick
          Kind = bkAll
        end
        object BitBtn62: TBitBtn
          Left = 171
          Top = 204
          Width = 89
          Height = 25
          TabOrder = 1
          OnClick = BitBtn62Click
          Kind = bkCancel
        end
        object Panel2: TPanel
          Left = 9
          Top = 79
          Width = 256
          Height = 29
          BevelInner = bvLowered
          Color = 14547893
          TabOrder = 5
          object Label44: TLabel
            Left = 18
            Top = 9
            Width = 44
            Height = 13
            Alignment = taRightJustify
            Caption = 'Comptes:'
          end
          object RadioGroup4: TRadioGroup
            Left = 64
            Top = 2
            Width = 185
            Height = 25
            TabOrder = 0
          end
          object RBTousClasse: TRadioButton
            Left = 78
            Top = 8
            Width = 57
            Height = 17
            Caption = 'Tous.'
            TabOrder = 1
            OnKeyDown = RBTousClasseKeyDown
          end
          object RBListeComptesClasse: TRadioButton
            Left = 146
            Top = 8
            Width = 97
            Height = 17
            Caption = 'Liste Comptes.'
            TabOrder = 2
            OnKeyDown = RBListeComptesClasseKeyDown
          end
        end
        object Panel3: TPanel
          Left = 9
          Top = 46
          Width = 256
          Height = 32
          BevelInner = bvLowered
          Color = 14547893
          TabOrder = 6
          object Label43: TLabel
            Left = 13
            Top = 11
            Width = 49
            Height = 13
            Alignment = taRightJustify
            Caption = 'Ctre. Prtie:'
          end
          object RadioGroup3: TRadioGroup
            Left = 64
            Top = 2
            Width = 185
            Height = 25
            TabOrder = 0
          end
          object RBAutoriserClasse: TRadioButton
            Left = 76
            Top = 8
            Width = 65
            Height = 17
            Caption = 'Autoriser.'
            TabOrder = 1
            OnKeyDown = RBAutoriserClasseKeyDown
          end
          object RBNePasAutoriserClasse: TRadioButton
            Left = 145
            Top = 8
            Width = 101
            Height = 17
            Caption = 'Ne pas Autoriser.'
            TabOrder = 2
            OnKeyDown = RBNePasAutoriserClasseKeyDown
          end
        end
        object Panel4: TPanel
          Left = 9
          Top = 109
          Width = 256
          Height = 52
          BevelInner = bvLowered
          Color = 14547893
          TabOrder = 7
          object Label9: TLabel
            Left = 8
            Top = 9
            Width = 52
            Height = 13
            Alignment = taRightJustify
            Caption = 'Sp'#233'cificit'#233':'
          end
          object RadioGroup5: TRadioGroup
            Left = 64
            Top = 2
            Width = 185
            Height = 47
            TabOrder = 0
          end
          object RBComptePrecisClasse: TRadioButton
            Left = 78
            Top = 8
            Width = 163
            Height = 17
            Caption = 'Compte s'#233'lectionn'#233' (pr'#233'cis).'
            TabOrder = 1
            OnKeyDown = RBComptePrecisClasseKeyDown
          end
          object RBCompteSousCompteClasse: TRadioButton
            Left = 78
            Top = 27
            Width = 163
            Height = 17
            Caption = 'Compte et sous comptes.'
            TabOrder = 2
            OnKeyDown = RBCompteSousCompteClasseKeyDown
          end
        end
        object Panel21: TPanel
          Left = 9
          Top = 162
          Width = 256
          Height = 32
          BevelInner = bvLowered
          Color = 14547893
          TabOrder = 8
          object Label39: TLabel
            Left = 6
            Top = 11
            Width = 48
            Height = 13
            Alignment = taRightJustify
            Caption = 'Comporte:'
          end
          object RadioGroup22: TRadioGroup
            Left = 64
            Top = 2
            Width = 185
            Height = 25
            TabOrder = 0
          end
          object RBTiersClasse: TRadioButton
            Left = 76
            Top = 8
            Width = 53
            Height = 17
            Caption = 'Tiers.'
            TabOrder = 1
            OnKeyDown = RBTiersClasseKeyDown
          end
          object RBNonTiersClasse: TRadioButton
            Left = 145
            Top = 8
            Width = 80
            Height = 17
            Caption = 'Non Tiers'
            TabOrder = 2
            OnKeyDown = RBNonTiersClasseKeyDown
          end
        end
        object RBClasseActive: TCheckBox
          Left = 200
          Top = 5
          Width = 57
          Height = 17
          Caption = 'Active'
          Checked = True
          State = cbChecked
          TabOrder = 9
        end
      end
      object Annuler1: TBitBtn
        Left = 6
        Top = 275
        Width = 75
        Height = 25
        TabOrder = 3
        OnClick = Annuler1Click
        Kind = bkCancel
      end
    end
    object AfficheInformationPrincipale: TMemo
      Left = 8
      Top = 40
      Width = 321
      Height = 257
      Ctl3D = False
      Lines.Strings = (
        'Sp'#233'cificit'#233' d'#39'un compte principal:'
        ''
        
          'La sp'#233'cificit'#233' d'#39'un compte principal est son '#233'tendu d'#39'applicatio' +
          'n :'
        ''
        'Exemple :'
        ''
        'Compte principal : 530 : Fournisseurs.'
        ''
        '1)- Si la sp'#233'cificit'#233' du compte 530 est '#171'Compte s'#233'lectionn'#233' '
        
          '(pr'#233'cis).'#39'1'#39' '#187' c'#39'est -'#224'-dire que les conditions sous les quelles' +
          ' est '
        
          'enregistr'#233', s'#39'applique sur, et seulement sur le compte pr'#233'cis 53' +
          '0.'
        ''
        '2)- Si la sp'#233'cificit'#233' du compte 530 est '#171'Compte et sous '
        
          'comptes.'#39'N'#39#187' c'#39'est-'#224'-dire que les conditions sous les quelles es' +
          't '
        
          'enregistr'#233', s'#39'applique sur le compte 530 et ses sous comptes 530' +
          '1, '
        '5302, 5303....')
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 7
      Visible = False
    end
    object AfficheControleSpecificite: TPanel
      Left = 136
      Top = 256
      Width = 617
      Height = 153
      BevelInner = bvLowered
      BevelWidth = 5
      Color = 12189695
      TabOrder = 8
      Visible = False
      object Bevel22: TBevel
        Left = 16
        Top = 96
        Width = 585
        Height = 41
      end
      object EditOrdreControleSpecificite: TEdit
        Left = 136
        Top = 106
        Width = 33
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
      end
      object BitValideControleSpecificite: TBitBtn
        Left = 24
        Top = 104
        Width = 97
        Height = 25
        TabOrder = 0
        OnClick = BitValideControleSpecificiteClick
        Kind = bkYes
      end
      object BitNonControleSpecificite: TBitBtn
        Left = 520
        Top = 104
        Width = 75
        Height = 25
        TabOrder = 1
        OnClick = BitNonControleSpecificiteClick
        Kind = bkNo
      end
      object TitreAfficheControleSpecificite: TPanel
        Left = 16
        Top = 16
        Width = 585
        Height = 33
        BevelInner = bvLowered
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object MessageAfficheControleSpecificite: TPanel
        Left = 16
        Top = 56
        Width = 585
        Height = 33
        Alignment = taLeftJustify
        BevelInner = bvLowered
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object ResultControleSpecificite: TPanel
        Left = 128
        Top = 100
        Width = 385
        Height = 33
        BevelInner = bvLowered
        Color = 12189695
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
    end
    object AfficheRapportControleSpecificite: TPanel
      Left = 8
      Top = 32
      Width = 377
      Height = 521
      BevelInner = bvLowered
      Color = 12189695
      TabOrder = 9
      Visible = False
      object Bevel20: TBevel
        Left = 8
        Top = 8
        Width = 361
        Height = 41
      end
      object RapportControleSpecificite: TMemo
        Left = 8
        Top = 192
        Width = 361
        Height = 321
        Ctl3D = False
        Lines.Strings = (
          '')
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
      object BitBtn7: TBitBtn
        Left = 16
        Top = 16
        Width = 81
        Height = 25
        Caption = 'Imprimer'
        TabOrder = 1
        OnClick = BitBtn7Click
        Kind = bkAll
      end
      object BitBtn8: TBitBtn
        Left = 288
        Top = 16
        Width = 75
        Height = 25
        TabOrder = 2
        OnClick = BitBtn8Click
        Kind = bkCancel
      end
      object TableauListeRapportControleSpecificite: TStringGrid
        Left = 8
        Top = 56
        Width = 361
        Height = 129
        ColCount = 3
        Ctl3D = False
        DefaultColWidth = 30
        DefaultRowHeight = 18
        RowCount = 2
        ParentCtl3D = False
        TabOrder = 3
        OnClick = TableauListeRapportControleSpecificiteClick
        ColWidths = (
          30
          70
          232)
      end
    end
    object AfficheListeCptContrePartie: TPanel
      Left = 1088
      Top = 280
      Width = 993
      Height = 673
      BevelInner = bvLowered
      Color = 11468799
      TabOrder = 6
      Visible = False
      object Bevel19: TBevel
        Left = 8
        Top = 48
        Width = 593
        Height = 25
      end
      object Bevel1: TBevel
        Left = 8
        Top = 8
        Width = 593
        Height = 33
      end
      object Label10: TLabel
        Left = 16
        Top = 19
        Width = 81
        Height = 13
        Caption = 'Compte principal:'
      end
      object Bevel2: TBevel
        Left = 832
        Top = 8
        Width = 154
        Height = 65
      end
      object Bevel3: TBevel
        Left = 832
        Top = 80
        Width = 153
        Height = 121
      end
      object Label28: TLabel
        Left = 16
        Top = 53
        Width = 153
        Height = 13
        Caption = 'Liste des comptes  contre partie:'
      end
      object TableauListeCompteCP: TStringGrid
        Left = 8
        Top = 80
        Width = 817
        Height = 585
        Ctl3D = False
        DefaultRowHeight = 20
        FixedColor = 7143423
        FixedCols = 2
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
        ParentCtl3D = False
        TabOrder = 0
        OnKeyDown = TableauListeCompteCPKeyDown
        OnKeyPress = TableauListeCompteCPKeyPress
        ColWidths = (
          64
          2
          79
          344
          73)
      end
      object EditNumComptePrincipal: TEdit
        Left = 104
        Top = 16
        Width = 57
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
      end
      object EditDesignationComptePrincipal: TEdit
        Left = 160
        Top = 16
        Width = 433
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
      end
      object BitBtn1: TBitBtn
        Left = 840
        Top = 16
        Width = 137
        Height = 49
        TabOrder = 3
        OnClick = BitBtn1Click
        Kind = bkCancel
      end
      object BitBtn2: TBitBtn
        Left = 840
        Top = 88
        Width = 137
        Height = 25
        Caption = 'Charger Compte CP'
        TabOrder = 4
        OnClick = BitBtn2Click
        Kind = bkHelp
      end
      object BitBtn3: TBitBtn
        Left = 840
        Top = 128
        Width = 137
        Height = 25
        Caption = 'Modifier le Compte CP'
        TabOrder = 5
        OnClick = BitBtn3Click
        Kind = bkRetry
      end
      object BitBtn4: TBitBtn
        Left = 840
        Top = 168
        Width = 137
        Height = 25
        Caption = 'Supprimer le Cpt CP'
        TabOrder = 6
        OnClick = BitBtn4Click
        Kind = bkCancel
      end
      object AfficheOptionCompteCP: TPanel
        Left = 144
        Top = 139
        Width = 505
        Height = 382
        BevelInner = bvLowered
        Color = 11468799
        TabOrder = 7
        Visible = False
        object Bevel4: TBevel
          Left = 272
          Top = 8
          Width = 129
          Height = 49
        end
        object Label12: TLabel
          Left = 280
          Top = 27
          Width = 56
          Height = 13
          Caption = 'Recherche:'
        end
        object Bevel18: TBevel
          Left = 408
          Top = 8
          Width = 89
          Height = 49
        end
        object EditOptionCompteCP: TEdit
          Left = 16
          Top = 32
          Width = 49
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object Panel6: TPanel
          Left = 9
          Top = 5
          Width = 256
          Height = 52
          BevelInner = bvLowered
          Color = 14547893
          TabOrder = 1
          object Label11: TLabel
            Left = 8
            Top = 9
            Width = 52
            Height = 13
            Alignment = taRightJustify
            Caption = 'Sp'#233'cificit'#233':'
          end
          object RadioGroup6: TRadioGroup
            Left = 64
            Top = 2
            Width = 185
            Height = 47
            TabOrder = 0
          end
          object RBCompteCPPrecisClasse: TRadioButton
            Left = 78
            Top = 8
            Width = 163
            Height = 17
            Caption = 'Compte s'#233'lectionn'#233' (pr'#233'cis).'
            TabOrder = 1
          end
          object RBCompteCPSousCompteClasse: TRadioButton
            Left = 78
            Top = 24
            Width = 163
            Height = 20
            Caption = 'Compte et sous comptes.'
            TabOrder = 2
          end
        end
        object TableauOptionCompteCP: TStringGrid
          Left = 8
          Top = 64
          Width = 489
          Height = 313
          ColCount = 7
          Ctl3D = False
          FixedColor = 7143423
          RowCount = 2
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
          ParentCtl3D = False
          TabOrder = 0
          ColWidths = (
            39
            56
            245
            37
            44
            30
            2)
        end
        object EditRechercheCompteCP: TEdit
          Left = 340
          Top = 24
          Width = 53
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
        end
        object BitBtn5: TBitBtn
          Left = 416
          Top = 16
          Width = 75
          Height = 33
          TabOrder = 4
          OnClick = BitBtn5Click
          Kind = bkCancel
        end
      end
      object AfficheSupprimerCompteCP: TPanel
        Left = 168
        Top = 264
        Width = 473
        Height = 57
        BevelInner = bvLowered
        Color = 8454143
        TabOrder = 8
        Visible = False
        object Bevel7: TBevel
          Left = 8
          Top = 8
          Width = 457
          Height = 41
        end
        object BitSupprimerCP: TBitBtn
          Left = 16
          Top = 16
          Width = 89
          Height = 25
          Caption = 'Supprimer'
          TabOrder = 0
          OnClick = BitSupprimerCPClick
          Kind = bkAll
        end
        object BitBtn6: TBitBtn
          Left = 368
          Top = 16
          Width = 91
          Height = 25
          TabOrder = 1
          OnClick = BitBtn6Click
          Kind = bkNo
        end
      end
      object AfficheInformations: TMemo
        Left = 192
        Top = 248
        Width = 385
        Height = 233
        Ctl3D = False
        Lines.Strings = (
          'Sp'#233'cificit'#233' d'#39'un compte:'
          ''
          
            'La sp'#233'cificit'#233' d'#39'un compte '#171'contre partie '#187' par rapport '#224' un com' +
            'pte principale, '
          'est son '#233'tendu d'#39'application :'
          ''
          'Exemple :'
          ''
          'Compte principal : 530 : Fournisseurs.'
          'Compte '#171' contre partie '#187' : 38: Achats.'
          ''
          
            '1)- Si la sp'#233'cificit'#233' du compte 38 est '#171'Compte s'#233'lectionn'#233' (pr'#233'c' +
            'is).'#39'1'#39' '#187' c'#39'est -'#224'-'
          
            'dire que la contre partie du compte 530 est, et seulement, le co' +
            'mpte pr'#233'cis 38.'
          ''
          
            '2)- Si la sp'#233'cificit'#233' du compte 38 est '#171'Compte et sous comptes.'#39 +
            'N'#39#187' c'#39'est-'#224'-dire '
          
            'que la contre partie du compte 530 est le compte 38 et ses sous ' +
            'compte c'#39'est-'#224
          '-dire 380, 381, ...')
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 9
        Visible = False
      end
    end
    object AfficheCompteTiers: TPanel
      Left = 1048
      Top = 344
      Width = 993
      Height = 673
      BevelInner = bvLowered
      Color = 12910532
      TabOrder = 10
      Visible = False
      object Bevel21: TBevel
        Left = 8
        Top = 8
        Width = 577
        Height = 33
      end
      object Label49: TLabel
        Left = 16
        Top = 19
        Width = 81
        Height = 13
        Caption = 'Compte principal:'
      end
      object Bevel23: TBevel
        Left = 8
        Top = 48
        Width = 577
        Height = 25
      end
      object Label50: TLabel
        Left = 16
        Top = 53
        Width = 114
        Height = 13
        Caption = 'Liste des comptes Tiers:'
      end
      object Bevel24: TBevel
        Left = 816
        Top = 80
        Width = 170
        Height = 73
      end
      object Bevel25: TBevel
        Left = 816
        Top = 160
        Width = 169
        Height = 169
      end
      object Bevel34: TBevel
        Left = 815
        Top = 8
        Width = 170
        Height = 65
      end
      object Bevel44: TBevel
        Left = 824
        Top = 280
        Width = 153
        Height = 42
      end
      object TableauCompteTiers: TStringGrid
        Left = 8
        Top = 80
        Width = 801
        Height = 585
        Ctl3D = False
        DefaultColWidth = 40
        DefaultRowHeight = 20
        FixedCols = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
        ParentCtl3D = False
        TabOrder = 0
        OnClick = TableauCompteTiersClick
        OnKeyDown = TableauCompteTiersKeyDown
        OnKeyPress = TableauCompteTiersKeyPress
        ColWidths = (
          40
          2
          81
          341
          79)
      end
      object EditNumCptPrincipalTiers: TEdit
        Left = 104
        Top = 16
        Width = 57
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
      end
      object EditDesignationCptPrincipalTiers: TEdit
        Left = 160
        Top = 16
        Width = 417
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
      end
      object BitBtn12: TBitBtn
        Left = 824
        Top = 16
        Width = 153
        Height = 49
        Caption = 'Annuler'
        ModalResult = 2
        TabOrder = 3
        OnClick = BitBtn12Click
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
      object BitBtn13: TBitBtn
        Left = 824
        Top = 168
        Width = 153
        Height = 25
        Caption = 'Nouveau Compte Tiers'
        TabOrder = 4
        OnClick = BitBtn13Click
        Kind = bkHelp
      end
      object BitBtn14: TBitBtn
        Left = 824
        Top = 208
        Width = 153
        Height = 25
        Caption = 'Modifier'
        TabOrder = 5
        OnClick = BitBtn14Click
        Kind = bkRetry
      end
      object BitBtn15: TBitBtn
        Left = 824
        Top = 248
        Width = 153
        Height = 25
        Caption = 'Supprimer'
        TabOrder = 6
        OnClick = BitBtn15Click
        Kind = bkCancel
      end
      object AfficheOperationCptTiers: TPanel
        Left = 96
        Top = 192
        Width = 505
        Height = 217
        BevelInner = bvLowered
        Color = 12058623
        TabOrder = 7
        Visible = False
        object Label51: TLabel
          Left = 68
          Top = 28
          Width = 90
          Height = 13
          Alignment = taRightJustify
          Caption = 'Num Compte Tiers:'
        end
        object Label52: TLabel
          Left = 19
          Top = 51
          Width = 139
          Height = 13
          Alignment = taRightJustify
          Caption = 'D'#233'signation du Compte Tiers:'
        end
        object Bevel26: TBevel
          Left = 8
          Top = 8
          Width = 489
          Height = 153
        end
        object Bevel27: TBevel
          Left = 16
          Top = 72
          Width = 137
          Height = 81
        end
        object Bevel28: TBevel
          Left = 8
          Top = 168
          Width = 489
          Height = 41
        end
        object EditNumCompteTiers: TEdit
          Left = 160
          Top = 24
          Width = 89
          Height = 21
          Color = 14737632
          ReadOnly = True
          TabOrder = 0
        end
        object EditDesignationCptTiers: TEdit
          Left = 160
          Top = 48
          Width = 329
          Height = 21
          TabOrder = 1
          OnKeyDown = EditDesignationCptTiersKeyDown
        end
        object RadioGroup28: TRadioGroup
          Left = 160
          Top = 80
          Width = 329
          Height = 73
          Caption = 'Exixstance de donn'#233'es relatif au compte Tiers:'
          TabOrder = 2
        end
        object RBCptTiersAvecDonnees: TRadioButton
          Left = 168
          Top = 104
          Width = 241
          Height = 17
          Caption = 'Avec Donn'#233'es.'
          TabOrder = 3
          OnKeyDown = RBCptTiersAvecDonneesKeyDown
        end
        object RBCptTiersSansDonnees: TRadioButton
          Left = 168
          Top = 128
          Width = 241
          Height = 17
          Caption = 'Sans Donn'#233'es.'
          TabOrder = 4
          OnKeyDown = RBCptTiersSansDonneesKeyDown
        end
        object BitValideCptTiers: TBitBtn
          Left = 24
          Top = 176
          Width = 75
          Height = 25
          Caption = 'Valider'
          TabOrder = 5
          OnClick = BitValideCptTiersClick
          Kind = bkAll
        end
        object BitBtn17: TBitBtn
          Left = 416
          Top = 176
          Width = 75
          Height = 25
          TabOrder = 6
          OnClick = BitBtn17Click
          Kind = bkCancel
        end
      end
      object BitBtn20: TBitBtn
        Left = 824
        Top = 88
        Width = 153
        Height = 57
        Caption = 'Chargement de donn'#233'es.'
        TabOrder = 9
        OnClick = BitBtn20Click
        Kind = bkAll
      end
      object BitOrdonnerCompteTiers: TBitBtn
        Left = 832
        Top = 288
        Width = 137
        Height = 25
        Caption = 'Ordonner le compte !'
        TabOrder = 10
        OnClick = BitOrdonnerCompteTiersClick
        Kind = bkHelp
      end
      object AfficheDonneesCompteTiers: TPanel
        Left = 8
        Top = 8
        Width = 977
        Height = 657
        BevelInner = bvLowered
        Color = 12189695
        TabOrder = 8
        Visible = False
        object Bevel30: TBevel
          Left = 8
          Top = 48
          Width = 561
          Height = 25
        end
        object Bevel29: TBevel
          Left = 8
          Top = 8
          Width = 561
          Height = 33
        end
        object Label53: TLabel
          Left = 16
          Top = 19
          Width = 65
          Height = 13
          Caption = 'Compte Tiers:'
        end
        object Label54: TLabel
          Left = 16
          Top = 53
          Width = 84
          Height = 13
          Caption = 'Liste de donn'#233'es:'
        end
        object Bevel35: TBevel
          Left = 799
          Top = 8
          Width = 170
          Height = 65
        end
        object Bevel36: TBevel
          Left = 799
          Top = 80
          Width = 170
          Height = 161
        end
        object TableauDonneesCompteTiers: TStringGrid
          Left = 8
          Top = 80
          Width = 785
          Height = 568
          ColCount = 4
          Ctl3D = False
          DefaultColWidth = 40
          DefaultRowHeight = 20
          FixedCols = 2
          RowCount = 2
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
          ParentCtl3D = False
          TabOrder = 0
          OnClick = TableauDonneesCompteTiersClick
          OnKeyDown = TableauDonneesCompteTiersKeyDown
          OnKeyPress = TableauDonneesCompteTiersKeyPress
          ColWidths = (
            40
            2
            145
            341)
        end
        object EditNumCptTiersDonnees: TEdit
          Left = 88
          Top = 16
          Width = 81
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
        end
        object EditDesignationCptTiersDonnees: TEdit
          Left = 168
          Top = 16
          Width = 393
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
        end
        object AfficheOperationDonnesTiers: TPanel
          Left = 88
          Top = 176
          Width = 401
          Height = 121
          BevelInner = bvLowered
          Color = 12582911
          TabOrder = 3
          Visible = False
          object Bevel31: TBevel
            Left = 8
            Top = 8
            Width = 385
            Height = 57
          end
          object Label55: TLabel
            Left = 46
            Top = 19
            Width = 24
            Height = 13
            Alignment = taRightJustify
            Caption = 'Titre:'
          end
          object Label56: TLabel
            Left = 15
            Top = 43
            Width = 55
            Height = 13
            Alignment = taRightJustify
            Caption = 'Information:'
          end
          object Bevel32: TBevel
            Left = 8
            Top = 72
            Width = 385
            Height = 41
          end
          object EditNumDonneesCptTiers: TEdit
            Left = 80
            Top = 16
            Width = 33
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 4
          end
          object EditTitreDonneeCptTiers: TEdit
            Left = 80
            Top = 16
            Width = 153
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            OnKeyDown = EditTitreDonneeCptTiersKeyDown
          end
          object BitValideDonneesCptTiers: TBitBtn
            Left = 16
            Top = 80
            Width = 75
            Height = 25
            Caption = 'Valider'
            TabOrder = 1
            OnClick = BitValideDonneesCptTiersClick
            Kind = bkAll
          end
          object EditInformationDonneeCptTiers: TEdit
            Left = 80
            Top = 40
            Width = 305
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 2
            OnKeyDown = EditInformationDonneeCptTiersKeyDown
          end
          object BitBtn19: TBitBtn
            Left = 312
            Top = 80
            Width = 75
            Height = 25
            TabOrder = 3
            OnClick = BitBtn19Click
            Kind = bkCancel
          end
        end
        object BitBtn16: TBitBtn
          Left = 808
          Top = 88
          Width = 153
          Height = 25
          Caption = 'Nouvelle Donn'#233'es'
          TabOrder = 4
          OnClick = BitBtn16Click
          Kind = bkAll
        end
        object BitBtn18: TBitBtn
          Left = 808
          Top = 128
          Width = 153
          Height = 25
          Caption = 'Modifier'
          TabOrder = 5
          OnClick = BitBtn18Click
          Kind = bkRetry
        end
        object BitBtn21: TBitBtn
          Left = 808
          Top = 168
          Width = 153
          Height = 25
          Caption = 'Supprimer'
          TabOrder = 6
          OnClick = BitBtn21Click
          Kind = bkCancel
        end
        object BitBtn22: TBitBtn
          Left = 808
          Top = 16
          Width = 153
          Height = 49
          TabOrder = 7
          OnClick = BitBtn22Click
          Kind = bkCancel
        end
        object BitBtn26: TBitBtn
          Left = 808
          Top = 208
          Width = 153
          Height = 25
          Caption = 'Mod'#232'le de donn'#233'es'
          TabOrder = 8
          Kind = bkHelp
        end
        object AfficheModeleDonnees: TPanel
          Left = 64
          Top = 152
          Width = 489
          Height = 249
          BevelInner = bvLowered
          Color = 8454143
          TabOrder = 9
          Visible = False
          object Bevel40: TBevel
            Left = 8
            Top = 8
            Width = 473
            Height = 41
          end
          object BitBtn27: TBitBtn
            Left = 16
            Top = 16
            Width = 75
            Height = 25
            TabOrder = 0
            OnClick = BitBtn27Click
            Kind = bkCancel
          end
          object TableauModeleDonnees: TStringGrid
            Left = 8
            Top = 64
            Width = 473
            Height = 177
            ColCount = 2
            Ctl3D = False
            DefaultColWidth = 30
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
            ParentCtl3D = False
            TabOrder = 1
            OnClick = TableauModeleDonneesClick
            OnKeyPress = TableauModeleDonneesKeyPress
            ColWidths = (
              30
              419)
          end
          object AfficheNouveauModele: TPanel
            Left = 48
            Top = 96
            Width = 401
            Height = 113
            BevelInner = bvLowered
            Color = 13828050
            TabOrder = 2
            Visible = False
            object Bevel41: TBevel
              Left = 8
              Top = 8
              Width = 385
              Height = 50
            end
            object Bevel42: TBevel
              Left = 144
              Top = 64
              Width = 121
              Height = 41
            end
            object Label7: TLabel
              Left = 16
              Top = 16
              Width = 155
              Height = 13
              Caption = 'Sasissez un mod'#232'le de donn'#233'es:'
            end
            object EditNumModele: TEdit
              Left = 16
              Top = 32
              Width = 33
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 2
            end
            object EditModeleDonnee: TEdit
              Left = 16
              Top = 32
              Width = 369
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 0
              OnKeyDown = EditModeleDonneeKeyDown
            end
            object BitOperationModeleDonnees: TBitBtn
              Left = 152
              Top = 72
              Width = 105
              Height = 25
              TabOrder = 1
              OnClick = BitOperationModeleDonneesClick
              Kind = bkAll
            end
          end
          object BitBtn28: TBitBtn
            Left = 216
            Top = 16
            Width = 259
            Height = 25
            Caption = 'Chargement du mod'#232'le pour le Compte Tiers'
            TabOrder = 3
            OnClick = BitBtn28Click
            Kind = bkAll
          end
        end
      end
    end
    object AffichePreferenceCptCP: TPanel
      Left = 952
      Top = 392
      Width = 993
      Height = 673
      BevelInner = bvLowered
      Color = 8454016
      TabOrder = 11
      Visible = False
      object Bevel37: TBevel
        Left = 720
        Top = 8
        Width = 265
        Height = 41
      end
      object BitBtn23: TBitBtn
        Left = 728
        Top = 16
        Width = 251
        Height = 25
        TabOrder = 0
        OnClick = BitBtn23Click
        Kind = bkCancel
      end
      object TableauPreferenceCP: TStringGrid
        Left = 632
        Top = 104
        Width = 353
        Height = 562
        ColCount = 7
        Ctl3D = False
        DefaultColWidth = 40
        DefaultRowHeight = 20
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
        ParentCtl3D = False
        TabOrder = 1
        OnClick = TableauPreferenceCPClick
        OnDblClick = TableauPreferenceCPDblClick
        OnKeyPress = TableauPreferenceCPKeyPress
        ColWidths = (
          40
          60
          143
          2
          2
          2
          2)
      end
      object Panel27: TPanel
        Left = 632
        Top = 56
        Width = 353
        Height = 41
        BevelWidth = 5
        Caption = 'Liste des comptes Principals'
        TabOrder = 2
      end
      object Panel28: TPanel
        Left = 8
        Top = 8
        Width = 617
        Height = 41
        BevelWidth = 5
        Caption = 'Liste des comptes contre partie'
        TabOrder = 3
      end
      object EditResultatCptPrincipal: TPanel
        Left = 8
        Top = 56
        Width = 617
        Height = 41
        BevelInner = bvLowered
        Color = 4892159
        TabOrder = 4
      end
      object TableauPreferenceCptCP: TStringGrid
        Left = 8
        Top = 104
        Width = 617
        Height = 562
        Ctl3D = False
        DefaultColWidth = 40
        DefaultRowHeight = 20
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
        ParentCtl3D = False
        TabOrder = 5
        ColWidths = (
          40
          70
          226
          47
          68)
      end
    end
    object AfficheTransfertCompteACompte: TPanel
      Left = 64
      Top = 352
      Width = 465
      Height = 201
      BevelInner = bvLowered
      Color = 12645876
      TabOrder = 12
      Visible = False
      object Bevel38: TBevel
        Left = 8
        Top = 56
        Width = 449
        Height = 89
      end
      object Bevel33: TBevel
        Left = 8
        Top = 8
        Width = 449
        Height = 41
      end
      object Label8: TLabel
        Left = 16
        Top = 104
        Width = 53
        Height = 13
        Caption = 'au compte:'
      end
      object Label57: TLabel
        Left = 16
        Top = 64
        Width = 204
        Height = 13
        Caption = 'Veuillez transf'#233'rer les '#233'critures du compte : '
      end
      object Bevel39: TBevel
        Left = 8
        Top = 152
        Width = 97
        Height = 41
      end
      object EditOperation: TLabel
        Left = 16
        Top = 24
        Width = 30
        Height = 13
        Caption = '..........'
      end
      object Bevel43: TBevel
        Left = 112
        Top = 152
        Width = 345
        Height = 41
      end
      object BitBtn25: TBitBtn
        Left = 376
        Top = 16
        Width = 75
        Height = 25
        TabOrder = 0
        OnClick = BitBtn25Click
        Kind = bkCancel
      end
      object EditNumCompteOrigine: TEdit
        Left = 16
        Top = 80
        Width = 89
        Height = 19
        Color = 15395562
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
      object EditCompteOrigine: TEdit
        Left = 104
        Top = 80
        Width = 345
        Height = 19
        Color = 15395562
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
      end
      object EditNumCompteDestination: TEdit
        Left = 16
        Top = 120
        Width = 89
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        OnEnter = EditNumCompteDestinationEnter
        OnKeyDown = EditNumCompteDestinationKeyDown
      end
      object EditCompteDestination: TEdit
        Left = 104
        Top = 120
        Width = 345
        Height = 19
        Color = 15395562
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 4
      end
      object BitValiderTransfertCptCpt: TBitBtn
        Left = 16
        Top = 160
        Width = 81
        Height = 25
        Caption = 'Valider'
        TabOrder = 5
        OnClick = BitValiderTransfertCptCptClick
        Kind = bkAll
      end
    end
    object AfficheListeTransfertCompte: TPanel
      Left = 65
      Top = 129
      Width = 521
      Height = 218
      BevelInner = bvLowered
      Color = 12645876
      TabOrder = 13
      Visible = False
      object TableauListeTransfertCompte: TStringGrid
        Left = 8
        Top = 8
        Width = 505
        Height = 201
        ColCount = 7
        Ctl3D = False
        FixedColor = 12645876
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
        ParentCtl3D = False
        TabOrder = 0
        OnKeyDown = TableauListeTransfertCompteKeyDown
        ColWidths = (
          31
          96
          343
          2
          2
          2
          2)
      end
    end
    object EditTypeStock: TComboBox
      Left = 1216
      Top = 40
      Width = 113
      Height = 21
      BevelKind = bkFlat
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 14
      Text = 'Article'
      OnChange = EditTypeStockChange
      OnKeyPress = EditTypeStockKeyPress
      Items.Strings = (
        'Article'
        'Marche')
    end
    object EditTypeComptabilite: TEdit
      Left = 1216
      Top = 64
      Width = 113
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 15
      Text = 'PlanComptable'
    end
    object TypeProces: TComboBox
      Left = 1216
      Top = 16
      Width = 113
      Height = 21
      BevelKind = bkFlat
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 16
      Text = 'Business'
      Items.Strings = (
        'Business'
        'Commercial'
        'Paie'
        'Comptabilit'#233
        'Social')
    end
  end
end
