import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:zaman_group_app/Helper/Language.dart';

class Direction extends StatelessWidget {
  final Widget child;

  Direction({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: Provider.of<Language>(context).languageDirection == 'rtl'
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: child,
    );
  }
}
