import 'package:flutter/material.dart';
import '/config/palette.dart';
import '/config/constants.dart';
import '/config/size.dart';
import 'otp_form.dart';

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
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Text(
                'OTP Verification',
                style: AppConstents.headingStyle,
              ),
              Text('We Sent your code to +1 898 860 ***'),
              _buildTimer(),
              SizedBox(height: SizeConfig.screenHeight * 0.15),
              OTPForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Resend OTP Code',
                  style: TextStyle(
                    color: Colors.grey,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row _buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('This code will expired in '),
        TweenAnimationBuilder(
          tween: Tween<double>(begin: 30.0, end: 0.0),
          duration: const Duration(seconds: 30),
          builder: (context, value, child) {
            double count = value as double;
            return Text(
              '00:${count.toInt()}',
              style: TextStyle(color: Palette.kPrimaryColor),
            );
          },
          onEnd: () {},
        ),
      ],
    );
  }
}
