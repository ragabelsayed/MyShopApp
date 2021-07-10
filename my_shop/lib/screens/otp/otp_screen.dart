import 'package:flutter/material.dart';
import './widget/body.dart';

class OTPScreen extends StatelessWidget {
  static const routName = '/otp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Verification'),
      ),
      body: Body(),
    );
  }
}
