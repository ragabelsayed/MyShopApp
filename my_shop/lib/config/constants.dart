import 'package:flutter/material.dart';
import 'package:my_shop/config/palette.dart';
import '/config/size.dart';

class AppConstents {
  static const kAnimationDuration = Duration(milliseconds: 200);

  static final headingStyle = TextStyle(
    fontSize: SizeConfig.getProportionateScreentWidth(28),
    fontWeight: FontWeight.bold,
    color: Colors.black,
    height: 1.5,
  );

  // Form Error
  static final RegExp emailValidatorRegExp =
      RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  static const String kEmailNullError = "Please Enter your email";
  static const String kInvalidEmailError = "Please Enter Valid Email";
  static const String kPassNullError = "Please Enter your password";
  static const String kShortPassError = "Password is too short";
  static const String kMatchPassError = "Passwords don't match";
  static const String kNamelNullError = "Please Enter your name";
  static const String kPhoneNumberNullError = "Please Enter your phone number";
  static const String kAddressNullError = "Please Enter your address";

  static final otpInputDecoration = InputDecoration(
    contentPadding: EdgeInsets.symmetric(
        vertical: SizeConfig.getProportionateScreentWidth(15)),
    border: outlineInputBorder(),
    focusedBorder: outlineInputBorder(),
    enabledBorder: outlineInputBorder(),
  );

  static OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius:
          BorderRadius.circular(SizeConfig.getProportionateScreentWidth(15)),
      borderSide: BorderSide(color: Palette.kTextColor),
    );
  }
}
