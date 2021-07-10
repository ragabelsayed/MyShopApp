import 'package:flutter/material.dart';
import '../widget/sign_up_form.dart';
import '/config/size.dart';
import '/widget/social_card.dart';
import '/config/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Text(
                'Register Account',
                style: AppConstents.headingStyle,
              ),
              Text(
                'Complete your details or continue \n with social media',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.07),
              SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.07),
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
              Text(
                'By continuing your confirm that you agree \n with our Term and Condition',
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
