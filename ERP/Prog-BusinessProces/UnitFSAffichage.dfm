object FSAffichage: TFSAffichage
  Left = 39
  Top = 63
  Width = 1244
  Height = 605
  Caption = 'Affichage'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object PageAffichage: TPageControl
    Left = 8
    Top = 8
    Width = 1209
    Height = 553
    ActivePage = Page1
    TabIndex = 0
    TabOrder = 0
    object Page1: TTabSheet
      Caption = 'Affichage 1'
      object AfficheTexte1: TMemo
        Left = 0
        Top = 0
        Width = 1201
        Height = 521
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
    object Page2: TTabSheet
      Caption = 'Affichage 2'
      ImageIndex = 1
      object AfficheTexte2: TMemo
        Left = 0
        Top = 0
        Width = 1201
        Height = 521
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
    object Page3: TTabSheet
      Caption = 'Affichage 3'
      ImageIndex = 2
      object AfficheTexte3: TMemo
        Left = 0
        Top = 0
        Width = 1201
        Height = 521
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
    object Page4: TTabSheet
      Caption = 'Affichage 4'
      ImageIndex = 3
      object AfficheTexte4: TMemo
        Left = 0
        Top = 0
        Width = 1201
        Height = 521
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
  end
  object BitBtn1: TBitBtn
    Left = 1140
    Top = 3
    Width = 75
    Height = 23
    Caption = 'Vider !'
    ModalResult = 2
    TabOrder = 1
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
end
