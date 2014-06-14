object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Volleyball - Kola Science Center RAS'
  ClientHeight = 292
  ClientWidth = 828
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dbgMatches: TDBGrid
    Left = 8
    Top = 8
    Width = 801
    Height = 233
    DataSource = dm.dsMatch
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnAddMatch: TButton
    Left = 8
    Top = 247
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 1
    OnClick = btnAddMatchClick
  end
  object btnMatchEdit: TButton
    Left = 89
    Top = 247
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 2
    OnClick = btnMatchEditClick
  end
  object btnStat: TButton
    Left = 170
    Top = 247
    Width = 119
    Height = 25
    Caption = 'Stat All Matches'
    TabOrder = 3
    OnClick = btnStatClick
  end
  object Button1: TButton
    Left = 295
    Top = 247
    Width = 114
    Height = 25
    Caption = 'Stat current match'
    TabOrder = 4
    OnClick = Button1Click
  end
  object MainMenu1: TMainMenu
    Left = 600
    Top = 200
    object miVolleyball: TMenuItem
      Caption = 'Volleyball'
      object miTournaments: TMenuItem
        Caption = 'Tournaments'
        OnClick = miTournamentsClick
      end
      object miTeamPlayers: TMenuItem
        Caption = 'Teams Players'
        OnClick = miTeamPlayersClick
      end
      object miAction: TMenuItem
        Caption = 'Actions Value'
        OnClick = miActionClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object miExit: TMenuItem
        Caption = 'Exit'
      end
    end
    object miHelp: TMenuItem
      Caption = 'Help'
      object miAbout: TMenuItem
        Caption = 'About'
      end
    end
  end
end
