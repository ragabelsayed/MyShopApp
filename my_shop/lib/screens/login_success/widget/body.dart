import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_shop/config/size.dart';
import 'package:my_shop/widget/default_btn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset('assets/images/success.png'),
        Text(
          'Login Success',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: SizeConfig.getProportionateScreentWidth(30),
          ),
        ),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: 'Back to home',
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
