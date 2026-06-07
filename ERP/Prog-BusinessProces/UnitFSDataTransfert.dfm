object FSDataTransfert: TFSDataTransfert
  Left = 227
  Top = 62
  Width = 426
  Height = 503
  Caption = 'FSDataTransfert'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox3: TGroupBox
    Left = 0
    Top = 120
    Width = 401
    Height = 337
    Caption = 'Chat'
    TabOrder = 0
    object Bevel1: TBevel
      Left = 296
      Top = 264
      Width = 89
      Height = 41
    end
    object Button1: TButton
      Left = 304
      Top = 272
      Width = 75
      Height = 25
      Caption = 'Envoyer'
      Default = True
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 24
      Top = 272
      Width = 265
      Height = 21
      TabOrder = 1
      Text = 'Edit1'
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 8
    Width = 401
    Height = 105
    Caption = 'Login'
    TabOrder = 1
    object Label1: TLabel
      Left = 32
      Top = 30
      Width = 50
      Height = 20
      Caption = 'Login:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button2: TButton
      Left = 304
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Connecter'
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 304
      Top = 56
      Width = 75
      Height = 25
      Caption = 'D'#233'connecter'
      Enabled = False
      TabOrder = 1
      OnClick = Button3Click
    end
  end
  object Memo1: TMemo
    Left = 16
    Top = 144
    Width = 369
    Height = 225
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 104
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Serveur'
  end
  object ServerSocket1: TServerSocket
    Active = False
    Port = 1346
    ServerType = stNonBlocking
    OnClientConnect = ServerSocket1ClientConnect
    OnClientDisconnect = ServerSocket1ClientDisconnect
    OnClientRead = ServerSocket1ClientRead
    OnClientWrite = ServerSocket1ClientWrite
    OnClientError = ServerSocket1ClientError
    Left = 240
    Top = 40
  end
  object ActionList1: TActionList
    Left = 352
    Top = 128
  end
end
