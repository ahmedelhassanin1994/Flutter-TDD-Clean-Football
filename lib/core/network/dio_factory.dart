

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_project/core/app_prefs.dart';
import 'package:mvvm_project/core/constant.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';


const String APPLICATION_JSON="application/json";
const String CONTENT_TYPE="Content-Type";
const String ACCEPT="Accept";
const String DFAULT_LANGOUAGE="Accept-Language";
const String AUTHORIZATION="X-Auth-Token";
const String LANGUAGE="Accept-Language";



class DioFactory{

  late AppPreferences _appPreferences;


  DioFactory(this._appPreferences);

  Future<Dio> getDio() async{
    Dio dio= Dio();
    int _timeout=60*1000;
    String language=await _appPreferences.getAppLanguage();
    Map<String,String> headers={
      CONTENT_TYPE:APPLICATION_JSON,
      AUTHORIZATION:Constant.token
      // ACCEPT:APPLICATION_JSON,
      // LANGUAGE:language
    };
    dio.options=BaseOptions(
      baseUrl: Constant.baseUrl,
      connectTimeout:_timeout,
      receiveTimeout: _timeout,
      headers: headers,

    );

    if(kReleaseMode){
      print("relase mode");
    }else{
      dio.interceptors.add(
          (PrettyDioLogger(
            requestHeader: true,
            requestBody: true,
            responseHeader: true,

          ))
      );
    }
    return dio;
  }

}