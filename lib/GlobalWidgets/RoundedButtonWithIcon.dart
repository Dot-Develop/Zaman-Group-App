import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zaman_group_app/Constants/TextStyleConstants.dart';

class RoundedButtonWithIcon extends StatelessWidget {
  final String title;
  final Function onPressed;
  final Color color;
  final IconData icon;
  final double elevation;
  final double height;

  const RoundedButtonWithIcon({
    Key key,
    @required this.title,
    @required this.onPressed,
    @required this.icon,
    this.elevation = 4.0,
    this.height = 40.0,
    this.color = Colors.red,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: height,
      elevation: elevation,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: BorderSide(color: color)),
      onPressed: onPressed,
      color: color,
      textColor: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: color == Colors.red ? Colors.white : Colors.black45,
          ),
          SizedBox(
            width: 6,
          ),
          Text(title,
              style: AppTextStyle.boldTitle14.copyWith(
                  color: color == Colors.red ? Colors.white : Colors.black87)),
        ],
      ),
    );
  }
}
