import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:zaman_group_app/Constants/ColorConstants.dart';
import 'package:zaman_group_app/Constants/CustomIcons.dart';
import 'package:zaman_group_app/Constants/TextStyleConstants.dart';
import 'package:zaman_group_app/Helper/Language.dart';
import 'package:zaman_group_app/Providers/AppSettingsProvider.dart';
import 'package:zaman_group_app/Providers/AuthenticationProvider.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final settingsProvider = Provider.of<AppSettingsProvider>(context);
    final authenticationProvider = Provider.of<AuthenticationProvider>(context);
    final words = Provider.of<Language>(context).words;
    return Drawer(
      child: ListView(
        children: [
          if (authenticationProvider.isLoggedIn)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        "https://yt3.ggpht.com/a/AATXAJz_h8Bhv1mL10pAHlhtgxEwXJt2vdoBnapvmF-dBw=s900-c-k-c0xffffffff-no-rj-mo"),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Dot Dev"),
                            Icon(Icons.person),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("0750DOTDEV"),
                            Icon(Icons.phone_android),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Dot Dev Road"),
                            Icon(Icons.location_on),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          DrawerListTile(
            title: words["home"],
            icon: AppIcons.homeIcon,
            color: Colors.black,
            onTap: () {},
          ),
          DrawerExpandListTile(
            icon: AppIcons.buyPagesIcon,
            title: words["shopping"],
            onTap: () {},
            children: <Widget>[
              DrawerListTile(
                title: words["printing"],
                icon: AppIcons.printsIcon,
                onTap: () {
                  Navigator.pushNamed(context, '/printing');
                },
              ),
              DrawerListTile(
                title: words['graphic-design'],
                icon: AppIcons.graphicDesignIcon,
                onTap: () {
                  Navigator.pushNamed(context, '/graphicDesign');
                },
              ),
              DrawerListTile(
                title: words["sponsor"],
                icon: AppIcons.sponsorIcon,
                onTap: () => Navigator.pushNamed(context, '/sponsorScreen'),
              ),
            ],
          ),
          DrawerExpandListTile(
            title: words["settings"],
            icon: AppIcons.settingsIcon,
            onTap: () {},
            children: <Widget>[
              DrawerListTile(
                title: words["privates"],
                icon: AppIcons.propertiesIcon,
                onTap: () {},
              ),
              DrawerListTile(
                title: words["locations"],
                icon: AppIcons.addressIcon,
                onTap: () {},
              ),
              DrawerListTile(
                title: words["edit-profile"],
                icon: AppIcons.editAccountIcon,
                onTap: () {},
              ),
            ],
          ),
          DrawerListTile(
            title: words["language"],
            icon: AppIcons.languageIcon,
            color: Colors.black,
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/languageScreen');
            },
          ),
          DrawerListTile(
            title: words["contact"],
            icon: AppIcons.contactIcon,
            color: Colors.black,
            onTap: () {
              // Navigator.pushNamed(context, '/contact');
            },
          ),
          authenticationProvider.isLoggedIn
              ? DrawerListTile(
                  title: words["exit"],
                  icon: AppIcons.logoutIcon,
                  onTap: () {
                    Provider.of<AuthenticationProvider>(context, listen: false)
                        .setLoginFalse();
                    Navigator.pushNamed(context, "/home");
                  },
                )
              : DrawerExpandListTile(
                  title: words['signin/signup'],
                  icon: AppIcons.myAccountIcon,
                  onTap: () {},
                  children: [
                    DrawerListTile(
                      title: words["login"],
                      icon: AppIcons.myAccountIcon,
                      onTap: () {
                        settingsProvider.setHomeTab(2);
                        Navigator.pushNamed(context, "/home");
                      },
                    ),
                    DrawerListTile(
                      title: words["signup"],
                      icon: AppIcons.myWalletIcon,
                      onTap: () {
                        settingsProvider.setHomeTab(3);
                        Navigator.pushNamed(context, "/home");
                      },
                    ),
                  ],
                ),
          Divider(height: 0)
        ],
      ),
    );
  }
}

class DrawerExpandListTile extends StatefulWidget {
  final String title;
  final IconData icon;
  final List<Widget> children;
  final Function onTap;

  const DrawerExpandListTile({
    Key key,
    @required this.title,
    @required this.icon,
    @required this.children,
    @required this.onTap,
  }) : super(key: key);

  @override
  _DrawerExpandListTileState createState() => _DrawerExpandListTileState();
}

class _DrawerExpandListTileState extends State<DrawerExpandListTile> {
  bool isExpand = false;

  @override
  Widget build(BuildContext context) {
    final languageDirection = Provider.of<Language>(context).languageDirection;
    return Wrap(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Color(0x60bbbbbb), width: 0.5),
            ),
          ),
          child: ListTile(
            tileColor: isExpand ? Color(0x50bbbbbb) : Colors.grey[45],
            contentPadding: languageDirection == 'rtl'
                ? EdgeInsets.only(right: 15, left: 0)
                : EdgeInsets.only(right: 0, left: 15),
            title: Text(
              widget.title,
              style: AppTextStyle.boldTitle14,
            ),
            leading: Icon(widget.icon, color: Colors.black, size: 18),
            trailing: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color:
                      isExpand ? PaletteColors.mainAppColor : Colors.grey[45],
                  border: Border.symmetric(
                    vertical: BorderSide(color: Color(0x60bbbbbb), width: 0.5),
                  ),
                ),
                child: Icon(
                  languageDirection == 'rtl'
                      ? isExpand
                          ? FontAwesomeIcons.chevronUp
                          : FontAwesomeIcons.chevronLeft
                      : isExpand
                          ? FontAwesomeIcons.chevronRight
                          : FontAwesomeIcons.chevronUp,
                  color: isExpand ? Colors.white : Colors.black,
                  size: 16,
                )),
            onTap: () {
              setState(() {
                isExpand = !isExpand;
              });
              widget.onTap();
            },
          ),
        ),
        if (isExpand) ...widget.children
      ],
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function onTap;
  final Color color;

  const DrawerListTile({
    Key key,
    @required this.title,
    @required this.icon,
    @required this.onTap,
    this.color = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Color(0x60bbbbbb), width: 0.5),
        ),
      ),
      child: ListTile(
        title:
            Text(title, style: AppTextStyle.boldTitle14.copyWith(color: color)),
        leading: Icon(icon, color: color, size: 18),
        onTap: onTap,
      ),
    );
  }
}
