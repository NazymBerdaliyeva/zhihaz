import 'package:flutter/material.dart';
import 'package:zhihaz/model/category.dart';

class FurnitureCategory extends StatefulWidget {

  @override
  _FurnitureCategoryState createState() => _FurnitureCategoryState();
}

class _FurnitureCategoryState extends State<FurnitureCategory> {

  List<Category> _categories = <Category>[
    Category(index: 0, name: 'All'),
    Category(index: 1, name: 'Sofa'),
    Category(index: 2, name: 'Table'),
    Category(index: 3, name: 'Bed'),
    Category(index: 4, name: 'Chair'),
    Category(index: 5, name: 'Cabinets')
  ];

  var selectedCategory = new Category();

  @override
  void initState() {
    super.initState();
    selectedCategory = _categories[0];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: _categories.length,
      itemBuilder: (_, int index) {
        final category = _categories[index];
        return GestureDetector(
          onTap: () {
            print('chose category ${category.name}');
            setState(() {
              selectedCategory = category;
            });
          },
          child: Container(
            width: 16 * category.name.length.toDouble(),
            margin: new EdgeInsets.all(5.0),
            padding: new EdgeInsets.symmetric(vertical: 6, horizontal: 10),
            decoration: new BoxDecoration(
              color: selectedCategory == category ? Colors.amber : Colors.grey.shade200,
              borderRadius: BorderRadius.all(
                new Radius.circular(15.0),
              ),
            ),
            child: Text(
              category.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ),
        );
      },
    );
  }
}
