import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:zaman_group_app/Constants/ColorConstants.dart';
import 'package:zaman_group_app/Helper/Language.dart';

class SearchTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final words = Provider.of<Language>(context).words;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 20,
          ),
          Icon(
            Icons.search,
            size: 140,
            color: PaletteColors.blackIconAppBar.withOpacity(0.2),
          ),
          SizedBox(height: 20),
          TextFormField(
            cursorColor: Colors.black,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              suffixIcon: Container(
                decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        topLeft: Radius.circular(8))),
                child: Icon(
                  FontAwesomeIcons.search,
                  color: Colors.white,
                ),
              ),
              hintText: words["search-for"],
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: PaletteColors.blackIconAppBar.withOpacity(0.2),
                    width: 2),
                borderRadius: BorderRadius.circular(8),
              ),
              contentPadding: EdgeInsets.all(8),
              // Added this
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: PaletteColors.secondaryAppColor, width: 2),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // RoundedButton(
          //   title: 'test',backgroundColor:Colors.grey.withOpacity(0.4) ,
          //   onPressed: () {},
          // ),
        ],
      ),
    );
  }
}
