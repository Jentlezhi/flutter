import 'package:flutter/material.dart';

class DBMallContent extends StatefulWidget {
  @override
  _DBMallContentState createState() => _DBMallContentState();
}

class _DBMallContentState extends State<DBMallContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('市集内容',style: TextStyle(fontSize: 30),),
    );
  }
}
