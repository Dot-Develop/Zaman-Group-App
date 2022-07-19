import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:zaman_group_app/Constants/TextStyleConstants.dart';
import 'package:zaman_group_app/GlobalWidgets/RoundedButton.dart';
import 'package:zaman_group_app/Helper/Language.dart';
import 'package:zaman_group_app/Screens/HomeScreen/Widgets/NotificationCard.dart';

class NotificationTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final words = Provider.of<Language>(context).words;
    int notificationCounter = 1;
    if (notificationCounter == 0) {
      return Center(
        child: Column(
          children: [
            SizedBox(height: 25),
            // Container(child: emptyCartShopSvg),
            SizedBox(height: 10),
            Text(words["notifications-warning"],
                style: AppTextStyle.boldTitle22),
            SizedBox(height: 5),
            RoundedButton(
              title: words["ask-for-buy"],
              onPressed: () {},
            )
          ],
        ),
      );
    } else {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(words["notifications"], style: AppTextStyle.boldTitle20),
                Icon(FontAwesomeIcons.solidBell)
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: 20,
              itemBuilder: (context, index) => NotificationCard(),
              separatorBuilder: (context, index) => Divider(),
            ),
          ),
        ],
      );
    }
  }
}
