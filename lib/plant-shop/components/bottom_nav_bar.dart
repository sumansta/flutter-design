import 'package:flutter/material.dart';
import 'package:flutterdesigns/plant-shop/constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 4.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            16.0,
          ),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 6),
                blurRadius: 25,
                color: Colors.grey.withOpacity(0.63)),
            BoxShadow(
                offset: Offset(0, -6),
                blurRadius: 25,
                color: Colors.grey.withOpacity(0.63)),
          ],
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: primaryColor,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: secondaryColor,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: secondaryColor,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.person,
                  color: secondaryColor,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
