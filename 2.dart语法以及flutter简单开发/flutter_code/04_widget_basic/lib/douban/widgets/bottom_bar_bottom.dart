import 'package:flutter/material.dart';

class DBBottomNavigationBarItem extends BottomNavigationBarItem {

  DBBottomNavigationBarItem(String iconName, String title) : super(
      title: Text(
        title,
      ),
      icon: Image.asset(
        'assets/images/tabbar/$iconName.png',
        width: 30,gaplessPlayback: true,
      ),activeIcon: Image.asset(
    'assets/images/tabbar/${iconName}_active.png',
    width: 30,gaplessPlayback: true,
  ));
}