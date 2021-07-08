import 'package:flutter/material.dart';
import '/config/palette.dart';
import '/config/size.dart';

class SplashContent extends StatelessWidget {
  final String text;
  final String image;
  final bool fristSplash;
  const SplashContent({
    this.text = '',
    required this.image,
    this.fristSplash = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          'MYSHOP',
          style: TextStyle(
            fontSize: SizeConfig.getProportionateScreentWidth(36),
            color: Palette.kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        if (fristSplash)
          RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: [
                TextSpan(text: 'Welcome to '),
                TextSpan(
                  text: 'MyShop',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: ', Let\'s shop!'),
              ],
            ),
          ),
        if (!fristSplash)
          Text(
            text,
            textAlign: TextAlign.center,
          ),
        Spacer(flex: 2),
        Image(
          image: AssetImage(image),
          height: SizeConfig.getProportionateScreenHeight(365),
          width: SizeConfig.getProportionateScreentWidth(235),
        ),
      ],
    );
  }
}
