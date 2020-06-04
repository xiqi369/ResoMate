import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return new Page();
  }
}

class Page extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return layout(context);
  }

  Widget layout(BuildContext context) {
    return new Scaffold(
      appBar: buildAppBar(context),
      body: new ListView(
        children: <Widget>[
          test(context),
          Scrollbar(
            child: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image(image: AssetImage("images/pig.jpg"), width: 300.0),
                Image(image: AssetImage("images/pig.jpg"), width: 300.0),
                Image(image: AssetImage("images/pig.jpg"), width: 300.0),
                Image(image: AssetImage("images/pig.jpg"), width: 300.0),
              ],
            )),
          ),

        ],
      ),
    );
  }

  Widget buildAppBar(BuildContext context) {
    return new AppBar(title: const Text('Home'));
  }

  Widget test(BuildContext context) {
    return new Container(
      margin: EdgeInsets.only(left: 20, top: 10),
      child: const Text(
        "Trending",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );
  }
}
