import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/config/size.dart';

class CustomSuffixIcon extends StatelessWidget {
  final String svgIcon;
  const CustomSuffixIcon({
    required this.svgIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        SizeConfig.getProportionateScreenHeight(20),
        SizeConfig.getProportionateScreenHeight(20),
        SizeConfig.getProportionateScreenHeight(20),
      ),
      child: SvgPicture.asset(
        svgIcon,
        height: SizeConfig.getProportionateScreenHeight(18),
      ),
    );
  }
}
