object frmTournamentsAddEdit: TfrmTournamentsAddEdit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Add tournament'
  ClientHeight = 68
  ClientWidth = 336
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 11
    Width = 55
    Height = 13
    Caption = 'Input name'
  end
  object edTName: TEdit
    Left = 69
    Top = 8
    Width = 259
    Height = 21
    TabOrder = 0
    Text = 'tounament name'
  end
  object btnOK: TButton
    Left = 172
    Top = 35
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 1
  end
  object btnCancel: TButton
    Left = 253
    Top = 35
    Width = 75
    Height = 25
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
end
