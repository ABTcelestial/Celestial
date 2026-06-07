object FSCreateFichierTexte: TFSCreateFichierTexte
  Left = 134
  Top = 15
  Width = 912
  Height = 580
  Caption = 'FSCreateFichierTexte'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 889
    Height = 537
    ActivePage = PageTraitementFichier
    TabIndex = 0
    TabOrder = 0
    object PageTraitementFichier: TTabSheet
      Caption = '     Traitement du Fichier Texte     '
      object TableauCreateFichierTexte: TStringGrid
        Left = 0
        Top = 79
        Width = 881
        Height = 402
        Ctl3D = False
        DefaultColWidth = 60
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
        ParentCtl3D = False
        TabOrder = 0
        OnClick = TableauCreateFichierTexteClick
        OnKeyPress = TableauCreateFichierTexteKeyPress
      end
      object AfficheOptionCreationFichier: TPanel
        Left = 0
        Top = 44
        Width = 881
        Height = 33
        BevelInner = bvLowered
        Color = 8454143
        TabOrder = 1
        object RBCodificationRubriqes: TCheckBox
          Left = 8
          Top = 8
          Width = 217
          Height = 17
          Caption = 'Fichier avec codification des rubriques !'
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = RBCodificationRubriqesClick
        end
        object RBSignatureEntrepeise: TCheckBox
          Left = 424
          Top = 8
          Width = 185
          Height = 17
          Caption = 'Fichier avec signature entreprise !'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = RBSignatureEntrepeiseClick
        end
        object RBLibelleRubriques: TCheckBox
          Left = 232
          Top = 8
          Width = 193
          Height = 17
          Caption = 'Fichier avec Libell'#233' des rubriques !'
          Checked = True
          State = cbChecked
          TabOrder = 2
          OnClick = RBLibelleRubriquesClick
        end
      end
      object AfficheFichierTexte: TPanel
        Left = 0
        Top = 488
        Width = 881
        Height = 19
        BevelInner = bvLowered
        Color = 8454143
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object AfficheTaillePropose: TPanel
        Left = 232
        Top = 136
        Width = 417
        Height = 177
        BevelInner = bvLowered
        Color = 8454143
        TabOrder = 3
        Visible = False
        object Bevel4: TBevel
          Left = 8
          Top = 8
          Width = 401
          Height = 105
        end
        object Label3: TLabel
          Left = 16
          Top = 19
          Width = 47
          Height = 13
          Caption = 'N'#176' Ligne: '
        end
        object Label4: TLabel
          Left = 16
          Top = 43
          Width = 60
          Height = 13
          Caption = 'N'#176' Colonne: '
        end
        object Label5: TLabel
          Left = 16
          Top = 67
          Width = 62
          Height = 13
          Caption = 'D'#233'signation: '
        end
        object Label6: TLabel
          Left = 16
          Top = 91
          Width = 72
          Height = 13
          Caption = 'Taille Actuelle: '
        end
        object Bevel5: TBevel
          Left = 8
          Top = 120
          Width = 401
          Height = 49
        end
        object Label7: TLabel
          Left = 16
          Top = 139
          Width = 73
          Height = 13
          Caption = 'Taille Propos'#233': '
        end
        object EditNumLigne: TEdit
          Left = 88
          Top = 16
          Width = 41
          Height = 19
          Color = 15132390
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
        object EditNumColonne: TEdit
          Left = 88
          Top = 40
          Width = 41
          Height = 19
          Color = 15132390
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object EditDesignationRubrique: TEdit
          Left = 88
          Top = 64
          Width = 313
          Height = 19
          Color = 15132390
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
        end
        object EditTailleActuelle: TEdit
          Left = 88
          Top = 88
          Width = 41
          Height = 19
          Color = 15132390
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object EditTaillePropose: TEdit
          Left = 88
          Top = 136
          Width = 41
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
          Text = '1'
        end
        object IncrementTaillePropose: TUpDown
          Left = 129
          Top = 136
          Width = 16
          Height = 19
          Associate = EditTaillePropose
          Min = 1
          Max = 255
          Position = 1
          TabOrder = 5
          Wrap = False
        end
        object BitBtn2: TBitBtn
          Left = 328
          Top = 16
          Width = 75
          Height = 25
          Cancel = True
          Caption = 'Annuler'
          ModalResult = 2
          TabOrder = 6
          OnClick = BitBtn2Click
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
        object BitBtn5: TBitBtn
          Left = 328
          Top = 136
          Width = 75
          Height = 25
          Caption = 'Valider'
          Default = True
          ModalResult = 8
          TabOrder = 7
          OnClick = BitBtn5Click
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
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 881
        Height = 43
        BevelInner = bvLowered
        Color = 8454143
        TabOrder = 4
        object Bevel6: TBevel
          Left = 565
          Top = 4
          Width = 164
          Height = 34
        end
        object Bevel7: TBevel
          Left = 373
          Top = 4
          Width = 164
          Height = 34
        end
        object Bevel3: TBevel
          Left = 5
          Top = 4
          Width = 158
          Height = 34
        end
        object Label8: TLabel
          Left = 378
          Top = 14
          Width = 89
          Height = 13
          Caption = 'N'#176' Colonne D'#233'but:'
        end
        object Label9: TLabel
          Left = 568
          Top = 14
          Width = 74
          Height = 13
          Caption = 'N'#176' Colonne Fin:'
        end
        object Bevel8: TBevel
          Left = 738
          Top = 5
          Width = 138
          Height = 34
        end
        object Bevel9: TBevel
          Left = 181
          Top = 4
          Width = 184
          Height = 34
        end
        object BitBtn1: TBitBtn
          Left = 9
          Top = 8
          Width = 151
          Height = 25
          Caption = 'Crier le Fichier texte !'
          TabOrder = 0
          OnClick = BitBtn1Click
          Kind = bkHelp
        end
        object EditNumColonneDebut: TEdit
          Left = 474
          Top = 12
          Width = 41
          Height = 19
          Color = 14408667
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
          Text = '0'
        end
        object IncrementNumColonneDebut: TUpDown
          Left = 515
          Top = 12
          Width = 16
          Height = 19
          Associate = EditNumColonneDebut
          Min = 0
          Position = 0
          TabOrder = 2
          Wrap = False
          OnClick = IncrementNumColonneDebutClick
        end
        object EditNumColonneFin: TEdit
          Left = 664
          Top = 12
          Width = 41
          Height = 19
          Color = 14408667
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
          Text = '0'
        end
        object IncrementNumColonneFin: TUpDown
          Left = 705
          Top = 12
          Width = 16
          Height = 19
          Associate = EditNumColonneFin
          Min = 0
          Position = 0
          TabOrder = 4
          Wrap = False
          OnClick = IncrementNumColonneFinClick
        end
        object BitBtn3: TBitBtn
          Left = 744
          Top = 9
          Width = 128
          Height = 25
          Caption = 'Ouvrir un fichier !'
          TabOrder = 5
          OnClick = BitBtn3Click
          Kind = bkHelp
          Margin = 0
        end
        object BitBtn9: TBitBtn
          Left = 184
          Top = 8
          Width = 177
          Height = 25
          Caption = 'Transformer en Fichier Excel'
          TabOrder = 6
          OnClick = BitBtn9Click
          Kind = bkHelp
        end
      end
      object AfficheOptionPrint: TPanel
        Left = 680
        Top = 48
        Width = 193
        Height = 25
        BevelInner = bvLowered
        Caption = 'Imprimer'
        Color = 8454143
        TabOrder = 5
        OnClick = AfficheOptionPrintClick
        object Bevel32: TBevel
          Left = 8
          Top = 40
          Width = 177
          Height = 169
        end
        object RadioGroup5: TRadioGroup
          Left = 16
          Top = 80
          Width = 161
          Height = 121
          Caption = 'Options d'#39'Impression:'
          TabOrder = 0
        end
        object StaticText2: TStaticText
          Left = 24
          Top = 107
          Width = 105
          Height = 17
          Caption = 'Orientation du papier:'
          TabOrder = 1
        end
        object RBOrientationPapier: TComboBox
          Left = 24
          Top = 128
          Width = 145
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          Ctl3D = False
          ItemHeight = 13
          ItemIndex = 0
          ParentCtl3D = False
          TabOrder = 2
          Text = 'Automatique'
          Items.Strings = (
            'Automatique'
            'Portrait'
            'Paysage')
        end
        object RBAjustement: TCheckBox
          Left = 24
          Top = 168
          Width = 113
          Height = 17
          Caption = 'Ajustement !'
          Checked = True
          State = cbChecked
          TabOrder = 3
        end
        object BitBtn20: TBitBtn
          Left = 16
          Top = 48
          Width = 161
          Height = 25
          Caption = 'Imprimer'
          TabOrder = 4
          OnClick = BitBtn20Click
          Kind = bkHelp
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = '     Voir le Fichier Texte !     '
      ImageIndex = 1
      OnShow = TabSheet2Show
      object EditCreateFichierTexte: TMemo
        Left = 0
        Top = 64
        Width = 881
        Height = 441
        Cursor = crArrow
        BevelInner = bvNone
        Color = clWhite
        Ctl3D = False
        DragCursor = crDefault
        DragMode = dmAutomatic
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier'
        Font.Style = []
        ImeMode = imAlpha
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ScrollBars = ssBoth
        ShowHint = False
        TabOrder = 0
        OnChange = EditCreateFichierTexteChange
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 881
        Height = 57
        BevelOuter = bvLowered
        TabOrder = 1
        object Label1: TLabel
          Left = 8
          Top = 16
          Width = 77
          Height = 13
          Caption = 'Nom du Fichier: '
        end
        object Label2: TLabel
          Left = 40
          Top = 32
          Width = 41
          Height = 13
          Caption = 'Adresse:'
        end
        object EditNomFichier: TEdit
          Left = 89
          Top = 11
          Width = 496
          Height = 19
          Color = 15658734
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
        object EditAdresseFicher: TEdit
          Left = 88
          Top = 31
          Width = 785
          Height = 19
          Color = 15658734
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object BitBtn4: TBitBtn
          Left = 590
          Top = 4
          Width = 283
          Height = 25
          Caption = 'Renomm'#233' le Fichier Texte !'
          TabOrder = 2
          OnClick = BitBtn4Click
          Kind = bkHelp
        end
      end
      object AfficheOperationFichierTexte: TPanel
        Left = 200
        Top = 136
        Width = 481
        Height = 145
        BevelInner = bvLowered
        TabOrder = 2
        Visible = False
        object PageControl2: TPageControl
          Left = 8
          Top = 8
          Width = 465
          Height = 129
          ActivePage = PageNewNomFichierTexte
          TabIndex = 0
          TabOrder = 0
          object PageNewNomFichierTexte: TTabSheet
            Caption = 'Renomm'#233' un fichier texte:     '
            object Bevel1: TBevel
              Left = 0
              Top = 0
              Width = 457
              Height = 41
            end
            object Bevel2: TBevel
              Left = 0
              Top = 48
              Width = 457
              Height = 49
            end
            object Label10: TLabel
              Left = 24
              Top = 68
              Width = 72
              Height = 13
              Caption = 'Nouveau Nom:'
            end
            object EditNewNomFichierTexte: TEdit
              Left = 104
              Top = 64
              Width = 345
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 0
            end
            object BitBtn6: TBitBtn
              Left = 8
              Top = 8
              Width = 137
              Height = 25
              Caption = 'Valider'
              TabOrder = 1
              OnClick = BitBtn6Click
              Kind = bkAll
            end
            object BitBtn7: TBitBtn
              Left = 376
              Top = 8
              Width = 75
              Height = 25
              TabOrder = 2
              OnClick = BitBtn7Click
              Kind = bkCancel
            end
          end
        end
      end
    end
  end
  object EnregistrerUnFichier: TSaveDialog
    Left = 616
    Top = 120
  end
  object OuvrirUnFichier: TOpenDialog
    Left = 648
    Top = 120
  end
end
