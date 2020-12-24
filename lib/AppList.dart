import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutterdesigns/constants.dart';

import 'plant-shop/main.dart';
import 'plant-ui/screens/home/home_screen.dart';

class AppList extends StatelessWidget {
  static const String id = 'app_list';
  const AppList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 40,
        ),
        child: GridView.count(
          crossAxisCount: 3,
          children: [
            AppCard(
              appName: "Plant UI",
              appLogo: "assets/appLogos/plant-ui.svg",
              routeName: HomeScreen.id,
            ),
            AppCard(
              appName: "Plant Shop",
              appLogo: "assets/appLogos/plant-shop.svg",
              routeName: PlantShop.id,
            ),
            AppCard(
              appName: "Wallet",
              appLogo: "assets/appLogos/wallet.svg",
              routeName: 'wallet',
            ),
            AppCard(
              appName: "Flight",
              appLogo: "assets/appLogos/flight.svg",
              routeName: 'flight',
            ),
          ],
        ),
      ),
    );
  }
}

class AppCard extends StatelessWidget {
  const AppCard({
    Key key,
    this.appLogo,
    this.appName,
    this.routeName,
  }) : super(key: key);

  final String appLogo, appName, routeName;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 4,
        vertical: 8,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '$routeName');
        },
        child: Container(
          height: size.height * 0.16,
          width: size.width * 0.24,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.1,
                  width: size.width * 0.1,
                  child: SvgPicture.asset(appLogo),
                ),
                Text(
                  '$appName',
                  style: GoogleFonts.galdeano(
                    textStyle: TextStyle(
                      fontSize: 14.0,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
