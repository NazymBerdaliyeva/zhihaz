import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PrimaryButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: new EdgeInsets.only(top: 50),
      decoration: new BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.all(
          new Radius.circular(30.0),
        ),
      ),
      width: 230,
      child: OutlineButton(
        onPressed: () {},
        color: Colors.amber,
        child: ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(left: 25),
            child: SvgPicture.asset(
              "assets/images/cube.svg",
              width: 24,
              height: 24,
            ),
          ),
          title: Align(
            alignment: Alignment(-1.0, 0),
            child: Text(
              'AR VIEW',
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    );
  }
}
