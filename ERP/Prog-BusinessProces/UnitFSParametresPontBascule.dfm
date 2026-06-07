object FSParametresPontBascule: TFSParametresPontBascule
  Left = 170
  Top = 94
  Width = 1011
  Height = 480
  Caption = 'Pont bascule'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 993
    Height = 441
    ActivePage = PageResponsablePrelevement
    TabIndex = 1
    TabOrder = 0
    object PageTareVehicule: TTabSheet
      Caption = '     Tare V'#233'hicule     '
      object TableauVehiculePrelevementTare: TStringGrid
        Left = 0
        Top = 0
        Width = 985
        Height = 409
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnClick = TableauVehiculePrelevementTareClick
        OnKeyPress = TableauVehiculePrelevementTareKeyPress
      end
      object OperationsVehiculePrelevementTare: TPanel
        Left = 272
        Top = 32
        Width = 441
        Height = 241
        BevelInner = bvLowered
        TabOrder = 1
        Visible = False
        object Bevel2: TBevel
          Left = 8
          Top = 56
          Width = 425
          Height = 177
        end
        object Bevel1: TBevel
          Left = 8
          Top = 8
          Width = 425
          Height = 41
        end
        object Label1: TLabel
          Left = 58
          Top = 68
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Matricule:'
        end
        object Label2: TLabel
          Left = 77
          Top = 92
          Width = 27
          Height = 13
          Alignment = taRightJustify
          Caption = 'Type:'
        end
        object Label3: TLabel
          Left = 64
          Top = 116
          Width = 40
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tonage:'
        end
        object Label4: TLabel
          Left = 45
          Top = 140
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = 'C.Chauffeur:'
        end
        object Label5: TLabel
          Left = 31
          Top = 164
          Width = 73
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nom chauffeur:'
        end
        object Label6: TLabel
          Left = 17
          Top = 188
          Width = 87
          Height = 13
          Alignment = taRightJustify
          Caption = 'Pr'#233'nom chauffeur:'
        end
        object Label7: TLabel
          Left = 79
          Top = 212
          Width = 25
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tare:'
        end
        object BitBtn1: TBitBtn
          Left = 16
          Top = 16
          Width = 75
          Height = 25
          TabOrder = 0
          OnClick = BitBtn1Click
          Kind = bkCancel
        end
        object BitOperationsVehiculePrelevementTare: TBitBtn
          Left = 328
          Top = 16
          Width = 99
          Height = 25
          Caption = 'Valider'
          TabOrder = 1
          OnClick = BitOperationsVehiculePrelevementTareClick
          Kind = bkAll
        end
        object EditMatriculeResponsablePrelevement: TEdit
          Left = 112
          Top = 64
          Width = 121
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          OnKeyDown = EditMatriculeResponsablePrelevementKeyDown
        end
        object EditTypeVehiculePrelevement: TEdit
          Left = 112
          Top = 88
          Width = 121
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          OnKeyDown = EditTypeVehiculePrelevementKeyDown
        end
        object EditTonageVehiculePrelevement: TEdit
          Left = 112
          Top = 112
          Width = 121
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
          OnKeyDown = EditTonageVehiculePrelevementKeyDown
        end
        object EditCodeResponsablePrelevement: TEdit
          Left = 112
          Top = 136
          Width = 121
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
          OnKeyDown = EditCodeResponsablePrelevementKeyDown
        end
        object EditNomResponsablePrelevement: TEdit
          Left = 112
          Top = 160
          Width = 313
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 6
          OnEnter = EditNomResponsablePrelevementEnter
          OnKeyDown = EditNomResponsablePrelevementKeyDown
          OnKeyUp = EditNomResponsablePrelevementKeyUp
        end
        object EditPrenomResponsablePrelevement: TEdit
          Left = 112
          Top = 184
          Width = 313
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 7
          OnKeyDown = EditPrenomResponsablePrelevementKeyDown
        end
        object EditIndiceInialPontBascule: TEdit
          Left = 112
          Top = 208
          Width = 121
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 8
          OnKeyDown = EditIndiceInialPontBasculeKeyDown
        end
      end
      object TableauRechercheChauffeur: TStringGrid
        Left = 384
        Top = 240
        Width = 561
        Height = 153
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        Visible = False
        OnKeyDown = TableauRechercheChauffeurKeyDown
      end
    end
    object PageResponsablePrelevement: TTabSheet
      Caption = '     Responsable du v'#233'hicule     '
      ImageIndex = 1
      OnShow = PageResponsablePrelevementShow
      object TableauResponsablePrelevement: TStringGrid
        Left = 0
        Top = 0
        Width = 985
        Height = 409
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnClick = TableauResponsablePrelevementClick
        OnKeyPress = TableauResponsablePrelevementKeyPress
      end
      object OperationsResponsablePrelevement: TPanel
        Left = 224
        Top = 72
        Width = 481
        Height = 145
        BevelInner = bvLowered
        TabOrder = 1
        Visible = False
        object Bevel4: TBevel
          Left = 8
          Top = 56
          Width = 465
          Height = 81
        end
        object Bevel3: TBevel
          Left = 8
          Top = 8
          Width = 465
          Height = 41
        end
        object Label8: TLabel
          Left = 45
          Top = 68
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = 'C.Chauffeur:'
        end
        object Label9: TLabel
          Left = 31
          Top = 92
          Width = 73
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nom chauffeur:'
        end
        object Label10: TLabel
          Left = 17
          Top = 116
          Width = 87
          Height = 13
          Alignment = taRightJustify
          Caption = 'Pr'#233'nom chauffeur:'
        end
        object BitBtn2: TBitBtn
          Left = 16
          Top = 16
          Width = 75
          Height = 25
          TabOrder = 0
          Kind = bkCancel
        end
        object BitOperationsResponsablePrelevement: TBitBtn
          Left = 368
          Top = 16
          Width = 99
          Height = 25
          TabOrder = 1
          OnClick = BitOperationsResponsablePrelevementClick
          Kind = bkAll
        end
        object EditCodeResponsablePrelevementGenerateur: TEdit
          Left = 112
          Top = 64
          Width = 121
          Height = 19
          Color = clSilver
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
          OnKeyDown = EditCodeResponsablePrelevementGenerateurKeyDown
        end
        object EditNomResponsablePrelevementGenerateur: TEdit
          Left = 112
          Top = 88
          Width = 353
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          OnKeyDown = EditNomResponsablePrelevementGenerateurKeyDown
        end
        object EditPrenomResponsablePrelevementGenerateur: TEdit
          Left = 112
          Top = 112
          Width = 353
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
          OnKeyDown = EditPrenomResponsablePrelevementGenerateurKeyDown
        end
      end
    end
  end
end
