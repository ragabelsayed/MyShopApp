import 'package:flutter/material.dart';
import 'package:my_shop/screens/sign_up/sign_up_screen.dart';
import '/config/palette.dart';
import '/config/size.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
          onPressed: () => Navigator.pushNamed(context, SignUpScreen.routName),
        ),
      ],
    );
  }
}
