import 'package:flutter/material.dart';
import 'package:plantapp/plant-shop/constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 16.0,
      ),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              text: 'Welcome to\n',
              style: Theme.of(context).textTheme.headline6.copyWith(
                    color: Colors.black,
                  ),
              children: [
                TextSpan(
                  text: 'Plant Shop',
                  style: Theme.of(context).textTheme.headline4.copyWith(
                        color: primaryColor,
                      ),
                ),
              ],
            ),
          ),
          Spacer(),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
          ),
        ],
      ),
    );
  }
}
