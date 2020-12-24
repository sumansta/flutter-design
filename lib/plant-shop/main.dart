import 'package:flutter/material.dart';
import 'package:flutterdesigns/plant-shop/components/bottom_nav_bar.dart';
import 'package:flutterdesigns/plant-shop/screens/home/home_screen.dart';

class PlantShop extends StatelessWidget {
  static const String id = "plant_shop";
  const PlantShop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PlantShopHome(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
