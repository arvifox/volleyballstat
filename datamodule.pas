unit datamodule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, Data.DBXMySQL,
  Data.SqlExpr;

type
  Tdm = class(TDataModule)
    dsMatch: TDataSource;
    tMatch: TADOTable;
    tMatchid: TAutoIncField;
    tMatchidtournament: TIntegerField;
    tMatchidteam1: TIntegerField;
    tMatchidteam2: TIntegerField;
    tMatchsetwon1: TIntegerField;
    tMatchsetwon2: TIntegerField;
    tMatchplace: TWideStringField;
    tMatchreferee: TWideStringField;
    tMatchmatchdate: TDateTimeField;
    dsGroupAction: TDataSource;
    dsActionValue: TDataSource;
    tGroupAction: TADOTable;
    tActionValue: TADOTable;
    tMatchtournament_name: TStringField;
    tMatchteam_name: TStringField;
    tMatchteam_name2: TStringField;
    dsSet: TDataSource;
    tSet: TADOTable;
    tSetid: TAutoIncField;
    tSetidmatch: TIntegerField;
    tSetorder: TIntegerField;
    tSetgamewon1: TIntegerField;
    tSetgamewon2: TIntegerField;
    dsGame: TDataSource;
    tGame: TADOTable;
    dsAction: TDataSource;
    tAction: TADOTable;
    tActionid: TAutoIncField;
    tActionidactionvalue: TIntegerField;
    tActionorder: TIntegerField;
    tActionidplayer: TIntegerField;
    tActionidgame: TIntegerField;
    tActionResult: TADOTable;
    tAllPlayers: TADOTable;
    tAllActionValue: TADOTable;
    tActionplayer_name: TStringField;
    tActionaction_name: TStringField;
    tGameid: TAutoIncField;
    tGameidset: TIntegerField;
    tGameorder: TIntegerField;
    tGamewon1: TBooleanField;
    tGameafter_timeout1: TWideStringField;
    dsAllMatchesStat: TDataSource;
    qAllMatchesStat: TADOQuery;
    qOnline: TADOQuery;
    dsOnline: TDataSource;
    tActionValueid: TAutoIncField;
    tActionValueidgroup: TIntegerField;
    tActionValueactionname: TWideStringField;
    tActionValueactionvalue: TIntegerField;
    tActionValueidactionresult: TIntegerField;
    tActionValueahotkey: TWideStringField;
    tGroupActionid: TIntegerField;
    tGroupActiongroupname: TWideStringField;
    tGroupActionghotkey: TWideStringField;
    tActionResultid: TAutoIncField;
    tActionResultactionresult: TWideStringField;
    tActionValuelu_actionresult: TStringField;
    tActionpos: TIntegerField;
    tSetduration: TDateTimeField;
    tSeth1: TIntegerField;
    tSeth2: TIntegerField;
    tSeth3: TIntegerField;
    tSeth4: TIntegerField;
    tSeth5: TIntegerField;
    tSeth6: TIntegerField;
    tSeta1: TIntegerField;
    tSeta2: TIntegerField;
    tSeta3: TIntegerField;
    tSeta4: TIntegerField;
    tSeta5: TIntegerField;
    tSeta6: TIntegerField;
    tSetlu_h1name: TStringField;
    tSetlu_h2name: TStringField;
    tSetlu_h3name: TStringField;
    tSetlu_h4name: TStringField;
    tSetlu_h5name: TStringField;
    tSetlu_h6name: TStringField;
    dsCMStat: TDataSource;
    qMatchStat: TADOQuery;
    qAllMatchesStatpName: TWideStringField;
    qAllMatchesStatCountAc: TIntegerField;
    qAllMatchesStatSumValue: TFloatField;
    qAllMatchesStatAver: TFloatField;
    dsAllMatchesServe: TDataSource;
    qAllMatchesServe: TADOQuery;
    qAllMatchesServepName: TWideStringField;
    qAllMatchesServeCountAc: TIntegerField;
    qAllMatchesServeSumValue: TFloatField;
    qAllMatchesServeAver: TFloatField;
    dsAllMatchesPriem: TDataSource;
    qAllMatchesPriem: TADOQuery;
    qAllMatchesPriempName: TWideStringField;
    qAllMatchesPriemCountAc: TIntegerField;
    qAllMatchesPriemSumValue: TFloatField;
    qAllMatchesPriemAver: TFloatField;
    qAllMatchesPass: TADOQuery;
    dsAllMatchesPass: TDataSource;
    qAllMatchesPasspName: TWideStringField;
    qAllMatchesPassCountAc: TIntegerField;
    qAllMatchesPassSumValue: TFloatField;
    qAllMatchesPassAver: TFloatField;
    dsAllMatchesAttack: TDataSource;
    dsAllMatchesBlock: TDataSource;
    qAllMatchesAttack: TADOQuery;
    qAllMatchesBlock: TADOQuery;
    qAllMatchesAttackpName: TWideStringField;
    qAllMatchesAttackCountAc: TIntegerField;
    qAllMatchesAttackSumValue: TFloatField;
    qAllMatchesAttackAver: TFloatField;
    qAllMatchesBlockpName: TWideStringField;
    qAllMatchesBlockCountAc: TIntegerField;
    qAllMatchesBlockSumValue: TFloatField;
    qAllMatchesBlockAver: TFloatField;
    dsCMServe: TDataSource;
    dsCMPriem: TDataSource;
    dsCMPass: TDataSource;
    dsCMAttack: TDataSource;
    dsCMBlock: TDataSource;
    qCMServe: TADOQuery;
    qCMPriem: TADOQuery;
    qCMPass: TADOQuery;
    qCMAttack: TADOQuery;
    qCMBlock: TADOQuery;
    qMatchStatpName: TWideStringField;
    qMatchStatCountAc: TIntegerField;
    qMatchStatSumValue: TFloatField;
    qMatchStatAver: TFloatField;
    qCMServepName: TWideStringField;
    qCMServeCountAc: TIntegerField;
    qCMServeSumValue: TFloatField;
    qCMServeAver: TFloatField;
    qCMPriempName: TWideStringField;
    qCMPriemCountAc: TIntegerField;
    qCMPriemSumValue: TFloatField;
    qCMPriemAver: TFloatField;
    qCMPasspName: TWideStringField;
    qCMPassCountAc: TIntegerField;
    qCMPassSumValue: TFloatField;
    qCMPassAver: TFloatField;
    qCMAttackpName: TWideStringField;
    qCMAttackCountAc: TIntegerField;
    qCMAttackSumValue: TFloatField;
    qCMAttackAver: TFloatField;
    qCMBlockpName: TWideStringField;
    qCMBlockCountAc: TIntegerField;
    qCMBlockSumValue: TFloatField;
    qCMBlockAver: TFloatField;
    dstest: TDataSource;
    qtest: TADOQuery;
    qtestid: TAutoIncField;
    qtestidteamhome: TIntegerField;
    qtestidteamaway: TIntegerField;
    qtesttho: TWideStringField;
    qtesttaw: TWideStringField;
    cVolleyball: TSQLConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
