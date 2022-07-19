import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zaman_group_app/Constants/ColorConstants.dart';

void showAlertBar(BuildContext context) {
  Flushbar(
    icon: Icon(
      FontAwesomeIcons.exclamationTriangle,
      color: Colors.white,
    ),
    padding: EdgeInsets.all(20),
    margin: EdgeInsets.all(8),
    borderRadius: 10,
    message: "هەڵەیەک هەیە: لە کاتی تؤمارکردنی زانیارییەکان",
    backgroundGradient: LinearGradient(
      colors: [
        PaletteColors.mainAppColor,
        PaletteColors.secondaryAppColor,
      ],
    ),
    backgroundColor: Colors.red,
    boxShadows: [
      BoxShadow(
        color: PaletteColors.mainAppColor,
        offset: Offset(0.0, 2.0),
        blurRadius: 3.0,
      )
    ],
  )..show(context);
}
