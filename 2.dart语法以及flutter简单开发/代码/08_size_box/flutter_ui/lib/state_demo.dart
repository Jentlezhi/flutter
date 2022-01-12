import 'package:flutter/material.dart';

class MyTestDemo extends StatefulWidget {
  @override
  _MyTestDemoState createState() => _MyTestDemoState();
}

class _MyTestDemoState extends State<MyTestDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset("images/pic_cheshangquan.png"),
    );
  }
}
