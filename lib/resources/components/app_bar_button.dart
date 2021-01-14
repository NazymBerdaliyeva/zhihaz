import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBarButton extends StatelessWidget {

  final int counter;

  CustomAppBarButton(this.counter);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            print('clicked');
          },
          child: Padding(
            padding: EdgeInsets.only(top:3,left: 16),
            child: Container(
              width: 72,
              height: 48,
              decoration: new BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(41, 41, 41, 0.1),
                    offset: Offset(0,0),
                    blurRadius: 5.0,
                    spreadRadius: 2,
                  ),
                ],
                borderRadius: BorderRadius.horizontal(
                  left: new Radius.circular(30),
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 12,
                    left: 23,
                    child: new SvgPicture.asset(
                      "assets/images/shopping-bag.svg",
                      width: 24,
                      height: 24,
                    ),
                  ),
                  counter == 0
                      ? new Container()
                      : new Positioned(
                    top: 22,
                    left: 36,
                    child: new Stack(
                      children: <Widget>[
                        new Icon(Icons.brightness_1,
                            size: 18.0, color: Colors.purple[300]),
                        new Positioned(
                          top: 3.0,
                          right: 2.0,
                          child: new Center(
                            child: new Text(
                              counter.toString(),
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                  color: Colors.white,
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
