import 'dart:math';

import 'package:flutter/material.dart';

class MyGridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          //交叉轴/主轴比例
          childAspectRatio: 1,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Color.fromARGB(255, Random().nextInt(255), Random().nextInt(255), Random().nextInt(255)),
          );
        },
      ),
    );
  }
}

class GridViewDefault extends StatelessWidget {
  const GridViewDefault({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        //交叉轴/主轴比例
        childAspectRatio: 0.5,
      ),
      children: [
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.yellow,
        ),
        Container(
          color: Colors.black,
        ),
        Container(
          color: Colors.blue,
        ),
        Container(
          color: Colors.orange,
        ),
        Container(
          color: Colors.cyan,
        ),
      ],
    );
  }
}
