import 'package:flutter/material.dart';

class SponsorItemCard extends StatelessWidget {
  final String label;
  final String image;
  final Function onTap;

  const SponsorItemCard({
    Key key,
    @required this.label,
    @required this.image,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: MaterialButton(
        padding: EdgeInsets.zero,
        onPressed: onTap,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Color(0x50bbbbbb),
              ),
              borderRadius: BorderRadius.circular(5)),
          child: Stack(
            children: [
              Column(
                children: [
                  Image.network(
                    image,
                    width: double.infinity,
                    height: 120,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 20),
                  Text(label)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
