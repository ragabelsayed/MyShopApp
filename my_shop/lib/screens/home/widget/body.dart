import 'package:flutter/material.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'product_card.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              HomeHeader(),
              const SizedBox(height: 20),
              DiscountBanner(),
              const SizedBox(height: 20),
              Categories(),
              const SizedBox(height: 20),
              SpecialOffers(),
              const SizedBox(height: 20),
              PopularProducts(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
