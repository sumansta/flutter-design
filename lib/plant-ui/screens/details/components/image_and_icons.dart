import 'package:flutter/material.dart';
import 'package:flutterdesigns/plant-ui/screens/details/components/icon_cards.dart';

import '../../../constants.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.8,
      child: Row(
        children: [
          IconCards(),
          Container(
            height: size.height * 0.8,
            width: size.width * 0.75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(63),
                bottomLeft: Radius.circular(63),
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 60,
                  color: kPrimaryColor.withOpacity(0.29),
                ),
              ],
              image: DecorationImage(
                fit: BoxFit.cover,
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/img.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
