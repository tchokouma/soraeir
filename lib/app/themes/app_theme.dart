import 'package:flutter/material.dart';

import 'light_color.dart';

class AppTheme {
  static ThemeData themeWithText = ThemeData(
    // Define the default brightness and colors.
    brightness: Brightness.dark,
    primaryColor: Colors.lightBlue[800],

    // Define the default font family.
    fontFamily: 'nunitoSans',

    // Define the default `TextTheme`. Use this to specify the default
    // text styling for headlines, titles, bodies of text, and more.
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
      headline2: TextStyle(fontSize: 22.0, fontStyle: FontStyle.italic),
      headline3: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
      headline4: TextStyle(
          fontSize: 16.0,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.normal),
      headline5: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      headline6: TextStyle(fontSize: 14.0, fontStyle: FontStyle.italic),
      bodyText1: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
      bodyText2: TextStyle(fontSize: 10.0, fontFamily: 'Hind'),
    ),
  );

  static ThemeData themeBlackText = ThemeData(
    // Define the default brightness and colors.
    brightness: Brightness.dark,
    primaryColor: LightColor.blackColor,

    // Define the default font family.
    fontFamily: 'nunitoSans',

    // Define the default `TextTheme`. Use this to specify the default
    // text styling for headlines, titles, bodies of text, and more.
    textTheme: TextTheme(
      headline1: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: LightColor.blackColor),
      headline2: TextStyle(
          fontSize: 22.0,
          fontStyle: FontStyle.italic,
          color: LightColor.blackColor),
      headline3: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: LightColor.blackColor),
      headline4: TextStyle(
          fontSize: 18.0,
          fontStyle: FontStyle.italic,
          color: LightColor.blackColor),
      headline5: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: LightColor.blackColor),
      headline6: TextStyle(
          fontSize: 14.0,
          fontStyle: FontStyle.italic,
          color: LightColor.blackColor),
      bodyText1: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.bold,
          color: LightColor.blackColor),
      bodyText2: TextStyle(
          fontSize: 10.0, fontFamily: 'Hind', color: LightColor.blackColor),
    ),
  );

  // static ThemeData lightTheme = ThemeData(
  //     backgroundColor: LightColor.whiteColor,
  //     primaryColor: LightColor.whiteColor,
  //     cardTheme: CardTheme(color: LightColor.turquoiseColor),
  //     textTheme: TextTheme(bodyText1: TextStyle(color: LightColor.blackColor)),
  //     iconTheme: IconThemeData(color: LightColor.blackColor),
  //     bottomAppBarColor: LightColor.whiteColor,
  //     dividerColor: LightColor.lightGrey,
  //     primaryTextTheme:
  //     TextTheme(bodyText1: TextStyle(color: LightColor.titleTextColor)));

}
