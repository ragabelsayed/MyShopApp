import 'package:flutter/material.dart';
import 'package:my_shop/config/enums.dart';
import 'package:my_shop/widget/custom_bottom_nav_bar.dart';
import 'widget/body.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
