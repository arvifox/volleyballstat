unit Team;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Data.FMTBcd, Data.DB, Data.SqlExpr, Datasnap.Provider, Datasnap.DBClient;

type
  TfrmTeam = class(TForm)
    btnClose: TButton;
    dbgTeams: TDBGrid;
    dbgPlayers: TDBGrid;
    tTeam: TSQLTable;
    tPlayer: TSQLTable;
    dsTeam: TDataSource;
    cdsTeam: TClientDataSet;
    dspTeam: TDataSetProvider;
    dsPlayer: TDataSource;
    cdsPlayer: TClientDataSet;
    dspPlayer: TDataSetProvider;
    cdsTeamid: TIntegerField;
    cdsTeamteamname: TWideStringField;
    cdsPlayerid: TIntegerField;
    cdsPlayerplayername: TWideStringField;
    cdsPlayeridteam: TIntegerField;
    cdsPlayerphotkey: TWideStringField;
    btnAdd: TButton;
    btnEdit: TButton;
    btnDel: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTeam: TfrmTeam;

implementation

{$R *.dfm}

procedure TfrmTeam.btnCloseClick(Sender: TObject);
begin
  if cdsTeam.ChangeCount > 0 then cdsTeam.ApplyUpdates(0);
  if cdsPlayer.ChangeCount > 0 then cdsPlayer.ApplyUpdates(0);
  Close;
end;

procedure TfrmTeam.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cdsTeam.Active := false;
  cdsPlayer.Active := false;
end;

procedure TfrmTeam.FormShow(Sender: TObject);
begin
  cdsTeam.Active := true;
  cdsPlayer.Active := true;
end;

end.
