import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_shop/config/palette.dart';
import '/config/size.dart';
import './sign_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  'Welcome Back',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: SizeConfig.getProportionateScreentWidth(28),
                  ),
                ),
                Text(
                  'Sign in with your email and password \n or continue with social media',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      svgIcon: 'assets/icons/facebook-2.svg',
                      onPressed: () {},
                    ),
                    SocialCard(
                      svgIcon: 'assets/icons/google-icon.svg',
                      onPressed: () {},
                    ),
                    SocialCard(
                      svgIcon: 'assets/icons/twitter.svg',
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(height: SizeConfig.getProportionateScreenHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account? ',
                      style: TextStyle(
                        fontSize: SizeConfig.getProportionateScreentWidth(16),
                      ),
                    ),
                    TextButton(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Palette.kPrimaryColor,
                          fontSize: SizeConfig.getProportionateScreentWidth(16),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SocialCard extends StatelessWidget {
  final String svgIcon;
  final Function onPressed;
  const SocialCard({
    required this.svgIcon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(),
      child: Container(
        // margin: EdgeInsets.symmetric(
        //     horizontal: SizeConfig.getProportionateScreentWidth(10)),
        // padding: EdgeInsets.all(SizeConfig.getProportionateScreentWidth(10)),
        // height: SizeConfig.getProportionateScreenHeight(40),
        // width: SizeConfig.getProportionateScreentWidth(40),
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(svgIcon),
      ),
    );
  }
}
