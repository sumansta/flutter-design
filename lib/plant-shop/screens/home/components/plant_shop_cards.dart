import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutterdesigns/plant-shop/models/plant_model.dart';

class PlantShopCards extends StatelessWidget {
  const PlantShopCards({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        itemCount: plants.length,
        itemBuilder: (BuildContext context, int index) {
          Plant plant = plants[index];
          return new Container(
            margin: EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Color(0xFFF3F3F3),
            ),
            child: Column(
              children: [
                CardImage(
                  imageUrl: plant.imageUrl,
                ),
                CardDetails(
                  name: plant.name,
                  price: plant.price,
                ),
              ],
            ),
          );
        },
        staggeredTileBuilder: (int index) =>
            new StaggeredTile.count(2, index.isEven ? 3 : 2),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
    );
  }
}

class CardDetails extends StatelessWidget {
  const CardDetails({
    Key key,
    this.name,
    this.price,
  }) : super(key: key);

  final String name;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 16.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                    text: '$name\n',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [TextSpan(text: '\$$price')]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardImage extends StatelessWidget {
  const CardImage({
    Key key,
    this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              imageUrl,
              fit: BoxFit.scaleDown,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              icon: Icon(Icons.favorite),
              color: Colors.black,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
