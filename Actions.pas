unit Actions;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmActions = class(TForm)
    dbgGroupAction: TDBGrid;
    dbgActionsValue: TDBGrid;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmActions: TfrmActions;

implementation

{$R *.dfm}

uses datamodule;

procedure TfrmActions.Button1Click(Sender: TObject);
begin
  if dm.tActionValue.Modified then dm.tActionValue.Post;
  Close;
end;

end.
