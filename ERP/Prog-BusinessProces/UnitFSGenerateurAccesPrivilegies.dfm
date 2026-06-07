object FSGenerateurAccesPrivilegies: TFSGenerateurAccesPrivilegies
  Left = -3
  Top = 0
  Width = 806
  Height = 574
  Caption = 'G'#233'n'#233'rateur d'#39'acc'#232's privil'#233'gi'#233's'
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
    Left = 8
    Top = 8
    Width = 777
    Height = 521
    ActivePage = PagePostes
    TabIndex = 1
    TabOrder = 0
    object PageUtilisateurs: TTabSheet
      Caption = 'Liste Utilisateurs: '
      OnShow = PageUtilisateursShow
      object TableauUtilisateur: TStringGrid
        Left = 0
        Top = 0
        Width = 769
        Height = 489
        ColCount = 6
        Ctl3D = False
        DefaultColWidth = 40
        FixedCols = 3
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
        ParentCtl3D = False
        TabOrder = 0
        OnClick = TableauUtilisateurClick
        OnKeyPress = TableauUtilisateurKeyPress
        ColWidths = (
          40
          2
          2
          198
          184
          313)
      end
      object AfficheUtilisateur: TPanel
        Left = 152
        Top = 64
        Width = 465
        Height = 281
        BevelInner = bvLowered
        Color = 8454143
        TabOrder = 1
        Visible = False
        object Bevel5: TBevel
          Left = 8
          Top = 8
          Width = 449
          Height = 41
        end
        object Bevel6: TBevel
          Left = 8
          Top = 56
          Width = 449
          Height = 140
        end
        object Label10: TLabel
          Left = 17
          Top = 80
          Width = 77
          Height = 13
          Alignment = taRightJustify
          Caption = 'Code Utilisateur:'
        end
        object Label11: TLabel
          Left = 69
          Top = 104
          Width = 25
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nom:'
        end
        object Label12: TLabel
          Left = 55
          Top = 128
          Width = 39
          Height = 13
          Alignment = taRightJustify
          Caption = 'Pr'#233'nom:'
        end
        object Label13: TLabel
          Left = 50
          Top = 152
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fonction:'
        end
        object Label14: TLabel
          Left = 26
          Top = 176
          Width = 68
          Height = 13
          Alignment = taRightJustify
          Caption = 'Code d'#39'acc'#233's:'
        end
        object EditModifCodeAccesUtilisateur: TEdit
          Left = 104
          Top = 168
          Width = 105
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 15
        end
        object BitOperationUtilisateur: TBitBtn
          Left = 16
          Top = 16
          Width = 75
          Height = 25
          Cancel = True
          Caption = '&Tous'
          ModalResult = 8
          TabOrder = 0
          OnClick = BitOperationUtilisateurClick
          Glyph.Data = {
            F2010000424DF201000000000000760000002800000024000000130000000100
            0400000000007C01000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
            3333333333388F3333333333000033334224333333333333338338F333333333
            0000333422224333333333333833338F33333333000033422222243333333333
            83333338F3333333000034222A22224333333338F33F33338F33333300003222
            A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
            38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
            2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
            0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
            333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
            33333A2224A2233333333338F338F83300003333333333A2224A333333333333
            8F338F33000033333333333A222433333333333338F338F30000333333333333
            A224333333333333338F38F300003333333333333A223333333333333338F8F3
            000033333333333333A3333333333333333383330000}
          NumGlyphs = 2
        end
        object EditCodeUtilisateur: TEdit
          Left = 104
          Top = 72
          Width = 105
          Height = 21
          MaxLength = 10
          TabOrder = 1
          OnKeyDown = EditCodeUtilisateurKeyDown
        end
        object EditNomUtilisateur: TEdit
          Left = 104
          Top = 96
          Width = 241
          Height = 21
          TabOrder = 2
          OnKeyDown = EditNomUtilisateurKeyDown
          OnKeyUp = EditNomUtilisateurKeyUp
        end
        object EditPrenomUtilisateur: TEdit
          Left = 104
          Top = 120
          Width = 241
          Height = 21
          TabOrder = 3
          OnKeyDown = EditPrenomUtilisateurKeyDown
        end
        object EditFonctionUtilisateur: TEdit
          Left = 104
          Top = 144
          Width = 345
          Height = 21
          TabOrder = 4
          OnKeyDown = EditFonctionUtilisateurKeyDown
        end
        object EditCodeAccesUtilisateur: TEdit
          Left = 104
          Top = 168
          Width = 105
          Height = 21
          MaxLength = 10
          TabOrder = 5
          OnKeyDown = EditCodeAccesUtilisateurKeyDown
        end
        object EditModifCodeUtilisateur: TEdit
          Left = 344
          Top = 72
          Width = 105
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 6
        end
        object BitBtn3: TBitBtn
          Left = 376
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Annuler'
          ModalResult = 2
          TabOrder = 7
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
        object RadioGroup1: TRadioGroup
          Left = 8
          Top = 208
          Width = 241
          Height = 65
          Caption = 'Type de code:'
          TabOrder = 8
        end
        object RBCodeNumerique: TRadioButton
          Left = 16
          Top = 232
          Width = 105
          Height = 17
          Caption = 'Code num'#233'rique'
          Checked = True
          TabOrder = 9
          TabStop = True
          OnClick = RBCodeNumeriqueClick
        end
        object RBCodeBarre: TRadioButton
          Left = 152
          Top = 232
          Width = 81
          Height = 17
          Caption = 'Code barre'
          TabOrder = 10
          OnClick = RBCodeBarreClick
        end
        object AfficheCodeBarre: TPanel
          Left = 256
          Top = 168
          Width = 201
          Height = 105
          BevelInner = bvLowered
          TabOrder = 11
          object ImageCodeBarre: TImage
            Left = 8
            Top = 8
            Width = 185
            Height = 89
            OnDblClick = ImageCodeBarreDblClick
          end
        end
        object RBImporterPersonnel: TCheckBox
          Left = 352
          Top = 96
          Width = 97
          Height = 17
          Caption = 'Importation'
          Checked = True
          State = cbChecked
          TabOrder = 12
          OnClick = RBImporterPersonnelClick
        end
        object RBMotCle: TCheckBox
          Left = 352
          Top = 120
          Width = 97
          Height = 17
          Caption = 'Mot Cl'#233
          TabOrder = 13
        end
        object BitBtn1: TBitBtn
          Left = 216
          Top = 68
          Width = 121
          Height = 25
          Caption = 'Importer'
          TabOrder = 14
          OnClick = BitBtn1Click
          Kind = bkHelp
        end
      end
      object AfficheTableauTiers: TPanel
        Left = 216
        Top = 368
        Width = 489
        Height = 273
        BevelInner = bvLowered
        TabOrder = 2
        Visible = False
        object Bevel19: TBevel
          Left = 8
          Top = 8
          Width = 473
          Height = 57
        end
        object Label21: TLabel
          Left = 48
          Top = 16
          Width = 63
          Height = 13
          Alignment = taRightJustify
          Caption = 'Type Proces:'
        end
        object TitreEditTiersFichierConserne: TLabel
          Left = 83
          Top = 41
          Width = 27
          Height = 13
          Alignment = taRightJustify
          Caption = '.........'
        end
        object TableauTiers: TStringGrid
          Left = 8
          Top = 72
          Width = 473
          Height = 193
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnKeyDown = TableauTiersKeyDown
        end
        object EditTiersTypeProces: TComboBox
          Left = 119
          Top = 12
          Width = 146
          Height = 21
          BevelKind = bkFlat
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = 'Business'
          OnChange = EditTiersTypeProcesChange
          OnSelect = EditTiersTypeProcesSelect
          Items.Strings = (
            'Business'
            'Commercial'
            'Paie'
            'Comptabilit'#233
            'Social')
        end
        object EditTiersFichierConserne: TComboBox
          Left = 120
          Top = 36
          Width = 321
          Height = 21
          BevelKind = bkFlat
          Ctl3D = True
          ItemHeight = 13
          ItemIndex = 2
          ParentCtl3D = False
          TabOrder = 2
          Text = 'FPersonnel'
          OnChange = EditTiersFichierConserneChange
          Items.Strings = (
            'FFournisseur'
            'FClient'
            'FPersonnel')
        end
      end
    end
    object PagePostes: TTabSheet
      Caption = 'Liste Postes: '
      ImageIndex = 1
      OnShow = PagePostesShow
      object Label1: TLabel
        Left = 368
        Top = 0
        Width = 97
        Height = 13
        Caption = 'D'#233'finitions du Poste:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object TableauPosteMenu: TStringGrid
        Left = 0
        Top = 0
        Width = 361
        Height = 489
        ColCount = 4
        Ctl3D = False
        DefaultColWidth = 40
        FixedColor = 8454143
        FixedCols = 3
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
        ParentCtl3D = False
        TabOrder = 0
        OnClick = TableauPosteMenuClick
        OnKeyPress = TableauPosteMenuKeyPress
        ColWidths = (
          40
          2
          2
          288)
      end
      object DefinitionPosteMenu: TMemo
        Left = 368
        Top = 16
        Width = 401
        Height = 313
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
      object AffichePosteMenu: TPanel
        Left = 152
        Top = 64
        Width = 465
        Height = 241
        BevelInner = bvLowered
        Color = 8454143
        TabOrder = 2
        Visible = False
        object Label7: TLabel
          Left = 24
          Top = 80
          Width = 58
          Height = 13
          Caption = 'Code Poste:'
        end
        object Label8: TLabel
          Left = 23
          Top = 104
          Width = 59
          Height = 13
          Caption = 'D'#233'signation:'
        end
        object Label9: TLabel
          Left = 35
          Top = 128
          Width = 47
          Height = 13
          Caption = 'D'#233'finition:'
        end
        object Bevel3: TBevel
          Left = 8
          Top = 8
          Width = 449
          Height = 41
        end
        object Bevel4: TBevel
          Left = 8
          Top = 56
          Width = 449
          Height = 177
        end
        object EditAutorisationCodeMenu: TEdit
          Left = 21
          Top = 203
          Width = 52
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 6
        end
        object EditModifCodePosteMenu: TEdit
          Left = 312
          Top = 72
          Width = 137
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
        end
        object EditDesignationPosteMenu: TEdit
          Left = 88
          Top = 96
          Width = 361
          Height = 21
          TabOrder = 0
          OnKeyDown = EditDesignationPosteMenuKeyDown
        end
        object EditDefinitionPosteMenu: TMemo
          Left = 88
          Top = 120
          Width = 361
          Height = 105
          TabOrder = 1
        end
        object BitOperationPosteMenu: TBitBtn
          Left = 16
          Top = 16
          Width = 75
          Height = 25
          TabOrder = 2
          OnClick = BitOperationPosteMenuClick
          Kind = bkRetry
        end
        object BitBtn2: TBitBtn
          Left = 376
          Top = 16
          Width = 75
          Height = 25
          TabOrder = 3
          OnClick = BitBtn2Click
          Kind = bkCancel
        end
        object EditCodePosteMenu: TComboBox
          Left = 88
          Top = 72
          Width = 185
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 5
          OnKeyDown = EditCodePosteMenuKeyDown
          Items.Strings = (
            'FS Acc'#233's Privil'#233'gi'#233's'
            'FS Classe PCN'
            'FS Sous Classe PCN'
            'FS Cat'#233'gorie'
            'FS Sous Cat'#233'gorie'
            'FS Famille'
            'FS Sous Famille'
            'FS Liste Pr'#233'l'#232'vement'
            'FS Pr'#233'l'#232'vement'
            'FS Transformation Unit'#233's de Fonds'
            'FS Avis'
            'FS Avis Divers'
            'FS Traitement Projets'
            'FS Traitement Domiciliation'
            'FS Traitement Tiers'
            'FS G'#233'n'#233'rateur Avis'
            'FS Type Avis'
            'FS G'#233'n'#233'rateur Type Projets'
            'FS G'#233'n'#233'rateur Projets'
            'FS G'#233'n'#233'rateur Domiciliation'
            'FS G'#233'n'#233'rateur Adresses Proces'
            'FS G'#233'n'#233'rateur Articles'
            'FS G'#233'n'#233'rateur Compteurs'
            'FS G'#233'n'#233'rateur Equipes'
            'FS G'#233'n'#233'rateur Unit'#233's de Fonds'
            'FS Stock'
            'FS Client'
            'FS Fournisseur'
            'FS R'#233'pertoire Sauvegarde'
            'FS G'#233'n'#233'rateur Etats'
            'FS Plan Comptable'
            'FS Marche'
            'FS Param'#232'tres avanc'#233's'
            'FS Bordereau Envoi'
            'FS Travaux Fin Ann'#233'e'
            'FS Contr'#244'leur Syst'#232'me'
            'FS G'#233'n'#233'rateur Dossier Partag'#233's'
            'FS Autorisation Partage Registre'
            'FS Contr'#244'leur Date'
            'FS Contr'#244'leur Internet')
        end
        object AfficheListePosteMenu: TPanel
          Left = 12
          Top = 184
          Width = 69
          Height = 41
          BevelInner = bvLowered
          Color = 8454143
          TabOrder = 7
          OnClick = AfficheListePosteMenuClick
        end
      end
    end
    object PageAccesPrivilegies: TTabSheet
      Caption = 'Liste des Acc'#233's Privil'#233'gi'#233's'
      ImageIndex = 2
      OnShow = PageAccesPrivilegiesShow
      object Label6: TLabel
        Left = 384
        Top = 8
        Width = 127
        Height = 13
        Caption = 'Liste des acc'#233's Privil'#233'gi'#233's:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object LabelRubrique: TLabel
        Left = 736
        Top = 456
        Width = 30
        Height = 13
        Alignment = taRightJustify
        Caption = '..........'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object LabelCodeRubrique: TLabel
        Left = 736
        Top = 472
        Width = 30
        Height = 13
        Alignment = taRightJustify
        Caption = '..........'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object TableauAccesPrivilegies: TStringGrid
        Left = 384
        Top = 24
        Width = 385
        Height = 289
        Color = clSilver
        ColCount = 19
        Ctl3D = False
        DefaultColWidth = 40
        FixedCols = 16
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
        ParentCtl3D = False
        TabOrder = 0
        OnClick = TableauAccesPrivilegiesClick
        OnKeyDown = TableauAccesPrivilegiesKeyDown
        OnKeyPress = TableauAccesPrivilegiesKeyPress
        ColWidths = (
          40
          2
          2
          2
          2
          2
          2
          2
          2
          2
          2
          2
          2
          2
          2
          2
          277
          2
          2)
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 377
        Height = 313
        ActivePage = PageAccesUtilisateurs
        TabIndex = 0
        TabOrder = 1
        object PageAccesUtilisateurs: TTabSheet
          Caption = 'Liste Utilisateur: '
          OnShow = PageAccesUtilisateursShow
          object TableauUtilisateurAcces: TStringGrid
            Left = 0
            Top = 0
            Width = 369
            Height = 281
            ColCount = 4
            Ctl3D = False
            DefaultColWidth = 40
            FixedCols = 3
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
            ParentCtl3D = False
            TabOrder = 0
            OnClick = TableauUtilisateurAccesClick
            OnKeyDown = TableauUtilisateurAccesKeyDown
            ColWidths = (
              40
              2
              2
              294)
          end
        end
        object PageAccesPostes: TTabSheet
          Caption = 'Liste Postes: '
          ImageIndex = 1
          OnShow = PageAccesPostesShow
          object TableauPosteMenuAcces: TStringGrid
            Left = 0
            Top = 0
            Width = 369
            Height = 281
            ColCount = 4
            Ctl3D = False
            DefaultColWidth = 40
            FixedCols = 3
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
            ParentCtl3D = False
            TabOrder = 0
            OnClick = TableauPosteMenuAccesClick
            ColWidths = (
              40
              2
              2
              295)
          end
        end
      end
      object AfficheConsultation: TPanel
        Left = 4
        Top = 320
        Width = 313
        Height = 81
        BevelInner = bvLowered
        Color = 8454143
        TabOrder = 2
        object Bevel1: TBevel
          Left = 104
          Top = 8
          Width = 201
          Height = 65
        end
        object Label2: TLabel
          Left = 112
          Top = 24
          Width = 94
          Height = 13
          Caption = 'Mise en application:'
        end
        object Label3: TLabel
          Left = 157
          Top = 48
          Width = 49
          Height = 13
          Caption = 'Expiration:'
        end
        object RBConsultation: TCheckBox
          Left = 8
          Top = 8
          Width = 89
          Height = 17
          Caption = 'Consultation:'
          Enabled = False
          TabOrder = 0
        end
        object EditDateDebutConsultation: TMaskEdit
          Left = 216
          Top = 20
          Width = 73
          Height = 19
          Color = clWhite
          Ctl3D = False
          Enabled = False
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
          Text = '  /  /    '
        end
        object EditDateFinConsultation: TMaskEdit
          Left = 216
          Top = 44
          Width = 73
          Height = 19
          Color = clWhite
          Ctl3D = False
          Enabled = False
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
          Text = '  /  /    '
        end
        object EditGenerateurAcces: TEdit
          Left = 24
          Top = 40
          Width = 57
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
        end
        object AfficheGenerateurAcces: TPanel
          Left = 8
          Top = 32
          Width = 89
          Height = 41
          BevelInner = bvLowered
          Color = 8454143
          TabOrder = 4
          OnClick = AfficheGenerateurAccesClick
        end
      end
      object AfficheModifier: TPanel
        Left = 324
        Top = 320
        Width = 313
        Height = 81
        BevelInner = bvLowered
        Color = 8454143
        TabOrder = 3
        object Bevel2: TBevel
          Left = 104
          Top = 8
          Width = 201
          Height = 65
        end
        object Label4: TLabel
          Left = 112
          Top = 24
          Width = 94
          Height = 13
          Caption = 'Mise en application:'
        end
        object Label5: TLabel
          Left = 157
          Top = 48
          Width = 49
          Height = 13
          Caption = 'Expiration:'
        end
        object RBModifier: TCheckBox
          Left = 8
          Top = 8
          Width = 65
          Height = 17
          Caption = 'Modifier:'
          Enabled = False
          TabOrder = 0
        end
        object EditDateDebutModifier: TMaskEdit
          Left = 216
          Top = 20
          Width = 73
          Height = 19
          Color = clWhite
          Ctl3D = False
          Enabled = False
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
          Text = '  /  /    '
        end
        object EditDateFinModifier: TMaskEdit
          Left = 216
          Top = 44
          Width = 73
          Height = 19
          Color = clWhite
          Ctl3D = False
          Enabled = False
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
          Text = '  /  /    '
        end
        object AfficheGenerateurAccesUnique: TPanel
          Left = 8
          Top = 32
          Width = 89
          Height = 41
          BevelInner = bvLowered
          Color = 8454143
          TabOrder = 3
          OnClick = AfficheGenerateurAccesUniqueClick
        end
      end
      object AfficheAjouter: TPanel
        Left = 4
        Top = 408
        Width = 313
        Height = 81
        BevelInner = bvLowered
        Color = 8454143
        TabOrder = 5
        object Bevel12: TBevel
          Left = 104
          Top = 8
          Width = 201
          Height = 65
        end
        object Label15: TLabel
          Left = 112
          Top = 24
          Width = 94
          Height = 13
          Caption = 'Mise en application:'
        end
        object Label16: TLabel
          Left = 157
          Top = 48
          Width = 49
          Height = 13
          Caption = 'Expiration:'
        end
        object RBAjouter: TCheckBox
          Left = 8
          Top = 8
          Width = 57
          Height = 17
          Caption = 'Ajouter:'
          Enabled = False
          TabOrder = 0
        end
        object EditDateDebutAjouter: TMaskEdit
          Left = 216
          Top = 20
          Width = 73
          Height = 19
          Color = clWhite
          Ctl3D = False
          Enabled = False
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
          Text = '  /  /    '
        end
        object EditDateFinAjouter: TMaskEdit
          Left = 216
          Top = 44
          Width = 73
          Height = 19
          Color = clWhite
          Ctl3D = False
          Enabled = False
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
          Text = '  /  /    '
        end
      end
      object AfficheSupprimer: TPanel
        Left = 324
        Top = 408
        Width = 313
        Height = 81
        BevelInner = bvLowered
        Color = 8454143
        TabOrder = 6
        object Bevel13: TBevel
          Left = 104
          Top = 8
          Width = 201
          Height = 65
        end
        object Label17: TLabel
          Left = 112
          Top = 24
          Width = 94
          Height = 13
          Caption = 'Mise en application:'
        end
        object Label18: TLabel
          Left = 157
          Top = 48
          Width = 49
          Height = 13
          Caption = 'Expiration:'
        end
        object RBSupprimer: TCheckBox
          Left = 8
          Top = 8
          Width = 73
          Height = 17
          Caption = 'Supprimer:'
          Enabled = False
          TabOrder = 0
        end
        object EditDateDebutSupprimer: TMaskEdit
          Left = 216
          Top = 20
          Width = 73
          Height = 19
          Color = clWhite
          Ctl3D = False
          Enabled = False
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
          Text = '  /  /    '
        end
        object EditDateFinSupprimer: TMaskEdit
          Left = 216
          Top = 44
          Width = 73
          Height = 19
          Color = clWhite
          Ctl3D = False
          Enabled = False
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
          Text = '  /  /    '
        end
        object AfficheGenerateurAccesSuprimer: TPanel
          Left = 8
          Top = 32
          Width = 89
          Height = 41
          BevelInner = bvLowered
          Color = 8454143
          TabOrder = 3
          OnClick = AfficheGenerateurAccesSuprimerClick
        end
      end
      object Panel6: TPanel
        Left = 644
        Top = 321
        Width = 121
        Height = 168
        BevelInner = bvLowered
        Color = 8454143
        TabOrder = 7
        object Bevel18: TBevel
          Left = 8
          Top = 104
          Width = 105
          Height = 57
        end
        object Bevel17: TBevel
          Left = 8
          Top = 40
          Width = 105
          Height = 57
        end
        object LabelDateDebutImprimer: TLabel
          Left = 16
          Top = 48
          Width = 94
          Height = 13
          Caption = 'Mise en application:'
        end
        object LabelDateFinImprimer: TLabel
          Left = 21
          Top = 112
          Width = 49
          Height = 13
          Caption = 'Expiration:'
        end
        object RBImprimer: TCheckBox
          Left = 8
          Top = 8
          Width = 73
          Height = 17
          Caption = 'Imprimer: '
          Enabled = False
          TabOrder = 0
        end
        object EditDateDebutImprimer: TMaskEdit
          Left = 16
          Top = 68
          Width = 73
          Height = 19
          Color = clWhite
          Ctl3D = False
          Enabled = False
          EditMask = '!99/99/0000;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          Text = '  /  /    '
        end
        object EditDateFinImprimer: TMaskEdit
          Left = 16
          Top = 132
          Width = 73
          Height = 19
          Color = clWhite
          Ctl3D = False
          Enabled = False
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
          Text = '  /  /    '
        end
      end
      object AfficheAccesPrivilegies: TPanel
        Left = 0
        Top = 0
        Width = 769
        Height = 489
        BevelInner = bvLowered
        Color = 8454143
        TabOrder = 4
        Visible = False
        object Bevel7: TBevel
          Left = 8
          Top = 48
          Width = 753
          Height = 433
        end
        object Bevel8: TBevel
          Left = 8
          Top = 8
          Width = 753
          Height = 33
        end
        object Label19: TLabel
          Left = 24
          Top = 64
          Width = 52
          Height = 13
          Caption = 'Utilisateur: '
        end
        object Label20: TLabel
          Left = 43
          Top = 88
          Width = 33
          Height = 13
          Caption = 'Poste: '
        end
        object Bevel11: TBevel
          Left = 440
          Top = 136
          Width = 233
          Height = 113
        end
        object BitValiderNewAcces: TBitBtn
          Left = 456
          Top = 152
          Width = 201
          Height = 81
          TabOrder = 0
          OnClick = BitValiderNewAccesClick
          Kind = bkAll
        end
        object BitBtn4: TBitBtn
          Left = 680
          Top = 12
          Width = 75
          Height = 25
          TabOrder = 1
          OnClick = BitBtn4Click
          Kind = bkCancel
        end
        object EditCodeUtilisateurNewAcces: TEdit
          Left = 80
          Top = 56
          Width = 97
          Height = 21
          Color = clSilver
          ReadOnly = True
          TabOrder = 2
        end
        object EditNomPrinomUtilisateurNewAcces: TEdit
          Left = 184
          Top = 56
          Width = 249
          Height = 21
          Color = clSilver
          ReadOnly = True
          TabOrder = 3
        end
        object EditFonctionUtilisateurNewAcces: TEdit
          Left = 440
          Top = 56
          Width = 313
          Height = 21
          Color = clSilver
          ReadOnly = True
          TabOrder = 4
        end
        object Panel1: TPanel
          Left = 16
          Top = 112
          Width = 313
          Height = 68
          BevelInner = bvLowered
          Color = 8454143
          TabOrder = 5
          object Bevel9: TBevel
            Left = 104
            Top = 8
            Width = 201
            Height = 52
          end
          object LabelDateDebutConsultationNewAcces: TLabel
            Left = 112
            Top = 16
            Width = 94
            Height = 13
            Caption = 'Mise en application:'
            Enabled = False
          end
          object LabelDateFinConsultationNewAcces: TLabel
            Left = 157
            Top = 40
            Width = 49
            Height = 13
            Caption = 'Expiration:'
            Enabled = False
          end
          object RBConsultationNewAcces: TCheckBox
            Left = 8
            Top = 8
            Width = 89
            Height = 17
            Caption = 'Consultation:'
            TabOrder = 0
            OnClick = RBConsultationNewAccesClick
          end
          object EditDateDebutConsultationNewAcces: TMaskEdit
            Left = 216
            Top = 12
            Width = 71
            Height = 19
            Ctl3D = False
            Enabled = False
            EditMask = '!99/99/9999;1;_'
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 1
            Text = '  /  /    '
            OnKeyDown = EditDateDebutConsultationNewAccesKeyDown
          end
          object EditDateFinConsultationNewAcces: TMaskEdit
            Left = 216
            Top = 36
            Width = 71
            Height = 19
            Ctl3D = False
            Enabled = False
            EditMask = '!99/99/9999;1;_'
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 2
            Text = '  /  /    '
            OnKeyDown = EditDateFinConsultationNewAccesKeyDown
          end
        end
        object Panel2: TPanel
          Left = 16
          Top = 185
          Width = 313
          Height = 68
          BevelInner = bvLowered
          Color = 8454143
          TabOrder = 6
          object Bevel10: TBevel
            Left = 104
            Top = 8
            Width = 201
            Height = 52
          end
          object LabelDateDebutAjouterNewAcces: TLabel
            Left = 112
            Top = 16
            Width = 94
            Height = 13
            Caption = 'Mise en application:'
            Enabled = False
          end
          object LabelDateFinAjouterNewAcces: TLabel
            Left = 157
            Top = 40
            Width = 49
            Height = 13
            Caption = 'Expiration:'
            Enabled = False
          end
          object RBAjouterNewAcces: TCheckBox
            Left = 8
            Top = 8
            Width = 73
            Height = 17
            Caption = 'Ajouter: '
            TabOrder = 0
            OnClick = RBAjouterNewAccesClick
          end
          object EditDateDebutAjouterNewAcces: TMaskEdit
            Left = 216
            Top = 12
            Width = 71
            Height = 19
            Ctl3D = False
            Enabled = False
            EditMask = '!99/99/9999;1;_'
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 1
            Text = '  /  /    '
            OnKeyDown = EditDateDebutAjouterNewAccesKeyDown
          end
          object EditDateFinAjouterNewAcces: TMaskEdit
            Left = 216
            Top = 36
            Width = 71
            Height = 19
            Ctl3D = False
            Enabled = False
            EditMask = '!99/99/9999;1;_'
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 2
            Text = '  /  /    '
            OnKeyDown = EditDateFinAjouterNewAccesKeyDown
          end
        end
        object EditCodePosteMenuNewAcces: TEdit
          Left = 80
          Top = 80
          Width = 97
          Height = 21
          Color = clSilver
          ReadOnly = True
          TabOrder = 7
          OnEnter = EditCodePosteMenuNewAccesEnter
        end
        object EditDesignationPosteMenuNewAcces: TEdit
          Left = 184
          Top = 80
          Width = 249
          Height = 21
          Color = clSilver
          ReadOnly = True
          TabOrder = 8
        end
        object EditDefinitionPosteMenuNewAcces: TEdit
          Left = 440
          Top = 80
          Width = 313
          Height = 21
          Color = clSilver
          ReadOnly = True
          TabOrder = 9
        end
        object EditNumeroAccesNewAcces: TEdit
          Left = 16
          Top = 15
          Width = 65
          Height = 21
          Color = clSilver
          ReadOnly = True
          TabOrder = 11
        end
        object Panel3: TPanel
          Left = 16
          Top = 258
          Width = 313
          Height = 68
          BevelInner = bvLowered
          Color = 8454143
          TabOrder = 12
          object Bevel14: TBevel
            Left = 104
            Top = 8
            Width = 201
            Height = 52
          end
          object LabelDateDebutModifierNewAcces: TLabel
            Left = 112
            Top = 16
            Width = 94
            Height = 13
            Caption = 'Mise en application:'
            Enabled = False
          end
          object LabelDateFinModifierNewAcces: TLabel
            Left = 157
            Top = 40
            Width = 49
            Height = 13
            Caption = 'Expiration:'
            Enabled = False
          end
          object RBModifierNewAcces: TCheckBox
            Left = 8
            Top = 8
            Width = 65
            Height = 17
            Caption = 'Modifier: '
            TabOrder = 0
            OnClick = RBModifierNewAccesClick
          end
          object EditDateDebutModifierNewAcces: TMaskEdit
            Left = 216
            Top = 12
            Width = 71
            Height = 19
            Ctl3D = False
            Enabled = False
            EditMask = '!99/99/9999;1;_'
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 1
            Text = '  /  /    '
            OnKeyDown = EditDateDebutModifierNewAccesKeyDown
          end
          object EditDateFinModifierNewAcces: TMaskEdit
            Left = 216
            Top = 36
            Width = 71
            Height = 19
            Ctl3D = False
            Enabled = False
            EditMask = '!99/99/9999;1;_'
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 2
            Text = '  /  /    '
            OnKeyDown = EditDateFinModifierNewAccesKeyDown
          end
        end
        object Panel5: TPanel
          Left = 16
          Top = 331
          Width = 313
          Height = 68
          BevelInner = bvLowered
          Color = 8454143
          TabOrder = 13
          object Bevel15: TBevel
            Left = 104
            Top = 8
            Width = 201
            Height = 52
          end
          object LabelDateDebutSupprimerNewAcces: TLabel
            Left = 112
            Top = 16
            Width = 94
            Height = 13
            Caption = 'Mise en application:'
            Enabled = False
          end
          object LabelDateFinSupprimerNewAcces: TLabel
            Left = 157
            Top = 40
            Width = 49
            Height = 13
            Caption = 'Expiration:'
            Enabled = False
          end
          object RBSupprimerNewAcces: TCheckBox
            Left = 8
            Top = 8
            Width = 73
            Height = 17
            Caption = 'Supprimer: '
            TabOrder = 0
            OnClick = RBSupprimerNewAccesClick
          end
          object EditDateDebutSupprimerNewAcces: TMaskEdit
            Left = 216
            Top = 12
            Width = 71
            Height = 19
            Ctl3D = False
            Enabled = False
            EditMask = '!99/99/9999;1;_'
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 1
            Text = '  /  /    '
            OnKeyDown = EditDateDebutSupprimerNewAccesKeyDown
          end
          object EditDateFinSupprimerNewAcces: TMaskEdit
            Left = 216
            Top = 36
            Width = 71
            Height = 19
            Ctl3D = False
            Enabled = False
            EditMask = '!99/99/9999;1;_'
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 2
            Text = '  /  /    '
            OnKeyDown = EditDateFinSupprimerNewAccesKeyDown
          end
        end
        object AfficheListePosteMenuNewAcces: TPanel
          Left = 336
          Top = 112
          Width = 417
          Height = 361
          BevelInner = bvLowered
          Color = 11468718
          TabOrder = 10
          Visible = False
          object TableauPosteMenuNewAcces: TStringGrid
            Left = 8
            Top = 8
            Width = 401
            Height = 277
            ColCount = 4
            Ctl3D = False
            DefaultColWidth = 40
            FixedColor = 8454143
            FixedCols = 3
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
            ParentCtl3D = False
            TabOrder = 0
            OnClick = TableauPosteMenuNewAccesClick
            OnKeyDown = TableauPosteMenuNewAccesKeyDown
            ColWidths = (
              40
              2
              2
              330)
          end
          object BitBtn5: TBitBtn
            Left = 480
            Top = 8
            Width = 81
            Height = 25
            TabOrder = 1
            Kind = bkCancel
          end
          object DefinitionPosteMenuNewAcces: TMemo
            Left = 8
            Top = 290
            Width = 401
            Height = 65
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 2
          end
        end
        object Panel4: TPanel
          Left = 16
          Top = 404
          Width = 313
          Height = 68
          BevelInner = bvLowered
          Color = 8454143
          TabOrder = 14
          object Bevel16: TBevel
            Left = 104
            Top = 8
            Width = 201
            Height = 52
          end
          object LabelDateDebutImprimerNewAcces: TLabel
            Left = 112
            Top = 16
            Width = 94
            Height = 13
            Caption = 'Mise en application:'
            Enabled = False
          end
          object LabelDateFinImprimerNewAcces: TLabel
            Left = 157
            Top = 40
            Width = 49
            Height = 13
            Caption = 'Expiration:'
            Enabled = False
          end
          object RBImprimerNewAcces: TCheckBox
            Left = 8
            Top = 8
            Width = 73
            Height = 17
            Caption = 'Imprimer: '
            TabOrder = 0
            OnClick = RBImprimerNewAccesClick
          end
          object EditDateDebutImprimerNewAcces: TMaskEdit
            Left = 216
            Top = 12
            Width = 71
            Height = 19
            Ctl3D = False
            Enabled = False
            EditMask = '!99/99/9999;1;_'
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 1
            Text = '  /  /    '
            OnKeyDown = EditDateDebutImprimerNewAccesKeyDown
          end
          object EditDateFinImprimerNewAcces: TMaskEdit
            Left = 216
            Top = 36
            Width = 71
            Height = 19
            Ctl3D = False
            Enabled = False
            EditMask = '!99/99/9999;1;_'
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 2
            Text = '  /  /    '
            OnKeyDown = EditDateFinImprimerNewAccesKeyDown
          end
        end
      end
    end
  end
  object TimerLancerAfficheTiers: TTimer
    Enabled = False
    Interval = 1
    OnTimer = TimerLancerAfficheTiersTimer
    Left = 104
    Top = 88
  end
  object TimerAfficheTiers: TTimer
    Enabled = False
    Interval = 1
    OnTimer = TimerAfficheTiersTimer
    Left = 64
    Top = 88
  end
end
