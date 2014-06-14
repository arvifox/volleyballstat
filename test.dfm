object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 570
  ClientWidth = 746
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 625
    Height = 249
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object SimpleDataSet1: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = dm.cVolleyball
    DataSet.Active = True
    DataSet.CommandText = 'ttournament'
    DataSet.CommandType = ctTable
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 424
    Top = 392
    object SimpleDataSet1id: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
    end
    object SimpleDataSet1tournamentname: TWideStringField
      FieldName = 'tournamentname'
      Required = True
      Size = 765
    end
  end
  object DataSource1: TDataSource
    DataSet = SimpleDataSet1
    Left = 528
    Top = 392
  end
end
