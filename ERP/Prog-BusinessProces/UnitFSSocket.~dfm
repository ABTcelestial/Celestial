object FSSocket: TFSSocket
  Left = 198
  Top = 124
  Width = 834
  Height = 485
  Caption = 'FSSocket'
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
  object GroupBox2: TGroupBox
    Left = 409
    Top = 0
    Width = 409
    Height = 447
    Align = alClient
    Caption = 'Client'
    TabOrder = 0
    object Panel3: TPanel
      Left = 2
      Top = 238
      Width = 405
      Height = 207
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel1'
      TabOrder = 0
      object Label5: TLabel
        Left = 0
        Top = 0
        Width = 405
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'Logs re'#231'us par le client :'
      end
      object LogClient: TMemo
        Left = 0
        Top = 13
        Width = 405
        Height = 175
        Align = alClient
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object StatusBarClient: TStatusBar
        Left = 0
        Top = 188
        Width = 405
        Height = 19
        Panels = <>
        SimplePanel = True
      end
    end
    object Panel2: TPanel
      Left = 2
      Top = 15
      Width = 405
      Height = 223
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Label1: TLabel
        Left = 244
        Top = 64
        Width = 87
        Height = 13
        Caption = 'R'#233'ponse serveur :'
      end
      object Label3: TLabel
        Left = 16
        Top = 159
        Width = 286
        Height = 11
        Caption = 
          'Le fichier sera enregistr'#233' dans le r'#233'pertoire de l'#39'ex'#233'cutable du' +
          ' serveur.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 16
        Top = 48
        Width = 97
        Height = 13
        Caption = 'Adresse du serveur :'
      end
      object BoutonClient_Client: TButton
        Left = 124
        Top = 8
        Width = 153
        Height = 25
        Caption = 'Connecter / D'#233'connecter'
        TabOrder = 0
        OnClick = BoutonClient_ClientClick
      end
      object EditClient_Fichier: TEdit
        Left = 16
        Top = 128
        Width = 241
        Height = 21
        TabOrder = 1
      end
      object BoutonClient_Fichier: TButton
        Left = 284
        Top = 125
        Width = 105
        Height = 25
        Caption = 'Envoyer fichier'
        Enabled = False
        TabOrder = 2
        OnClick = BoutonClient_FichierClick
      end
      object EditClient_MotClient: TEdit
        Left = 16
        Top = 80
        Width = 121
        Height = 21
        TabOrder = 3
        Text = 'Phrase '#224' inverser...'
      end
      object BoutonClient_Inverser: TButton
        Left = 136
        Top = 80
        Width = 105
        Height = 22
        Caption = 'Inverser'
        Enabled = False
        TabOrder = 4
        OnClick = BoutonClient_InverserClick
      end
      object EditClient_MotServeur: TEdit
        Left = 242
        Top = 81
        Width = 121
        Height = 21
        ReadOnly = True
        TabOrder = 5
      end
      object BoutonClient_FichierSelection: TButton
        Left = 256
        Top = 128
        Width = 27
        Height = 21
        Caption = '...'
        TabOrder = 6
      end
      object NouveauClient: TButton
        Left = 280
        Top = 192
        Width = 113
        Height = 25
        Caption = 'Nouveau client...'
        TabOrder = 7
        OnClick = NouveauClientClick
      end
      object EditClient_AdresseServeur: TEdit
        Left = 125
        Top = 45
        Width = 92
        Height = 21
        MaxLength = 15
        TabOrder = 8
        Text = '127.0.0.1'
      end
      object EditHandle: TEdit
        Left = 32
        Top = 192
        Width = 121
        Height = 21
        TabOrder = 9
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 409
    Height = 447
    Align = alLeft
    Caption = 'Serveur'
    TabOrder = 1
    object Panel4: TPanel
      Left = 2
      Top = 15
      Width = 405
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object BoutonServeur_Etat: TButton
        Left = 129
        Top = 8
        Width = 153
        Height = 25
        Caption = 'Arr'#234'ter / D'#233'marrer'
        TabOrder = 0
        OnClick = BoutonServeur_EtatClick
      end
    end
    object GroupBox3: TGroupBox
      Left = 2
      Top = 56
      Width = 405
      Height = 183
      Align = alTop
      Caption = 'Clients connect'#233's'
      TabOrder = 1
      object Label4: TLabel
        Left = 124
        Top = 71
        Width = 252
        Height = 22
        Alignment = taCenter
        Caption = 
          'Le fichier sera enregistr'#233' dans le r'#233'pertoire de l'#39'ex'#233'cutable de' +
          ' chaque client.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsItalic]
        ParentFont = False
        WordWrap = True
      end
      object EditServeur_EnvoyerCommande: TEdit
        Left = 124
        Top = 16
        Width = 187
        Height = 21
        TabOrder = 0
        Text = 'Texte '#224' envoyer'
      end
      object BoutonServeur_EnvoyerCommande: TButton
        Left = 312
        Top = 17
        Width = 89
        Height = 22
        Caption = 'Envoyer texte'
        Enabled = False
        TabOrder = 1
        OnClick = BoutonServeur_EnvoyerCommandeClick
      end
      object BoutonServeur_Fichier: TButton
        Left = 312
        Top = 40
        Width = 89
        Height = 25
        Caption = 'Envoyer fichier'
        Enabled = False
        TabOrder = 2
        OnClick = BoutonServeur_FichierClick
      end
      object EditServeur_Fichier: TEdit
        Left = 124
        Top = 42
        Width = 161
        Height = 21
        TabOrder = 3
      end
      object BoutonServeur_FichierSelection: TButton
        Left = 284
        Top = 42
        Width = 27
        Height = 21
        Caption = '...'
        TabOrder = 4
        OnClick = BoutonServeur_FichierSelectionClick
      end
      object ListeClients: TListBox
        Left = 2
        Top = 15
        Width = 113
        Height = 166
        Align = alLeft
        ItemHeight = 13
        MultiSelect = True
        TabOrder = 5
        OnClick = ListeClientsClick
      end
      object BoutonServeur_DeconnecterClients: TButton
        Left = 159
        Top = 112
        Width = 201
        Height = 25
        Caption = 'D'#233'connecter clients s'#233'lectionn'#233's'
        Enabled = False
        TabOrder = 6
        OnClick = BoutonServeur_DeconnecterClientsClick
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 239
      Width = 405
      Height = 206
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel1'
      TabOrder = 2
      object Label2: TLabel
        Left = 0
        Top = 0
        Width = 405
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'Logs re'#231'us par le serveur :'
      end
      object LogServeur: TMemo
        Left = 0
        Top = 13
        Width = 405
        Height = 174
        Align = alClient
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object StatusBarServeur: TStatusBar
        Left = 0
        Top = 187
        Width = 405
        Height = 19
        Panels = <>
        SimplePanel = True
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Tous les fichiers (*.*)|*.*'
    Left = 376
    Top = 22
  end
  object ClientSocket: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Host = '127.0.0.1'
    Port = 12768
    OnConnect = ClientSocketConnect
    OnDisconnect = ClientSocketDisconnect
    OnRead = ClientSocketRead
    OnError = ClientSocketError
    Left = 417
    Top = 17
  end
  object ServerSocket: TServerSocket
    Active = False
    Port = 12768
    ServerType = stNonBlocking
    OnClientConnect = ServerSocketClientConnect
    OnClientDisconnect = ServerSocketClientDisconnect
    OnClientError = ServerSocketClientError
    Left = 9
    Top = 18
  end
end
