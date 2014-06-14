unit Match;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmMatch = class(TForm)
    dblcbHome: TDBLookupComboBox;
    dblcb: TDBLookupComboBox;
    dbeWon1: TDBEdit;
    dbeWon2: TDBEdit;
    dbgSets: TDBGrid;
    btnSaveMatch: TButton;
    dblcbTournament: TDBLookupComboBox;
    dbeMatchPlace: TDBEdit;
    dbeMatchReferee: TDBEdit;
    dbeMatchDate: TDBEdit;
    dbgGames: TDBGrid;
    dbgAction: TDBGrid;
    btnStartOnline: TButton;
    procedure btnSaveMatchClick(Sender: TObject);
    procedure btnStartOnlineClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMatch: TfrmMatch;

implementation

{$R *.dfm}

uses datamodule, Online;

procedure TfrmMatch.btnSaveMatchClick(Sender: TObject);
begin
  if dm.tGame.Modified then dm.tGame.Post;
  if dm.tSet.Modified then dm.tSet.Post;
  if dm.tMatch.Modified then dm.tMatch.Post;
end;

procedure TfrmMatch.btnStartOnlineClick(Sender: TObject);
begin
  frmOnline.ShowModal;
end;

end.
