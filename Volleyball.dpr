program Volleyball;

uses
  Vcl.Forms,
  Main in 'Main.pas' {frmMain},
  datamodule in 'datamodule.pas' {dm: TDataModule},
  Tournaments in 'Tournaments.pas' {frmTournaments},
  Team in 'Team.pas' {frmTeam},
  Match in 'Match.pas' {frmMatch},
  Online in 'Online.pas' {frmOnline},
  Stat in 'Stat.pas' {frmStat},
  StatCurMatch in 'StatCurMatch.pas' {frmStatCurMatch},
  TournamentsAddEdit in 'TournamentsAddEdit.pas' {frmTournamentsAddEdit};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmTournaments, frmTournaments);
  Application.CreateForm(TfrmTeam, frmTeam);
  Application.CreateForm(TfrmMatch, frmMatch);
  Application.CreateForm(TfrmOnline, frmOnline);
  Application.CreateForm(TfrmStat, frmStat);
  Application.CreateForm(TfrmStatCurMatch, frmStatCurMatch);
  Application.CreateForm(TfrmTournamentsAddEdit, frmTournamentsAddEdit);
  Application.Run;
end.
