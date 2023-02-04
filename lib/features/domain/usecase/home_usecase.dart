
import 'package:dartz/dartz.dart';
import 'package:mvvm_project/core/base_usecase.dart';
import 'package:mvvm_project/core/network/failure.dart';
import 'package:mvvm_project/features/data/request/request.dart';
import 'package:mvvm_project/features/domain/model/model.dart';
import 'package:mvvm_project/features/domain/repository/repository.dart';


class HomeUseCase implements BaseCase<FootballUseCaseInput,ModelFootball>{

 late Repository _repository;

 HomeUseCase(this._repository);

  @override
  Future<Either<Failure, ModelFootball>> execute(FootballUseCaseInput input) async{
    // TODO: implement execute
   return  await _repository.get_Matches(MatchRequest(input.dateFrom,input.dateTo,input.limit));
  }

}

class FootballUseCaseInput{
  late String dateFrom;
  late String dateTo;
  late int limit;

  FootballUseCaseInput(this.dateFrom, this.dateTo, this.limit);
}