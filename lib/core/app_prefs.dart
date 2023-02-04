
import 'package:mvvm_project/core/resources/constants/langouage_manger.dart';
import 'package:shared_preferences/shared_preferences.dart';



const String PREFS_KEY_LANG="PREFS_KEY_LANG";
const String PREFS_KEY_ONBORDING_SCREEN="PREFS_KEY_ONBORDING_SCREEN";
const String PREFS_KEY_IS_USER_LOGGED_IN="PREFS_KEY_IS_USER_LOGGED_IN";


class AppPreferences{

 late SharedPreferences _sharedPreferences;

 AppPreferences(this._sharedPreferences);

 Future<String> getAppLanguage() async{
   String? language=_sharedPreferences.getString(PREFS_KEY_LANG);

   if(language !=null && language.isNotEmpty){

     return language;
   }else{
     return LanguageType.ENGLISH.getValue();
   }
 }


 Future<void> setOnBordingScreenView() async{
     _sharedPreferences.setBool(PREFS_KEY_ONBORDING_SCREEN,true);
 }

 Future<void> setIsUserLoggedIn() async{
   _sharedPreferences.setBool(PREFS_KEY_IS_USER_LOGGED_IN,true);
 }

 Future<bool> isOnBordingScreenView() async{
  return  _sharedPreferences.getBool(PREFS_KEY_ONBORDING_SCREEN) ?? false;
 }

 Future<bool> isUserLoggedIn() async{
   return  _sharedPreferences.getBool(PREFS_KEY_IS_USER_LOGGED_IN) ?? false;
 }
}