
import 'package:dio/dio.dart';
import 'package:mvvm_project/core/network/failure.dart';

enum DataSource{
  SUCESS,
  NO_CONTENT,
  BAD_REQUEST,
  FORBIDDEN,
  UNAUTHORISED,
  NOT_FOUND,
  INTERNET_SERVER_ERROR,
  CONNECT_TIMEOUT,
  CANCEL,
  RECIVE_TIMEOUT,
  SEND_TIMEOUT,
  CACHERROR,
  NI_INTERNET_CONNECTION,
  UNKNOWN,
}

class ErrorHandler implements Exception{
  late Failure failure;
  ErrorHandler.handle(dynamic error){
    if(error is DioError){

      // dio error its error from response api
      failure=_handleError(error);

    }else{

      failure=DataSource.UNKNOWN.getFailure();
    }
  }

  Failure _handleError(DioError error){
     switch(error.type){

       case DioErrorType.connectTimeout:
         return DataSource.CONNECT_TIMEOUT.getFailure();

       case DioErrorType.sendTimeout:
         return DataSource.CONNECT_TIMEOUT.getFailure();

       case DioErrorType.receiveTimeout:
         return DataSource.CONNECT_TIMEOUT.getFailure();

       case DioErrorType.response:

          switch(error.response?.statusCode){
            case ResponseCode.BAD_REQUEST:
              return DataSource.BAD_REQUEST.getFailure();
            case ResponseCode.FORBIDDEN:
              return DataSource.FORBIDDEN.getFailure();
            case ResponseCode.UNAUTHORISED:
              return DataSource.UNAUTHORISED.getFailure();
            case ResponseCode.NOT_FOUND:
              return DataSource.NOT_FOUND.getFailure();
            case ResponseCode.INTERNET_SERVER_ERROR:
              return DataSource.INTERNET_SERVER_ERROR.getFailure();
            default:
              return DataSource.INTERNET_SERVER_ERROR.getFailure();

          }

       case DioErrorType.connectTimeout:

         return DataSource.CONNECT_TIMEOUT.getFailure();

       case DioErrorType.other:

         return DataSource.CONNECT_TIMEOUT.getFailure();

       default:

         return DataSource.CONNECT_TIMEOUT.getFailure();

     }
  }
}

extension DataSourceExtension on DataSource{
  Failure getFailure(){
    switch(this){

      case DataSource.BAD_REQUEST:
        
        return Failure(ResponseCode.BAD_REQUEST, ResponseMessage.BAD_REQUEST);
      case DataSource.UNAUTHORISED:

        return Failure(ResponseCode.UNAUTHORISED, ResponseMessage.UNAUTHORISED);

      case DataSource.NOT_FOUND:

        return Failure(ResponseCode.NOT_FOUND, ResponseMessage.NOT_FOUND);

      case DataSource.INTERNET_SERVER_ERROR:

        return Failure(ResponseCode.INTERNET_SERVER_ERROR, ResponseMessage.INTERNET_SERVER_ERROR);

      case DataSource.CONNECT_TIMEOUT:

        return Failure(ResponseCode.CONNECT_TIMEOUT, ResponseMessage.CONNECT_TIMEOUT);


      case DataSource.CANCEL:

        return Failure(ResponseCode.CANCEL, ResponseMessage.CANCEL);

      case DataSource.RECIVE_TIMEOUT:

        return Failure(ResponseCode.RECEIVE_TIMEOUT, ResponseMessage.RECEIVE_TIMEOUT);

      case DataSource.SEND_TIMEOUT:

        return Failure(ResponseCode.SEND_TIMEOUT, ResponseMessage.SEND_TIMEOUT);

      case DataSource.CACHERROR:

        return Failure(ResponseCode.CACHERROR, ResponseMessage.CACHERROR);


      case DataSource.NI_INTERNET_CONNECTION:

        return Failure(ResponseCode.NI_INTERNET_CONNECTION, ResponseMessage.NI_INTERNET_CONNECTION);

      default:

        return Failure(ResponseCode.UNKNOWN, ResponseMessage.UNKNOWN);

    }
  }
}
class ResponseCode{

  // Api Status code
  static const int SUCESS=200;
  static const int  NO_CONTENT=200;
  static const int BAD_REQUEST=400;
  static const int FORBIDDEN=403;
  static const int UNAUTHORISED=401;
  static const int NOT_FOUND=404;
  static const int INTERNET_SERVER_ERROR=500;

  // local status code
  static const int CONNECT_TIMEOUT=-1;
  static const int UNKNOWN=-2;
  static const int CANCEL=-3;
  static const int RECEIVE_TIMEOUT=-4;
  static const int SEND_TIMEOUT=-5;
  static const int CACHERROR=-6;
  static const int  NI_INTERNET_CONNECTION=-7;
}


class ResponseMessage{

  static const String SUCESS = "Sucess";
  static const String  NO_CONTENT="No Content";
  static const String BAD_REQUEST="Bad Request , try again later ";
  static const String FORBIDDEN="for Bidden , try again later";
  static const String UNAUTHORISED="user is unAuthorised , try again later";
  static const String NOT_FOUND="url is not found , try again later";
  static const String INTERNET_SERVER_ERROR="some thing wrong , try again later";

  // local status code
  static const String CONNECT_TIMEOUT="time out  , try again later";
  static const String UNKNOWN="some thing wrong , try again later";
  static const String CANCEL="request was canceled , try again later";
  static const String RECEIVE_TIMEOUT="time out error , try again later";
  static const String SEND_TIMEOUT="time out error , try again later";
  static const String CACHERROR="time out error , try again later";
  static const String  NI_INTERNET_CONNECTION="please check your internet connect";
}

class ApiInternalStatus{
  static const int Sucess = 200;
  static const int FAILURE=1;

}