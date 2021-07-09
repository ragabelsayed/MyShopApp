import 'package:flutter/material.dart';

import '/widget/no_account_text.dart';
import '/widget/social_card.dart';
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
                NoAccountText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
