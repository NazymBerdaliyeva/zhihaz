import 'package:flutter/material.dart';
import 'package:zhihaz/model/furniture.dart';
import 'package:zhihaz/resources/components/furniture_form.dart';

class FurnitureMain extends StatelessWidget {
  final List<Furniture> _furnitureList = <Furniture>[
    Furniture(
        id: 1,
        name: "Hemes Armchair",
        price: 729.00,
        image: "assets/images/item1.jpg"),
    Furniture(
        id: 2,
        name: "Martin Chair",
        price: 143.65,
        image: "assets/images/item2.jpg"),
    Furniture(
        id: 3,
        name: "Charel Dining Chair",
        price: 294.00,
        image: "assets/images/item3.jpg"),
    Furniture(
        id: 4,
        name: "Brady Chair",
        price: 289.00,
        image: "assets/images/item4.jpg"),
    Furniture(
        id: 5,
        name: "Dalla Dining Chairs",
        price: 189.00,
        image: "assets/images/item5.jpg"),
    Furniture(
        id: 6,
        name: "Occasional Chair",
        price: 89.00,
        image: "assets/images/item6.jpg"),
    Furniture(
        id: 7,
        name: "Markus Office Chaor ",
        price: 126.04,
        image: "assets/images/item7.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 440,
      margin: new EdgeInsets.only(
          left: 16,
          right: 16,
      ),
      child: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: _furnitureList.length,
        itemBuilder: (_, index) {
          final furniture = _furnitureList[index];
          return new FurnitureForm(
            name: furniture.name,
            image: furniture.image,
            price: furniture.price,
          );
        },
      ),
    );
  }
}
