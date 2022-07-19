import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zaman_group_app/Constants/ColorConstants.dart';
import 'package:zaman_group_app/Helper/Language.dart';
import 'package:zaman_group_app/Screens/ContactScreen/ContactScreen.dart';
import 'package:zaman_group_app/Screens/GraphicDesignScreen/GraphicDesignScreen.dart';
import 'package:zaman_group_app/Screens/LanguageScreen.dart';
import 'package:zaman_group_app/Screens/PrintingScreen/PrintingScreen.dart';
import 'package:zaman_group_app/Screens/SubPrintingScreen/SubPrintingScreen.dart';
import 'Providers/AppSettingsProvider.dart';
import 'Providers/AuthenticationProvider.dart';
import 'Screens/DesignCategoryItemsScreen/DesignCategoryItemsScreen.dart';
import 'Screens/HomeScreen/HomeScreen.dart';
import 'Screens/SplashScreen/SplashScreen.dart';
import 'Screens/SponsorScreen/SponsorScreen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<Language>(
          create: (context) => Language(),
        ),
        ChangeNotifierProvider<AuthenticationProvider>(
          create: (context) => AuthenticationProvider(),
        ),
        ChangeNotifierProvider<AppSettingsProvider>(
          create: (context) => AppSettingsProvider(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: PaletteColors.mainAppColor,
          primarySwatch: Colors.purple,
          fontFamily: 'NRT-Reg',
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
              elevation: 2, iconTheme: IconThemeData(color: Colors.black)),
        ),
        title: 'Zaman Group',
        initialRoute: '/',
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashScreen(),
          '/home': (context) => HomeScreen(),
          '/contact': (context) => ContactScreen(),
          '/printing': (context) => PrintingScreen(),
          '/subPrinting': (context) => SubPrintingScreen(),
          '/graphicDesign': (context) => GraphicDesignScreen(),
          '/designCategoryItems': (context) => DesignCategoryItemsScreen(),
          '/sponsorScreen': (context) => SponsorScreen(),
          '/languageScreen': (context) => LanguageScreen(),
        },
      ),
    ),
  );
}
