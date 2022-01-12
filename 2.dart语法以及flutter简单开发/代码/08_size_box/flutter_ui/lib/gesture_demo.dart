import 'package:flutter/material.dart';

class MyGestureDemo extends StatefulWidget {
  @override
  _MyGestureDemoState createState() => _MyGestureDemoState();
}

class _MyGestureDemoState extends State<MyGestureDemo> {
  @override
  Color bgColor = Colors.green;
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTapDown: (details){
            setState(() {
              bgColor = Colors.lightGreenAccent;
            });
          },
          onTapUp: (details){
            print("onTapUp");
            setState(() {
              bgColor = Colors.green;
            });
          },
          child: Container(
            height: 50,
            color: bgColor,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            color: Colors.lightGreenAccent
          ),
          padding: EdgeInsets.all(20.0),
          child: Image.asset("images/pic_cheshangquan.png"),
        ),
        Container(
          margin: EdgeInsets.all(20.0),
          width: 80.0,
          height: 80.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            image: DecorationImage(image: AssetImage("images/pic_cheshangquan.png"))
          ),
        )
      ],
    );
  }}
