object FSConnectiviteBaseDataSelection: TFSConnectiviteBaseDataSelection
  Left = 35
  Top = 20
  Width = 1278
  Height = 690
  Caption = 'Connectivit'#233' par s'#233'lection'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object AfficheAdresseBaseDonnee: TPanel
    Left = 7
    Top = 8
    Width = 1250
    Height = 577
    BevelInner = bvLowered
    Color = 11599871
    TabOrder = 0
    object Label4: TLabel
      Left = 16
      Top = 68
      Width = 40
      Height = 13
      Caption = 'Exircice:'
    end
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 221
      Height = 13
      Caption = 'Emplacement de votre base de donn'#233'es SVP !'
    end
    object Bevel6: TBevel
      Left = 8
      Top = 8
      Width = 569
      Height = 89
    end
    object Label2: TLabel
      Left = 16
      Top = 48
      Width = 136
      Height = 13
      Caption = 'Nom de la base de donn'#233'es:'
    end
    object Source: TShellTreeView
      Left = 8
      Top = 104
      Width = 569
      Height = 465
      ObjectTypes = [otFolders]
      Root = 'rfDesktop'
      ShellListView = ListeFichierSource
      UseShellImages = True
      AutoRefresh = True
      Ctl3d = False
      Indent = 19
      ParentColor = False
      ParentCtl3d = False
      RightClickSelect = True
      ShowRoot = False
      TabOrder = 0
      OnMouseUp = SourceMouseUp
    end
    object AfficheOptionBaseDonnee: TPanel
      Left = 584
      Top = 8
      Width = 657
      Height = 561
      Color = 9699327
      TabOrder = 1
      object ListeFichierSource: TShellListView
        Left = 8
        Top = 56
        Width = 641
        Height = 497
        ObjectTypes = [otFolders, otNonFolders]
        Root = 'rfDesktop'
        ShellTreeView = Source
        Sorted = True
        Ctl3D = False
        ReadOnly = False
        HideSelection = False
        OnMouseUp = ListeFichierSourceMouseUp
        TabOrder = 0
        ViewStyle = vsReport
      end
      object AfficheBaseValide: TPanel
        Left = 8
        Top = 8
        Width = 641
        Height = 41
        BevelInner = bvLowered
        Color = clLime
        TabOrder = 1
        object BitValiderConnectiviterBaseSelect: TBitBtn
          Left = 8
          Top = 8
          Width = 265
          Height = 25
          Caption = 'Valider la connectivit'#233' de la base s'#233'lectionn'#233' !'
          TabOrder = 0
          OnClick = BitValiderConnectiviterBaseSelectClick
          Kind = bkAll
        end
      end
      object BitBtn2: TBitBtn
        Left = 384
        Top = 16
        Width = 257
        Height = 25
        Caption = 'Connectivit'#233' par base d'#39'installation'
        TabOrder = 2
        OnClick = BitBtn2Click
        Kind = bkHelp
      end
    end
    object EditExerciceExtract: TEdit
      Left = 248
      Top = 64
      Width = 65
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object EditAdresseBaseDonnee: TEdit
      Left = 248
      Top = 18
      Width = 321
      Height = 19
      Color = 14671839
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object EditParcours: TEdit
      Left = 248
      Top = 41
      Width = 249
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
    end
  end
  object AfficheDataInstall: TPanel
    Left = 192
    Top = 72
    Width = 857
    Height = 481
    BevelInner = bvLowered
    TabOrder = 1
    Visible = False
    object Bevel1: TBevel
      Left = 8
      Top = 8
      Width = 641
      Height = 417
    end
    object Label3: TLabel
      Left = 16
      Top = 18
      Width = 45
      Height = 13
      Caption = 'Parcours:'
    end
    object Label5: TLabel
      Left = 16
      Top = 42
      Width = 50
      Height = 13
      Caption = 'MotPasse:'
    end
    object Label6: TLabel
      Left = 16
      Top = 66
      Width = 86
      Height = 13
      Caption = 'DateAvancement:'
    end
    object Label7: TLabel
      Left = 16
      Top = 90
      Width = 44
      Height = 13
      Caption = 'DateExp:'
    end
    object Label8: TLabel
      Left = 16
      Top = 114
      Width = 47
      Height = 13
      Caption = 'HeureExp'
    end
    object Label9: TLabel
      Left = 16
      Top = 138
      Width = 46
      Height = 13
      Caption = 'NomLogo'
    end
    object Label10: TLabel
      Left = 16
      Top = 162
      Width = 48
      Height = 13
      Caption = 'NomLabel'
    end
    object Label11: TLabel
      Left = 16
      Top = 186
      Width = 27
      Height = 13
      Caption = 'Text1'
    end
    object Label12: TLabel
      Left = 16
      Top = 210
      Width = 30
      Height = 13
      Caption = 'Text2:'
    end
    object Label13: TLabel
      Left = 16
      Top = 234
      Width = 30
      Height = 13
      Caption = 'Text3:'
    end
    object Label14: TLabel
      Left = 16
      Top = 258
      Width = 30
      Height = 13
      Caption = 'Text4:'
    end
    object Label15: TLabel
      Left = 16
      Top = 282
      Width = 30
      Height = 13
      Caption = 'Text5:'
    end
    object Label16: TLabel
      Left = 16
      Top = 306
      Width = 30
      Height = 13
      Caption = 'Text6:'
    end
    object Label17: TLabel
      Left = 16
      Top = 330
      Width = 30
      Height = 13
      Caption = 'Text7:'
    end
    object Label18: TLabel
      Left = 16
      Top = 354
      Width = 30
      Height = 13
      Caption = 'Text8:'
    end
    object Label19: TLabel
      Left = 16
      Top = 378
      Width = 30
      Height = 13
      Caption = 'Text9:'
    end
    object Label20: TLabel
      Left = 16
      Top = 402
      Width = 36
      Height = 13
      Caption = 'Text10:'
    end
    object Bevel2: TBevel
      Left = 656
      Top = 8
      Width = 193
      Height = 41
    end
    object Label22: TLabel
      Left = 660
      Top = 64
      Width = 27
      Height = 13
      Caption = 'Logo.'
    end
    object Logo: TImage
      Left = 660
      Top = 80
      Width = 185
      Height = 145
      Stretch = True
    end
    object LabelISO: TImage
      Left = 660
      Top = 256
      Width = 105
      Height = 105
      Stretch = True
    end
    object Label23: TLabel
      Left = 660
      Top = 240
      Width = 29
      Height = 13
      Caption = 'Label.'
    end
    object PhotoVide: TImage
      Left = 720
      Top = 16
      Width = 33
      Height = 25
      Stretch = True
    end
    object EditParcoursInstall: TEdit
      Left = 96
      Top = 16
      Width = 545
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnKeyDown = EditParcoursInstallKeyDown
    end
    object EditMotPasse: TEdit
      Left = 96
      Top = 40
      Width = 545
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnKeyDown = EditMotPasseKeyDown
    end
    object EditDateAvancement: TEdit
      Left = 96
      Top = 64
      Width = 545
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnKeyDown = EditDateAvancementKeyDown
    end
    object EditDateExp: TEdit
      Left = 96
      Top = 88
      Width = 545
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnKeyDown = EditDateExpKeyDown
    end
    object EditHeureExp: TEdit
      Left = 96
      Top = 112
      Width = 545
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      OnKeyDown = EditHeureExpKeyDown
    end
    object EditNomLogo: TEdit
      Left = 96
      Top = 136
      Width = 545
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      OnKeyDown = EditNomLogoKeyDown
    end
    object EditNomLabel: TEdit
      Left = 96
      Top = 160
      Width = 545
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      OnKeyDown = EditNomLabelKeyDown
    end
    object EditText1: TEdit
      Left = 96
      Top = 184
      Width = 545
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
      OnKeyDown = EditText1KeyDown
    end
    object EditText2: TEdit
      Left = 96
      Top = 208
      Width = 545
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 8
      OnKeyDown = EditText2KeyDown
    end
    object EditText3: TEdit
      Left = 96
      Top = 232
      Width = 545
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 9
      OnKeyDown = EditText3KeyDown
    end
    object EditText4: TEdit
      Left = 96
      Top = 256
      Width = 545
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 10
      OnKeyDown = EditText4KeyDown
    end
    object EditText5: TEdit
      Left = 96
      Top = 280
      Width = 545
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 11
      OnKeyDown = EditText5KeyDown
    end
    object EditText6: TEdit
      Left = 96
      Top = 304
      Width = 545
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 12
      OnKeyDown = EditText6KeyDown
    end
    object EditText7: TEdit
      Left = 96
      Top = 328
      Width = 545
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 13
      OnKeyDown = EditText7KeyDown
    end
    object EditText8: TEdit
      Left = 96
      Top = 352
      Width = 545
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 14
      OnKeyDown = EditText8KeyDown
    end
    object EditText9: TEdit
      Left = 96
      Top = 376
      Width = 545
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 15
      OnKeyDown = EditText9KeyDown
    end
    object EditText10: TEdit
      Left = 96
      Top = 400
      Width = 545
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 16
      OnKeyDown = EditText10KeyDown
    end
    object Panel1: TPanel
      Left = 8
      Top = 432
      Width = 641
      Height = 41
      TabOrder = 17
      object BitBtn1: TBitBtn
        Left = 16
        Top = 8
        Width = 75
        Height = 25
        TabOrder = 0
        OnClick = BitBtn1Click
        Kind = bkCancel
      end
      object BitValiderDataInstall: TBitBtn
        Left = 520
        Top = 8
        Width = 115
        Height = 25
        Caption = 'Valider'
        TabOrder = 1
        OnClick = BitValiderDataInstallClick
        Kind = bkAll
      end
    end
    object BitBtn4: TBitBtn
      Left = 664
      Top = 16
      Width = 177
      Height = 25
      Caption = 'Charger les donn'#233'es'
      TabOrder = 18
      OnClick = BitBtn4Click
      Kind = bkAll
    end
    object AfficheChargementDonnes: TPanel
      Left = -656
      Top = 368
      Width = 841
      Height = 465
      BevelInner = bvLowered
      Color = 8454143
      TabOrder = 19
      Visible = False
      object MemoRapport: TMemo
        Left = 216
        Top = 296
        Width = 185
        Height = 89
        TabOrder = 2
      end
      object PageSelectFile: TPageControl
        Left = 8
        Top = 8
        Width = 825
        Height = 449
        ActivePage = PageSelectionFichier
        TabIndex = 0
        TabOrder = 0
        object PageSelectionFichier: TTabSheet
          Caption = '     S'#233'lectionner un Fichier     '
          object Bevel13: TBevel
            Left = 8
            Top = 8
            Width = 241
            Height = 33
          end
          object Bevel14: TBevel
            Left = 280
            Top = 0
            Width = 409
            Height = 33
          end
          object Label30: TLabel
            Left = 288
            Top = 10
            Width = 34
            Height = 13
            Caption = 'Fichier:'
          end
          object Label31: TLabel
            Left = 136
            Top = 18
            Width = 49
            Height = 13
            Caption = 'R'#233'pertoire'
          end
          object Bevel22: TBevel
            Left = 280
            Top = 40
            Width = 153
            Height = 33
          end
          object Bevel45: TBevel
            Left = 696
            Top = 0
            Width = 113
            Height = 33
          end
          object SourceChargement: TShellTreeView
            Left = 8
            Top = 48
            Width = 265
            Height = 345
            ObjectTypes = [otFolders]
            Root = 'rfDesktop'
            ShellListView = FichierChargement
            UseShellImages = True
            AutoRefresh = False
            Indent = 19
            ParentColor = False
            RightClickSelect = True
            ShowRoot = False
            TabOrder = 0
            OnMouseUp = SourceChargementMouseUp
          end
          object FichierChargement: TShellListView
            Left = 280
            Top = 80
            Width = 537
            Height = 313
            ObjectTypes = [otFolders, otNonFolders]
            Root = 'rfDesktop'
            ShellTreeView = SourceChargement
            Sorted = True
            ReadOnly = False
            HideSelection = False
            OnMouseUp = FichierChargementMouseUp
            ParentColor = True
            ParentShowHint = False
            ShowHint = False
            TabOrder = 1
            ViewStyle = vsReport
          end
          object EditFichierChargement: TEdit
            Left = 328
            Top = 8
            Width = 353
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 2
          end
          object BitBtn15: TBitBtn
            Left = 16
            Top = 12
            Width = 75
            Height = 25
            TabOrder = 3
            OnClick = BitBtn15Click
            Kind = bkCancel
          end
          object BitCharger: TBitBtn
            Left = 704
            Top = 4
            Width = 97
            Height = 24
            Caption = 'Charger'
            TabOrder = 4
            OnClick = BitChargerClick
            Kind = bkAll
          end
          object EditStyleFichierChargement: TComboBox
            Left = 288
            Top = 48
            Width = 137
            Height = 21
            ItemHeight = 13
            ItemIndex = 2
            TabOrder = 5
            Text = 'd'#233'tails'
            OnSelect = EditStyleFichierChargementSelect
            Items.Strings = (
              'ic'#244'nes'
              'liste'
              'd'#233'tails'
              'petite ic'#244'ne')
          end
        end
      end
      object BitAnnuler: TBitBtn
        Left = 704
        Top = 3
        Width = 129
        Height = 25
        TabOrder = 1
        OnClick = BitAnnulerClick
        Kind = bkCancel
      end
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 592
    Width = 1249
    Height = 49
    BevelInner = bvLowered
    TabOrder = 2
    object Label21: TLabel
      Left = 8
      Top = 4
      Width = 302
      Height = 13
      Caption = 
        'La base de donn'#233'es actuelle, est enregistr'#233'e dans le r'#233'pertoire ' +
        ':'
    end
    object LabelFichierSauv: TLabel
      Left = 8
      Top = 28
      Width = 30
      Height = 13
      Caption = '..........'
    end
  end
end
