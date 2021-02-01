import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/CustomColors.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefautlPadding + 2.5),
      // cover 20% of total height
      height: size.height * 0.2,

      child: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36))),
          ),
          Positioned(
            top: 9,
            left: 0,
            right: 0,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  alignment: Alignment.centerLeft,
                  height: size.height * 0.2 - 90,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                  ),
                  child: Text(
                    'Hi Uishopy!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Image.asset(
                  'assets/images/logo.png',
                  scale: 1.2,
                )
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: kDefautlPadding),
                padding: EdgeInsets.symmetric(horizontal: kDefautlPadding),
                height: 54,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: kPrimaryColor.withOpacity(0.23))
                    ]),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle:
                              TextStyle(color: kPrimaryColor.withOpacity(0.5)),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    SvgPicture.asset('assets/icons/search.svg'),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
