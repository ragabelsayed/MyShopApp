import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/config/palette.dart';
import '/models/product.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            product.title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        const SizedBox(height: 5),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            height: 50,
            width: 70,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color:
                  product.isFavourite ? Color(0xFFFFE6E6) : Color(0xFFF5F6F9),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: SvgPicture.asset(
              'assets/icons/Heart Icon_2.svg',
              color:
                  product.isFavourite ? Color(0xFFFF4848) : Color(0xFFDBDEE4),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 60),
          child: Text(
            product.description,
            maxLines: 3,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: TextButton(
            onPressed: () {},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'See More Detail',
                  style: TextStyle(
                    color: Palette.kPrimaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: Palette.kPrimaryColor,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
