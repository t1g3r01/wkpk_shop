import "package:flutter/material.dart";
import 'package:wkpk_shop/screens/home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String rn = "/splashScreen";
  _goToHomeScreen(BuildContext context){
      Future.delayed(const Duration(seconds: 2))
          .then((value) => Navigator.pushNamedAndRemoveUntil(
        context,
        Home.rn,
            (route) => false,
      ));
  }
  @override
  Widget build(BuildContext context) {
    _goToHomeScreen(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              "assets/images/logo/logo.png",
              width: 150,
              height: 100,
              fit: BoxFit.cover,
            ),
          )),
          const SizedBox(
            height: 30,
          ),
          const CircularProgressIndicator(
            color: Colors.pink,
          )
        ],
      ),
    );
  }
}

