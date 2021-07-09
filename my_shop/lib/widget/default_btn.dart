import 'package:flutter/material.dart';
import '../config/palette.dart';
import '../config/size.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  const DefaultButton({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: SizeConfig.getProportionateScreenHeight(56),
      child: ElevatedButton(
        child: Text(
          text,
          style: TextStyle(
            fontSize: SizeConfig.getProportionateScreentWidth(18),
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: Palette.kPrimaryColor,
          // elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
        onPressed: () => onPressed(),
      ),
    );
  }
}
