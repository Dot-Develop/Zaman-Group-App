import 'package:flutter/material.dart';
import 'package:zaman_group_app/Constants/ColorConstants.dart';
import 'package:zaman_group_app/Constants/TextStyleConstants.dart';

class DesignCategoryItemCard extends StatelessWidget {
  final String image;
  final String title;
  final Function onPressed;

  const DesignCategoryItemCard({
    Key key,
    @required this.image,
    @required this.title,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.all(8),
      child: FlatButton(
        onPressed: onPressed,
        splashColor: PaletteColors.mainAppColor.withOpacity(0.2),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(
              image,
              width: double.infinity,
              height: 110,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 10),
            Text(
              title,
              style: AppTextStyle.boldTitle20,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  size: 18,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  size: 18,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  size: 18,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  size: 18,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  size: 18,
                  color: Colors.amber,
                ),
              ],
            ),
            SizedBox(height: 10),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: Icon(Icons.search, color: Colors.black54),
                    onTap: () {
                      print('test');
                    },
                  ),
                  VerticalDivider(
                    color: Colors.grey,
                  ),
                  GestureDetector(
                    child: Icon(Icons.shopping_cart_outlined,
                        color: Colors.black54),
                    onTap: () {
                      print('test');
                    },
                  ),
                  VerticalDivider(
                    color: Colors.grey,
                  ),
                  GestureDetector(
                    child: Icon(Icons.favorite_outline, color: Colors.black54),
                    onTap: () {
                      print('test');
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
