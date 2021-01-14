import 'package:flutter/material.dart';

class ColumnData extends StatelessWidget {
  final String title;
  final double price;

  ColumnData(this.title, this.price);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          title,
          textScaleFactor: 1,
          style: TextStyle(
            fontSize: 15,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal,
            color: Colors.black.withOpacity(0.6),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        FittedBox(
          child: Text(
            price.toString(),
            textScaleFactor: 1,
            style: TextStyle(
              fontSize: 15,
              fontStyle: FontStyle.normal,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
