import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zaman_group_app/Constants/TextStyleConstants.dart';
import 'package:zaman_group_app/GlobalWidgets/Direction.dart';
import 'package:zaman_group_app/GlobalWidgets/RoundedButtonWithIcon.dart';

import 'ContactTile.dart';

class ContactScreen extends StatelessWidget {
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
          child: ListView(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              ContactTile(
                title: "Email",
                subTitle: "info@zamangroup.co",
              ),
              ContactTile(
                title: "Web",
                subTitle: "www.zamangroup.co",
              ),
              ContactTile(
                title: "Location",
                subTitle: "Iraq - Sulaimaniah",
              ),
              ContactTile(
                title: "Base",
                subTitle: "Zaegata - Botan Road",
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Contact us",
                  style: AppTextStyle.boldTitle22,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              RoundedButtonWithIcon(
                onPressed: () {},
                icon: Icons.email,
                title: "Email",
                color: Color(0xfff1f1f1),
                elevation: 0,
                height: 50,
              ),
              SizedBox(height: 5),
              RoundedButtonWithIcon(
                onPressed: () {},
                icon: Icons.email,
                title: "Email",
                color: Color(0xfff1f1f1),
                elevation: 0,
                height: 50,
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  "مۆبایل: (964+)",
                  style: AppTextStyle.boldTitle20,
                ),
              ),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "07816107875 - 07511095131 - 07726621221",
                  style: AppTextStyle.regularTitle16,
                ),
              ),
              SizedBox(height: 20),
              // Divider(
              //   color: Colors.grey,
              //   height: 20,
              // ),
              ContactExpandListTile(
                title: "App",
                link: "app.com",
                image:
                    "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png",
              ),
              ContactExpandListTile(
                title: "Twitter",
                link: "twitter.com",
                image:
                    "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png",
              ),
              ContactExpandListTile(
                title: "Facebook",
                link: "facebook.com",
                image:
                    "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png",
              ),
              ContactExpandListTile(
                title: "Instagram",
                link: "insta.com",
                image:
                    "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png",
              ),
              ContactExpandListTile(
                title: "Youtube",
                link: "youtube.com",
                image:
                    "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png",
              ),
              ContactExpandListTile(
                title: "TikTok",
                link: "tijtok.com",
                image:
                    "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png",
              ),
              ContactExpandListTile(
                title: "Viber",
                link: "viber.com",
                image:
                    "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png",
              ),
              ContactExpandListTile(
                title: "Whatisup",
                link: "wiup.com",
                image:
                    "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png",
              ),
              ContactExpandListTile(
                title: "GooglePlay",
                link: "google.com",
                image:
                    "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png",
              ),
              ContactExpandListTile(
                title: "App store",
                link: "apps-tore.com",
                image:
                    "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png",
              ),
              ContactExpandListTile(
                title: "App Gallery",
                link: "app-gallery.com",
                image:
                    "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactExpandListTile extends StatefulWidget {
  final String title;
  final String link;
  final String image;

  const ContactExpandListTile({
    Key key,
    @required this.title,
    @required this.link,
    @required this.image,
  }) : super(key: key);

  @override
  _ContactExpandListTileState createState() => _ContactExpandListTileState();
}

class _ContactExpandListTileState extends State<ContactExpandListTile> {
  bool isExpand = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
          color: Color(0xfff6f6f6),
          border: Border.all(
            width: 0.5,
            color: Color(0xfff1f1f1),
          ),
          borderRadius: BorderRadius.circular(12)),
      child: ExpansionTile(
        trailing: SizedBox.shrink(),
        leading: SizedBox.shrink(),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.title,
              style: AppTextStyle.boldTitle16,
            ),
          ],
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
              widget.image,
              scale: 6,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            widget.link,
            style: AppTextStyle.boldTitle14,
          ),
        ],
      ),
    );
  }
}
