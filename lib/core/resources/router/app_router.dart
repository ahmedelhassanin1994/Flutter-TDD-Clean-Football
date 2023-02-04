import 'package:flutter/material.dart';
import 'package:mvvm_project/core/resources/constants/strings_manager.dart';
import 'package:mvvm_project/core/resources/router/router_path.dart';
import 'package:mvvm_project/features/domain/model/model.dart';
import 'package:mvvm_project/features/presentation/home/home_screen.dart';
import 'package:mvvm_project/features/presentation/splash/splashScreen.dart';
import 'package:page_transition/page_transition.dart';

import '../../../core/di.dart';


class RouteGenerator {

 static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.all_routs:
      // return PageTransition(child: SplashScreen(), type: PageTransitionType.scale);
        return _generateMaterialRoute(SplashScreen());



      case Routes.home:
        initLoginModel();
        return _generateMaterialRoute(HomeScreen());

        default:
         return unDefinedRoute();
    }
  }


  static Route<dynamic>unDefinedRoute(){
    return MaterialPageRoute(
      builder: (_)=>Scaffold(
        appBar: AppBar(
          title: Text(AppStrings.noRouteFound),
        ),
        body: Center(child: Text(AppStrings.noRouteFound),),
      )
    );
  }
}




PageTransition _generateMaterialRoute(Widget screen) {
  return PageTransition(child: screen, type: PageTransitionType.rightToLeft);
}
