import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/config/palette.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    required this.icon,
    required this.title,
    required this.press,
  });

  final String icon;
  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ListTile(
        tileColor: Color(0xFFF5F6F9),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        leading: SvgPicture.asset(
          icon,
          color: Palette.kPrimaryColor,
          width: 22,
        ),
        title: Text(title),
        trailing: IconButton(
          splashRadius: 20,
          icon: Icon(Icons.arrow_forward_ios),
          onPressed: () => press,
        ),
      ),
    );
  }
}
