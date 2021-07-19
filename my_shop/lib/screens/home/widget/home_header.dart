import 'package:flutter/material.dart';
import 'search_field.dart';
import 'icon_btn_with_counter.dart';

class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            svgSrc: 'assets/icons/Cart Icon.svg',
            press: () {},
          ),
          IconBtnWithCounter(
            numOfItems: 3,
            svgSrc: 'assets/icons/Bell.svg',
            press: () {},
          ),
        ],
      ),
    );
  }
}
