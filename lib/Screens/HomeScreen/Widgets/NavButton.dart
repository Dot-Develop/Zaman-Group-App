import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zaman_group_app/GlobalWidgets/Responsive.dart';

class NavButton extends StatelessWidget {
  final IconData icon;

  const NavButton({Key key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: Responsive.isMobile(context) ? 30 : 40,
      color: Colors.white,
    );
  }
}
