import 'package:flutter/material.dart';
import 'config/routes.dart';
import 'config/theme.dart';
import 'screens/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Shop',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      // home: SplashSCreen(),
      initialRoute: SplashSCreen.routName,
      routes: AppRoutes.routes,
    );
  }
}
