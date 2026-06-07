object FSAutorisationPartageRegistre: TFSAutorisationPartageRegistre
  Left = 74
  Top = 6
  Width = 1208
  Height = 726
  Caption = 'Autorisation de partage'
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
    Left = 8
    Top = 8
    Width = 1177
    Height = 673
    ActivePage = TabSheet1
    TabIndex = 0
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = '     Liste partage registre r'#233'seaux     '
      ImageIndex = 1
      OnShow = TabSheet1Show
      object TableauAutorisationPartageRegistre: TStringGrid
        Left = 0
        Top = 96
        Width = 1169
        Height = 545
        Ctl3D = False
        FixedColor = 8454143
        ParentCtl3D = False
        TabOrder = 0
        OnClick = TableauAutorisationPartageRegistreClick
        OnDblClick = TableauAutorisationPartageRegistreDblClick
        OnKeyPress = TableauAutorisationPartageRegistreKeyPress
        ColWidths = (
          64
          64
          64
          64
          64)
      end
      object AfficheOperationTableauAutorisationPartageRegistre: TPanel
        Left = 320
        Top = 176
        Width = 481
        Height = 57
        BevelInner = bvLowered
        Color = 8454143
        TabOrder = 1
        Visible = False
        object Bevel4: TBevel
          Left = 8
          Top = 8
          Width = 465
          Height = 42
        end
        object BitBtn3: TBitBtn
          Left = 16
          Top = 16
          Width = 75
          Height = 25
          TabOrder = 0
          OnClick = BitBtn3Click
          Kind = bkCancel
        end
        object BitOperationTableauAutorisationPartageRegistre: TBitBtn
          Left = 376
          Top = 16
          Width = 91
          Height = 25
          Caption = 'Supprimer'
          TabOrder = 1
          OnClick = BitOperationTableauAutorisationPartageRegistreClick
          Kind = bkCancel
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1169
        Height = 41
        BevelInner = bvLowered
        Color = 8454143
        TabOrder = 2
        object EditTitreFichierConcerneListe: TLabel
          Left = 274
          Top = 16
          Width = 88
          Height = 13
          Caption = 'Fichier Cons'#233'rner !'
        end
        object Label4: TLabel
          Left = 8
          Top = 16
          Width = 81
          Height = 13
          Caption = 'Liste des Proces:'
        end
        object Bevel14: TBevel
          Left = 544
          Top = 9
          Width = 337
          Height = 28
        end
        object EditFichierConcerneListe: TComboBox
          Left = 368
          Top = 12
          Width = 161
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 0
          Text = 'FClient'
          OnChange = EditFichierConcerneListeChange
          Items.Strings = (
            'FClient'
            'FFournisseur'
            'FPersonnel')
        end
        object EditTypeProcesListe: TComboBox
          Left = 96
          Top = 12
          Width = 145
          Height = 21
          BevelKind = bkFlat
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = 'Business'
          OnChange = EditTypeProcesListeChange
          Items.Strings = (
            'Business'
            'Commercial'
            'Paie'
            'Comptabilit'#233
            'Social')
        end
        object BitBtn19: TBitBtn
          Left = 992
          Top = 8
          Width = 171
          Height = 25
          Caption = 'Imprimer'
          TabOrder = 2
          OnClick = BitBtn19Click
          Kind = bkHelp
        end
        object RBAjusterListe: TCheckBox
          Left = 928
          Top = 13
          Width = 65
          Height = 17
          Caption = 'Ajuster'
          TabOrder = 3
        end
        object RBIndiceRubriqueTriColListe: TCheckBox
          Left = 552
          Top = 16
          Width = 193
          Height = 17
          Caption = 'Triers par la Rubrique s'#233'lectionner !'
          TabOrder = 4
        end
        object EditIndiceRubriqueTriColListe: TEdit
          Left = 760
          Top = 14
          Width = 25
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          Text = '3'
        end
        object EditTypeDataTrieListe: TEdit
          Left = 784
          Top = 14
          Width = 49
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
        object EditTypeTrieListe: TComboBox
          Left = 832
          Top = 12
          Width = 41
          Height = 21
          BevelKind = bkFlat
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          ItemIndex = 0
          ParentFont = False
          TabOrder = 7
          Text = '+'
          Items.Strings = (
            '+'
            '-')
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 48
        Width = 1169
        Height = 41
        BevelInner = bvLowered
        Color = 8454143
        TabOrder = 3
        object Label11: TLabel
          Left = 8
          Top = 15
          Width = 101
          Height = 13
          Caption = 'Nom dossier reseaux:'
        end
        object EditNomDossierPartageReseauxListe: TComboBox
          Left = 112
          Top = 12
          Width = 265
          Height = 21
          BevelKind = bkFlat
          ItemHeight = 13
          TabOrder = 0
          OnChange = EditNomDossierPartageReseauxListeChange
        end
        object BitBtn5: TBitBtn
          Left = 936
          Top = 8
          Width = 227
          Height = 25
          Caption = 'Publier dans le r'#233'seaux'
          TabOrder = 1
          OnClick = BitBtn5Click
          Kind = bkHelp
        end
      end
    end
    object PagePartageTiers: TTabSheet
      Caption = '     Partage Tiers:     '
      OnShow = PagePartageTiersShow
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1169
        Height = 41
        BevelInner = bvLowered
        Color = 8454016
        TabOrder = 0
        object EditTitreFichierConcerne: TLabel
          Left = 274
          Top = 16
          Width = 88
          Height = 13
          Caption = 'Fichier Cons'#233'rner !'
        end
        object Label83: TLabel
          Left = 8
          Top = 16
          Width = 81
          Height = 13
          Caption = 'Liste des Proces:'
        end
        object Bevel13: TBevel
          Left = 544
          Top = 9
          Width = 337
          Height = 28
        end
        object EditFichierConcerne: TComboBox
          Left = 368
          Top = 12
          Width = 161
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 0
          Text = 'FClient'
          OnSelect = EditFichierConcerneSelect
          Items.Strings = (
            'FClient'
            'FFournisseur'
            'FPersonnel')
        end
        object EditSelectTypeProces: TComboBox
          Left = 96
          Top = 12
          Width = 145
          Height = 21
          BevelKind = bkFlat
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = 'Business'
          OnChange = EditSelectTypeProcesChange
          Items.Strings = (
            'Business'
            'Commercial'
            'Paie'
            'Comptabilit'#233
            'Social')
        end
        object BitBtn2: TBitBtn
          Left = 992
          Top = 8
          Width = 171
          Height = 25
          Caption = 'Imprimer'
          TabOrder = 2
          OnClick = BitBtn2Click
          Kind = bkHelp
        end
        object RBAjuster: TCheckBox
          Left = 928
          Top = 13
          Width = 65
          Height = 17
          Caption = 'Ajuster'
          TabOrder = 3
        end
        object RBIndiceRubriqueTriCol: TCheckBox
          Left = 552
          Top = 16
          Width = 193
          Height = 17
          Caption = 'Triers par la Rubrique s'#233'lectionner !'
          TabOrder = 4
        end
        object EditIndiceRubriqueTriCol: TEdit
          Left = 760
          Top = 14
          Width = 25
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          Text = '3'
        end
        object EditTypeDataTrie: TEdit
          Left = 784
          Top = 14
          Width = 49
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
        object EditTypeTrie: TComboBox
          Left = 832
          Top = 12
          Width = 41
          Height = 21
          BevelKind = bkFlat
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          ItemIndex = 1
          ParentFont = False
          TabOrder = 7
          Text = '-'
          Items.Strings = (
            '+'
            '-')
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 48
        Width = 1169
        Height = 73
        BevelInner = bvLowered
        Color = 8454016
        TabOrder = 1
        object Label15: TLabel
          Left = 24
          Top = 14
          Width = 85
          Height = 13
          Caption = 'Rechercher Tiers:'
        end
        object Label1: TLabel
          Left = 8
          Top = 48
          Width = 101
          Height = 13
          Caption = 'Nom dossier reseaux:'
        end
        object Label3: TLabel
          Left = 456
          Top = 16
          Width = 85
          Height = 13
          Caption = 'Type Codification:'
        end
        object EditAddNomDossierPartageReseaux: TEdit
          Left = 224
          Top = 44
          Width = 177
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 6
        end
        object EditRechercheTiers: TEdit
          Left = 112
          Top = 11
          Width = 313
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnEnter = EditRechercheTiersEnter
          OnKeyDown = EditRechercheTiersKeyDown
          OnKeyUp = EditRechercheTiersKeyUp
        end
        object RadioGroup1: TRadioGroup
          Left = 688
          Top = 4
          Width = 473
          Height = 32
          Caption = 'Option de recherche: '
          TabOrder = 1
        end
        object RBRechercheTiersEntie: TRadioButton
          Left = 760
          Top = 14
          Width = 129
          Height = 17
          Caption = 'Recherche Tiers enti'#233
          Checked = True
          TabOrder = 2
          TabStop = True
          OnClick = RBRechercheTiersEntieClick
        end
        object RBRechercheTiersMotCle: TRadioButton
          Left = 928
          Top = 14
          Width = 121
          Height = 17
          Caption = 'Recherche mots cl'#233
          TabOrder = 3
          OnClick = RBRechercheTiersEntieClick
        end
        object EditRechercheNomDossierPartageReseaux: TComboBox
          Left = 112
          Top = 43
          Width = 841
          Height = 21
          BevelKind = bkFlat
          ItemHeight = 0
          TabOrder = 4
          OnKeyPress = EditRechercheNomDossierPartageReseauxKeyPress
          OnSelect = EditRechercheNomDossierPartageReseauxSelect
        end
        object EditOperationAddNomDossierPartageReseaux: TEdit
          Left = 954
          Top = 44
          Width = 17
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
        end
        object BitBtn6: TBitBtn
          Left = 987
          Top = 42
          Width = 172
          Height = 25
          Caption = 'Tous les dossier r'#233'seaux'
          TabOrder = 7
          OnClick = BitBtn6Click
          Kind = bkHelp
        end
        object EditTypeCodification: TComboBox
          Left = 544
          Top = 12
          Width = 137
          Height = 21
          BevelInner = bvNone
          BevelKind = bkFlat
          ItemHeight = 13
          ItemIndex = 6
          TabOrder = 8
          Text = 'Tiers'
          OnSelect = EditTypeCodificationSelect
          Items.Strings = (
            'Classe'
            'SousClasse'
            'Categorie'
            'SousCategorie'
            'Famille'
            'SousFamille'
            'Tiers')
        end
        object EditNbrKeyUpMemo: TEdit
          Left = 443
          Top = 11
          Width = 12
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 9
        end
        object EditNbrKeyUp: TEdit
          Left = 429
          Top = 11
          Width = 12
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 10
        end
      end
      object TableauTiers: TStringGrid
        Left = 0
        Top = 128
        Width = 1169
        Height = 505
        ColCount = 16
        Ctl3D = False
        DefaultRowHeight = 20
        FixedColor = 8454016
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing]
        ParentCtl3D = False
        TabOrder = 2
        OnClick = TableauTiersClick
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
      end
      object AfficheOperationAutorisationPartageRegistre: TPanel
        Left = 240
        Top = 192
        Width = 713
        Height = 257
        BevelInner = bvLowered
        Color = 8454016
        TabOrder = 3
        Visible = False
        object Bevel2: TBevel
          Left = 8
          Top = 7
          Width = 697
          Height = 242
        end
        object LabelPositionAPR: TLabel
          Left = 16
          Top = 20
          Width = 59
          Height = 13
          Caption = 'PositionAPR'
        end
        object Bevel1: TBevel
          Left = 376
          Top = 16
          Width = 113
          Height = 65
        end
        object LabelFichierConcerne: TLabel
          Left = 16
          Top = 68
          Width = 77
          Height = 13
          Caption = 'FichierConcerne'
        end
        object LabelCodeRegistre: TLabel
          Left = 16
          Top = 92
          Width = 64
          Height = 13
          Caption = 'CodeRegistre'
        end
        object LabelRegistreInvisibleReseaux: TLabel
          Left = 16
          Top = 156
          Width = 119
          Height = 13
          Caption = 'RegistreInvisibleReseaux'
        end
        object LabelValeurInvisibleReseaux: TLabel
          Left = 24
          Top = 212
          Width = 110
          Height = 13
          Caption = 'ValeurInvisibleReseaux'
        end
        object LabelNomDossierPartageReseaux: TLabel
          Left = 16
          Top = 116
          Width = 136
          Height = 13
          Caption = 'NomDossierPartageReseaux'
        end
        object Bevel3: TBevel
          Left = 576
          Top = 16
          Width = 121
          Height = 41
        end
        object Label2: TLabel
          Left = 16
          Top = 44
          Width = 60
          Height = 13
          Caption = 'Type Proces'
        end
        object BitBtn1: TBitBtn
          Left = 584
          Top = 24
          Width = 105
          Height = 25
          TabOrder = 0
          OnClick = BitBtn1Click
          Kind = bkCancel
        end
        object BitOperationAutorisationPartageRegistre: TBitBtn
          Left = 384
          Top = 24
          Width = 99
          Height = 49
          TabOrder = 1
          OnClick = BitOperationAutorisationPartageRegistreClick
          Kind = bkAll
        end
        object EditPositionAPR: TEdit
          Left = 160
          Top = 16
          Width = 121
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
        end
        object EditFichierConcerneRegistre: TEdit
          Left = 160
          Top = 64
          Width = 209
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object EditCodeRegistre: TEdit
          Left = 160
          Top = 88
          Width = 105
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
        end
        object EditNomDossierPartageReseaux: TEdit
          Left = 160
          Top = 112
          Width = 401
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
        end
        object Panel2: TPanel
          Left = 160
          Top = 136
          Width = 537
          Height = 49
          BevelInner = bvLowered
          TabOrder = 6
          object RadioGroup2: TRadioGroup
            Left = 8
            Top = 5
            Width = 521
            Height = 37
            TabOrder = 0
          end
          object RBRegistreInvisibleReseaux: TRadioButton
            Left = 16
            Top = 16
            Width = 185
            Height = 17
            Caption = 'Registre Invisible dans le r'#233'seaux'
            TabOrder = 1
          end
          object RBRegistreVisibleReseaux: TRadioButton
            Left = 296
            Top = 16
            Width = 177
            Height = 17
            Caption = 'Registre Visible dans le r'#233'seaux'
            TabOrder = 2
          end
        end
        object Panel4: TPanel
          Left = 160
          Top = 192
          Width = 537
          Height = 49
          BevelInner = bvLowered
          TabOrder = 7
          object RadioGroup3: TRadioGroup
            Left = 8
            Top = 5
            Width = 521
            Height = 37
            TabOrder = 0
          end
          object RBValeurInvisibleReseaux: TRadioButton
            Left = 16
            Top = 16
            Width = 233
            Height = 17
            Caption = 'Valeurs du registre invisible dans le r'#233'seaux'
            TabOrder = 1
          end
          object RBValeurVisibleReseaux: TRadioButton
            Left = 296
            Top = 16
            Width = 225
            Height = 17
            Caption = 'Valeurs du registre Visible dans le r'#233'seaux'
            TabOrder = 2
          end
        end
        object EditTypeProcesRegistre: TEdit
          Left = 160
          Top = 40
          Width = 209
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 8
        end
        object EditDesignationRegistre: TEdit
          Left = 272
          Top = 88
          Width = 425
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 9
        end
        object BitBtn4: TBitBtn
          Left = 568
          Top = 110
          Width = 129
          Height = 25
          Caption = 'Modifier le dossier'
          TabOrder = 10
          OnClick = BitBtn4Click
          Kind = bkAll
        end
      end
    end
  end
  object TimerAddNomDossierPartageReseaux: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerAddNomDossierPartageReseauxTimer
    Left = 808
    Top = 24
  end
  object TimerLancerAfficheTiers: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerLancerAfficheTiersTimer
    Left = 104
    Top = 88
  end
  object TimerAfficheTiers: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerAfficheTiersTimer
    Left = 64
    Top = 88
  end
end
