object FSControleSysteme: TFSControleSysteme
  Left = 361
  Top = 161
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'Contr'#244'leur du syst'#232'me'
  ClientHeight = 323
  ClientWidth = 672
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 657
    Height = 305
    ActivePage = TabSheet3
    TabIndex = 2
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = '     Contr'#244'le date et heure     '
      OnShow = TabSheet1Show
      object Bevel1: TBevel
        Left = 280
        Top = 8
        Width = 249
        Height = 41
      end
      object Bevel2: TBevel
        Left = 280
        Top = 208
        Width = 249
        Height = 50
      end
      object Panel1: TPanel
        Left = 8
        Top = 8
        Width = 265
        Height = 89
        TabOrder = 0
        object Bevel7: TBevel
          Left = 8
          Top = 48
          Width = 185
          Height = 33
        end
        object Bevel6: TBevel
          Left = 8
          Top = 8
          Width = 185
          Height = 33
        end
        object LabelDate: TLabel
          Left = 16
          Top = 19
          Width = 26
          Height = 13
          Caption = 'Date:'
        end
        object Label3: TLabel
          Left = 16
          Top = 59
          Width = 93
          Height = 13
          Caption = 'Jours de la semaine'
        end
        object EditAnnee: TEdit
          Left = 144
          Top = 16
          Width = 41
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
        end
        object EditMois: TEdit
          Left = 112
          Top = 16
          Width = 25
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
        end
        object EditJouSemaine: TEdit
          Left = 112
          Top = 56
          Width = 25
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentCtl3D = False
          TabOrder = 2
        end
        object EditJour: TEdit
          Left = 80
          Top = 16
          Width = 25
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
        end
        object BitChargeDateHeureSysteme: TBitBtn
          Left = 200
          Top = 8
          Width = 57
          Height = 25
          Caption = 'Date'
          TabOrder = 4
          OnClick = BitChargeDateHeureSystemeClick
          Kind = bkHelp
          Margin = 0
        end
      end
      object Panel2: TPanel
        Left = 8
        Top = 104
        Width = 265
        Height = 169
        TabOrder = 1
        object Label4: TLabel
          Left = 16
          Top = 40
          Width = 57
          Height = 13
          Caption = 'Heure r'#233'elle'
        end
        object Label5: TLabel
          Left = 16
          Top = 72
          Width = 37
          Height = 13
          Caption = 'Minutes'
        end
        object Label6: TLabel
          Left = 16
          Top = 104
          Width = 46
          Height = 13
          Caption = 'secondes'
        end
        object Label7: TLabel
          Left = 16
          Top = 136
          Width = 63
          Height = 13
          Caption = 'Millisecondes'
        end
        object Label13: TLabel
          Left = 16
          Top = 8
          Width = 107
          Height = 13
          Caption = 'Heure Syst'#232'me (gmt ?)'
        end
        object EditHeureSysteme: TEdit
          Left = 128
          Top = 8
          Width = 121
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentCtl3D = False
          TabOrder = 0
        end
        object EditMinutes: TEdit
          Left = 128
          Top = 72
          Width = 121
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
        end
        object EditSecondes: TEdit
          Left = 128
          Top = 104
          Width = 121
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
        end
        object EditMillisecondes: TEdit
          Left = 128
          Top = 136
          Width = 121
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
        end
        object EditHeureReelle: TEdit
          Left = 128
          Top = 40
          Width = 121
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
        end
      end
      object BitModifierDateHeureSysteme: TBitBtn
        Left = 288
        Top = 16
        Width = 233
        Height = 25
        Caption = 'Modifier l'#39'heure syst'#232'me de votre micro'
        Enabled = False
        TabOrder = 2
        OnClick = BitModifierDateHeureSystemeClick
      end
      object Panel3: TPanel
        Left = 280
        Top = 56
        Width = 249
        Height = 137
        TabOrder = 3
        object Bevel3: TBevel
          Left = 8
          Top = 72
          Width = 249
          Height = 57
        end
        object Bevel4: TBevel
          Left = 8
          Top = 8
          Width = 217
          Height = 57
        end
        object AfficheDate: TLabel
          Left = 17
          Top = 20
          Width = 30
          Height = 13
          Caption = '..........'
        end
        object AfficheHeure: TLabel
          Left = 17
          Top = 44
          Width = 27
          Height = 13
          Caption = '.........'
        end
        object Label11: TLabel
          Left = 17
          Top = 80
          Width = 199
          Height = 13
          Caption = 'Ecrart entre heure syst'#232'me et heure r'#233'elle:'
        end
        object AfficheEcartHeure: TLabel
          Left = 17
          Top = 104
          Width = 27
          Height = 13
          Caption = '.........'
        end
      end
      object RBArretTimerDateHeureSysteme: TCheckBox
        Left = 288
        Top = 224
        Width = 233
        Height = 17
        Caption = 'Arr'#234'ter la progression de la date et l'#39'heure !'
        TabOrder = 4
        OnClick = RBArretTimerDateHeureSystemeClick
      end
      object AfficheDateChargement: TPanel
        Left = 16
        Top = 16
        Width = 249
        Height = 73
        BevelInner = bvLowered
        Color = 16777088
        TabOrder = 5
        Visible = False
        object EditDateChargement: TDateTimePicker
          Left = 8
          Top = 8
          Width = 186
          Height = 21
          CalAlignment = dtaLeft
          Date = 42772.7826826389
          Time = 42772.7826826389
          DateFormat = dfLong
          DateMode = dmComboBox
          Kind = dtkDate
          ParseInput = False
          TabOrder = 0
          OnChange = EditDateChargementChange
        end
        object BitBtn2: TBitBtn
          Left = 200
          Top = 8
          Width = 41
          Height = 25
          Caption = '.'
          TabOrder = 1
          OnClick = BitBtn2Click
          Kind = bkCancel
        end
      end
    end
    object PageVerificationReseaux: TTabSheet
      Caption = '     Contr'#244'le v'#233'rification r'#233'seaux     '
      ImageIndex = 1
      OnShow = PageVerificationReseauxShow
      object Panel4: TPanel
        Left = 8
        Top = 8
        Width = 521
        Height = 41
        TabOrder = 0
        object BitBtn1: TBitBtn
          Left = 8
          Top = 8
          Width = 249
          Height = 25
          Caption = 'Quiter Business Proces sans cont'#244'le r'#233'seaux'
          ModalResult = 2
          TabOrder = 0
          OnClick = BitBtn1Click
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
        object BitBtn6: TBitBtn
          Left = 296
          Top = 8
          Width = 219
          Height = 25
          Caption = 'Arr'#234'ter les contr'#244'leurs (Timer) !'
          TabOrder = 1
          OnClick = BitBtn6Click
          Kind = bkRetry
        end
      end
      object AfficheActiverPublicationReseaux: TPanel
        Left = 8
        Top = 160
        Width = 521
        Height = 97
        BevelInner = bvLowered
        TabOrder = 1
        object RadioGroup7: TRadioGroup
          Left = 8
          Top = 8
          Width = 505
          Height = 81
          Caption = 'Publication r'#233'seaux: '
          TabOrder = 0
        end
        object RBActiverPublicationReseaux: TRadioButton
          Left = 144
          Top = 24
          Width = 201
          Height = 17
          Caption = 'Activer la publication r'#233'seaux'
          TabOrder = 1
          OnClick = RBActiverPublicationReseauxClick
        end
        object RBDesActiverPublicationReseaux: TRadioButton
          Left = 144
          Top = 56
          Width = 193
          Height = 17
          Caption = 'D'#233'sactiver la publication r'#233'seaux'
          TabOrder = 2
          OnClick = RBActiverPublicationReseauxClick
        end
      end
      object Panel11: TPanel
        Left = 8
        Top = 56
        Width = 521
        Height = 97
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 2
        object RadioGroup8: TRadioGroup
          Left = 8
          Top = 8
          Width = 505
          Height = 81
          Caption = 'Connection r'#233'seaux: '
          TabOrder = 0
        end
        object RBTravauxConnexionReseaux: TRadioButton
          Left = 144
          Top = 24
          Width = 145
          Height = 17
          Caption = 'Connexion r'#233'seaux'
          TabOrder = 1
          OnClick = RBTravauxConnexionReseauxClick
        end
        object RBTravauxHorsConnexionReseaux: TRadioButton
          Left = 144
          Top = 56
          Width = 177
          Height = 17
          Caption = 'Hors Connexion r'#233'seaux'
          TabOrder = 2
          OnClick = RBTravauxHorsConnexionReseauxClick
        end
      end
      object RBAppliqueEnregistrementParametresReseaux: TCheckBox
        Left = 377
        Top = 259
        Width = 151
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Appliquer les enregistrement'
        Enabled = False
        TabOrder = 3
      end
    end
    object TabSheet3: TTabSheet
      Caption = '     Contr'#244'le Internet     '
      ImageIndex = 2
      OnShow = TabSheet3Show
      object Label2: TLabel
        Left = 168
        Top = 16
        Width = 53
        Height = 13
        Caption = 'Ip r'#233'seau : '
      end
      object AdresseIP: TLabel
        Left = 232
        Top = 16
        Width = 30
        Height = 13
        Caption = '..........'
      end
      object BitBtn3: TBitBtn
        Left = 8
        Top = 8
        Width = 137
        Height = 25
        Caption = 'Adresse IP local'
        TabOrder = 0
        OnClick = BitBtn3Click
        Kind = bkHelp
      end
      object Panel5: TPanel
        Left = 8
        Top = 56
        Width = 433
        Height = 89
        TabOrder = 1
        object EditNomReseau: TLabel
          Left = 265
          Top = 20
          Width = 30
          Height = 13
          Caption = '..........'
        end
        object EditNomUtilisateur: TLabel
          Left = 264
          Top = 56
          Width = 27
          Height = 13
          Caption = '.........'
        end
        object Button2: TButton
          Left = 16
          Top = 16
          Width = 225
          Height = 25
          Caption = 'Nom de ll'#39'ordinateur (nom r'#233'seau)'
          TabOrder = 0
          OnClick = Button2Click
        end
        object Button1: TButton
          Left = 16
          Top = 48
          Width = 225
          Height = 25
          Caption = 'Login Utilisateur'
          TabOrder = 1
          OnClick = Button1Click
        end
      end
      object Panel6: TPanel
        Left = 8
        Top = 160
        Width = 433
        Height = 65
        TabOrder = 2
        object Label9: TLabel
          Left = 24
          Top = 8
          Width = 102
          Height = 13
          Caption = 'Nouveau nom r'#233'seau'
        end
        object EditNewNomReseau: TEdit
          Left = 24
          Top = 24
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object Button3: TButton
          Left = 184
          Top = 16
          Width = 169
          Height = 25
          Caption = 'Changer le nom r'#233'seau'
          TabOrder = 1
          OnClick = Button3Click
        end
      end
      object BitBtn4: TBitBtn
        Left = 16
        Top = 240
        Width = 201
        Height = 25
        Caption = 'Communication serveur'
        TabOrder = 3
        OnClick = BitBtn4Click
        Kind = bkHelp
      end
      object BitBtn5: TBitBtn
        Left = 280
        Top = 240
        Width = 201
        Height = 25
        Caption = 'Communication Client'
        TabOrder = 4
        OnClick = BitBtn5Click
        Kind = bkHelp
      end
    end
    object TabSheet2: TTabSheet
      Caption = '     Sauvegarder  Application.exe     '
      ImageIndex = 3
      object Bevel8: TBevel
        Left = 8
        Top = 64
        Width = 633
        Height = 41
      end
      object Bevel5: TBevel
        Left = 8
        Top = 8
        Width = 321
        Height = 41
      end
      object Label1: TLabel
        Left = 15
        Top = 77
        Width = 26
        Height = 13
        Caption = 'Cible:'
      end
      object BitBtn7: TBitBtn
        Left = 16
        Top = 16
        Width = 305
        Height = 25
        Caption = 'Sauvegarder Application.exe dans le r'#233'pertoire local !'
        TabOrder = 0
        OnClick = BitBtn7Click
        Kind = bkAll
      end
      object EditCible: TEdit
        Left = 48
        Top = 75
        Width = 505
        Height = 19
        Color = clSilver
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
      object Cible: TShellTreeView
        Left = 8
        Top = 112
        Width = 633
        Height = 161
        ObjectTypes = [otFolders]
        Root = 'rfDesktop'
        UseShellImages = True
        AutoRefresh = True
        Ctl3d = False
        Indent = 19
        ParentColor = False
        ParentCtl3d = False
        RightClickSelect = True
        ShowRoot = False
        TabOrder = 2
        OnMouseUp = CibleMouseUp
      end
      object BitBtn8: TBitBtn
        Left = 560
        Top = 72
        Width = 75
        Height = 25
        Caption = 'Vider'
        ModalResult = 2
        TabOrder = 3
        OnClick = BitBtn8Click
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
    end
  end
  object Panel7: TPanel
    Left = 544
    Top = 40
    Width = 113
    Height = 41
    BevelInner = bvLowered
    TabOrder = 1
    object BitBtn9: TBitBtn
      Left = 8
      Top = 8
      Width = 97
      Height = 25
      Caption = 'Quitter'
      TabOrder = 0
      OnClick = BitBtn9Click
      Kind = bkNo
    end
  end
  object TimerDateHeureSysteme: TTimer
    Interval = 1
    OnTimer = TimerDateHeureSystemeTimer
    Left = 88
    Top = 168
  end
end
