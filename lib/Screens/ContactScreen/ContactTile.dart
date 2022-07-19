import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zaman_group_app/Constants/TextStyleConstants.dart';

class ContactTile extends StatelessWidget {
  final String title;
  final String subTitle;

  const ContactTile({Key key, @required this.title, @required this.subTitle})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyle.boldTitle20,
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            subTitle,
            style: AppTextStyle.regularTitle16.copyWith(color: Colors.black54),
          ),
          Divider(
            height: 30,
            color: Colors.black26,
          ),
        ],
      ),
    );
  }
}
