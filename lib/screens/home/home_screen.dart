import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/components/bottom_navigation_bar.dart';
import 'package:plant_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        //title: Text('Plant App'),
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/menu.svg'),
          //color: Colors.white,
          onPressed: () {},
        ));
  }
}
