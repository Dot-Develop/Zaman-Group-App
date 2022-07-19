import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zaman_group_app/Constants/ColorConstants.dart';
import 'package:zaman_group_app/Constants/CustomIcons.dart';
import 'package:zaman_group_app/Constants/TextStyleConstants.dart';

class TileHomeScreen extends StatelessWidget {
  final Widget secondWidget;

  const TileHomeScreen({Key key, this.secondWidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            alignment: Alignment.center,
            height: 55,
            color: PaletteColors.secondaryAppColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  AppIcons.pinkCellActive,
                  width: 25,
                  height: 25,
                  color: PaletteColors.greyTextField,
                  fit: BoxFit.contain,
                ),
                SizedBox(width: 10),
                Text(
                  "07502289291",
                  style: AppTextStyle.boldTitle22
                      .copyWith(color: Colors.white, fontFamily: 'RobotoReg'),
                ),
                SizedBox(width: 15),
                Icon(
                  AppIcons.myAccountSolidIcon,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Divider(
            height: 0,
            color: Colors.white,
          ),
          Container(
            height: 55,
            color: PaletteColors.redButtonColor,
            child: secondWidget,
          )
        ],
      ),
    );
  }
}
