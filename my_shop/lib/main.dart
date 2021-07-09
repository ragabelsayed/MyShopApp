import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_shop/config/palette.dart';
import 'package:my_shop/config/routes.dart';
import 'package:my_shop/screens/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Muli',
        appBarTheme: AppBarTheme(
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
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Palette.kTextColor),
          bodyText2: TextStyle(color: Palette.kTextColor),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: SplashSCreen(),
      initialRoute: SplashSCreen.routName,
      routes: AppRoutes.routes,
    );
  }
}
