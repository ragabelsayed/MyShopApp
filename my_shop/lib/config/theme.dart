import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/config/palette.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Muli',
    appBarTheme: _appBarTheme(),
    textTheme: _textTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

TextTheme _textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: Palette.kTextColor),
    bodyText2: TextStyle(color: Palette.kTextColor),
  );
}

AppBarTheme _appBarTheme() {
  return AppBarTheme(
    color: Colors.white,
    elevation: 0.0,
    centerTitle: true,
    systemOverlayStyle: SystemUiOverlayStyle.light,
    iconTheme: IconThemeData(color: Colors.black),
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Color(0XFF8B8B8B),
        fontSize: 18,
      ),
    ),
  );
}
