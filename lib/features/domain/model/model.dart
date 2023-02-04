

class ModelFootball {
  int? count;
  Competition_Model competition;
  List<Matches_Model>? matches;


  ModelFootball({this.count, required this.competition, this.matches});

}



class Competition_Model {
  int? id;
  Area_Model? area;
  String? name;
  String? code;
  String? plan;
  String? lastUpdated;

  Competition_Model({this.id, this.area, this.name, this.code, this.plan, this.lastUpdated});

}

class Area_Model {
  int? id;
  String? name;

  Area_Model({this.id, this.name});

}

class Matches_Model {
  int? id;
  Season_Model? season;
  String? utcDate;
  String? status;
  int? matchday;
  String? stage;
  dynamic? group;
  String? lastUpdated;
  Odds_Model? odds;
  Score_Model? score;
  Area_Model? homeTeam;
  Area_Model? awayTeam;
  String? date_formate;
  String? time_start;
  List<Referees_Model>? referees;

  Matches_Model({this.id, this.season, this.utcDate, this.status, this.matchday, this.stage, this.group, this.lastUpdated, this.odds, this.score, this.homeTeam, this.awayTeam, this.referees,
  this.date_formate,this.time_start
  });


}

class Season_Model {
  int? id;
  String? startDate;
  String? endDate;
  int? currentMatchday;

  Season_Model({this.id, this.startDate, this.endDate, this.currentMatchday});

}

class Odds_Model {
  String? msg;

  Odds_Model({this.msg});

}

class Score_Model {
  String? winner;
  String? duration;
  FullTime_Model? fullTime;
  FullTime_Model? halfTime;
  FullTime_Model? extraTime;
  FullTime_Model? penalties;

  Score_Model({this.winner, this.duration, this.fullTime, this.halfTime, this.extraTime, this.penalties});

}

class FullTime_Model {
  String? homeTeam;
  String? awayTeam;

  FullTime_Model({this.homeTeam, this.awayTeam});

}

class Referees_Model {
  int? id;
  String? name;
  String? role;
  String? nationality;

  Referees_Model({this.id, this.name, this.role, this.nationality});

}



