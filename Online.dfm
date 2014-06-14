object frmOnline: TfrmOnline
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1047#1072#1087#1080#1089#1100
  ClientHeight = 285
  ClientWidth = 666
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 5
    Width = 137
    Height = 13
    Caption = 'o - home won; p - away won'
  end
  object Label2: TLabel
    Left = 136
    Top = 64
    Width = 180
    Height = 13
    Caption = 'Enter the position number from 1 to 6'
  end
  object dbgOnline: TDBGrid
    Left = 8
    Top = 24
    Width = 577
    Height = 209
    DataSource = dm.dsOnline
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
