unit Tournaments;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Data.FMTBcd, Data.SqlExpr, Datasnap.Provider, Data.DB, Datasnap.DBClient;

type
  TfrmTournaments = class(TForm)
    dbgTournaments: TDBGrid;
    btnOk: TButton;
    dsTournaments: TDataSource;
    cdsTournaments: TClientDataSet;
    dspTournaments: TDataSetProvider;
    tTournaments: TSQLTable;
    cdsTournamentsid: TIntegerField;
    cdsTournamentstournamentname: TWideStringField;
    btnAdd: TButton;
    btnEdit: TButton;
    btnDel: TButton;
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnDelClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTournaments: TfrmTournaments;

implementation

{$R *.dfm}

uses datamodule, TournamentsAddEdit;

procedure TfrmTournaments.btnAddClick(Sender: TObject);
begin
  frmTournamentsAddEdit.Caption := 'Add tournament';
  frmTournamentsAddEdit.edTName.Text := 'tournament name';
  if frmTournamentsAddEdit.ShowModal = mrOk then
    dm.cVolleyball.ExecuteDirect('insert into tTournament (tournamentname) values ("' +
                                 frmTournamentsAddEdit.edTName.Text + '")');
  cdsTournaments.Refresh;
end;

procedure TfrmTournaments.btnDelClick(Sender: TObject);
begin
  dm.cVolleyball.ExecuteDirect('delete from tTournament where id=' +
                               inttostr(cdsTournaments.FieldByName('id').AsInteger));
  cdsTournaments.Refresh;
end;

procedure TfrmTournaments.btnEditClick(Sender: TObject);
begin
  frmTournamentsAddEdit.Caption := 'Edit tournament';
  frmTournamentsAddEdit.edTName.Text := 'tournament name';
  if frmTournamentsAddEdit.ShowModal = mrOk then
    dm.cVolleyball.ExecuteDirect('update tTournament set tournamentname="' +
                                 frmTournamentsAddEdit.edTName.Text +
                                 '" where id=' +
                                 inttostr(cdsTournaments.FieldByName('id').AsInteger));
  cdsTournaments.Refresh;
end;

procedure TfrmTournaments.btnOkClick(Sender: TObject);
begin
  if cdsTournaments.ChangeCount > 0 then cdsTournaments.ApplyUpdates(0);
  Close;
end;

procedure TfrmTournaments.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cdsTournaments.Active := false;
end;

procedure TfrmTournaments.FormShow(Sender: TObject);
begin
  cdsTournaments.Active := true;
end;

end.
