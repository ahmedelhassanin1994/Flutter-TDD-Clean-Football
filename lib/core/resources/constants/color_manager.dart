

import 'package:flutter/cupertino.dart';

class ColorManager{

  static Color primary=HexColor.fromHex("#201943");
  static Color darkGray=HexColor.fromHex("#F1F1F1");
  static Color grey=HexColor.fromHex("#737477");
  static Color lightGrey=HexColor.fromHex("#9EE9E9E");
  static Color primaryOpacity70=HexColor.fromHex("#B3ED9728");
  static Color black=HexColor.fromHex("#000000");
  static Color pink_light=HexColor.fromHex("#F9E4E7");
  static Color Brown_light=HexColor.fromHex("#C79CA6");
  static Color Brown=HexColor.fromHex("#825B64");
  static const dark = Color(0xFF313140);





  // new color

  static Color darkPrimary=HexColor.fromHex("#808080");
  static Color grey1=HexColor.fromHex("#707070");
  static Color grey2=HexColor.fromHex("#797979");
  static Color white=HexColor.fromHex("#FFFFFF");
  static Color error=HexColor.fromHex("#e61f34"); // red color


}

extension HexColor on Color{

  static Color fromHex(String hexcolorstring){
    hexcolorstring=hexcolorstring.replaceAll("#", "");
    if(hexcolorstring.length==6){
      hexcolorstring="ff"+hexcolorstring;
    }

    return Color(int.parse(hexcolorstring,radix: 16));
  }
}