import 'package:flutter/material.dart';
import 'package:hello_flutter/douban/widgets/bottom_bar_bottom.dart';

import 'pages/home/home_content.dart';
import 'widgets/initilaze_items.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyAppPage());
  }
}

class MyAppPage extends StatefulWidget {
  @override
  _MyAppPageState createState() => _MyAppPageState();
}

class _MyAppPageState extends State<MyAppPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent
      ),
      home: Scaffold(
//      appBar: AppBar(
//        title: Text("豆瓣"),
//      ),
        body: IndexedStack(
          index: _currentIndex,
          children: pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 14.0,
          unselectedFontSize: 14.0,
          selectedItemColor: Colors.green,
          unselectedItemColor: Color(0xff666666),
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: items,
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}


//class MyAppPage extends StatelessWidget {
//
//  int _currentIndex = 0;
//  @override
//  Widget build(BuildContext context) {
//
//  }
//
//  BottomNavigationBarItem _buildBarItem({@required String title, @required String normalImageName}){
//
//    return BottomNavigationBarItem(
//        title: Text(
//          '首页',
////          style: TextStyle(color: Colors.black),
//        ),
//        icon: Image.asset(
//          'assets/images/tabbar/$normalImageName.png',
//          width: 30,
//        ),activeIcon: Image.asset(
//      'assets/images/tabbar/${normalImageName}_active.png',
//      width: 30,
//    ));
//  }
//
//}
