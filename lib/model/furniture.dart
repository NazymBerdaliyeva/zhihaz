import 'package:flutter/cupertino.dart';

class Furniture {
  int id;
  String name;
  String image;
  double price;
  bool isFavorite = false;

  Furniture({
    @required this.id,
    @required this.name,
    @required this.image,
    this.price,
    this.isFavorite,
  });
}
