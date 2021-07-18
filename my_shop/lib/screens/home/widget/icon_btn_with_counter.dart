import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/config/palette.dart';
import '/config/size.dart';

class IconBtnWithCounter extends StatelessWidget {
  final int numOfItems;
  final String svgSrc;
  final GestureTapCallback press;

  const IconBtnWithCounter({
    this.numOfItems = 0,
    required this.svgSrc,
    required this.press,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(12),
            width: SizeConfig.getProportionateScreentWidth(46),
            height: SizeConfig.getProportionateScreenHeight(46),
            decoration: BoxDecoration(
              color: Palette.kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svgSrc),
          ),
          if (numOfItems != 0)
            Positioned(
              top: -3,
              right: 0,
              child: Container(
                width: SizeConfig.getProportionateScreentWidth(18),
                height: SizeConfig.getProportionateScreenHeight(18),
                decoration: BoxDecoration(
                  color: Color(0xFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 1.5,
                    color: Colors.white,
                  ),
                ),
                child: Center(
                  child: Text(
                    '$numOfItems',
                    style: TextStyle(
                      height: 1,
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
