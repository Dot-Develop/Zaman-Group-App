import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zaman_group_app/Constants/ColorConstants.dart';
import 'package:zaman_group_app/Constants/CustomIcons.dart';
import 'package:zaman_group_app/Constants/TextStyleConstants.dart';

class MainCategoryCard extends StatelessWidget {
  final String text;
  final String svgIcon;
  final Function onPressed;

  MainCategoryCard(
      {@required this.text, @required this.svgIcon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(2),
        border: Border.all(
          width: 1,
          color: Colors.grey.withOpacity(0.2),
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 0))
        ],
      ),
      child: MaterialButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        height: 200,
        elevation: 0,
        highlightColor: Colors.deepPurple.withOpacity(0.3),
        color: Colors.white,
        onPressed: onPressed,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            getAppIcons(asset: svgIcon),
            SizedBox(height: 8),
            Text(
              text,
              style: AppTextStyle.mainCategoryTextStyle,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
