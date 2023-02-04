


import 'package:mvvm_project/core/network/error_handler.dart';

class Failure{
 late int code; // 200 or 400
 late String message;

 Failure(this.code, this.message);
}

class DefaultFailure extends Failure{

 DefaultFailure() : super(ResponseCode.UNKNOWN,ResponseMessage.UNKNOWN);
}