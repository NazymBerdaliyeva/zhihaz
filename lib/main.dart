import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zhihaz/resources/components/app_bar_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: MyHomePage(title: 'Zhihaz',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: Text(
          widget.title,
          style: TextStyle(
              fontFamily: 'Noto Sans',
               fontSize: 32,
            fontWeight: FontWeight.w700
          ),
        ),
        actions: <Widget>[
          CustomAppBarButton(_counter),
        ],
      ),

      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 40,
        child: ListView(
          scrollDirection: Axis.horizontal,

          children: <Widget>[
            Text('All'),
            Text('Sofa'),
            Text('Table'),
            Text('Bed'),
            Text('Chair'),
            Text('Cabinets')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
