import 'package:flutter/material.dart';

class emptyPage extends StatefulWidget {
  @override
  _emptyPageState createState() => _emptyPageState();
}

class _emptyPageState extends State<emptyPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text('empty'),
      ),
    );
  }
}
