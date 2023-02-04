

import 'dart:async';
import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:mvvm_project/core/constant.dart';


import 'package:mvvm_project/features/data/cache_model/model_cache.dart';
import 'package:mvvm_project/features/data/data_source/local_data_source.dart';
import 'package:mvvm_project/features/data/data_source/remote_data_source.dart';
import 'package:mvvm_project/features/data/mapper/mapper.dart';
import 'package:mvvm_project/core/network/error_handler.dart';
import 'package:mvvm_project/core/network/failure.dart';
import 'package:mvvm_project/core/network/network_info.dart';
import 'package:mvvm_project/features/data/request/request.dart';
import 'package:mvvm_project/features/data/responeses/football/football_response.dart';
import 'package:mvvm_project/features/domain/model/model.dart';
import 'package:mvvm_project/features/domain/repository/repository.dart';

class RepositoryImpl extends Repository{

  late  RemoteDataSource _remoteDataSource;
  late NetworkInfo _networkInfo;
  late LocalDataSource localDataSource;



  RepositoryImpl(this._remoteDataSource, this._networkInfo,this.localDataSource);

  @override
  Future<Either<Failure, ModelFootball>> get_Matches(MatchRequest matchRequest) async{

    if(await _networkInfo.isConnected){

      try{
        // its safe call the api
        final response=await _remoteDataSource.get_Matches(matchRequest);

        if(response.matches!.isNotEmpty){

          //  mapper problem
          Model_Cache model_cache=new Model_Cache(Constant.publicKey_Cache,jsonEncode(response));
          localDataSource.AddCache(model_cache);
          return Right(response.toDomain());
         }else{
          // return biz logic error
          return Left(Failure(1,ResponseMessage.BAD_REQUEST));
        }

      }catch(e){

        return Left(ErrorHandler.handle(e).failure);

      }

    }else{
      // return connection error

      try{
        var data=await localDataSource.getCache();
        var response= ModelFootball_Response.fromJson(json.decode(data.last.value));
        return Right(response.toDomain());

      }catch(e){
        print(e.toString());
        return Left(ErrorHandler.handle(e).failure);
      }
    }

  }



}