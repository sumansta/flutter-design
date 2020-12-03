import 'package:flutter/material.dart';
import 'package:plantapp/constants.dart';
import 'package:plantapp/screens/details/details_screen.dart';

class RecommendedPlantsList extends StatelessWidget {
  const RecommendedPlantsList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(
        right: kDefaultPadding,
      ),
      child: Row(
        children: <Widget>[
          RecommendedPlant(
            name: "Suman",
            country: "Nepal",
            image: "assets/images/image_1.png",
            price: 500,
            onCardPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          RecommendedPlant(
            name: "Mike",
            country: "Nepal",
            image: "assets/images/image_2.png",
            price: 200,
            onCardPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          RecommendedPlant(
            name: "Jack",
            country: "Nepal",
            image: "assets/images/image_3.png",
            price: 300,
            onCardPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class RecommendedPlant extends StatelessWidget {
  const RecommendedPlant({
    Key key,
    this.image,
    this.name,
    this.price,
    this.onCardPress,
    this.country,
  }) : super(key: key);

  final String image, country, name;
  final int price;
  final Function onCardPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.4,
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 1.2,
      ),
      child: GestureDetector(
        onTap: onCardPress,
        child: Container(
          child: Column(
            children: [
              Image.asset(image),
              Container(
                padding: EdgeInsets.all(kDefaultPadding / 2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '$name\n'.toUpperCase(),
                            style: Theme.of(context).textTheme.button,
                          ),
                          TextSpan(
                            text: '$country'.toUpperCase(),
                            style: TextStyle(
                              color: kPrimaryColor.withOpacity(0.5),
                            ),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Text(
                      "\$$price",
                      style: Theme.of(context).textTheme.button.copyWith(
                            color: kPrimaryColor,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
