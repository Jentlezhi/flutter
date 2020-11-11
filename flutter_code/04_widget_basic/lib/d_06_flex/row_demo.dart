import 'package:flutter/material.dart';

class MyRowDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return rowContainer();
  }

  Container rowContainer() {
    return Container(
      child: Row(
        //基线对齐方式（必须有文本的时候才有效果），必须设置textBaseline
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Container(
            width: 80,
            height: 80,
            color: Colors.red,
            child: Text("Hello",style: TextStyle(fontSize: 20),),
          ),
          Container(
            width: 60,
            height: 80,
            color: Colors.black,
            child: Text("flutter",style: TextStyle(fontSize: 12, color: Colors.white),),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            child: Text("google",style: TextStyle(fontSize: 30),),
          ),
          Container(
            width: 80,
            height: 180,
            color: Colors.orange,
            child: Text("dart",style: TextStyle(fontSize: 25),),
          ),
        ],
      ),
    );
  }
}

class buttonChildRow extends StatelessWidget {
  const buttonChildRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.pets),
          Text("哈哈"),
        ],
      ),
      onPressed: () {},
    );
  }
}
