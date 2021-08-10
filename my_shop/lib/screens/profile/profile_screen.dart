import 'package:flutter/material.dart';
import '/config/enums.dart';
import 'widget/body.dart';
import '../../../widget/custom_bottom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  static const routName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}
