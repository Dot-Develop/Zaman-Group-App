import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zaman_group_app/Constants/TextStyleConstants.dart';

class MainCategoryCard extends StatelessWidget {
  final String image;
  final String title;
  final Function onPressed;

  const MainCategoryCard({
    Key key,
    @required this.image,
    @required this.title,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: FlatButton(
        color: Colors.white,
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(
              image,
              width: double.infinity,
              height: 150,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 15),
            Text(
              title,
              style: AppTextStyle.boldTitle16,
            )
          ],
        ),
      ),
    );
  }
}
