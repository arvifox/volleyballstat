unit Stat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TfrmStat = class(TForm)
    dbgAllMatchesPass: TDBGrid;
    Label1: TLabel;
    dbgAllMatches: TDBGrid;
    Label2: TLabel;
    dbgAllServe: TDBGrid;
    DBGrid2: TDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    dbgAllMatchesAttack: TDBGrid;
    dbgAllMatchesBlock: TDBGrid;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStat: TfrmStat;

implementation

{$R *.dfm}

uses datamodule;

procedure TfrmStat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.qAllMatchesStat.Active := false;
  dm.qAllMatchesServe.Active := false;
  dm.qAllMatchesPriem.Active := false;
  dm.qAllMatchesPass.Active := false;
  dm.qAllMatchesAttack.Active := false;
  dm.qAllMatchesBlock.Active := false;
end;

procedure TfrmStat.FormShow(Sender: TObject);
begin
  dm.qAllMatchesStat.Active := true;
  dm.qAllMatchesServe.Active := true;
  dm.qAllMatchesPriem.Active := true;
  dm.qAllMatchesPass.Active := true;
  dm.qAllMatchesAttack.Active := true;
  dm.qAllMatchesBlock.Active := true;
end;

end.
