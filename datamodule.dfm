object dm: Tdm
  OldCreateOrder = False
  Height = 652
  Width = 680
  object dsMatch: TDataSource
    DataSet = tMatch
    Left = 24
    Top = 112
  end
  object tMatch: TADOTable
    CursorType = ctStatic
    TableName = 'TMatch'
    Left = 24
    Top = 64
    object tMatchid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
      Visible = False
    end
    object tMatchidtournament: TIntegerField
      FieldName = 'idtournament'
      Visible = False
    end
    object tMatchtournament_name: TStringField
      DisplayLabel = 'Tournament'
      DisplayWidth = 35
      FieldKind = fkLookup
      FieldName = 'tournament_name'
      LookupKeyFields = 'id'
      LookupResultField = 'tournamentname'
      KeyFields = 'idtournament'
      Size = 50
      Lookup = True
    end
    object tMatchidteam1: TIntegerField
      DisplayLabel = 'Home'
      FieldName = 'idteam1'
      Visible = False
    end
    object tMatchteam_name: TStringField
      DisplayLabel = 'Home'
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'team_name'
      LookupKeyFields = 'id'
      LookupResultField = 'teamname'
      KeyFields = 'idteam1'
      Size = 50
      Lookup = True
    end
    object tMatchsetwon1: TIntegerField
      DisplayLabel = 'Res'
      DisplayWidth = 3
      FieldName = 'setwon1'
    end
    object tMatchsetwon2: TIntegerField
      DisplayLabel = 'ult'
      DisplayWidth = 3
      FieldName = 'setwon2'
    end
    object tMatchteam_name2: TStringField
      DisplayLabel = 'Away'
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'team_name2'
      LookupKeyFields = 'id'
      LookupResultField = 'teamname'
      KeyFields = 'idteam2'
      Size = 50
      Lookup = True
    end
    object tMatchidteam2: TIntegerField
      DisplayLabel = 'Away'
      FieldName = 'idteam2'
      Visible = False
    end
    object tMatchplace: TWideStringField
      DisplayLabel = 'Place'
      DisplayWidth = 20
      FieldName = 'place'
      Size = 255
    end
    object tMatchreferee: TWideStringField
      DisplayLabel = 'Referee'
      DisplayWidth = 20
      FieldName = 'referee'
      Size = 255
    end
    object tMatchmatchdate: TDateTimeField
      DisplayLabel = 'Date'
      DisplayWidth = 10
      FieldName = 'matchdate'
    end
  end
  object dsGroupAction: TDataSource
    DataSet = tGroupAction
    Left = 264
    Top = 112
  end
  object dsActionValue: TDataSource
    DataSet = tActionValue
    Left = 320
    Top = 112
  end
  object tGroupAction: TADOTable
    CursorType = ctStatic
    TableName = 'TGroupAction'
    Left = 264
    Top = 64
    object tGroupActionid: TIntegerField
      FieldName = 'id'
      Visible = False
    end
    object tGroupActiongroupname: TWideStringField
      DisplayLabel = 'Name'
      DisplayWidth = 17
      FieldName = 'groupname'
      Size = 255
    end
    object tGroupActionghotkey: TWideStringField
      DisplayWidth = 7
      FieldName = 'ghotkey'
      Size = 255
    end
  end
  object tActionValue: TADOTable
    CursorType = ctStatic
    IndexFieldNames = 'idgroup'
    MasterFields = 'id'
    MasterSource = dsGroupAction
    TableName = 'TActionValue'
    Left = 320
    Top = 64
    object tActionValueid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
      Visible = False
    end
    object tActionValueidgroup: TIntegerField
      FieldName = 'idgroup'
      Visible = False
    end
    object tActionValueactionname: TWideStringField
      DisplayLabel = 'Name'
      DisplayWidth = 24
      FieldName = 'actionname'
      Size = 255
    end
    object tActionValueactionvalue: TIntegerField
      DisplayLabel = 'Value'
      DisplayWidth = 7
      FieldName = 'actionvalue'
    end
    object tActionValueidactionresult: TIntegerField
      FieldName = 'idactionresult'
      Visible = False
    end
    object tActionValueahotkey: TWideStringField
      DisplayWidth = 7
      FieldName = 'ahotkey'
      Size = 255
    end
    object tActionValuelu_actionresult: TStringField
      DisplayLabel = 'Result'
      DisplayWidth = 12
      FieldKind = fkLookup
      FieldName = 'lu_actionresult'
      LookupDataSet = tActionResult
      LookupKeyFields = 'id'
      LookupResultField = 'actionresult'
      KeyFields = 'idactionresult'
      Size = 25
      Lookup = True
    end
  end
  object dsSet: TDataSource
    DataSet = tSet
    Left = 24
    Top = 208
  end
  object tSet: TADOTable
    CursorType = ctStatic
    IndexFieldNames = 'idmatch'
    MasterFields = 'id'
    MasterSource = dsMatch
    TableName = 'TSet'
    Left = 24
    Top = 160
    object tSetid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
      Visible = False
    end
    object tSetidmatch: TIntegerField
      FieldName = 'idmatch'
      Visible = False
    end
    object tSetorder: TIntegerField
      DisplayLabel = 'Order'
      DisplayWidth = 5
      FieldName = 'order'
    end
    object tSetgamewon1: TIntegerField
      DisplayLabel = 'Home'
      DisplayWidth = 7
      FieldName = 'gamewon1'
    end
    object tSetgamewon2: TIntegerField
      DisplayLabel = 'Away'
      DisplayWidth = 7
      FieldName = 'gamewon2'
    end
    object tSetduration: TDateTimeField
      DisplayWidth = 8
      FieldName = 'duration'
    end
    object tSeth1: TIntegerField
      DisplayWidth = 4
      FieldName = 'h1'
      Visible = False
    end
    object tSeth2: TIntegerField
      DisplayWidth = 4
      FieldName = 'h2'
      Visible = False
    end
    object tSeth3: TIntegerField
      DisplayWidth = 4
      FieldName = 'h3'
      Visible = False
    end
    object tSeth4: TIntegerField
      DisplayWidth = 4
      FieldName = 'h4'
      Visible = False
    end
    object tSeth5: TIntegerField
      DisplayWidth = 4
      FieldName = 'h5'
      Visible = False
    end
    object tSeth6: TIntegerField
      DisplayWidth = 4
      FieldName = 'h6'
      Visible = False
    end
    object tSeta1: TIntegerField
      DisplayWidth = 4
      FieldName = 'a1'
      Visible = False
    end
    object tSeta2: TIntegerField
      DisplayWidth = 4
      FieldName = 'a2'
      Visible = False
    end
    object tSeta3: TIntegerField
      DisplayWidth = 4
      FieldName = 'a3'
      Visible = False
    end
    object tSeta4: TIntegerField
      DisplayWidth = 4
      FieldName = 'a4'
      Visible = False
    end
    object tSeta5: TIntegerField
      DisplayWidth = 4
      FieldName = 'a5'
      Visible = False
    end
    object tSeta6: TIntegerField
      DisplayWidth = 4
      FieldName = 'a6'
      Visible = False
    end
    object tSetlu_h1name: TStringField
      DisplayLabel = 'h1'
      DisplayWidth = 9
      FieldKind = fkLookup
      FieldName = 'lu_h1name'
      LookupDataSet = tAllPlayers
      LookupKeyFields = 'id'
      LookupResultField = 'playername'
      KeyFields = 'h1'
      Size = 30
      Lookup = True
    end
    object tSetlu_h2name: TStringField
      DisplayLabel = 'h2'
      DisplayWidth = 9
      FieldKind = fkLookup
      FieldName = 'lu_h2name'
      LookupDataSet = tAllPlayers
      LookupKeyFields = 'id'
      LookupResultField = 'playername'
      KeyFields = 'h2'
      Size = 30
      Lookup = True
    end
    object tSetlu_h3name: TStringField
      DisplayLabel = 'h3'
      DisplayWidth = 9
      FieldKind = fkLookup
      FieldName = 'lu_h3name'
      LookupDataSet = tAllPlayers
      LookupKeyFields = 'id'
      LookupResultField = 'playername'
      KeyFields = 'h3'
      Size = 30
      Lookup = True
    end
    object tSetlu_h4name: TStringField
      DisplayLabel = 'h4'
      DisplayWidth = 9
      FieldKind = fkLookup
      FieldName = 'lu_h4name'
      LookupDataSet = tAllPlayers
      LookupKeyFields = 'id'
      LookupResultField = 'playername'
      KeyFields = 'h4'
      Size = 30
      Lookup = True
    end
    object tSetlu_h5name: TStringField
      DisplayLabel = 'h5'
      DisplayWidth = 9
      FieldKind = fkLookup
      FieldName = 'lu_h5name'
      LookupDataSet = tAllPlayers
      LookupKeyFields = 'id'
      LookupResultField = 'playername'
      KeyFields = 'h5'
      Size = 30
      Lookup = True
    end
    object tSetlu_h6name: TStringField
      DisplayLabel = 'h6'
      DisplayWidth = 9
      FieldKind = fkLookup
      FieldName = 'lu_h6name'
      LookupDataSet = tAllPlayers
      LookupKeyFields = 'id'
      LookupResultField = 'playername'
      KeyFields = 'h6'
      Size = 30
      Lookup = True
    end
  end
  object dsGame: TDataSource
    DataSet = tGame
    Left = 88
    Top = 208
  end
  object tGame: TADOTable
    CursorType = ctStatic
    IndexFieldNames = 'idset'
    MasterFields = 'id'
    MasterSource = dsSet
    TableName = 'TGame'
    Left = 88
    Top = 160
    object tGameid: TAutoIncField
      DisplayWidth = 4
      FieldName = 'id'
      ReadOnly = True
      Visible = False
    end
    object tGameidset: TIntegerField
      FieldName = 'idset'
      Visible = False
    end
    object tGameorder: TIntegerField
      DisplayLabel = 'Order'
      DisplayWidth = 5
      FieldName = 'order'
    end
    object tGamewon1: TBooleanField
      DefaultExpression = 'H'
      DisplayLabel = 'Won'
      DisplayWidth = 6
      FieldName = 'won1'
      DisplayValues = 'H;A'
    end
    object tGameafter_timeout1: TWideStringField
      DisplayLabel = 'Timeout'
      DisplayWidth = 6
      FieldName = 'after_timeout1'
      Size = 255
    end
  end
  object dsAction: TDataSource
    DataSet = tAction
    Left = 152
    Top = 208
  end
  object tAction: TADOTable
    CursorType = ctStatic
    IndexFieldNames = 'idgame'
    MasterFields = 'id'
    MasterSource = dsGame
    TableName = 'TAction'
    Left = 152
    Top = 160
    object tActionid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
      Visible = False
    end
    object tActionidactionvalue: TIntegerField
      FieldName = 'idactionvalue'
      Visible = False
    end
    object tActionorder: TIntegerField
      DisplayLabel = 'Order'
      DisplayWidth = 5
      FieldName = 'order'
    end
    object tActionidplayer: TIntegerField
      FieldName = 'idplayer'
      Visible = False
    end
    object tActionidgame: TIntegerField
      FieldName = 'idgame'
      Visible = False
    end
    object tActionplayer_name: TStringField
      DefaultExpression = 'unknown'
      DisplayLabel = 'Player'
      DisplayWidth = 28
      FieldKind = fkLookup
      FieldName = 'player_name'
      LookupDataSet = tAllPlayers
      LookupKeyFields = 'id'
      LookupResultField = 'playername'
      KeyFields = 'idplayer'
      Size = 40
      Lookup = True
    end
    object tActionaction_name: TStringField
      DisplayLabel = 'Action'
      DisplayWidth = 19
      FieldKind = fkLookup
      FieldName = 'action_name'
      LookupDataSet = tAllActionValue
      LookupKeyFields = 'id'
      LookupResultField = 'actionname'
      KeyFields = 'idactionvalue'
      Size = 30
      Lookup = True
    end
    object tActionpos: TIntegerField
      DisplayWidth = 5
      FieldName = 'pos'
    end
  end
  object tActionResult: TADOTable
    CursorType = ctStatic
    TableName = 'TActionResult'
    Left = 384
    Top = 64
    object tActionResultid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
      Visible = False
    end
    object tActionResultactionresult: TWideStringField
      FieldName = 'actionresult'
      Size = 255
    end
  end
  object tAllPlayers: TADOTable
    CursorType = ctStatic
    TableName = 'TPlayer'
    Left = 208
    Top = 160
  end
  object tAllActionValue: TADOTable
    CursorType = ctStatic
    TableName = 'TActionValue'
    Left = 264
    Top = 160
  end
  object dsAllMatchesStat: TDataSource
    DataSet = qAllMatchesStat
    Left = 520
    Top = 112
  end
  object qAllMatchesStat: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select tplayer.playername as pName, count(taction.id) as CountAc' +
        ', sum(actionvalue) as SumValue, round(SumValue/CountAc, 5) as Av' +
        'er'
      'from tplayer'
      
        'inner join (taction inner join tactionvalue on taction.idactionv' +
        'alue=tactionvalue.id)'
      'on tplayer.id=taction.idplayer'
      'where tplayer.idteam=1'
      'group by tplayer.playername')
    Left = 520
    Top = 64
    object qAllMatchesStatpName: TWideStringField
      DisplayWidth = 25
      FieldName = 'pName'
      Size = 255
    end
    object qAllMatchesStatCountAc: TIntegerField
      FieldName = 'CountAc'
    end
    object qAllMatchesStatSumValue: TFloatField
      FieldName = 'SumValue'
    end
    object qAllMatchesStatAver: TFloatField
      FieldName = 'Aver'
      ReadOnly = True
    end
  end
  object qOnline: TADOQuery
    Parameters = <>
    Left = 448
    Top = 64
  end
  object dsOnline: TDataSource
    DataSet = qOnline
    Left = 448
    Top = 112
  end
  object dsCMStat: TDataSource
    DataSet = qMatchStat
    Left = 608
    Top = 112
  end
  object qMatchStat: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p_idmatch'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '4'
      end>
    SQL.Strings = (
      
        'select tplayer.playername as pName, count(taction.id) as CountAc' +
        ', sum(actionvalue) as SumValue, round(SumValue/CountAc, 5) as Av' +
        'er'
      'from tplayer'
      
        'inner join (tset inner join (tgame inner join (taction inner joi' +
        'n tactionvalue on taction.idactionvalue=tactionvalue.id)'
      'on tgame.id=taction.idgame)'
      'on tset.id=tgame.idset)'
      'on tplayer.id=taction.idplayer'
      'where tplayer.idteam=1 and tset.idmatch=:p_idmatch'
      'group by tplayer.playername')
    Left = 608
    Top = 64
    object qMatchStatpName: TWideStringField
      DisplayWidth = 25
      FieldName = 'pName'
      Size = 255
    end
    object qMatchStatCountAc: TIntegerField
      FieldName = 'CountAc'
    end
    object qMatchStatSumValue: TFloatField
      FieldName = 'SumValue'
    end
    object qMatchStatAver: TFloatField
      FieldName = 'Aver'
      ReadOnly = True
    end
  end
  object dsAllMatchesServe: TDataSource
    DataSet = qAllMatchesServe
    Left = 520
    Top = 208
  end
  object qAllMatchesServe: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select tplayer.playername as pName, count(taction.id) as CountAc' +
        ', sum(actionvalue) as SumValue, round(SumValue/CountAc, 5) as Av' +
        'er'
      'from tplayer'
      
        'inner join (taction inner join tactionvalue on taction.idactionv' +
        'alue=tactionvalue.id)'
      'on tplayer.id=taction.idplayer'
      'where tplayer.idteam=1 and tactionvalue.idgroup=1'
      'group by tplayer.playername')
    Left = 520
    Top = 160
    object qAllMatchesServepName: TWideStringField
      DisplayWidth = 25
      FieldName = 'pName'
      Size = 255
    end
    object qAllMatchesServeCountAc: TIntegerField
      FieldName = 'CountAc'
    end
    object qAllMatchesServeSumValue: TFloatField
      FieldName = 'SumValue'
    end
    object qAllMatchesServeAver: TFloatField
      FieldName = 'Aver'
      ReadOnly = True
    end
  end
  object dsAllMatchesPriem: TDataSource
    DataSet = qAllMatchesPriem
    Left = 520
    Top = 304
  end
  object qAllMatchesPriem: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select tplayer.playername as pName, count(taction.id) as CountAc' +
        ', sum(actionvalue) as SumValue, round(SumValue/CountAc, 5) as Av' +
        'er'
      'from tplayer'
      
        'inner join (taction inner join tactionvalue on taction.idactionv' +
        'alue=tactionvalue.id)'
      'on tplayer.id=taction.idplayer'
      'where tplayer.idteam=1 and tactionvalue.idgroup=2'
      'group by tplayer.playername')
    Left = 520
    Top = 256
    object qAllMatchesPriempName: TWideStringField
      DisplayWidth = 25
      FieldName = 'pName'
      Size = 255
    end
    object qAllMatchesPriemCountAc: TIntegerField
      FieldName = 'CountAc'
    end
    object qAllMatchesPriemSumValue: TFloatField
      FieldName = 'SumValue'
    end
    object qAllMatchesPriemAver: TFloatField
      FieldName = 'Aver'
      ReadOnly = True
    end
  end
  object qAllMatchesPass: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select tplayer.playername as pName, count(taction.id) as CountAc' +
        ', sum(actionvalue) as SumValue, round(SumValue/CountAc, 5) as Av' +
        'er'
      'from tplayer'
      
        'inner join (taction inner join tactionvalue on taction.idactionv' +
        'alue=tactionvalue.id)'
      'on tplayer.id=taction.idplayer'
      'where tplayer.idteam=1 and tactionvalue.idgroup=3'
      'group by tplayer.playername')
    Left = 520
    Top = 352
    object qAllMatchesPasspName: TWideStringField
      DisplayWidth = 25
      FieldName = 'pName'
      Size = 255
    end
    object qAllMatchesPassCountAc: TIntegerField
      FieldName = 'CountAc'
    end
    object qAllMatchesPassSumValue: TFloatField
      FieldName = 'SumValue'
    end
    object qAllMatchesPassAver: TFloatField
      FieldName = 'Aver'
      ReadOnly = True
    end
  end
  object dsAllMatchesPass: TDataSource
    DataSet = qAllMatchesPass
    Left = 520
    Top = 400
  end
  object dsAllMatchesAttack: TDataSource
    DataSet = qAllMatchesAttack
    Left = 520
    Top = 496
  end
  object dsAllMatchesBlock: TDataSource
    DataSet = qAllMatchesBlock
    Left = 520
    Top = 592
  end
  object qAllMatchesAttack: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select tplayer.playername as pName, count(taction.id) as CountAc' +
        ', sum(actionvalue) as SumValue, round(SumValue/CountAc, 5) as Av' +
        'er'
      'from tplayer'
      
        'inner join (taction inner join tactionvalue on taction.idactionv' +
        'alue=tactionvalue.id)'
      'on tplayer.id=taction.idplayer'
      'where tplayer.idteam=1 and tactionvalue.idgroup=4'
      'group by tplayer.playername')
    Left = 520
    Top = 448
    object qAllMatchesAttackpName: TWideStringField
      DisplayWidth = 25
      FieldName = 'pName'
      Size = 255
    end
    object qAllMatchesAttackCountAc: TIntegerField
      FieldName = 'CountAc'
    end
    object qAllMatchesAttackSumValue: TFloatField
      FieldName = 'SumValue'
    end
    object qAllMatchesAttackAver: TFloatField
      FieldName = 'Aver'
      ReadOnly = True
    end
  end
  object qAllMatchesBlock: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select tplayer.playername as pName, count(taction.id) as CountAc' +
        ', sum(actionvalue) as SumValue, round(SumValue/CountAc, 5) as Av' +
        'er'
      'from tplayer'
      
        'inner join (taction inner join tactionvalue on taction.idactionv' +
        'alue=tactionvalue.id)'
      'on tplayer.id=taction.idplayer'
      'where tplayer.idteam=1 and tactionvalue.idgroup=5'
      'group by tplayer.playername')
    Left = 520
    Top = 544
    object qAllMatchesBlockpName: TWideStringField
      DisplayWidth = 25
      FieldName = 'pName'
      Size = 255
    end
    object qAllMatchesBlockCountAc: TIntegerField
      FieldName = 'CountAc'
    end
    object qAllMatchesBlockSumValue: TFloatField
      FieldName = 'SumValue'
    end
    object qAllMatchesBlockAver: TFloatField
      FieldName = 'Aver'
      ReadOnly = True
    end
  end
  object dsCMServe: TDataSource
    DataSet = qCMServe
    Left = 608
    Top = 208
  end
  object dsCMPriem: TDataSource
    DataSet = qCMPriem
    Left = 608
    Top = 304
  end
  object dsCMPass: TDataSource
    DataSet = qCMPass
    Left = 608
    Top = 400
  end
  object dsCMAttack: TDataSource
    DataSet = qCMAttack
    Left = 608
    Top = 496
  end
  object dsCMBlock: TDataSource
    DataSet = qCMBlock
    Left = 608
    Top = 592
  end
  object qCMServe: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p_idmatch'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'select tplayer.playername as pName, count(taction.id) as CountAc' +
        ', sum(actionvalue) as SumValue, round(SumValue/CountAc, 5) as Av' +
        'er'
      'from tplayer'
      
        'inner join (tset inner join (tgame inner join (taction inner joi' +
        'n tactionvalue on taction.idactionvalue=tactionvalue.id)'
      'on tgame.id=taction.idgame)'
      'on tset.id=tgame.idset)'
      'on tplayer.id=taction.idplayer'
      
        'where tplayer.idteam=1 and tset.idmatch=:p_idmatch and tactionva' +
        'lue.idgroup=1'
      'group by tplayer.playername')
    Left = 608
    Top = 160
    object qCMServepName: TWideStringField
      DisplayWidth = 25
      FieldName = 'pName'
      Size = 255
    end
    object qCMServeCountAc: TIntegerField
      FieldName = 'CountAc'
    end
    object qCMServeSumValue: TFloatField
      FieldName = 'SumValue'
    end
    object qCMServeAver: TFloatField
      FieldName = 'Aver'
      ReadOnly = True
    end
  end
  object qCMPriem: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p_idmatch'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'select tplayer.playername as pName, count(taction.id) as CountAc' +
        ', sum(actionvalue) as SumValue, round(SumValue/CountAc, 5) as Av' +
        'er'
      'from tplayer'
      
        'inner join (tset inner join (tgame inner join (taction inner joi' +
        'n tactionvalue on taction.idactionvalue=tactionvalue.id)'
      'on tgame.id=taction.idgame)'
      'on tset.id=tgame.idset)'
      'on tplayer.id=taction.idplayer'
      
        'where tplayer.idteam=1 and tset.idmatch=:p_idmatch and tactionva' +
        'lue.idgroup=2'
      'group by tplayer.playername')
    Left = 608
    Top = 256
    object qCMPriempName: TWideStringField
      DisplayWidth = 25
      FieldName = 'pName'
      Size = 255
    end
    object qCMPriemCountAc: TIntegerField
      FieldName = 'CountAc'
    end
    object qCMPriemSumValue: TFloatField
      FieldName = 'SumValue'
    end
    object qCMPriemAver: TFloatField
      FieldName = 'Aver'
      ReadOnly = True
    end
  end
  object qCMPass: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p_idmatch'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'select tplayer.playername as pName, count(taction.id) as CountAc' +
        ', sum(actionvalue) as SumValue, round(SumValue/CountAc, 5) as Av' +
        'er'
      'from tplayer'
      
        'inner join (tset inner join (tgame inner join (taction inner joi' +
        'n tactionvalue on taction.idactionvalue=tactionvalue.id)'
      'on tgame.id=taction.idgame)'
      'on tset.id=tgame.idset)'
      'on tplayer.id=taction.idplayer'
      
        'where tplayer.idteam=1 and tset.idmatch=:p_idmatch and tactionva' +
        'lue.idgroup=3'
      'group by tplayer.playername')
    Left = 608
    Top = 352
    object qCMPasspName: TWideStringField
      DisplayWidth = 25
      FieldName = 'pName'
      Size = 255
    end
    object qCMPassCountAc: TIntegerField
      FieldName = 'CountAc'
    end
    object qCMPassSumValue: TFloatField
      FieldName = 'SumValue'
    end
    object qCMPassAver: TFloatField
      FieldName = 'Aver'
      ReadOnly = True
    end
  end
  object qCMAttack: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p_idmatch'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'select tplayer.playername as pName, count(taction.id) as CountAc' +
        ', sum(actionvalue) as SumValue, round(SumValue/CountAc, 5) as Av' +
        'er'
      'from tplayer'
      
        'inner join (tset inner join (tgame inner join (taction inner joi' +
        'n tactionvalue on taction.idactionvalue=tactionvalue.id)'
      'on tgame.id=taction.idgame)'
      'on tset.id=tgame.idset)'
      'on tplayer.id=taction.idplayer'
      
        'where tplayer.idteam=1 and tset.idmatch=:p_idmatch and tactionva' +
        'lue.idgroup=4'
      'group by tplayer.playername')
    Left = 608
    Top = 448
    object qCMAttackpName: TWideStringField
      DisplayWidth = 25
      FieldName = 'pName'
      Size = 255
    end
    object qCMAttackCountAc: TIntegerField
      FieldName = 'CountAc'
    end
    object qCMAttackSumValue: TFloatField
      FieldName = 'SumValue'
    end
    object qCMAttackAver: TFloatField
      FieldName = 'Aver'
      ReadOnly = True
    end
  end
  object qCMBlock: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p_idmatch'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'select tplayer.playername as pName, count(taction.id) as CountAc' +
        ', sum(actionvalue) as SumValue, round(SumValue/CountAc, 5) as Av' +
        'er'
      'from tplayer'
      
        'inner join (tset inner join (tgame inner join (taction inner joi' +
        'n tactionvalue on taction.idactionvalue=tactionvalue.id)'
      'on tgame.id=taction.idgame)'
      'on tset.id=tgame.idset)'
      'on tplayer.id=taction.idplayer'
      
        'where tplayer.idteam=1 and tset.idmatch=:p_idmatch and tactionva' +
        'lue.idgroup=5'
      'group by tplayer.playername')
    Left = 608
    Top = 544
    object qCMBlockpName: TWideStringField
      DisplayWidth = 25
      FieldName = 'pName'
      Size = 255
    end
    object qCMBlockCountAc: TIntegerField
      FieldName = 'CountAc'
    end
    object qCMBlockSumValue: TFloatField
      FieldName = 'SumValue'
    end
    object qCMBlockAver: TFloatField
      FieldName = 'Aver'
      ReadOnly = True
    end
  end
  object dstest: TDataSource
    DataSet = qtest
    Left = 56
    Top = 480
  end
  object qtest: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select m.id, m.idteamhome, m.idteamaway, th.teamname as tho, ta.' +
        'teamname as taw'
      'from'
      '(tmatch m'
      'left outer join tteam th on m.idteamhome=th.id)'
      'left outer join tteam ta on m.idteamaway=ta.id'
      'where m.idtournament=2')
    Left = 56
    Top = 432
    object qtestid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object qtestidteamhome: TIntegerField
      FieldName = 'idteamhome'
    end
    object qtestidteamaway: TIntegerField
      FieldName = 'idteamaway'
    end
    object qtesttho: TWideStringField
      FieldName = 'tho'
      Size = 255
    end
    object qtesttaw: TWideStringField
      FieldName = 'taw'
      Size = 255
    end
  end
  object cVolleyball: TSQLConnection
    ConnectionName = 'volleyball'
    DriverName = 'MySQL'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MySQL'
      'DriverUnit=Data.DBXMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver170.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=17.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMySqlMetaDataCommandFactory,DbxMySQLDr' +
        'iver170.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMySqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMySQLDriver,Version=17.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'LibraryName=dbxmys.dll'
      'LibraryNameOsx=libsqlmys.dylib'
      'VendorLib=LIBMYSQL.dll'
      'VendorLibWin64=libmysql.dll'
      'VendorLibOsx=libmysqlclient.dylib'
      'HostName=localhost'
      'Database=volleyball'
      'User_Name=root'
      'Password=myrootsql'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'ServerCharSet=utf8')
    Connected = True
    Left = 24
    Top = 8
  end
end
