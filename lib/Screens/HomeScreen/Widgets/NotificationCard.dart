import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zaman_group_app/Constants/ColorConstants.dart';
import 'package:zaman_group_app/Constants/TextStyleConstants.dart';

class NotificationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.fromLTRB(14, 5, 14, 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(
                "https://yt3.ggpht.com/a/AATXAJz_h8Bhv1mL10pAHlhtgxEwXJt2vdoBnapvmF-dBw=s900-c-k-c0xffffffff-no-rj-mo"),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Notification Title', style: AppTextStyle.boldTitle18),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic",
                  style: AppTextStyle.regularTitle14.copyWith(height: 1.2),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 10),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Icon(FontAwesomeIcons.solidCalendarAlt,
                          size: 10, color: Colors.grey),
                      SizedBox(width: 5),
                      Text(
                        '21:42:8 2020-08-07',
                        style: AppTextStyle.regularTitle12
                            .copyWith(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      onPressed: () {
        _showModalBottomSheetCustom(context);
      },
    );
  }

  _showModalBottomSheetCustom(BuildContext context) {
    showModalBottomSheet<void>(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        elevation: 4,
        barrierColor: Colors.black38,
        context: context,
        backgroundColor: Colors.grey,
        builder: (BuildContext context) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFFF1F1F1)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 30,
                  width: 10,
                ),
                ListTile(
                  leading: Icon(Icons.delete),
                  title: Text('سڕینەوەی ئاگانامە'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.delete_sweep),
                  title: Text('سڕینەوەی هەموو ئاگانامەکان'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.feedback),
                  title: Text('ریپۆرت و سکاڵا'),
                  onTap: () {},
                ),
              ],
            ),
          );
        });
  }
}
