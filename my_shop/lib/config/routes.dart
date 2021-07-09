import 'package:flutter/material.dart';
import '/screens/splash/splash_screen.dart';
import '/screens/sign_in/sign_in_screen.dart';

class AppRoutes {
  static final Map<String, WidgetBuilder> routes = {
    SplashSCreen.routName: (ctx) => SplashSCreen(),
    SignInScreen.routName: (ctx) => SignInScreen(),
  };
}
