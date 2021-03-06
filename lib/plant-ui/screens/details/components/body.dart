import 'package:flutter/material.dart';
import 'package:flutterdesigns/constants.dart';
import 'package:flutterdesigns/plant-ui/screens/details/components/image_and_icons.dart';
import 'package:flutterdesigns/plant-ui/screens/details/components/title_and_price.dart';

import 'buy_now_section.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(),
          TitleAndPrice(
            title: "Angelica",
            country: "Russia",
            price: 400,
          ),
          BuyNowSection(),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
