import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zaman_group_app/Constants/TextStyleConstants.dart';
import 'package:zaman_group_app/GlobalWidgets/Direction.dart';
import 'package:zaman_group_app/Helper/Language.dart';
import 'package:zaman_group_app/Screens/SponsorScreen/Widget/SponsorItemCard.dart';

class SponsorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final words = Provider.of<Language>(context).words;

    return Direction(
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'assets/app_logo/Logo Zaman.png',
            height: 70,
            width: 200,
          ),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    height: 140,
                    width: double.infinity,
                    color: Colors.lightBlueAccent,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 25, 8, 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(words["sponsor-title"],
                            style: AppTextStyle.boldTitle22),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(flex: 1, child: Divider(thickness: 2)),
                              Flexible(
                                  flex: 2,
                                  child:
                                      Divider(thickness: 2, color: Colors.red)),
                              Flexible(flex: 1, child: Divider(thickness: 2)),
                            ],
                          ),
                        ),
                        Text(
                          words["sponsor-desc"],
                          style: AppTextStyle.boldTitle14
                              .copyWith(color: Colors.grey),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 30),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SliverGrid.count(
              crossAxisCount: 2,
              childAspectRatio: 5 / 6,
              children: [
                SponsorItemCard(
                  label: words["sponsor-twitter"],
                  image:
                      'https://www.europanostra.org/wp-content/uploads/2017/09/2017-09-Twitter-logo.png',
                  onTap: () {},
                ),
                SponsorItemCard(
                  label: words["sponsor-youtube"],
                  image:
                      'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/103934860/original/d2a1463c6c8a6ec4d258f698ae7d539a9129cf88/create-your-youtube-channel-art-and-logo.png',
                  onTap: () {},
                ),
                SponsorItemCard(
                  label: words["sponsor-instagram"],
                  image:
                      'https://cssdp.org/uploads/2019/08/social-instagram-new-circle-512.png',
                  onTap: () {},
                ),
                SponsorItemCard(
                  label: words["sponsor-facebook"],
                  image:
                      'https://assets.stickpng.com/thumbs/58e91965eb97430e819064f5.png',
                  onTap: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
