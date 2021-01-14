import 'package:flutter/material.dart';

import 'columnd_data.dart';

class FurnitureForm extends StatelessWidget {
  final String name;
  final double price;
  final String image;

  FurnitureForm({this.name, this.price, this.image});


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      height: 450,
      width: 152,
      margin: new EdgeInsets.only(
        left: 2.5,
        right: 2.5,
        top: 5
      ),
      child: Stack(
        children: <Widget>[
          Container(
            child: Image.asset(
              image,
              fit: BoxFit.fill,
              height: 450,
              width: 152,
            ),
          ),
          Positioned(
            top: 24,
            right: 16,
            child: Icon(Icons.favorite_border),
          ),
          Positioned(
            child: ColumnData(name, price),
          ),
        ],
      ),
    );
  }
}
