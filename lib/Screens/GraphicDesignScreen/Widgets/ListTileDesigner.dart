import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zaman_group_app/Constants/TextStyleConstants.dart';
import 'package:zaman_group_app/Helper/Language.dart';

class ListTileDesigner extends StatelessWidget {
  final String name;
  final String job;
  final String image;
  final String description;

  const ListTileDesigner({
    Key key,
    @required this.name,
    @required this.job,
    @required this.image,
    @required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final language = Provider.of<Language>(context, listen: false);
    return ExpansionTile(
      tilePadding: EdgeInsets.zero,
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
            "https://yt3.ggpht.com/a/AATXAJz_h8Bhv1mL10pAHlhtgxEwXJt2vdoBnapvmF-dBw=s900-c-k-c0xffffffff-no-rj-mo"),
      ),
      title: Text(name),
      subtitle: Text(job),
      children: [
        Stack(
          children: [
            Image.network(
              image,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.white.withOpacity(0),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        Align(
          alignment: language.languageDirection == 'rtl'
              ? Alignment.centerRight
              : Alignment.centerLeft,
          child: Text('Dot dev', style: AppTextStyle.boldTitle18),
        ),
        SizedBox(height: 10),
        Text(description, textAlign: TextAlign.justify),
        SizedBox(height: 15),
      ],
    );
  }
}
