

import 'package:dio/dio.dart';
import 'package:mvvm_project/features/data/responeses/football/football_response.dart';
import 'package:retrofit/retrofit.dart';

import '../../../core/constant.dart';

part 'app_api.g.dart';


@RestApi(baseUrl: Constant.baseUrl)
abstract class AppServiceClient{

  factory AppServiceClient(Dio dio,{String baseUrl}) = _AppServiceClient;

  @GET("/2021/matches")
  Future<ModelFootball_Response> get_matches(@Query("dateFrom") String dateFrom ,@Query("dateTo") String dateTo,@Query("limit") int limit);

}