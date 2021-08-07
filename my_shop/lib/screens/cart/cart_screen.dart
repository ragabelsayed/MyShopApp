import 'package:flutter/material.dart';
import './widget/body.dart';

class CartScreen extends StatelessWidget {
  static const routName = '/cart';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              'Your Cart',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              '4 items',
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      ),
      body: Body(),
    );
  }
}
