import 'package:flutter/material.dart';
import 'package:hello_flutter/douban/pages/group/group_page.dart';
import 'package:hello_flutter/douban/pages/home/home_page.dart';
import 'package:hello_flutter/douban/pages/mall/mall_page.dart';
import 'package:hello_flutter/douban/pages/subject/subject_page.dart';
import 'bottom_bar_bottom.dart';

List<BottomNavigationBarItem> items = [
  DBBottomNavigationBarItem("home", '首页'),
  DBBottomNavigationBarItem("subject", '书影音'),
  DBBottomNavigationBarItem("group", '小组'),
  DBBottomNavigationBarItem("mall", '市集'),
];

List<Widget> pages = [
  DBHomePage(),
  DBSubjectPage(),
  DBGroupPage(),
  DBMallPage(),
];
