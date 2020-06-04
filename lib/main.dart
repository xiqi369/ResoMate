import 'package:flutter/material.dart';
import 'findPage.dart';
import 'emptyPage.dart';


void main(){
  runApp(
      new MaterialApp(
          title:'ResoMate',
          home:new MyApp()
      )
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() =>new _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin{

  TabController tabcontroller;

  @override
  void initState() {
    super.initState();
    tabcontroller = new TabController(
        length: 5,
        vsync: this
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Color(0xFF2F4F4F),
        ),
        body: new TabBarView(
          controller: tabcontroller,
          children: <Widget>[
            new emptyPage(),
            new Find(),
            new emptyPage(),
            new emptyPage(),
            new emptyPage(),
          ],
        ),
        bottomNavigationBar: new Material(
          color: Color(0xFF8FBC8F),
          child: new TabBar(
            controller: tabcontroller,
            tabs: <Tab>[
              new Tab(text: "Home",icon: new Icon(Icons.home)),
              new Tab(text: "Find",icon: new Icon(Icons.search)),
              new Tab(text: "Upload",icon: new Icon(Icons.file_upload)),
              new Tab(text: "Chat",icon: new Icon(Icons.chat)),
              new Tab(text: "Me",icon: new Icon(Icons.person)),
            ],
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
          ),
        )
    );
  }

  @override
  void dispose() {
    tabcontroller.dispose();
    super.dispose();
  }
}
