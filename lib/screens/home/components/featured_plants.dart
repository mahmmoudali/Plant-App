import 'package:flutter/material.dart';
import 'package:plant_app/CustomColors.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedPlantCard(
              imgPath: 'assets/images/bottom_img_1.png', press: () {}),
          FeaturedPlantCard(
              imgPath: 'assets/images/bottom_img_2.png', press: () {}),
        ],
      ),
    );
  }
}

class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard({
    Key key,
    this.imgPath,
    this.press,
  }) : super(key: key);
  final String imgPath;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: kDefautlPadding,
            top: kDefautlPadding / 2,
            bottom: kDefautlPadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(image: AssetImage(imgPath), fit: BoxFit.cover)),
      ),
    );
  }
}
