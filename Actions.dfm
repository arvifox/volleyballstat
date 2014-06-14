object frmActions: TfrmActions
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Actions Value'
  ClientHeight = 271
  ClientWidth = 702
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
  object dbgGroupAction: TDBGrid
    Left = 8
    Top = 8
    Width = 217
    Height = 225
    DataSource = dm.dsGroupAction
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dbgActionsValue: TDBGrid
    Left = 231
    Top = 8
    Width = 394
    Height = 225
    DataSource = dm.dsActionValue
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 8
    Top = 239
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 2
    OnClick = Button1Click
  end
end
