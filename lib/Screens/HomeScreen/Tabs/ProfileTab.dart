import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:zaman_group_app/Constants/CustomIcons.dart';
import 'package:zaman_group_app/Constants/TextStyleConstants.dart';
import 'package:zaman_group_app/GlobalWidgets/MainHomeCard.dart';
import 'package:zaman_group_app/GlobalWidgets/Responsive.dart';
import 'package:zaman_group_app/Helper/Language.dart';
import 'package:zaman_group_app/Providers/AppSettingsProvider.dart';
import 'package:zaman_group_app/Screens/HomeScreen/Widgets/MainSlider.dart';
import 'package:zaman_group_app/Screens/HomeScreen/Widgets/TileHomeScreen.dart';

class ProfileTab extends StatelessWidget {
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
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
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: VerticalDivider(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          "IQD",
                          style: AppTextStyle.boldTitle24
                              .copyWith(color: Colors.white),
                        ),
                        SizedBox(width: 8),
                        Text(
                          "0",
                          style: AppTextStyle.boldTitle24
                              .copyWith(color: Colors.white),
                        ),
                        SizedBox(width: 8),
                        getAppIcons(
                          asset: AppIcons.pinkCellSolidWallet,
                          size: 35,
                          color: Colors.white,
                        )
                      ],
                    ),
                    leading: getAppIcons(
                      asset: AppIcons.pinkCellRefresh,
                      size: 35,
                      color: Colors.white,
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
                text: words["requests"],
                svgIcon: AppIcons.orders,
                onPressed: () {},
              ),
              MainCategoryCard(
                text: words["downloads"],
                svgIcon: AppIcons.downloads,
                onPressed: () {},
              ),
              MainCategoryCard(
                text: words["point"],
                svgIcon: AppIcons.medal,
                onPressed: () {},
              ),
              MainCategoryCard(
                text: words["my-wallet"],
                svgIcon: AppIcons.wallet,
                onPressed: () {},
              ),
              MainCategoryCard(
                text: words["activity"],
                svgIcon: AppIcons.activity,
                onPressed: () {},
              ),
              MainCategoryCard(
                text: words["settings"],
                svgIcon: AppIcons.settings,
                onPressed: () {},
              ),
              MainCategoryCard(
                text: words["complaint"],
                svgIcon: AppIcons.companion,
                onPressed: () {},
              ),
              MainCategoryCard(
                text: words["delivery"],
                svgIcon: AppIcons.delivery,
                onPressed: () {},
              ),
              MainCategoryCard(
                text: words["printing-page"],
                svgIcon: AppIcons.printing,
                onPressed: () {},
              ),
              MainCategoryCard(
                text: words["design"],
                svgIcon: AppIcons.designArea,
                onPressed: () {},
              ),
              MainCategoryCard(
                text: words["exhibition"],
                svgIcon: AppIcons.anniversary,
                onPressed: () {},
              ),
              MainCategoryCard(
                text: words["graphic-design"],
                svgIcon: AppIcons.graphicDesign,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
