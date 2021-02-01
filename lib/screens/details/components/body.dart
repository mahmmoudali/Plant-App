import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/CustomColors.dart';

import 'icon_card.dart';
import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(imagePath: 'assets/images/img.png'),
          TitleAndPrice(title: 'Angelica', price: 550, country: 'Russia'),
          SizedBox(
            height: kDefautlPadding,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                  width: size.width / 2,
                  height: 84,
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.only(topRight: Radius.circular(20))),
                      color: kPrimaryColor,
                      onPressed: () {},
                      child: Text('Buy Now',
                          style:
                              TextStyle(color: Colors.white, fontSize: 16)))),
              Expanded(
                  child: FlatButton(
                onPressed: () {},
                child: Text('Description'),
              )),
            ],
          ),
        ],
      ),
    );
  }
}
