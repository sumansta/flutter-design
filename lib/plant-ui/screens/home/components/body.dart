import 'package:flutter/material.dart';
import 'package:plantapp/constants.dart';

import 'featured_plants_card_list.dart';
import 'recommended_plants_list.dart';
import 'title_with_more_button.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(
            text: "Recommended",
            press: () {},
          ),
          RecommendedPlantsList(),
          TitleWithMoreButton(
            text: "Featured Plants",
            press: () {},
          ),
          FeaturePlantCardList(),
        ],
      ),
    );
  }
}
