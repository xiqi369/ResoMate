import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return new Page();
  }
}

class Page extends State<MinePage> {
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
          Container(
            margin: EdgeInsets.only(left: 20),
            child: ClipOval(
              child: Container(
                width: 50.0,
                height: 50.0,
                color: Color.fromARGB(255, 250, 150, 150),
                child: Icon(
                  Icons.person,
                  size: 40,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }

  Widget buildAppBar(BuildContext context) {
    return new AppBar(title: const Text('Mine'));
  }

  Widget test(BuildContext context) {
    return  new Container(
      margin: EdgeInsets.only(left:20,top: 10),
      child: const Text("This is a test",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black87,),
      ),
    );
  }
}

