import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String text;
  final GestureTapCallback press;
  const SectionTitle({
    required this.text,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        TextButton(
          child: Text(
            'See More',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          onPressed: press,
        ),
      ],
    );
  }
}
