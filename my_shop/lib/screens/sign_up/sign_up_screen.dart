import 'package:flutter/material.dart';
import '../sign_up/widget/body.dart';

class SignUpScreen extends StatelessWidget {
  static const routName = '/sign_up';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign Up')),
      body: Body(),
    );
  }
}
