import 'package:flutter/material.dart';
import './complete_profile_form.dart';
import '/config/constants.dart';
import '/config/size.dart';

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
                'Complete Profile',
                style: AppConstents.headingStyle,
              ),
              Text(
                'Complete your details or continue \n with social media',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              CompleteProfileForm(),
              SizedBox(height: SizeConfig.getProportionateScreenHeight(30)),
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
