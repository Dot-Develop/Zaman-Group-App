import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zaman_group_app/Constants/ColorConstants.dart';
import 'package:zaman_group_app/GlobalWidgets/ColoredTabbar.dart';
import 'package:zaman_group_app/GlobalWidgets/Direction.dart';
import 'package:zaman_group_app/Providers/AppSettingsProvider.dart';
import 'package:zaman_group_app/Screens/HomeScreen/Widgets/MainSlider.dart';
import 'Tabs/DesignerTab.dart';
import 'Tabs/GraphicDesignPartTab.dart';

class GraphicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Direction(
      child: Scaffold(
        body: DefaultTabController(
          length: 2,
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
                          expandedHeight: 310,
                          flexibleSpace: FlexibleSpaceBar(
                            background: Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: MainSlider(
                                  isMainPage: false,
                                )),
                          ),
                          bottom: ColoredTabBar(
                            Colors.white,
                            TabBar(
                              labelColor: PaletteColors.mainAppColor,
                              tabs: [
                                Tab(text: 'Graphic design part'),
                                Tab(text: ' Designer'),
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
                    DesignerTab(),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
