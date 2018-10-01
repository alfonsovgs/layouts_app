import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      home: HomeApp(),
    );
  }
}

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  Widget _getMainAxisAlignment() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Icon(
          Icons.star,
          size: 50.0,
        ),
        Icon(
          Icons.star,
          size: 50.0,
        ),
        Icon(
          Icons.star,
          size: 50.0,
        ),
      ],
    );
  }

  Widget _getCrossAxisAlignment() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: <Widget>[
        Text(
          'Baseline',
          style: Theme.of(context).textTheme.display3,
        ),
        Text(
          'Baseline',
          style: Theme.of(context).textTheme.body1,
        ),
      ],
    );
  }

  Widget _getCrossAxisAlignment2() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Icon(
          Icons.star,
          size: 50.0,
        ),
        Icon(
          Icons.star,
          size: 200.0,
        ),
        Icon(
          Icons.star,
          size: 50.0,
        ),
      ],
    );
  }

  Widget _getMainAxisSize() {
    return Row /*or Column*/ (
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        new Icon(Icons.star, size: 50.0),
        new Icon(Icons.star, size: 50.0),
        new Icon(Icons.star, size: 50.0),
      ],
    );
  }

  Widget _getStack() {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Banner(
          message: "Top Start",
          location: BannerLocation.topStart,
        ),
        Banner(
          message: "Top End",
          location: BannerLocation.topEnd,
        ),
        Banner(
          message: "Bottom Start",
          location: BannerLocation.bottomStart,
        ),
        Banner(
          message: "Bottom End",
          location: BannerLocation.bottomEnd,
        ),
      ],
    );
  }

  Widget _getStack2() {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Material(color: Colors.yellowAccent),
        Positioned(
          top: 0.0,
          left: 0.0,
          child: Icon(Icons.star, size: 50.0),
        ),
        Positioned(
          top: 340.0,
          left: 250.0,
          child: Icon(Icons.call, size: 50.0),
        ),
      ],
    );
  }

  Widget _getBottoms() {
    return IntrinsicWidth(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        RaisedButton(
          onPressed: () {},
          child: Text('Short'),
        ),
        RaisedButton(
          onPressed: () {},
          child: Text('A bit Longer'),
        ),
        RaisedButton(
          onPressed: () {},
          child: Text('The Longest text button'),
        ),
      ],
    ));
  }

  Widget _getFlexBox() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(color: Colors.red),
          ),
          flex: 3,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(color: Colors.green),
          ),
          flex: 2,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(color: Colors.blue),
          ),
          flex: 1,
        ),
      ],
    );
  }

  Widget _getConstrainedBox() {
    return ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: double.infinity,
          maxWidth: double.infinity,
          minHeight: 300.0,
          maxHeight: 300.0,
        ),
        child: Card(
          child: Text('Hello World!'),
          color: Colors.yellow,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layouts"),
      ),
      body: Center(
        child: _getConstrainedBox(),
      ),
    );
  }
}
