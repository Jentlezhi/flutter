import 'package:flutter/material.dart';

class PointerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Listener(
        onPointerDown: (event) => print("手指按下:$event"),
        onPointerMove: (event) => print("手指移动:$event"),
        onPointerUp: (event) => print("手指抬起:$event"),
        child: Container(
          width: 300,
          height: 300,
          color: Colors.green,
          alignment: Alignment.center,
//          child: GestureDetector(
//            onTap: (){
//              print("inter - tap");
//            },
//            child: Container(
//              width: 200,
//              height: 200,
//              color: Colors.red,
//            ),
//          ),
        ),
      ),
    );
  }
}
