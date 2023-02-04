


import 'package:mvvm_project/features/data/mapper/mapper.dart';

extension NonNullString on String?{
  String orEmpty(){
    if(this == null){
      return EMPTY;

    }else
      return this!;
  }
}

extension NonNullInteger on int?{
  int orZero(){
    if(this == null){
      return ZERO;

    }else
      return this!;
  }
}

extension NonNullBool on bool?{
  bool orBool(){
    if(this == null){
      return STATUS;

    }else
      return this!;
  }
}