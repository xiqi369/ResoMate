import 'package:flutter/material.dart';

class FindScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FindScreenState();
}

class FindScreenState extends State<FindScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: buildColumn()),
    );
  }
}

Widget buildColumn() =>
    // #docregion Column
Column(
  children: [
    Container(
        height: 100,
        child: SearchBar()
    ),
    Container(
      height: 200,
      child: label(),
    ),
  ],
);
// #enddocregion Column

class label extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new labelState();
}

class labelState extends State<label> {
  final List<Tab> tabs = <Tab>[
    new Tab(
      text: 'composer',
    ),
    new Tab(
      text: 'arranger',
    ),
    new Tab(
      text: 'singer',
    ),
    new Tab(
      text: 'lyrics writer',
    ),
    new Tab(
      text: 'MV maker',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: tabs.length,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text('Find partner'),
          bottom: new TabBar(
            tabs: tabs,
            isScrollable: true,
            labelColor: Colors.blueGrey,
            unselectedLabelColor: Colors.white,
            labelStyle: new TextStyle(fontSize: 18.0),
          ),
        ),
        body: new TabBarView(
          children: tabs.map((Tab tab) {
            return new Center(
              child: buildAvatarRow(),
            );
          }).toList(),
        ),
      ),
    );
  }
}

Widget buildAvatarRow() =>
    // #docregion Row
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Image.asset('images/photo.jpg'),
    Image.asset('images/photo.jpg'),
    Image.asset('images/photo.jpg'),
  ],
);
// #enddocregion Row

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  //String query="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
            actions:<Widget>[
              IconButton(
                  icon:Icon(Icons.search),
                  onPressed: (){
                    showSearch(context:context,delegate: searchBarDelegate());
                  }
              ),
            ]
        )
    );
  }
}
const searchList = [
  "result1",
  "result2",
  "result3",
  "result4"
];

const recentSuggest = [
  "recommend1",
  "recommend2"
];
class searchBarDelegate extends SearchDelegate<String>{
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: ()=>query="",
      )
    ];
  }
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
      onPressed: ()=>close(context, null),
    );
  }
  @override
  Widget buildResults(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      child: Card(
        color: Colors.blueGrey,
        child: Center(
          child: Text(query),
        ),
      ),
    );
  }
  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentSuggest
        : searchList.where((input) => input.startsWith(query)).toList();
    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context,index) => ListTile(
        title: RichText(
            text: TextSpan(
                text: suggestionList[index].substring(0, query.length),
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
                children:[
                  TextSpan(
                      text: suggestionList[index].substring(query.length),
                      style: TextStyle(
                          color: Colors.black87
                      )
                  )
                ]
            )
        ),
      ),
    );
  }
}
