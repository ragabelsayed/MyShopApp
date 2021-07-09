import 'package:flutter/material.dart';
import './widget/body.dart';

class SignInScreen extends StatelessWidget {
  static const routName = '/sign_in';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Body(),
    );
  }
}
