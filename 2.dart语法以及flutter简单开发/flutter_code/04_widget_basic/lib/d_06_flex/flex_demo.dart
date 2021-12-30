import 'package:flutter/material.dart';

class MyFlexDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Flex(
        direction: Axis.horizontal,
      children: [
        Text("hello",style: TextStyle(color: Colors.black, backgroundColor: Colors.orange),),
        Text("world",style: TextStyle(color: Colors.black, backgroundColor: Colors.red),),
      ],
    ),);
  }
}
