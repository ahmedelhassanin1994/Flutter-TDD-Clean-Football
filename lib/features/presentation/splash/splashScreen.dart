import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_project/core/app_prefs.dart';
import 'package:mvvm_project/core/di.dart';
import 'package:mvvm_project/core/resources/constants/assets_manager.dart';
import 'package:mvvm_project/core/resources/constants/color_manager.dart';
import 'package:mvvm_project/core/resources/constants/fonts_manager.dart';
import 'package:mvvm_project/core/resources/constants/strings_manager.dart';
import 'package:mvvm_project/core/resources/constants/styles_manger.dart';
import 'package:mvvm_project/core/resources/router/router_path.dart';






class SplashScreen extends StatefulWidget {

  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {


  Timer? _timer;
  AppPreferences _sharedPreferences=instance<AppPreferences>();


  _startDelay(){
    _timer=Timer(Duration(seconds: 5), _goNext);
  }

   _goNext(){
     Navigator.pushReplacementNamed(context, Routes.home);
   }

  @override
  void initState() {
    _startDelay();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _timer?.cancel();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    // TODO: implement build
    return Scaffold(
      backgroundColor:ColorManager.primary,

      body:Center(
        child: Image.asset(ImageAssets.splashLogo

    )),
    );

  }
}
