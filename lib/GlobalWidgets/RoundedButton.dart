import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zaman_group_app/Constants/TextStyleConstants.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  final Color backgroundColor;
  final Color textColor;
  final double width;

  const RoundedButton({
    Key key,
    @required this.title,
    @required this.onPressed,
    this.backgroundColor = Colors.red,
    this.textColor = Colors.white,
    this.width = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: RaisedButton(
        elevation: 1,
        padding: EdgeInsets.symmetric(vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
          side: BorderSide(color: backgroundColor),
        ),
        onPressed: onPressed,
        color: backgroundColor,
        textColor: textColor,
        child: Text(
          title,
          style: AppTextStyle.boldTitle16,
        ),
      ),
    );
  }
}
