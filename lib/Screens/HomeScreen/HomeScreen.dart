import 'dart:ui';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:zaman_group_app/Constants/ColorConstants.dart';
import 'package:zaman_group_app/Constants/CustomIcons.dart';
import 'package:zaman_group_app/Constants/TextStyleConstants.dart';
import 'package:zaman_group_app/GlobalWidgets/Direction.dart';
import 'package:zaman_group_app/GlobalWidgets/Responsive.dart';
import 'package:zaman_group_app/Helper/Language.dart';
import 'package:zaman_group_app/Providers/AppSettingsProvider.dart';
import 'package:zaman_group_app/Providers/AuthenticationProvider.dart';
import 'package:zaman_group_app/Screens/HomeScreen/Tabs/SignUpTab.dart';
import 'package:zaman_group_app/Screens/HomeScreen/Widgets/CartDrawer.dart';
import 'Tabs/GiftTab.dart';
import 'Tabs/LoginTab.dart';
import 'Tabs/NotificationTab.dart';
import 'Tabs/ProfileTab.dart';
import 'Tabs/SearchTab.dart';
import 'Tabs/WalletTab.dart';
import 'Widgets/MainDrawer.dart';
import 'Widgets/NavButton.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final authProvider =
        Provider.of<AuthenticationProvider>(context, listen: false);
    final settingsProvider =
        Provider.of<AppSettingsProvider>(context, listen: false);

    return Direction(
      child: Scaffold(
        drawer: MainDrawer(),
        endDrawer: CartDrawer(),
        drawerScrimColor: Colors.white.withOpacity(0.5),
        appBar: AppBar(
          title: Image.asset(
            settingsProvider.getHomeTab().toString() == "3" &&
                    authProvider.isLoggedIn
                ? 'assets/app_logo/Logo wallet.png'
                : 'assets/app_logo/Logo Zaman.png',
            height: 70,
            width: 200,
          ),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          actions: [
            Builder(
              builder: (context) => IconButton(
                icon: Stack(
                  children: [
                    getAppIcons(
                      asset: AppIcons.shopCart,
                      size: 30,
                    ),
                    Align(
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: PaletteColors.redButtonColor,
                        child: Text('1', style: AppTextStyle.boldTitle10),
                      ),
                      alignment: Language().languageDirection == 'ltr'
                          ? Alignment.topLeft
                          : Alignment.topLeft,
                    )
                  ],
                ),
                onPressed: () => Scaffold.of(context).openEndDrawer(),
              ),
            )
          ],
        ),
        bottomNavigationBar: CurvedNavigationBar(
          index: settingsProvider.getHomeTab(),
          height: Responsive.isMobile(context) ? 55.0 : 65,
          items: <Widget>[
            NavButton(
              icon: FontAwesomeIcons.solidBell,
            ),
            NavButton(
              icon: AppIcons.myPointsIcon,
            ),
            NavButton(
              icon: Icons.person_pin,
            ),
            NavButton(
              icon: AppIcons.myWalletIcon,
            ),
            NavButton(
              icon: FontAwesomeIcons.search,
            ),
          ],
          color: PaletteColors.navAppColor,
          buttonBackgroundColor: PaletteColors.navAppColor,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 300),
          onTap: (index) {
            setState(() {
              settingsProvider.setHomeTab(index);
              print(index);
            });
          },
        ),
        body: Consumer<AppSettingsProvider>(
          builder: (_, homeState, __) => !authProvider.isLoggedIn
              ? homeState.getLoginTab().toString() == "0"
                  ? LoginTab()
                  : SignUpTab()
              : homeState.getHomeTab().toString() == "0"
                  ? NotificationTab()
                  : homeState.getHomeTab().toString() == "1"
                      ? GiftTab()
                      : homeState.getHomeTab().toString() == "2"
                          ? ProfileTab()
                          : homeState.getHomeTab().toString() == "3"
                              ? WalletTab()
                              : SearchTab(),
        ),
      ),
    );
  }
}
