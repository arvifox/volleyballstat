unit Online;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TActionType = (atPlayer, atType, atResult, atPos);

type
  TfrmOnline = class(TForm)
    dbgOnline: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    ActionType: TActionType;
    gr: Variant;
    procedure NewGame;
    procedure NewAction;
    procedure ShowActionType;
  public
    { Public declarations }
  end;

var
  frmOnline: TfrmOnline;

implementation

{$R *.dfm}

uses datamodule, Winapi.ADOInt;

procedure TfrmOnline.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.qOnline.Active := false;
end;

procedure TfrmOnline.FormKeyPress(Sender: TObject; var Key: Char);
var r: variant;
begin
  if (Key = 'o') or (Key = 'p') then
  begin
    dm.tGame.Edit;
    if Key = 'o' then dm.tGame.FieldByName('won1').AsBoolean := true
                 else dm.tGame.FieldValues['won1'] := false;
    dm.tGame.Post;
    close;
    exit;
  end;
  case ActionType of
    atPlayer: begin
//    varisempty
      NewAction;
      r := dm.qOnline.Lookup('photkey', key, 'id');
      dm.tAction.Edit;
      dm.tAction.FieldValues['idplayer'] := r;
      dm.tAction.Post;
      ActionType := atType;
      ShowActionType;
    end;
    atType: begin
      gr := dm.qOnline.Lookup('ghotkey', key, 'id');
      ActionType := atResult;
      ShowActionType;
    end;
    atResult: begin
      r := dm.qOnline.Lookup('ahotkey', key, 'id');
      dm.tAction.Edit;
      dm.tAction.FieldValues['idactionvalue'] := r;
      dm.tAction.Post;
      ActionType := atPos;
      ShowActionType;
    end;
    atPos: begin
      dm.tAction.Edit;
      dm.tAction.FieldValues['pos'] := Key;
      dm.tAction.Post;
      ActionType := atPlayer;
      ShowActionType;
    end;
  end;
end;

procedure TfrmOnline.FormShow(Sender: TObject);
begin
  NewGame;
end;

procedure TfrmOnline.NewAction;
begin
  dm.tAction.Append;
  dm.tAction.Post;
  ActionType := atPlayer;
  ShowActionType;
end;

procedure TfrmOnline.NewGame;
begin
  dm.tGame.Append;
  dm.tGame.Post;
  dm.tGame.Refresh;
// вместо refresh можно сделать так перед добавлением записи
//  dm.tGame.Properties['Update Resync'].Value := adResyncAutoIncrement + adResyncInserts;
  ActionType := atPlayer;
  ShowActionType;
end;

procedure TfrmOnline.ShowActionType;
begin
  if ActionType = atPlayer then
  begin
    dm.qOnline.Active := false;
    dm.qOnline.SQL.Clear;
    dm.qOnline.SQL.Add('select id, playername, photkey from TPlayer where idteam = 1');
    dm.qOnline.Active := true;
    dm.qOnline.FieldByName('id').Visible := false;
    dm.qOnline.FieldByName('playername').DisplayWidth := 24;
    dm.qOnline.FieldByName('photkey').DisplayWidth := 4;
    dbgOnline.Show;
  end;
  if ActionType = atType then
  begin
    dm.qOnline.Active := false;
    dm.qOnline.SQL.Clear;
    dm.qOnline.SQL.Add('select * from TGroupAction');
    dm.qOnline.Active := true;
    dm.qOnline.FieldByName('id').Visible := false;
    dm.qOnline.FieldByName('groupname').DisplayWidth := 20;
    dm.qOnline.FieldByName('ghotkey').DisplayWidth := 4;
    dbgOnline.Show;
  end;
  if ActionType = atResult then
  begin
    dm.qOnline.Active := false;
    dm.qOnline.SQL.Clear;
    dm.qOnline.SQL.Add('select id, actionname, ahotkey from TActionValue where idgroup = '
                       + VarToStr(gr));
    dm.qOnline.Active := true;
    dm.qOnline.FieldByName('id').Visible := false;
    dm.qOnline.FieldByName('actionname').DisplayWidth := 20;
    dm.qOnline.FieldByName('ahotkey').DisplayWidth := 4;
    dbgOnline.Show;
  end;
  if ActionType = atPos then
  begin
    dm.qOnline.Active := false;
    dbgOnline.Hide;
  end;
end;

end.
