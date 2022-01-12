import 'package:flutter/material.dart';
import 'package:flutter_ui/state_demo.dart';

import 'gesture_demo.dart';
import 'layout_demo.dart';
import 'list_view_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Demo'),),
        body: Center(
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    width: 400,
                    height: 400,
                    color: Colors.orange,
                    child: Center(
                      child: SizedBox.expand(
                        // height: double.infinity,
                        // width: double.infinity,
                        child: MyButton(),
                      ),
                    ),
                  ),
                  MyTestDemo(),
                  MyGestureDemo(),
                  LayoutDemo(),
                  ListViewDemo(),
                ],
              ),
            ],
          )
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        child: Center(child: Text('Button',style: TextStyle(fontSize: 25, color: Colors.white,),),)
    );
  }
}


