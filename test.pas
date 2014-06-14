unit test;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Data.FMTBcd,
  Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, SimpleDS;

type
  TForm1 = class(TForm)
    SimpleDataSet1: TSimpleDataSet;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    SimpleDataSet1id: TIntegerField;
    SimpleDataSet1tournamentname: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses datamodule;

end.
