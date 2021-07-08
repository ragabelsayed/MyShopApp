import 'package:flutter/material.dart';
import '/config/size.dart';
import '../splash/widget/body.dart';

class SplashSCreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Body(),
      ),
    );
  }
}
