import 'package:flutter/material.dart';
import 'peoplePage.dart';

class Cooperators extends StatefulWidget {
  @override
  _CooperatorsState createState() => _CooperatorsState();
}

class _CooperatorsState extends State<Cooperators> with SingleTickerProviderStateMixin{

  TabController tabcontroller1;

  @override
  void initState() {
    super.initState();
    tabcontroller1 = new TabController(
        length: 5,
        vsync: this
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: PreferredSize(
          child: new AppBar(
            backgroundColor: Colors.teal,
            bottom: TabBar(
              controller: tabcontroller1,
              tabs: <Tab>[
                new Tab(text: "Singer"),
                new Tab(text: "Composer"),
                new Tab(text: "Arranger",),
                new Tab(text: "MV maker",),
                new Tab(text: "Lyrics writer",),
              ],
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
            ),
          ),
          preferredSize: Size.fromHeight(50),
        ),
        body: new TabBarView(
          controller: tabcontroller1,
          children: <Widget>[
            new People(),
            new People(),
            new People(),
            new People(),
            new People(),
          ],
        ),
    );
  }
}
