unit StatCurMatch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TfrmStatCurMatch = class(TForm)
    Label1: TLabel;
    dbgCMStat: TDBGrid;
    Label2: TLabel;
    dbgCMServe: TDBGrid;
    Label3: TLabel;
    dbgCMPriem: TDBGrid;
    Label4: TLabel;
    dbgCMPass: TDBGrid;
    Label5: TLabel;
    dbgCMAttack: TDBGrid;
    Label6: TLabel;
    dbgCMBlock: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    cm: integer;
  end;

var
  frmStatCurMatch: TfrmStatCurMatch;

implementation

{$R *.dfm}

uses datamodule;

procedure TfrmStatCurMatch.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.qMatchStat.Active := false;
  dm.qCMServe.Active := false;
  dm.qCMPriem.Active := false;
  dm.qCMPass.Active := false;
  dm.qCMAttack.Active := false;
  dm.qCMBlock.Active := false;
end;

procedure TfrmStatCurMatch.FormShow(Sender: TObject);
begin
  dm.qMatchStat.Parameters.ParamValues['p_idmatch'] := cm;
  dm.qMatchStat.Active := true;
  dm.qCMServe.Parameters.ParamValues['p_idmatch'] := cm;
  dm.qCMServe.Active := true;
  dm.qCMPriem.Parameters.ParamValues['p_idmatch'] := cm;
  dm.qCMPriem.Active := true;
  dm.qCMPass.Parameters.ParamValues['p_idmatch'] := cm;
  dm.qCMPass.Active := true;
  dm.qCMAttack.Parameters.ParamValues['p_idmatch'] := cm;
  dm.qCMAttack.Active := true;
  dm.qCMBlock.Parameters.ParamValues['p_idmatch'] := cm;
  dm.qCMBlock.Active := true;
end;

end.
