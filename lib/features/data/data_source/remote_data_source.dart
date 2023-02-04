

import 'dart:convert';

import 'package:mvvm_project/core/constant.dart';
import 'package:mvvm_project/core/network/exceptions.dart';
import 'package:mvvm_project/features/data/network/app_api.dart';
import 'package:mvvm_project/features/data/request/request.dart';
import 'package:http/http.dart' as http;

import '../../../core/resources/constants/assets_manager.dart';
import '../responeses/football/football_response.dart';

abstract class RemoteDataSource{
  Future<ModelFootball_Response> get_Matches(MatchRequest matchRequest);

}


class RemoteDataSourceImplementer implements RemoteDataSource{
 late AppServiceClient appServiceClient;


 RemoteDataSourceImplementer({required this.appServiceClient});


  @override
  Future<ModelFootball_Response> get_Matches(MatchRequest matchRequest) async{
  return  appServiceClient.get_matches(matchRequest.dateFrom, matchRequest.dateTo, matchRequest.limit);

  }



}