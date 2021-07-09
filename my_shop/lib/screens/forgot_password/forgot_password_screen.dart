import 'package:flutter/material.dart';
import '../forgot_password/widget/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static const routName = '/forgot_password';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
      ),
      body: Body(),
    );
  }
}
