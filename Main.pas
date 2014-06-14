unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    MainMenu1: TMainMenu;
    miVolleyball: TMenuItem;
    N2: TMenuItem;
    miExit: TMenuItem;
    miHelp: TMenuItem;
    miAbout: TMenuItem;
    dbgMatches: TDBGrid;
    miTournaments: TMenuItem;
    miTeamPlayers: TMenuItem;
    miAction: TMenuItem;
    btnAddMatch: TButton;
    btnMatchEdit: TButton;
    btnStat: TButton;
    Button1: TButton;
    procedure miTournamentsClick(Sender: TObject);
    procedure miTeamPlayersClick(Sender: TObject);
    procedure miActionClick(Sender: TObject);
    procedure btnAddMatchClick(Sender: TObject);
    procedure btnMatchEditClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnStatClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses datamodule, Tournaments, Team, Actions, Match, Stat, StatCurMatch, test;

procedure TfrmMain.btnAddMatchClick(Sender: TObject);
begin
  dm.tMatch.Insert;
  frmMatch.ShowModal;
end;

procedure TfrmMain.btnMatchEditClick(Sender: TObject);
begin
//  dm.tMatch.Edit;
  frmMatch.ShowModal;
end;

procedure TfrmMain.btnStatClick(Sender: TObject);
begin
  frmStat.ShowModal;
end;

procedure TfrmMain.Button1Click(Sender: TObject);
begin
  frmStatCurMatch.cm := dm.tMatch.FieldByName('id').AsInteger;
  frmStatCurMatch.ShowModal;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
//  dm.ADOConnection.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' +
//    ExtractFilePath(Application.ExeName) + 'volleyball.mdb;Persist Security Info=False';
//
//  dm.tMatch.Active := true;
//  dm.tGroupAction.Active := true;
//  dm.tActionValue.Active := true;
//  dm.tActionResult.Active := true;
//  dm.tSet.Active := true;
//  dm.tGame.Active := true;
//  dm.tAction.Active := true;
//  dm.tAllPlayers.Active := true;
//  dm.tAllActionValue.Active := true;
end;

procedure TfrmMain.miActionClick(Sender: TObject);
begin
//  frmActionsValue.ShowModal;
end;

procedure TfrmMain.miTeamPlayersClick(Sender: TObject);
begin
  frmTeam.ShowModal;
end;

procedure TfrmMain.miTournamentsClick(Sender: TObject);
begin
  frmTournaments.ShowModal;
end;

end.
