
import 'package:dartz/dartz.dart';
import 'package:mvvm_project/core/network/failure.dart';

import 'package:mvvm_project/features/data/request/request.dart';
import 'package:mvvm_project/features/domain/model/model.dart';


abstract class Repository{
  Future <Either<Failure,ModelFootball>> get_Matches(MatchRequest matchRequest);
}