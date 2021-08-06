import 'package:flutter/material.dart';
import '/config/palette.dart';
import '/widget/rounded_icon_btn.dart';
import '/models/product.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    int selectedColor = 3;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ...List.generate(
            product.colors.length,
            (index) => ColorDot(
              color: product.colors[index],
              isSelected: selectedColor == index,
            ),
          ),
          Spacer(),
          RoundedIconBtn(
            icon: Icons.remove,
            press: () {},
          ),
          SizedBox(width: 15),
          RoundedIconBtn(
            icon: Icons.add,
            press: () {},
            showShadow: true,
          ),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? Palette.kPrimaryColor : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
