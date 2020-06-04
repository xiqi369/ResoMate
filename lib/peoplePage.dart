import 'package:flutter/material.dart';

class People extends StatefulWidget {
  @override
  _PeopleState createState() => _PeopleState();
}

class _PeopleState extends State<People> {
  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 15.0),
          child: Column(
            children: <Widget>[
              new CircleAvatar(
                backgroundImage: AssetImage("assets/images/pig.jpg"),
                radius: 40.0,
              ),
              new Text('Peter'),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 15.0, left: 20),
          child: Column(
            children: <Widget>[
              new CircleAvatar(
                backgroundImage: AssetImage("assets/images/pig.jpg"),
                radius: 40.0,
              ),
              new Text('Alice'),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 15.0, left: 20),
          child: Column(
            children: <Widget>[
              new CircleAvatar(
                backgroundImage: AssetImage("assets/images/pig.jpg"),
                radius: 40.0,
              ),
              new Text('Joy'),
            ],
          ),
        ),
      ],
    );
  }
}
