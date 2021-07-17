import 'package:flutter/material.dart';
import '/config/palette.dart';
import '/config/size.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.6,
      // height: 50,
      decoration: BoxDecoration(
        color: Palette.kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: 'Search Product',
          prefixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.symmetric(
            horizontal: SizeConfig.getProportionateScreentWidth(20),
            vertical: SizeConfig.getProportionateScreentWidth(9),
          ),
        ),
        onChanged: (value) {
          // search value
        },
      ),
    );
  }
}
