object frmMatch: TfrmMatch
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Match'
  ClientHeight = 657
  ClientWidth = 731
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dblcbHome: TDBLookupComboBox
    Left = 8
    Top = 8
    Width = 145
    Height = 21
    DataField = 'idteam1'
    DataSource = dm.dsMatch
    KeyField = 'id'
    ListField = 'teamname'
    ListSource = dm.dsTeam
    TabOrder = 0
  end
  object dblcb: TDBLookupComboBox
    Left = 255
    Top = 8
    Width = 145
    Height = 21
    DataField = 'idteam2'
    DataSource = dm.dsMatch
    KeyField = 'id'
    ListField = 'teamname'
    ListSource = dm.dsTeam
    TabOrder = 1
  end
  object dbeWon1: TDBEdit
    Left = 159
    Top = 8
    Width = 42
    Height = 21
    DataField = 'setwon1'
    DataSource = dm.dsMatch
    TabOrder = 2
  end
  object dbeWon2: TDBEdit
    Left = 207
    Top = 8
    Width = 42
    Height = 21
    DataField = 'setwon2'
    DataSource = dm.dsMatch
    TabOrder = 3
  end
  object dbgSets: TDBGrid
    Left = 8
    Top = 35
    Width = 721
    Height = 118
    DataSource = dm.dsSet
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnSaveMatch: TButton
    Left = 416
    Top = 4
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 5
    OnClick = btnSaveMatchClick
  end
  object dblcbTournament: TDBLookupComboBox
    Left = 8
    Top = 159
    Width = 290
    Height = 21
    DataField = 'idtournament'
    DataSource = dm.dsMatch
    KeyField = 'id'
    ListField = 'tournamentname'
    ListSource = dm.dsTournaments
    TabOrder = 6
  end
  object dbeMatchPlace: TDBEdit
    Left = 8
    Top = 186
    Width = 290
    Height = 21
    DataField = 'place'
    DataSource = dm.dsMatch
    TabOrder = 7
  end
  object dbeMatchReferee: TDBEdit
    Left = 312
    Top = 159
    Width = 218
    Height = 21
    DataField = 'referee'
    DataSource = dm.dsMatch
    TabOrder = 8
  end
  object dbeMatchDate: TDBEdit
    Left = 312
    Top = 186
    Width = 218
    Height = 21
    DataField = 'matchdate'
    DataSource = dm.dsMatch
    TabOrder = 9
  end
  object dbgGames: TDBGrid
    Left = 8
    Top = 213
    Width = 209
    Height = 433
    DataSource = dm.dsGame
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dbgAction: TDBGrid
    Left = 223
    Top = 244
    Width = 506
    Height = 402
    DataSource = dm.dsAction
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnStartOnline: TButton
    Left = 223
    Top = 213
    Width = 75
    Height = 25
    Caption = 'New game'
    TabOrder = 12
    OnClick = btnStartOnlineClick
  end
end
