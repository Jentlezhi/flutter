import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('对超出范围的适配'),
        ),
        body: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _widget(context),
          SizedBox(height: 20,),
          FittedBox(child: _widget(context),),
        ],
      ),
    );
  }

  Widget _widget(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 300,
          color: Colors.orange,
        ),
        SizedBox(width: 10,),
        Container(
          height: 50,
          width: 100,
          color: Colors.red,
        ),
      ],
    );
  }
}
