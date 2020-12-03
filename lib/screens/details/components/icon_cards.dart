import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class IconCards extends StatelessWidget {
  const IconCards({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding * 3,
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Spacer(),
            IconCard(
              iconName: "assets/icons/sun.svg",
            ),
            IconCard(
              iconName: "assets/icons/icon_2.svg",
            ),
            IconCard(
              iconName: "assets/icons/icon_3.svg",
            ),
            IconCard(
              iconName: "assets/icons/icon_4.svg",
            ),
          ],
        ),
      ),
    );
  }
}

class IconCard extends StatelessWidget {
  const IconCard({
    Key key,
    this.iconName,
  }) : super(key: key);

  final String iconName;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 48,
      width: 48,
      padding: EdgeInsets.all(kDefaultPadding / 2),
      margin: EdgeInsets.symmetric(
        vertical: size.height * 0.03,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 15),
            blurRadius: 22,
            color: kPrimaryColor.withOpacity(0.22),
          ),
          BoxShadow(
            offset: Offset(-15, -15),
            blurRadius: 20,
            color: Colors.white,
          ),
        ],
      ),
      child: SvgPicture.asset(iconName),
    );
  }
}
