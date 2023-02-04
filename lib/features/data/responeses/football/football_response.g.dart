// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'football_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModelFootball_Response _$ModelFootball_ResponseFromJson(
        Map<String, dynamic> json) =>
    ModelFootball_Response(
      count: json['count'] as int?,
      competition: json['competition'] == null
          ? null
          : Competition.fromJson(json['competition'] as Map<String, dynamic>),
      matches: (json['matches'] as List<dynamic>?)
          ?.map((e) => Matches.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ModelFootball_ResponseToJson(
        ModelFootball_Response instance) =>
    <String, dynamic>{
      'count': instance.count,
      'competition': instance.competition,
      'matches': instance.matches,
    };

Competition _$CompetitionFromJson(Map<String, dynamic> json) => Competition(
      id: json['id'] as int?,
      area: json['area'] == null
          ? null
          : Area.fromJson(json['area'] as Map<String, dynamic>),
      name: json['name'] as String?,
      code: json['code'] as String?,
      plan: json['plan'] as String?,
      lastUpdated: json['lastUpdated'] as String?,
    );

Map<String, dynamic> _$CompetitionToJson(Competition instance) =>
    <String, dynamic>{
      'id': instance.id,
      'area': instance.area,
      'name': instance.name,
      'code': instance.code,
      'plan': instance.plan,
      'lastUpdated': instance.lastUpdated,
    };

Area _$AreaFromJson(Map<String, dynamic> json) => Area(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$AreaToJson(Area instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

Matches _$MatchesFromJson(Map<String, dynamic> json) => Matches(
      id: json['id'] as int?,
      season: json['season'] == null
          ? null
          : Season.fromJson(json['season'] as Map<String, dynamic>),
      utcDate: json['utcDate'] as String?,
      status: json['status'] as String?,
      matchday: json['matchday'] as int?,
      stage: json['stage'] as String?,
      group: json['group'] as String?,
      lastUpdated: json['lastUpdated'] as String?,
      odds: json['odds'] == null
          ? null
          : Odds.fromJson(json['odds'] as Map<String, dynamic>),
      score: json['score'] == null
          ? null
          : Score.fromJson(json['score'] as Map<String, dynamic>),
      homeTeam: json['homeTeam'] == null
          ? null
          : Area.fromJson(json['homeTeam'] as Map<String, dynamic>),
      awayTeam: json['awayTeam'] == null
          ? null
          : Area.fromJson(json['awayTeam'] as Map<String, dynamic>),
      referees: (json['referees'] as List<dynamic>?)
          ?.map((e) => Referees.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MatchesToJson(Matches instance) => <String, dynamic>{
      'id': instance.id,
      'season': instance.season,
      'utcDate': instance.utcDate,
      'status': instance.status,
      'matchday': instance.matchday,
      'stage': instance.stage,
      'group': instance.group,
      'lastUpdated': instance.lastUpdated,
      'odds': instance.odds,
      'score': instance.score,
      'homeTeam': instance.homeTeam,
      'awayTeam': instance.awayTeam,
      'referees': instance.referees,
    };

Season _$SeasonFromJson(Map<String, dynamic> json) => Season(
      id: json['id'] as int?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      currentMatchday: json['currentMatchday'] as int?,
    );

Map<String, dynamic> _$SeasonToJson(Season instance) => <String, dynamic>{
      'id': instance.id,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'currentMatchday': instance.currentMatchday,
    };

Odds _$OddsFromJson(Map<String, dynamic> json) => Odds(
      msg: json['msg'] as String?,
    );

Map<String, dynamic> _$OddsToJson(Odds instance) => <String, dynamic>{
      'msg': instance.msg,
    };

Score _$ScoreFromJson(Map<String, dynamic> json) => Score(
      winner: json['winner'] as String?,
      duration: json['duration'] as String?,
      fullTime: json['fullTime'] == null
          ? null
          : FullTime.fromJson(json['fullTime'] as Map<String, dynamic>),
      halfTime: json['halfTime'] == null
          ? null
          : FullTime.fromJson(json['halfTime'] as Map<String, dynamic>),
      extraTime: json['extraTime'] == null
          ? null
          : FullTime.fromJson(json['extraTime'] as Map<String, dynamic>),
      penalties: json['penalties'] == null
          ? null
          : FullTime.fromJson(json['penalties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ScoreToJson(Score instance) => <String, dynamic>{
      'winner': instance.winner,
      'duration': instance.duration,
      'fullTime': instance.fullTime,
      'halfTime': instance.halfTime,
      'extraTime': instance.extraTime,
      'penalties': instance.penalties,
    };

FullTime _$FullTimeFromJson(Map<String, dynamic> json) => FullTime(
      homeTeam: json['homeTeam'] as int?,
      awayTeam: json['awayTeam'] as int?,
    );

Map<String, dynamic> _$FullTimeToJson(FullTime instance) => <String, dynamic>{
      'homeTeam': instance.homeTeam,
      'awayTeam': instance.awayTeam,
    };

Referees _$RefereesFromJson(Map<String, dynamic> json) => Referees(
      id: json['id'] as int?,
      name: json['name'] as String?,
      role: json['role'] as String?,
      nationality: json['nationality'] as String?,
    );

Map<String, dynamic> _$RefereesToJson(Referees instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'role': instance.role,
      'nationality': instance.nationality,
    };
