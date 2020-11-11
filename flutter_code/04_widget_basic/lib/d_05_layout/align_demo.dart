import 'package:flutter/material.dart';

class MyAlineDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.yellow,
      height: 200,
      width: 200,
      child: Text('Hello world',style: TextStyle(backgroundColor: Colors.orange),),
    );
  }
}

class ContainerAlignment extends StatelessWidget {
  const ContainerAlignment({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Icon(
        Icons.pets,
        color: Colors.orange,
        size: 100,
      ),
    );
  }
}

class AlignIn extends StatelessWidget {
  const AlignIn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Align(
//        alignment: Alignment.center,
        child: Icon(
          Icons.pets,
          color: Colors.orange,
          size: 100,
        ),
      ),
    );
  }
}
