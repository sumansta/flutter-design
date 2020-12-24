import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterdesigns/plant-ui/components/bottom_navbar.dart';
import 'package:flutterdesigns/plant-ui/screens/home/components/body.dart';
import 'package:flutterdesigns/AppList.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'plant_ui';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/menu.svg"),
          onPressed: () {
            Navigator.pushNamed(context, AppList.id);
          },
        ),
      ),
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
