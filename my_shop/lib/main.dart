import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_shop/screens/cart/profile/profile_screen.dart';
import 'config/routes.dart';
import 'config/theme.dart';
import 'screens/splash/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
    ),
  );
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Shop',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      // home: SplashSCreen(),
      initialRoute: ProfileScreen.routName,
      // initialRoute: SplashSCreen.routName,
      routes: AppRoutes.routes,
    );
  }
}
