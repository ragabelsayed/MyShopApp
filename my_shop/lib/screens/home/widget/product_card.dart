import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_shop/providers/api.dart';

import '/config/palette.dart';
import '/config/size.dart';
import '/models/product.dart';
import 'section_title.dart';

class PopularProducts extends StatefulWidget {
  @override
  _PopularProductsState createState() => _PopularProductsState();
}

class _PopularProductsState extends State<PopularProducts> {
  bool _isInit = true;
  bool _isLoading = false;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });
      API.fetchAndSetData().then((_) => setState(() => _isLoading = false));
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: 'Popular Product',
          press: () {},
        ),
        const SizedBox(height: 5),
        _isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : SizedBox(
                height: 230,
                width: double.infinity,
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  scrollDirection: Axis.horizontal,
                  itemCount: demoProducts.length,
                  itemBuilder: (context, i) => ProductCard(
                    product: demoProducts[i],
                  ),
                ),
              ),
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: SizedBox(
        width: SizeConfig.getProportionateScreentWidth(140),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {},
              child: AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Palette.kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.network(product.images.first),
                  // child: Image.asset(product.images.first),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              product.title,
              style: TextStyle(color: Colors.black),
              maxLines: 2,
            ),
            Expanded(child: SizedBox()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$${product.price}',
                  style: TextStyle(
                    color: Palette.kPrimaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    height: 28,
                    width: 28,
                    decoration: BoxDecoration(
                      color: product.isFavourite
                          ? Palette.kPrimaryColor.withOpacity(0.15)
                          : Palette.kSecondaryColor.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/Heart Icon_2.svg',
                      color: product.isFavourite
                          ? Color(0XFFFF4848)
                          : Color(0XFFDBDEE4),
                    ),
                  ),
                ),
                // IconButton(
                //   onPressed: () {},
                //   splashRadius: 20,
                //   icon: SvgPicture.asset(
                //     'assets/icons/Heart Icon_2.svg',
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
