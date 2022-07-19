import 'package:flutter/material.dart';
import 'package:zaman_group_app/GlobalWidgets/Direction.dart';
import 'package:zaman_group_app/Screens/DesignCategoryItemsScreen/Widgets/DesignCategoryItemCard.dart';

class DesignCategoryItemsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Direction(
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'assets/app_logo/Logo Zaman.png',
            height: 70,
            width: 200,
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3,
          children: [
            DesignCategoryItemCard(
              title: "create logo",
              image:
                  'https://cdn.pixabay.com/photo/2016/12/27/09/56/canon-1933637_960_720.png',
              onPressed: () {},
            ),
            DesignCategoryItemCard(
              title: "create logo",
              image:
                  'https://lh3.googleusercontent.com/proxy/V7LyplhkrhoKbaShFeVgVhYjmROSFSz_RphtRq9qv86EaX6QopzGj4QFHkacUuJqNYDNA3d-ksowiCEe2Nj4BzwMc2mQTksTDGqeED7Yb9aztz42PjwF',
              onPressed: () {},
            ),
            DesignCategoryItemCard(
              title: "create logo",
              image:
                  'https://cdn.pixabay.com/photo/2016/12/27/09/56/canon-1933637_960_720.png',
              onPressed: () {},
            ),
            DesignCategoryItemCard(
              title: "create logo",
              image:
                  'https://lh3.googleusercontent.com/proxy/V7LyplhkrhoKbaShFeVgVhYjmROSFSz_RphtRq9qv86EaX6QopzGj4QFHkacUuJqNYDNA3d-ksowiCEe2Nj4BzwMc2mQTksTDGqeED7Yb9aztz42PjwF',
              onPressed: () {},
            ),
            DesignCategoryItemCard(
              title: "create logo",
              image:
                  'https://cdn.pixabay.com/photo/2016/12/27/09/56/canon-1933637_960_720.png',
              onPressed: () {},
            ),
            DesignCategoryItemCard(
              title: "create logo",
              image:
                  'https://lh3.googleusercontent.com/proxy/V7LyplhkrhoKbaShFeVgVhYjmROSFSz_RphtRq9qv86EaX6QopzGj4QFHkacUuJqNYDNA3d-ksowiCEe2Nj4BzwMc2mQTksTDGqeED7Yb9aztz42PjwF',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
