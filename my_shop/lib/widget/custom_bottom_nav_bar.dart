import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/config/enums.dart';
import '/config/palette.dart';
import '/screens/home/home_screen.dart';
import '/screens/profile/profile_screen.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    required this.selectedMenu,
  });
  final MenuState selectedMenu;
  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.3),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: SvgPicture.asset(
                'assets/icons/Shop Icon.svg',
                color: MenuState.home == selectedMenu
                    ? Palette.kPrimaryColor
                    : inActiveIconColor,
              ),
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, HomeScreen.routeName),
            ),
            IconButton(
              icon: SvgPicture.asset(
                'assets/icons/Heart Icon.svg',
                color: MenuState.favourite == selectedMenu
                    ? Palette.kPrimaryColor
                    : inActiveIconColor,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset(
                'assets/icons/Chat bubble Icon.svg',
                color: MenuState.message == selectedMenu
                    ? Palette.kPrimaryColor
                    : inActiveIconColor,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset(
                'assets/icons/User.svg',
                color: MenuState.profile == selectedMenu
                    ? Palette.kPrimaryColor
                    : inActiveIconColor,
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, ProfileScreen.routName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
