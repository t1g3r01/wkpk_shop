import 'package:flutter/material.dart';
import 'package:wkpk_shop/routeGenerator.dart';
import 'package:wkpk_shop/screens/splash.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (_, ThemeMode currentTheme, __) => MaterialApp(
        theme: FlexThemeData.light(scheme: FlexScheme.damask),
        darkTheme: FlexThemeData.dark(scheme: FlexScheme.barossa),
        debugShowCheckedModeBanner: false,
        initialRoute: SplashScreen.rn,
        onGenerateRoute: RouteGenerator.routeGenerator,
        themeMode: currentTheme,
      ),
    );
  }
}
