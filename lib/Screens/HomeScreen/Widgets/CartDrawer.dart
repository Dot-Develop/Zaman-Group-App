import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zaman_group_app/Constants/CustomIcons.dart';
import 'package:zaman_group_app/Constants/TextStyleConstants.dart';
import 'package:zaman_group_app/GlobalWidgets/RoundedButton.dart';
import 'package:zaman_group_app/Helper/Language.dart';

class CartDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final words = Provider.of<Language>(context).words;

    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 14, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    words["shopping-cart"],
                    style: AppTextStyle.boldTitle22,
                  ),
                  FlatButton(
                    padding: EdgeInsets.zero,
                    child: Row(
                      children: [
                        Text(
                          words["close"],
                          style: AppTextStyle.boldTitle16,
                        ),
                        Icon(Icons.close),
                      ],
                    ),
                    onPressed: () => Navigator.pop(context),
                  )
                ],
              ),
            ),
            Divider(),
            SizedBox(height: 15),
            getAppIcons(
                asset: AppIcons.emptyShopCart,
                size: 120,
                color: Colors.grey.withOpacity(0.4)),
            SizedBox(height: 10),
            Text(
              words["cart-empty"],
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RoundedButton(
                title: words['order-to-buy'],
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
