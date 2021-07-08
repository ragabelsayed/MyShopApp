import 'package:flutter/material.dart';
import 'package:my_shop/config/constants.dart';
import '/widget/default_btn.dart';
import '/config/palette.dart';
import './splash_content.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> _splashData = [
      {
        'text': '',
        'image': 'assets/images/splash_1.png',
      },
      {
        'text':
            'We help people connect with store \naround United State of America',
        'image': 'assets/images/splash_2.png'
      },
      {
        'text': 'We show the easy way to shop. \nJust stay at home with us',
        'image': 'assets/images/splash_3.png'
      }
    ];

    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: PageView.builder(
              itemCount: _splashData.length,
              onPageChanged: (value) {
                setState(() {
                  _currentPage = value;
                });
              },
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => SplashContent(
                text: _splashData[index]['text']!,
                image: _splashData[index]['image']!,
                fristSplash: _splashData[index]['text']!.isEmpty ? true : false,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      _splashData.length,
                      (index) => _buildDot(index),
                    ),
                  ),
                  Spacer(flex: 2),
                  DefaultButton(
                    text: 'Continue',
                    onPressed: () => null,
                  ),
                  Spacer(flex: 1),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer _buildDot(int index) {
    return AnimatedContainer(
      duration: Constents.kAnimationDuration,
      height: 6,
      width: _currentPage == index ? 20 : 6,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color:
            _currentPage == index ? Palette.kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
