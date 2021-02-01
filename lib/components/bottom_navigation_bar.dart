import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../CustomColors.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          right: kDefautlPadding * 2,
          left: kDefautlPadding * 2,
          bottom: kDefautlPadding),
      height: 80,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38))
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              icon: SvgPicture.asset('assets/icons/flower.svg'),
              onPressed: () {}),
          IconButton(
              icon: SvgPicture.asset('assets/icons/heart-icon.svg'),
              onPressed: () {}),
          IconButton(
              icon: SvgPicture.asset('assets/icons/user-icon.svg'),
              onPressed: () {}),
        ],
      ),
    );
  }
}
