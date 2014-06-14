object frmTeam: TfrmTeam
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Teams - Players'
  ClientHeight = 286
  ClientWidth = 552
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnClose: TButton
    Left = 470
    Top = 255
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 0
    OnClick = btnCloseClick
  end
  object dbgTeams: TDBGrid
    Left = 8
    Top = 8
    Width = 297
    Height = 241
    DataSource = dsTeam
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dbgPlayers: TDBGrid
    Left = 311
    Top = 8
    Width = 234
    Height = 241
    DataSource = dsPlayer
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnAdd: TButton
    Left = 8
    Top = 255
    Width = 41
    Height = 25
    Caption = 'Add'
    TabOrder = 3
  end
  object btnEdit: TButton
    Left = 55
    Top = 255
    Width = 41
    Height = 25
    Caption = 'Edit'
    TabOrder = 4
  end
  object btnDel: TButton
    Left = 102
    Top = 255
    Width = 41
    Height = 25
    Caption = 'Del'
    TabOrder = 5
  end
  object Button1: TButton
    Left = 311
    Top = 255
    Width = 41
    Height = 25
    Caption = 'Add'
    TabOrder = 6
  end
  object Button2: TButton
    Left = 358
    Top = 255
    Width = 41
    Height = 25
    Caption = 'Edit'
    TabOrder = 7
  end
  object Button3: TButton
    Left = 405
    Top = 255
    Width = 41
    Height = 25
    Caption = 'Del'
    TabOrder = 8
  end
  object tTeam: TSQLTable
    Active = True
    MaxBlobSize = -1
    SQLConnection = dm.cVolleyball
    TableName = 'tteam'
    Left = 232
    Top = 216
  end
  object tPlayer: TSQLTable
    MaxBlobSize = -1
    SQLConnection = dm.cVolleyball
    TableName = 'tplayer'
    Left = 504
    Top = 184
  end
  object dsTeam: TDataSource
    DataSet = cdsTeam
    Left = 48
    Top = 216
  end
  object cdsTeam: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'id'
    Params = <>
    ProviderName = 'dspTeam'
    ReadOnly = True
    Left = 104
    Top = 216
    object cdsTeamid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object cdsTeamteamname: TWideStringField
      DisplayLabel = 'Team name'
      DisplayWidth = 43
      FieldName = 'teamname'
      Required = True
      Size = 765
    end
  end
  object dspTeam: TDataSetProvider
    DataSet = tTeam
    Left = 168
    Top = 216
  end
  object dsPlayer: TDataSource
    DataSet = cdsPlayer
    Left = 328
    Top = 184
  end
  object cdsPlayer: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'playername'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 765
      end
      item
        Name = 'idteam'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'photkey'
        DataType = ftWideString
        Size = 765
      end>
    IndexDefs = <>
    IndexFieldNames = 'idteam'
    MasterFields = 'id'
    MasterSource = dsTeam
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspPlayer'
    ReadOnly = True
    StoreDefs = True
    Left = 392
    Top = 184
    object cdsPlayerid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object cdsPlayerplayername: TWideStringField
      DisplayLabel = 'Player name'
      DisplayWidth = 25
      FieldName = 'playername'
      Required = True
      Size = 765
    end
    object cdsPlayeridteam: TIntegerField
      FieldName = 'idteam'
      Required = True
      Visible = False
    end
    object cdsPlayerphotkey: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'Hotkey'
      DisplayWidth = 6
      FieldName = 'photkey'
      Size = 765
    end
  end
  object dspPlayer: TDataSetProvider
    DataSet = tPlayer
    Left = 456
    Top = 184
  end
end
