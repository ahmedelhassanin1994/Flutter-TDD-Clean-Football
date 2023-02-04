

enum LanguageType{
  ENGLISH,
  ARABIC
}

const String Arabic="ar";
const String English="en";
extension LanguageTypeExtension on LanguageType{

  String getValue(){
    switch(this){
      case LanguageType.ENGLISH:

        return English;

      case LanguageType.ARABIC:

        return Arabic;
    }
  }
}