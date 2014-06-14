object frmTournaments: TfrmTournaments
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Tournaments'
  ClientHeight = 278
  ClientWidth = 541
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
  object dbgTournaments: TDBGrid
    Left = 6
    Top = 8
    Width = 529
    Height = 233
    DataSource = dsTournaments
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnOk: TButton
    Left = 460
    Top = 247
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 1
    OnClick = btnOkClick
  end
  object btnAdd: TButton
    Left = 6
    Top = 247
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 2
    OnClick = btnAddClick
  end
  object btnEdit: TButton
    Left = 87
    Top = 247
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 3
    OnClick = btnEditClick
  end
  object btnDel: TButton
    Left = 168
    Top = 247
    Width = 75
    Height = 25
    Caption = 'Del'
    TabOrder = 4
    OnClick = btnDelClick
  end
  object dsTournaments: TDataSource
    DataSet = cdsTournaments
    Left = 176
    Top = 184
  end
  object cdsTournaments: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'tournamentname'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 765
      end>
    IndexDefs = <>
    IndexFieldNames = 'id'
    Params = <>
    ProviderName = 'dspTournaments'
    ReadOnly = True
    StoreDefs = True
    Left = 248
    Top = 184
    object cdsTournamentsid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object cdsTournamentstournamentname: TWideStringField
      DisplayLabel = 'Tournament name'
      DisplayWidth = 81
      FieldName = 'tournamentname'
      Required = True
      Size = 765
    end
  end
  object dspTournaments: TDataSetProvider
    DataSet = tTournaments
    Left = 328
    Top = 184
  end
  object tTournaments: TSQLTable
    NumericMapping = True
    ObjectView = True
    MaxBlobSize = -1
    SQLConnection = dm.cVolleyball
    TableName = 'ttournament'
    Left = 400
    Top = 184
  end
end
