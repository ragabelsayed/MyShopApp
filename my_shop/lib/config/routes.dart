import 'package:flutter/material.dart';
import '/screens/splash/splash_screen.dart';
import '/screens/sign_in/sign_in_screen.dart';
import '/screens/forgot_password/forgot_password_screen.dart';
import '/screens/login_success/login_sucscess_screen.dart';
import '/screens/sign_up/sign_up_screen.dart';
import '/screens/complete_profile/complete_profile_screen.dart';
import '/screens/otp/otp_screen.dart';
import '/screens/home/home_screen.dart';
import '/screens/product_details/product_details_screen.dart';

class AppRoutes {
  static final Map<String, WidgetBuilder> routes = {
    SplashSCreen.routName: (ctx) => SplashSCreen(),
    SignInScreen.routName: (ctx) => SignInScreen(),
    ForgotPasswordScreen.routName: (ctx) => ForgotPasswordScreen(),
    LoginSuccessScreen.routName: (ctx) => LoginSuccessScreen(),
    SignUpScreen.routName: (ctx) => SignUpScreen(),
    CompleteProfileScreen.routName: (ctx) => CompleteProfileScreen(),
    OTPScreen.routName: (ctx) => OTPScreen(),
    HomeScreen.routeName: (ctx) => HomeScreen(),
    ProductDetailScreen.routName: (ctx) => ProductDetailScreen(),
  };
}
