import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../CustomColors.dart';
import 'icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key key,
    @required this.imagePath,
  }) : super(key: key);

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefautlPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: <Widget>[
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(vertical: kDefautlPadding * 3),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefautlPadding),
                        icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ),
                  Spacer(),
                  IconCard(
                    iconPath: 'assets/icons/sun.svg',
                  ),
                  IconCard(
                    iconPath: 'assets/icons/icon_2.svg',
                  ),
                  IconCard(
                    iconPath: 'assets/icons/icon_3.svg',
                  ),
                  IconCard(
                    iconPath: 'assets/icons/icon_4.svg',
                  ),
                ],
              ),
            )),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(63),
                      bottomLeft: Radius.circular(63)),
                  boxShadow: [
                    BoxShadow(
                      color: kPrimaryColor.withOpacity(0.29),
                      blurRadius: 60,
                      offset: Offset(0, 10),
                    )
                  ],
                  image: DecorationImage(
                      alignment: Alignment.bottomLeft,
                      fit: BoxFit.cover,
                      image: AssetImage(imagePath))),
            )
          ],
        ),
      ),
    );
  }
}
