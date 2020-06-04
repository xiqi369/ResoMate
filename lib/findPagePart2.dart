import 'package:flutter/material.dart';

class Cooperation extends StatefulWidget {
  @override
  _CooperationState createState() => _CooperationState();
}

class _CooperationState extends State<Cooperation> {

  var list = ['Peter', 'Alice', 'Joy'];

  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: this.list.map((String item) {
        return new Container(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.white,
              child: new Row(
                children: <Widget>[
                  new CircleAvatar(
                    backgroundImage: AssetImage("assets/images/pig.jpg"),
                    radius: 20.0,
                  ),
                  new Container(
                      color: Colors.white,
                      width: 250,
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Text(item),
                          new Text('looking for a singer'),
                        ],
                      )
                  ),
                  Icon(Icons.person_add),
                  Icon(Icons.more_horiz),
                ],
              ),
            )

        );
      }).toList(),
    );

  }
}
