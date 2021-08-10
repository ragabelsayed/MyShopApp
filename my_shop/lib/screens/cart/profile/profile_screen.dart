import 'package:flutter/material.dart';
import 'widget/body.dart';

class ProfileScreen extends StatelessWidget {
  static const routName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Body(),
    );
  }
}
