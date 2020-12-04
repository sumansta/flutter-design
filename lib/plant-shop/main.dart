import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlantShop extends StatelessWidget {
  const PlantShop({Key key}) : super(key: key);

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
    );
  }
}
