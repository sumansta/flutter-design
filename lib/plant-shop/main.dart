import 'package:flutter/material.dart';
import 'package:plantapp/plant-shop/components/bottom_nav_bar.dart';
import 'package:plantapp/plant-shop/screens/home/home_screen.dart';

class PlantShop extends StatelessWidget {
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
