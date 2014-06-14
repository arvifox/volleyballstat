object frmStat: TfrmStat
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Stat all matches'
  ClientHeight = 640
  ClientWidth = 826
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
  object Label1: TLabel
    Left = 8
    Top = 39
    Width = 11
    Height = 13
    Caption = 'All'
  end
  object Label2: TLabel
    Left = 424
    Top = 39
    Width = 22
    Height = 13
    Caption = 'Pass'
  end
  object Label3: TLabel
    Left = 8
    Top = 240
    Width = 28
    Height = 13
    Caption = 'Serve'
  end
  object Label4: TLabel
    Left = 8
    Top = 439
    Width = 31
    Height = 13
    Caption = #1055#1088#1080#1077#1084
  end
  object Label5: TLabel
    Left = 424
    Top = 240
    Width = 31
    Height = 13
    Caption = 'Attack'
  end
  object Label6: TLabel
    Left = 424
    Top = 439
    Width = 24
    Height = 13
    Caption = 'Block'
  end
  object dbgAllMatchesPass: TDBGrid
    Left = 424
    Top = 58
    Width = 393
    Height = 176
    DataSource = dm.dsAllMatchesPass
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dbgAllMatches: TDBGrid
    Left = 8
    Top = 58
    Width = 393
    Height = 176
    DataSource = dm.dsAllMatchesStat
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dbgAllServe: TDBGrid
    Left = 8
    Top = 259
    Width = 393
    Height = 174
    DataSource = dm.dsAllMatchesServe
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 458
    Width = 393
    Height = 175
    DataSource = dm.dsAllMatchesPriem
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dbgAllMatchesAttack: TDBGrid
    Left = 424
    Top = 259
    Width = 393
    Height = 174
    DataSource = dm.dsAllMatchesAttack
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dbgAllMatchesBlock: TDBGrid
    Left = 424
    Top = 458
    Width = 393
    Height = 175
    DataSource = dm.dsAllMatchesBlock
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
