import 'package:flutter/material.dart';
import 'profile_item.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> _profItems = [
      {'icon': 'assets/icons/User.svg', 'title': 'My Account'},
      {'icon': 'assets/icons/Bell.svg', 'title': 'Notifications'},
      {'icon': 'assets/icons/Settings.svg', 'title': 'Settings'},
      {'icon': 'assets/icons/Question mark.svg', 'title': 'Help Center'},
      {'icon': 'assets/icons/Log out.svg', 'title': 'Log out'},
    ];

    return Column(
      children: [
        const SizedBox(height: 20),
        ProfilePic(),
        const SizedBox(height: 30),
        ...List.generate(
          _profItems.length,
          (i) => ProfileItem(
            icon: '${_profItems[i]['icon']}',
            title: '${_profItems[i]['title']}',
            press: () {},
          ),
        )
      ],
    );
  }
}
