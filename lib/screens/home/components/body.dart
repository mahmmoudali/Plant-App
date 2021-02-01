import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:plant_app/CustomColors.dart';
import 'package:plant_app/screens/home/components/header_with_search.dart';
import 'package:plant_app/screens/home/components/recommeded_plants.dart';
import 'package:plant_app/screens/home/components/title_with_more_button.dart';

import 'featured_plants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //to get total height and width of screen
    Size size = MediaQuery.of(context).size;
    // it enable scroller
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(title: 'Recomeded', press: () {}),
          RecommededPlants(),
          TitleWithMoreButton(title: 'Featured Plants', press: () {}),
          FeaturedPlants(),
          SizedBox(
            height: kDefautlPadding,
          )
        ],
      ),
    );
  }
}
