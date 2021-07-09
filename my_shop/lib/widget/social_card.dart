import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
