import 'package:flutter/material.dart';
import 'chat/ChatPage.dart';
import 'upload/UploadPage.dart';
import 'find/FindPage.dart';
import 'home/HomePage.dart';
import 'mine/MinePage.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false, home: new MainPageWidget());
  }
}

class MainPageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MainPageState();
  }
}

class MainPageState extends State<MainPageWidget> {
  final _BottomNavigationColor = Colors.redAccent; //组件内部私有变量

  int _tabIndex = 0;
  var tabImages;
  var appBarTitles = ['Home', 'Find', 'Upload', 'Chat', 'Me'];

  var _pageList;


  Image getTabIcon(int curIndex) {
    if (curIndex == _tabIndex) {
      return tabImages[curIndex][1];
    }
    return tabImages[curIndex][0];
  }

  Text getTabTitle(int curIndex) {
    if (curIndex == _tabIndex) {
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(fontSize: 14.0, color: Colors.red));
    } else {
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(fontSize: 14.0, color: const Color(0xff515151)));
    }
  }
//
//  Image getTabImage(path) {
//    return new Image.asset(path, width: 24.0, height: 24.0);
//  }


  void initData() {

//    tabImages = [
//      [getTabImage('images/home.png'), getTabImage('images/home_selected.png')],
//      [getTabImage('images/find.png'), getTabImage('images/find_selected.png')],
//      [getTabImage('images/person.png'), getTabImage('images/person_selected.png')]
//    ];


    _pageList = [
      new HomePage(),
      new FindPage(),
      new UploadPage(),
      new ChatPage(),
      new MinePage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    initData();
    return Scaffold(
        body: _pageList[_tabIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(

              icon: Icon(
                Icons.headset,
                color: _BottomNavigationColor,
              ),
              title: Text(
                'Home',
                style: TextStyle(color: _BottomNavigationColor),
              )

          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: _BottomNavigationColor,
              ),
              title: Text(
                'Find',
                style: TextStyle(color: _BottomNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.publish,
                color: _BottomNavigationColor,
              ),
              title: Text(
                'Upload',
                style: TextStyle(color: _BottomNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.message,
                color: _BottomNavigationColor,
              ),
              title: Text(
                'Chat',
                style: TextStyle(color: _BottomNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: _BottomNavigationColor,
              ),
              title: Text(
                'Me',
                style: TextStyle(color: _BottomNavigationColor),
              )),
        ],
        type: BottomNavigationBarType.fixed,

        currentIndex: _tabIndex,
        iconSize: 24.0,

        onTap: (index) {
          setState(() {
            _tabIndex = index;
          });
        },

      ),
    );

  }
}
