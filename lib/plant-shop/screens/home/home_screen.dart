import 'package:flutter/material.dart';
import 'package:flutterdesigns/plant-shop/constants.dart';
import 'package:flutterdesigns/plant-shop/screens/home/components/header.dart';
import 'package:flutterdesigns/plant-shop/screens/home/components/plant_shop_cards.dart';
import 'package:flutterdesigns/plant-shop/screens/home/components/search_and_filter.dart';

class PlantShopHome extends StatelessWidget {
  const PlantShopHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          top: kDefaultPadding * 2,
          left: kDefaultPadding - 10,
          right: kDefaultPadding - 10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Header(),
            SearchAndFilter(),
            SizedBox(
              height: size.height * 0.6,
              child: PlantShopCards(),
            ),
          ],
        ),
      ),
    );
  }
}
