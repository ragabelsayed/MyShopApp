import 'package:flutter/material.dart';
import '/config/size.dart';
import 'section_title.dart';

class SpecialOffers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> _specialList = [
      {
        'image': 'assets/images/Image Banner 2.png',
        'category': 'Smartphone',
        'numOfBrands': 18,
      },
      {
        'image': 'assets/images/Image Banner 3.png',
        'category': 'Fashion',
        'numOfBrands': 24,
      },
    ];
    return Column(
      children: [
        SectionTitle(
          text: 'Special for you',
          press: () {},
        ),
        const SizedBox(height: 5),
        SizedBox(
          height: 100,
          width: double.infinity,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.horizontal,
            itemCount: _specialList.length,
            itemBuilder: (context, i) => SpecialOfferCard(
              category: _specialList[i]['category'],
              image: _specialList[i]['image'],
              numOfBrands: _specialList[i]['numOfBrands'],
              press: () {},
            ),
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  final String category;
  final String image;
  final int numOfBrands;
  final GestureTapCallback press;
  const SpecialOfferCard({
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: SizeConfig.getProportionateScreentWidth(240),
          // height: SizeConfig.getProportionateScreenHeight(100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0XFF343434).withOpacity(0.4),
                        Color(0XFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.getProportionateScreentWidth(15),
                      vertical: SizeConfig.getProportionateScreenHeight(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          category,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '$numOfBrands Brands',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
