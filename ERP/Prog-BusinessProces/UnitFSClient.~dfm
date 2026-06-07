object FSClient: TFSClient
  Left = 811
  Top = 92
  Width = 426
  Height = 544
  Caption = 'FSClient'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox3: TGroupBox
    Left = 8
    Top = 159
    Width = 393
    Height = 337
    Caption = 'Chat'
    TabOrder = 0
    object Bevel1: TBevel
      Left = 264
      Top = 272
      Width = 113
      Height = 42
    end
    object Edit3: TEdit
      Left = 16
      Top = 272
      Width = 241
      Height = 21
      TabOrder = 0
      Text = 'Edit3'
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 88
    Width = 393
    Height = 73
    Caption = 'Login'
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 24
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
  end
  object GroupBox1: TGroupBox
    Left = -96
    Top = 8
    Width = 497
    Height = 73
    Caption = 'Connection'
    TabOrder = 2
    object Label2: TLabel
      Left = 144
      Top = 24
      Width = 18
      Height = 20
      Caption = 'IP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Button1: TButton
    Left = 184
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Connecter'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 296
    Top = 32
    Width = 75
    Height = 25
    Caption = 'D'#233'connecter'
    Enabled = False
    TabOrder = 4
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 72
    Top = 32
    Width = 81
    Height = 21
    TabOrder = 5
  end
  object Memo1: TMemo
    Left = 16
    Top = 192
    Width = 377
    Height = 233
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 6
  end
  object Edit2: TEdit
    Left = 80
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 7
    Text = 'Client'
  end
  object Button3: TButton
    Left = 280
    Top = 448
    Width = 97
    Height = 25
    Caption = 'Envoyer'
    Default = True
    TabOrder = 8
    OnClick = Button3Click
  end
  object SocketClient: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 1346
    OnConnecting = SocketClientConnecting
    OnConnect = SocketClientConnect
    OnDisconnect = SocketClientDisconnect
    OnRead = SocketClientRead
    OnError = SocketClientError
    Top = 16
  end
  object ActionList1: TActionList
    Left = 352
    Top = 128
  end
end
