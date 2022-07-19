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

class WalletTab extends StatelessWidget {
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
                        Text("IQD",
                            style: AppTextStyle.boldTitle24
                                .copyWith(color: Colors.white)),
                        SizedBox(
                          width: 8,
                        ),
                        Text("0",
                            style: AppTextStyle.boldTitle24
                                .copyWith(color: Colors.white)),
                        SizedBox(
                          width: 8,
                        ),
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
          padding: EdgeInsets.all(8),
          sliver: SliverGrid.count(
              crossAxisCount: Responsive.isTablet(context) ? 6 : 4,
              childAspectRatio: Responsive.isTablet(context) ? 0.6 : 0.8,
              mainAxisSpacing: 6.0,
              crossAxisSpacing: 6.0,
              children: <Widget>[
                MainCategoryCard(
                  text: words["add"],
                  svgIcon: AppIcons.add,
                  onPressed: () {},
                ),
                MainCategoryCard(
                  text: words["smart-card"],
                  svgIcon: AppIcons.smartCard,
                  onPressed: () {},
                ),
                MainCategoryCard(
                  text: words["send-money"],
                  svgIcon: AppIcons.sendBalance,
                  onPressed: () {},
                ),
                MainCategoryCard(
                  text: words["pulling"],
                  svgIcon: AppIcons.importBalance,
                  onPressed: () {},
                ),
                MainCategoryCard(
                  text: words["cash-card"],
                  svgIcon: AppIcons.cashCard,
                  onPressed: () {},
                ),
                MainCategoryCard(
                  text: words["app-hawala"],
                  svgIcon: AppIcons.newsApp,
                  onPressed: () {},
                ),
                MainCategoryCard(
                  text: words["bank-card"],
                  svgIcon: AppIcons.bankCard,
                  onPressed: () {},
                ),
                MainCategoryCard(
                  text: words["transactions"],
                  svgIcon: AppIcons.deals,
                  onPressed: () {},
                ),
                MainCategoryCard(
                  text: words["sponsors"],
                  svgIcon: AppIcons.sponsor,
                  onPressed: () {},
                ),
                MainCategoryCard(
                  text: words["exchange-currency"],
                  svgIcon: AppIcons.exchangeCurrency,
                  onPressed: () {},
                ),
                MainCategoryCard(
                  text: words["orders"],
                  svgIcon: AppIcons.order,
                  onPressed: () {},
                ),
                MainCategoryCard(
                  text: words["shops"],
                  svgIcon: AppIcons.sellers,
                  onPressed: () {},
                ),
              ]),
        ),
      ],
    );
  }
}
