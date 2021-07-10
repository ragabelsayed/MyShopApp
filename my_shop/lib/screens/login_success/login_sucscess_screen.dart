import 'package:flutter/material.dart';
import '../login_success/widget/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static const routName = '/login_success';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text('Login Success'),
      ),
      body: Body(),
    );
  }
}
