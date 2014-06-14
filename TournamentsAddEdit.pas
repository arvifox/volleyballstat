unit TournamentsAddEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmTournamentsAddEdit = class(TForm)
    Label1: TLabel;
    edTName: TEdit;
    btnOK: TButton;
    btnCancel: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTournamentsAddEdit: TfrmTournamentsAddEdit;

implementation

{$R *.dfm}

end.
