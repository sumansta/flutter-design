import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key key,
    this.title,
    this.country,
    this.price,
  }) : super(key: key);

  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$title\n",
                  style: Theme.of(context).textTheme.headline5.copyWith(
                        color: kTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                TextSpan(
                  text: "$country",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Text(
            '\$$price',
            style: Theme.of(context).textTheme.headline5.copyWith(
                  color: kPrimaryColor,
                ),
          ),
        ],
      ),
    );
  }
}
