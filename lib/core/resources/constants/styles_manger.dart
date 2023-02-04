
import 'package:flutter/cupertino.dart';
import 'package:mvvm_project/core/resources/constants/fonts_manager.dart';

TextStyle _getTextStyle(double fontSize,String fontFamily,Color color,FontWeight fontWeight){
  return TextStyle(
    fontSize: fontSize,
    fontFamily:fontFamily,
    color: color,
    fontWeight: fontWeight
  );
}


// regular style
TextStyle getRegularStyle({double fontSize = FontSize.s12,required Color color}){
  return _getTextStyle(fontSize, FontsConstants.fonts_Family, color, FontsManager.regular);
}


// light style
TextStyle getLightStyle({double fontSize = FontSize.s12,required Color color}){
  return _getTextStyle(fontSize, FontsConstants.fonts_Family, color, FontsManager.light);
}

// bold style
TextStyle getBoldStyle({double fontSize = FontSize.s12,required Color color}){
  return _getTextStyle(fontSize, FontsConstants.fonts_Family, color, FontsManager.bold);
}

// semi Bold style
TextStyle getSemiBoldStyle({double fontSize = FontSize.s12,required Color color}){
  return _getTextStyle(fontSize, FontsConstants.fonts_Family, color, FontsManager.semiBold);
}

// medium style
TextStyle getMediumStyle({double fontSize = FontSize.s12,required Color color}){
  return _getTextStyle(fontSize, FontsConstants.fonts_Family, color, FontsManager.medium);
}