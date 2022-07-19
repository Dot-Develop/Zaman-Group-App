import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:zaman_group_app/Constants/ColorConstants.dart';
import 'package:zaman_group_app/GlobalWidgets/ColoredTabbar.dart';
import 'package:zaman_group_app/GlobalWidgets/Direction.dart';
import 'package:zaman_group_app/GlobalWidgets/Responsive.dart';
import 'package:zaman_group_app/Screens/GraphicDesignScreen/Tabs/GraphicDesignPartTab.dart';

class SubPrintingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Direction(
      child: Scaffold(
        body: DefaultTabController(
          length: 8,
          initialIndex: 0,
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) => [
              SliverAppBar(
                backgroundColor: Colors.white,
                pinned: true,
                floating: true,
                centerTitle: true,
                title: Image.asset(
                  'assets/app_logo/Logo Zaman.png',
                  height: 70,
                  width: 200,
                ),
                expandedHeight: Responsive.isMobile(context) ? 280 : 390,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    margin: EdgeInsets.only(top: 90),
                    height: 280,
                    width: double.infinity,
                    color: PaletteColors.mainAppColor,
                  ),
                ),
                bottom: ColoredTabBar(
                  Colors.white,
                  TabBar(
                    isScrollable: true,
                    labelColor: PaletteColors.mainAppColor,
                    tabs: [
                      Tab(text: "Business Card "),
                      Tab(text: "Box Designs "),
                      Tab(text: "Note Book Card "),
                      Tab(text: "Brochure Designs "),
                      Tab(text: "Groceries Designs "),
                      Tab(text: "Sticker Designs"),
                      Tab(text: "Ad Designs"),
                      Tab(text: "Package Designs"),
                    ],
                  ),
                ),
              )
            ],
            body: MediaQuery.removePadding(
              removeTop: true,
              context: context,
              child: TabBarView(
                children: [
                  GraphicDesignPartTab(context),
                  GraphicDesignPartTab(context),
                  GraphicDesignPartTab(context),
                  GraphicDesignPartTab(context),
                  GraphicDesignPartTab(context),
                  GraphicDesignPartTab(context),
                  GraphicDesignPartTab(context),
                  GraphicDesignPartTab(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
