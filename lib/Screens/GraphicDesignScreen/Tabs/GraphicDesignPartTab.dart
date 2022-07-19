import 'package:flutter/material.dart';
import 'package:zaman_group_app/GlobalWidgets/MainCategoryCard.dart';
import 'package:zaman_group_app/GlobalWidgets/Responsive.dart';

class GraphicDesignPartTab extends StatelessWidget {
  final BuildContext mContext;

  GraphicDesignPartTab(this.mContext);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (BuildContext context) {
      final innerScrollController = PrimaryScrollController.of(context);
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.count(
          controller: innerScrollController,
          crossAxisCount: Responsive.isMobile(context) ? 2 : 3,
          childAspectRatio: 5 / 6,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            MainCategoryCard(
              image:
                  'https://zamangroup.co/wp-content/uploads/2020/06/2-min.jpg',
              title: 'ڤیدیۆ',
              onPressed: () {
                return Navigator.pushNamed(mContext, '/designCategoryItems');
              },
            ),
            MainCategoryCard(
              image:
                  'https://zamangroup.co/wp-content/uploads/2020/06/2-min.jpg',
              title: 'دیزاینی ڵۆگۆ',
              onPressed: () {
                return Navigator.pushNamed(mContext, '/designCategoryItems');
              },
            ),
            MainCategoryCard(
              image:
                  'https://zamangroup.co/wp-content/uploads/2020/06/2-min.jpg',
              title: 'دیزاینی سۆشیال میدیا',
              onPressed: () {
                return Navigator.pushNamed(mContext, '/designCategoryItems');
              },
            ),
            MainCategoryCard(
              image:
                  'https://zamangroup.co/wp-content/uploads/2020/06/2-min.jpg',
              title: 'دیزاینی چاپمەنی',
              onPressed: () {
                return Navigator.pushNamed(mContext, '/designCategoryItems');
              },
            ),
          ],
        ),
      );
    });
  }
}
