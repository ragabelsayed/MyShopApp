import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> _categories = [
      {
        'icon': 'assets/icons/Flash Icon.svg',
        'text': 'Flash Deal',
      },
      {
        'icon': 'assets/icons/Bill Icon.svg',
        'text': 'Bill',
      },
      {
        'icon': 'assets/icons/Game Icon.svg',
        'text': 'Game',
      },
      {
        'icon': 'assets/icons/Gift Icon.svg',
        'text': 'Daily Gift',
      },
      {
        'icon': 'assets/icons/Discover.svg',
        'text': 'More',
      }
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          _categories.length,
          (i) => CategoryCard(
            icon: _categories[i]['icon'],
            text: _categories[i]['text'],
            press: () {},
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String icon;
  final String text;
  final GestureTapCallback press;

  const CategoryCard({
    required this.icon,
    required this.text,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 55,
      child: Column(
        children: [
          GestureDetector(
            onTap: press,
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0XFFFFECDF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(icon),
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            text,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
