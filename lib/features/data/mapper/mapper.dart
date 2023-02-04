

// to convert the response into an non nullable object (model)


import 'package:mvvm_project/core/extensions.dart';
import 'package:mvvm_project/features/data/responeses/football/football_response.dart';
import 'package:mvvm_project/features/domain/model/model.dart';
import 'package:intl/intl.dart'; // for date format


const EMPTY="";
const ZERO=0;
const STATUS=false;


extension Football_Mapper on ModelFootball_Response?{
  ModelFootball toDomain(){
    List<Matches_Model>? matches=(this?.matches!.map((e) => e.toDomain()) ?? Iterable.empty()).cast<Matches_Model>().toList();

    return ModelFootball(count: this?.count.orZero(),competition: this!.competition.toDomain(),matches: matches);
  }
}

extension Competition_Mapper on Competition?{
  Competition_Model toDomain(){

    return Competition_Model(id: this?.id.orZero(),area: this?.area.toDomain(),name: this?.name.orEmpty(),code: this?.code.orEmpty(),plan: this?.plan.orEmpty(),lastUpdated: this?.lastUpdated.orEmpty());

  }}


/// Returns the difference (in full days) between the provided date and today.
String calculateDifference(DateTime date) {
  DateTime now = DateTime.now();
  int days= DateTime(date.year, date.month, date.day).difference(DateTime(now.year, now.month, now.day)).inDays;
  String date_name='';
  if(days  == -1){
    date_name = 'Yesterday';
  }else if(days == 0){
    date_name='Today';
  }else if(days == 1){
    date_name='Tomorrow';
  }else{
    date_name=date.toString();
  }

  return date_name;
}

String ChangeDateFormate(DateTime date) {

   return DateFormat.yMMMMd().format(date).toString();

}

String ChangeTimeFormate(DateTime date) {

  return DateFormat.Hm().format(date).toString();

}

extension Matches_Mapper on Matches?{

  Matches_Model toDomain(){
     List<Referees_Model>? Referees_mapper=(this?.referees!.map((e) => e.toDomain()) ?? Iterable.empty()).cast<Referees_Model>().toList();

    return Matches_Model(id:this!.id.orZero(),season: this!.season.toDomain(),utcDate: calculateDifference(DateTime.parse(this!.utcDate.orEmpty())),status: this?.status.orEmpty(),matchday: this?.matchday.orZero()
    ,stage: this?.stage.orEmpty(),group: this?.group.orEmpty(),lastUpdated: this?.lastUpdated.orEmpty(),odds: this?.odds.toDomain(),score: this?.score.toDomain(),
      homeTeam: this!.homeTeam.toDomain(),awayTeam: this?.awayTeam.toDomain(),referees: Referees_mapper,date_formate: ChangeDateFormate(DateTime.parse(this!.utcDate.orEmpty())),
     time_start: ChangeTimeFormate(DateTime.parse(this!.utcDate.orEmpty()))
    );

  }
}


extension Area_Mapper on Area?{
  Area_Model toDomain(){

    return Area_Model(id: this?.id.orZero(),name: this?.name.orEmpty());

  }}

extension Season_Mapper on Season?{
  Season_Model toDomain(){

    return Season_Model(id: this?.id.orZero(),startDate: this?.startDate.orEmpty(),endDate: this?.endDate.orEmpty(),currentMatchday: this?.currentMatchday.orZero());

  }}

  extension Odds_Mapper on Odds?{
    Odds_Model toDomain(){

  return Odds_Model(msg: this?.msg.orEmpty());

  }
}

extension Score_Mapper on Score?{
  Score_Model toDomain(){

    return Score_Model(winner: this?.winner.orEmpty(),duration: this?.duration.orEmpty(),fullTime: this?.fullTime.toDomain(),halfTime:this?.halfTime.toDomain() ,extraTime: this?.extraTime.toDomain(),penalties:this?.penalties.toDomain() );

  }
}


extension FullTime_Mapper on FullTime?{
  FullTime_Model toDomain(){
    return FullTime_Model(homeTeam: this!.homeTeam.orZero().toString(),awayTeam: this!.awayTeam.orZero().toString());

  }
}

extension Referees_Mapper on Referees?{
  Referees_Model toDomain(){
    return Referees_Model(id: this!.id.orZero(),name: this!.name.orEmpty(),role: this!.role.orEmpty(),nationality: this!.nationality.orEmpty());

  }
}

