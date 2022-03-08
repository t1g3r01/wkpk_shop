import 'package:flutter/material.dart';
import 'package:transition_x/transition_x.dart';
import 'package:wkpk_shop/screens/home.dart';
import 'package:wkpk_shop/screens/snack_screen.dart';
import 'package:wkpk_shop/screens/splash.dart';

class RouteGenerator{
  static Route<dynamic> routeGenerator(RouteSettings settings){
    //final args = settings.arguments;
    switch(settings.name){
      case Home.rn:
        return TransitionX(
          widget: const Home(),
          transitionType: TransitionType.slideToLeftWithFade,
          bounce: false,
          duration: const Duration(milliseconds: 500)
        );
      case SnackScreen.rn:
        return TransitionX(
            widget: const SnackScreen(),
            transitionType: TransitionType.slideToLeftWithFade,
            bounce: false,
            duration: const Duration(milliseconds: 500)
        );
      case SplashScreen.rn:
        return MaterialPageRoute(builder: (_)=> SplashScreen());
      default:
        return MaterialPageRoute(builder: (_)=>const Home());
    }
  }
}