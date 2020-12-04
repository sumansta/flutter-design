import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plantapp/plant-ui/components/bottom_navbar.dart';
import 'package:plantapp/plant-ui/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/menu.svg"),
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
        ),
      ),
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
