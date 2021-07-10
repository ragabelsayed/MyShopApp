import 'package:flutter/material.dart';
import '../complete_profile/widget/body.dart';

class CompleteProfileScreen extends StatelessWidget {
  static const routName = '/complete_profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Body(),
    );
  }
}
