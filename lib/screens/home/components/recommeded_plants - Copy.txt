import 'package:flutter/material.dart';
import 'package:plant_app/CustomColors.dart';
import 'package:plant_app/screens/details/details_screen.dart';

class RecommededPlants extends StatelessWidget {
  const RecommededPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommededPlantCard(
            title: 'Samantha',
            country: 'Russia',
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),
                  ));
            },
            price: 550,
            imgPath: 'assets/images/image_1.png',
          ),
          RecommededPlantCard(
            title: 'Angelica',
            country: 'Italy',
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),
                  ));
            },
            price: 524,
            imgPath: 'assets/images/image_2.png',
          ),
          RecommededPlantCard(
            title: 'Perosha',
            country: 'German',
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),
                  ));
            },
            price: 900,
            imgPath: 'assets/images/image_3.png',
          ),
        ],
      ),
    );
  }
}

class RecommededPlantCard extends StatelessWidget {
  const RecommededPlantCard({
    Key key,
    @required this.imgPath,
    this.title,
    this.country,
    this.price,
    this.press,
  }) : super(key: key);

  final String imgPath;
  final String title;
  final String country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefautlPadding,
          top: kDefautlPadding / 2,
          bottom: kDefautlPadding * 2.5),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(imgPath),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefautlPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(18),
                    bottomRight: Radius.circular(18),
                  ),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23))
                  ]),
              child: Row(
                children: <Widget>[
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: '$title\n'.toUpperCase(),
                        style: Theme.of(context).textTheme.button),
                    TextSpan(
                        text: '$country'.toUpperCase(),
                        style: TextStyle(color: kPrimaryColor.withOpacity(0.5)))
                  ])),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
