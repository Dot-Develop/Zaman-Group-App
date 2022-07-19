import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:zaman_group_app/Constants/ColorConstants.dart';
import 'package:zaman_group_app/GlobalWidgets/Direction.dart';
import 'package:zaman_group_app/GlobalWidgets/Responsive.dart';

class PrintingScreen extends StatelessWidget {
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
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: Responsive.isMobile(context) ? 2 : 3,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          children: [
            roundedRectBorderWidget(context, "Business Card "),
            roundedRectBorderWidget(context, "Box Designs "),
            roundedRectBorderWidget(context, "Note Book Card "),
            roundedRectBorderWidget(context, "Brochure Designs "),
            roundedRectBorderWidget(context, "Groceries Designs "),
            roundedRectBorderWidget(context, "Sticker Designs"),
            roundedRectBorderWidget(context, "Ad Designs"),
            roundedRectBorderWidget(context, "Cup Designs"),
            roundedRectBorderWidget(context, "Package Designs"),
          ],
        ),
      ),
    ));
  }

  Widget roundedRectBorderWidget(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/subPrinting");
      },
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          MaterialButton(
            color: PaletteColors.navAppColor.withOpacity(0.92),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0))),
            elevation: 5.0,
            splashColor: PaletteColors.secondaryAppColor.withOpacity(0.2),
            padding: EdgeInsets.zero,
            onPressed: () {
              Navigator.pushNamed(context, "/subPrinting");
            },
            child: Container(
              padding: EdgeInsets.all(8),
              child: DottedBorder(
                  color: Colors.white,
                  borderType: BorderType.RRect,
                  radius: Radius.circular(12),
                  padding: EdgeInsets.all(6),
                  child: Center(
                      child: Image.network(
                    "https://icons.iconarchive.com/icons/aha-soft/software/256/objects-icon.png",
                    width: 120,
                    height: 120,
                  ))),
            ),
          ),
          Positioned(
            child: Container(
              padding: EdgeInsets.all(4),
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.deepPurple.shade500,
                    fontWeight: FontWeight.bold),
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(10))),
            ),
          ),
        ],
      ),
    );
  }
}
