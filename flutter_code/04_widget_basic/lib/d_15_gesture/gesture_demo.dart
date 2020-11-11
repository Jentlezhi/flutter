import 'package:flutter/material.dart';


class GestureDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTapDown: (details){
          print("outer - tap");
        },
        child: Container(
          width: 300,
          height: 300,
          color: Colors.green,
          alignment: Alignment.center,
          child: IgnorePointer(
            child: GestureDetector(
              onTapDown: (details){
                print("inter - tap");
              },
              child: Container(
                width: 200,
                height: 200,
                color: Colors.red,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class GestureDemo1  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          GestureDetector(
            onTapDown: (details){
              print("outer - tap");
            },
            child: Container(
              width: 300,
              height: 300,
              color: Colors.green,
              alignment: Alignment.center,
            ),
          ),
          GestureDetector(
            onTapDown: (details){
              print("inter - tap");
            },
            child: Container(
              width: 200,
              height: 200,
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}

class GestureDemo2  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Listener(
        child: AbsorbPointer(
          child: Listener(
            child: Container(
              color: Colors.red,
              width: 200.0,
              height: 100.0,
            ),
            onPointerDown: (event)=>print("in"),
          ),
        ),
        onPointerDown: (event)=>print("up"),
      ),
    );
  }
}
