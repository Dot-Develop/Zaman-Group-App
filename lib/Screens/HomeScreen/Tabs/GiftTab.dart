import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zaman_group_app/Constants/CustomIcons.dart';
import 'package:zaman_group_app/Constants/TextStyleConstants.dart';
import 'package:zaman_group_app/GlobalWidgets/MainHomeCard.dart';
import 'package:zaman_group_app/GlobalWidgets/Responsive.dart';
import 'package:zaman_group_app/Helper/Language.dart';
import 'package:zaman_group_app/Providers/AppSettingsProvider.dart';
import 'package:zaman_group_app/Screens/HomeScreen/Widgets/MainSlider.dart';
import 'package:zaman_group_app/Screens/HomeScreen/Widgets/TileHomeScreen.dart';

class GiftTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final words = Provider.of<Language>(context).words;
    final settingsProvider =
        Provider.of<AppSettingsProvider>(context, listen: false);
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              settingsProvider.getHomeTab().toString() == "2"
                  ? MainSlider(
                      isMainPage: true,
                    )
                  : MainSlider(isMainPage: false),
              TileHomeScreen(
                secondWidget: Container(
                  height: 50,
                  child: ListTile(
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "0",
                          style: AppTextStyle.boldTitle24
                              .copyWith(color: Colors.white),
                        ),
                        SizedBox(width: 8),
                        getAppIcons(
                            asset: AppIcons.pinkCellSolidOrder,
                            size: 35,
                            color: Colors.white),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: VerticalDivider(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "0",
                          style: AppTextStyle.boldTitle24
                              .copyWith(color: Colors.white),
                        ),
                        SizedBox(width: 8),
                        getAppIcons(
                            asset: AppIcons.pinkCellPoint,
                            size: 35,
                            color: Colors.white),
                      ],
                    ),
                    leading: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 30,
                        ),
                        Text(
                          words["user"],
                          style: AppTextStyle.boldTitle24
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverGrid.count(
              crossAxisCount: Responsive.isTablet(context) ? 6 : 4,
              childAspectRatio: Responsive.isTablet(context) ? 0.6 : 0.8,
              mainAxisSpacing: 6.0,
              crossAxisSpacing: 6.0,
              children: <Widget>[
                MainCategoryCard(
                  text: words["exchange"],
                  svgIcon: AppIcons.bargain,
                  onPressed: () {},
                ),
                MainCategoryCard(
                  text: words["gift-card"],
                  svgIcon: AppIcons.giftCard,
                  onPressed: () {},
                ),
                MainCategoryCard(
                    text: words["receives"],
                    svgIcon: AppIcons.give,
                    onPressed: () {}),
                MainCategoryCard(
                  text: words["my-points"],
                  svgIcon: AppIcons.points,
                  onPressed: () {},
                ),
                MainCategoryCard(
                  text: words["discounts"],
                  svgIcon: AppIcons.disscounts,
                  onPressed: () {},
                ),
                MainCategoryCard(
                  text: words["cobons"],
                  svgIcon: AppIcons.cobons,
                  onPressed: () {},
                ),
                MainCategoryCard(
                  text: words["partners"],
                  svgIcon: AppIcons.companion,
                  onPressed: () {},
                ),
                MainCategoryCard(
                  text: words["favorites"],
                  svgIcon: AppIcons.favorites,
                  onPressed: () {},
                ),
                MainCategoryCard(
                  text: words["gifts"],
                  svgIcon: AppIcons.awards,
                  onPressed: () {},
                ),
                MainCategoryCard(
                    text: words["bahawala"],
                    svgIcon: AppIcons.transfer,
                    onPressed: () {}),
                MainCategoryCard(
                    text: words["be-sponsor"],
                    svgIcon: AppIcons.brsponser,
                    onPressed: () {}),
                MainCategoryCard(
                    text: words["be-shopper"],
                    svgIcon: AppIcons.seller,
                    onPressed: () {}),
              ]),
        ),
      ],
    );
  }
}
