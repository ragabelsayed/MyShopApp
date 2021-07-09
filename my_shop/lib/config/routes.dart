import 'package:flutter/material.dart';
import '../screens/splash/splash_screen.dart';

class AppRoutes {
  static final Map<String, WidgetBuilder> routes = {
    SplashSCreen.routName: (ctx) => SplashSCreen(),
  };
}
