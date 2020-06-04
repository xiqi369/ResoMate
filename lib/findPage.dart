import 'package:flutter/material.dart';
import 'findPagePart2.dart';
import 'findPagePart1.dart';

class Find extends StatefulWidget {
  @override
  _FindState createState() => _FindState();
}

class _FindState extends State<Find> {

  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xFFD8D8BF),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: 20.0),
                decoration: new BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1.0), //灰色的一层边框
                  color: Color(0xFFD8D8BF),
                  borderRadius: new BorderRadius.all(new Radius.circular(15.0)),
                ),
                height: 36,
                child: TextField(
                  controller: _searchController,
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: "look up",
                    prefixIcon: Icon(Icons.search),
                  ),
                  style: new TextStyle(fontSize: 14, color: Colors.black),
                )
            ),
            Container(
              child: Text(
                'Find cooperators',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 1.0),
              height: 170,
              child: Cooperators(),
            ),
            Container(
              margin: EdgeInsets.only(top: 15.0, left: 10, right: 10, bottom: 10),
              height: 200,
              child: Cooperation(),
            )
          ],
        )
    );
  }

}
