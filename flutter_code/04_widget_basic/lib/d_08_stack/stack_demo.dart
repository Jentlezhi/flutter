import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Stack(
      alignment: Alignment.bottomCenter,
//      fit: StackFit.expand,
      children: [
        Container(color: Colors.indigo,),
        Container(color: Colors.red, width: 200,height: 90,),
        Positioned(
          bottom: 0,
          right: 0,
          child: Text("进攻的巨人",style: TextStyle(backgroundColor: Colors.yellow),),
        )

      ],
    ),);
  }
}
