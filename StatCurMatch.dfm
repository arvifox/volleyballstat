object frmStatCurMatch: TfrmStatCurMatch
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Stat cur match'
  ClientHeight = 609
  ClientWidth = 823
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
    Top = 8
    Width = 10
    Height = 13
    Caption = 'all'
  end
  object Label2: TLabel
    Left = 8
    Top = 208
    Width = 27
    Height = 13
    Caption = 'serve'
  end
  object Label3: TLabel
    Left = 8
    Top = 408
    Width = 26
    Height = 13
    Caption = 'priem'
  end
  object Label4: TLabel
    Left = 424
    Top = 8
    Width = 22
    Height = 13
    Caption = 'pass'
  end
  object Label5: TLabel
    Left = 424
    Top = 208
    Width = 26
    Height = 13
    Caption = 'atack'
  end
  object Label6: TLabel
    Left = 424
    Top = 408
    Width = 24
    Height = 13
    Caption = 'block'
  end
  object dbgCMStat: TDBGrid
    Left = 8
    Top = 27
    Width = 393
    Height = 174
    DataSource = dm.dsCMStat
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dbgCMServe: TDBGrid
    Left = 8
    Top = 227
    Width = 393
    Height = 174
    DataSource = dm.dsCMServe
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dbgCMPriem: TDBGrid
    Left = 8
    Top = 427
    Width = 393
    Height = 174
    DataSource = dm.dsCMPriem
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dbgCMPass: TDBGrid
    Left = 424
    Top = 27
    Width = 393
    Height = 174
    DataSource = dm.dsCMPass
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dbgCMAttack: TDBGrid
    Left = 424
    Top = 227
    Width = 393
    Height = 174
    DataSource = dm.dsCMAttack
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dbgCMBlock: TDBGrid
    Left = 424
    Top = 427
    Width = 393
    Height = 174
    DataSource = dm.dsCMBlock
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
