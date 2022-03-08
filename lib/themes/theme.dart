import 'package:flutter/material.dart';

ThemeData mainTheme = ThemeData(
// Define the default brightness and colors.
    brightness: Brightness.light,
    primaryColor: Colors.lightBlue[800],
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.blueAccent[400]
    ),
  // Define the default font family.
    fontFamily: 'Oswald',

  // Define the default `TextTheme`. Use this to specify the default
  // text styling for headlines, titles, bodies of text, and more.
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Oswald'),
    ),
);
