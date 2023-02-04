
import 'package:json_annotation/json_annotation.dart';
part 'football_response.g.dart';


@JsonSerializable()
class ModelFootball_Response {

  @JsonKey(name: "count")
  int? count;
  @JsonKey(name: "competition")
  Competition? competition;
  @JsonKey(name: "matches")
  List<Matches>? matches;

  ModelFootball_Response({this.count, this.competition, this.matches});

  ModelFootball_Response.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    competition = json['competition'] != null ? new Competition.fromJson(json['competition']) : null;

    if (json['matches'] != null) {
      matches = <Matches>[];
      json['matches'].forEach((v) {
        matches!.add(new Matches.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    if (this.competition != null) {
      data['competition'] = this.competition!.toJson();
    }

    if (this.matches != null) {
      data['matches'] = this.matches!.map((v) => v.toJson()).toList();
    }
    return data;
  }



}


@JsonSerializable()
class Competition {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "area")
  Area? area;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "code")
  String? code;
  @JsonKey(name: "plan")
  String? plan;
  @JsonKey(name: "lastUpdated")
  String? lastUpdated;

  Competition({this.id, this.area, this.name, this.code, this.plan, this.lastUpdated});

  Competition.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    area = json['area'] != null ? new Area.fromJson(json['area']) : null;
    name = json['name'];
    code = json['code'];
    plan = json['plan'];
    lastUpdated = json['lastUpdated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.area != null) {
      data['area'] = this.area!.toJson();
    }
    data['name'] = this.name;
    data['code'] = this.code;
    data['plan'] = this.plan;
    data['lastUpdated'] = this.lastUpdated;
    return data;
  }




}

@JsonSerializable()
class Area {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "name")
  String? name;

  Area({this.id, this.name});

  Area.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }



}

@JsonSerializable()
class Matches {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "season")
  Season? season;
  @JsonKey(name: "utcDate")
  String? utcDate;
  @JsonKey(name: "status")
  String? status;
  @JsonKey(name: "matchday")
  int? matchday;
  @JsonKey(name: "stage")
  String? stage;
  @JsonKey(name: "group")
  String? group;
  @JsonKey(name: "lastUpdated")
  String? lastUpdated;
  @JsonKey(name: "odds")
  Odds? odds;
  @JsonKey(name: "score")
  Score? score;
  @JsonKey(name: "homeTeam")
  Area? homeTeam;
  @JsonKey(name: "awayTeam")
  Area? awayTeam;
  @JsonKey(name: "referees")
  List<Referees>? referees;

  Matches({this.id, this.season, this.utcDate, this.status, this.matchday, this.stage, this.group, this.lastUpdated, this.odds, this.score, this.homeTeam, this.awayTeam, this.referees});


  Matches.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    season = json['season'] != null ? new Season.fromJson(json['season']) : null;
    utcDate = json['utcDate'];
    status = json['status'];
    matchday = json['matchday'];
    stage = json['stage'];
    group = json['group'];
    lastUpdated = json['lastUpdated'];
    odds = json['odds'] != null ? new Odds.fromJson(json['odds']) : null;
    score = json['score'] != null ? new Score.fromJson(json['score']) : null;
    homeTeam = json['homeTeam'] != null ? new Area.fromJson(json['homeTeam']) : null;
    awayTeam = json['awayTeam'] != null ? new Area.fromJson(json['awayTeam']) : null;
    if (json['referees'] != null) {
      referees = <Referees>[];
      json['referees'].forEach((v) { referees!.add(new Referees.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.season != null) {
      data['season'] = this.season!.toJson();
    }
    data['utcDate'] = this.utcDate;
    data['status'] = this.status;
    data['matchday'] = this.matchday;
    data['stage'] = this.stage;
    data['group'] = this.group;
    data['lastUpdated'] = this.lastUpdated;
    if (this.odds != null) {
      data['odds'] = this.odds!.toJson();
    }
    if (this.score != null) {
      data['score'] = this.score!.toJson();
    }
    if (this.homeTeam != null) {
      data['homeTeam'] = this.homeTeam!.toJson();
    }
    if (this.awayTeam != null) {
      data['awayTeam'] = this.awayTeam!.toJson();
    }
    if (this.referees != null) {
      data['referees'] = this.referees!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

@JsonSerializable()
class Season {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "startDate")
  String? startDate;
  @JsonKey(name: "endDate")
  String? endDate;
  @JsonKey(name: "currentMatchday")
  int? currentMatchday;

  Season({this.id, this.startDate, this.endDate, this.currentMatchday});

  Season.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    startDate = json['startDate'];
    endDate = json['endDate'];
    currentMatchday = json['currentMatchday'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['startDate'] = this.startDate;
    data['endDate'] = this.endDate;
    data['currentMatchday'] = this.currentMatchday;
    return data;
  }
}

@JsonSerializable()
class Odds {
  @JsonKey(name: "msg")
  String? msg;

  Odds({this.msg});

  Odds.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = this.msg;
    return data;
  }
}

@JsonSerializable()
class Score {
  @JsonKey(name: "winner")
  String? winner;
  @JsonKey(name: "duration")
  String? duration;
  @JsonKey(name: "fullTime")
  FullTime? fullTime;
  @JsonKey(name: "halfTime")
  FullTime? halfTime;
  @JsonKey(name: "extraTime")
  FullTime? extraTime;
  @JsonKey(name: "penalties")
  FullTime? penalties;

  Score({this.winner, this.duration, this.fullTime, this.halfTime, this.extraTime, this.penalties});

  Score.fromJson(Map<String, dynamic> json) {
    winner = json['winner'];
    duration = json['duration'];
    fullTime = json['fullTime'] != null ? new FullTime.fromJson(json['fullTime']) : null;
    halfTime = json['halfTime'] != null ? new FullTime.fromJson(json['halfTime']) : null;
    extraTime = json['extraTime'] != null ? new FullTime.fromJson(json['extraTime']) : null;
    penalties = json['penalties'] != null ? new FullTime.fromJson(json['penalties']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['winner'] = this.winner;
    data['duration'] = this.duration;
    if (this.fullTime != null) {
      data['fullTime'] = this.fullTime!.toJson();
    }
    if (this.halfTime != null) {
      data['halfTime'] = this.halfTime!.toJson();
    }
    if (this.extraTime != null) {
      data['extraTime'] = this.extraTime!.toJson();
    }
    if (this.penalties != null) {
      data['penalties'] = this.penalties!.toJson();
    }
    return data;
  }
}

@JsonSerializable()
class FullTime {
  @JsonKey(name: "homeTeam")
  int? homeTeam;
  @JsonKey(name: "awayTeam")
  int? awayTeam;

  FullTime({this.homeTeam, this.awayTeam});

  FullTime.fromJson(Map<String, dynamic> json) {
    homeTeam = json['homeTeam'];
    awayTeam = json['awayTeam'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['homeTeam'] = this.homeTeam;
    data['awayTeam'] = this.awayTeam;
    return data;
  }
}

@JsonSerializable()
class Referees {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "role")
  String? role;
  @JsonKey(name: "nationality")
  String? nationality;

  Referees({this.id, this.name, this.role, this.nationality});

  Referees.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    role = json['role'];
    nationality = json['nationality'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['role'] = this.role;
    data['nationality'] = this.nationality;
    return data;
  }
}



