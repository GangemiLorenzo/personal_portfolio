import 'package:flutter/material.dart';

class MyTypography {
  MyTypography() {
    headline1 = const TextStyle(
      fontSize: 36.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.0,
      height: 1.38,
    );
    headline2 = const TextStyle(
      fontSize: 28.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.0,
      height: 1.30,
    );
    headline3 = const TextStyle(
      fontSize: 25.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.0,
      height: 1.27,
    );
    headline4 = const TextStyle(
      fontSize: 22.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.0,
      height: 1.25,
    );
    headline5 = const TextStyle(
      fontSize: 19.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.0,
      height: 1.22,
    );
    subtitle1 = const TextStyle(
      fontSize: 17.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.0,
      height: 1.19,
    );
    subtitle2 = const TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.0,
      height: 1.17,
    );
    bodyText1 = const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      height: 1.19,
    );
    bodyText2 = const TextStyle(
      fontSize: 13.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      height: 1.16,
    );
    button = const TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.0,
      height: 1.19,
    );
    caption = const TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      height: 1.14,
    );
    overline = const TextStyle(
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      height: 1.12,
    );
  }

  late TextStyle headline1;
  late TextStyle headline2;
  late TextStyle headline3;
  late TextStyle headline4;
  late TextStyle headline5;

  late TextStyle subtitle1;
  late TextStyle subtitle2;

  late TextStyle bodyText1;
  late TextStyle bodyText2;

  late TextStyle caption;
  late TextStyle button;
  late TextStyle overline;
}
