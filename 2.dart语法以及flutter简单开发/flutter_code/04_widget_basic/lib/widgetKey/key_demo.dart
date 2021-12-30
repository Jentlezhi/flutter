import 'dart:math';

import 'package:flutter/material.dart';

class KeyDemo2Page extends StatefulWidget {

  KeyDemo2Page(){
    print('KeyDemo2Page-初始化');
  }
  @override
  _KeyDemo2PageState createState() => _KeyDemo2PageState();
}

class _KeyDemo2PageState extends State<KeyDemo2Page> {
  final List<String> _names = ["1", "2", "3", "4", "5", "6", "7"];

  @override
  Widget build(BuildContext context) {
    print("触发build--方法");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Key demo"),
      ),
      body: ListView(
        children: _names.map((item) {
          return KeyItemLessWidget(item,key: UniqueKey(),);
//          return KeyItemFullWidget(item,Key(item));
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.delete),
        onPressed: (){
          setState(() {
            if(_names.isNotEmpty){
              _names.removeAt(0);
            }
          });
        },
      ),
    );
  }
}

//class KeyItemLessWidget extends StatelessWidget {
////  final String name;
////  final randColor = Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256));
////  KeyItemLessWidget(this.name);
////
////  @override
////  Widget build(BuildContext context) {
////    return Container(
////      child: Text(name, style: TextStyle(color: Colors.white, fontSize: 50),),
////      height: 80,
////      color: randColor,
////    );
////  }
////}

class KeyItemLessWidget extends StatelessWidget {

  final String name;
  KeyItemLessWidget(this.name,{Key key}) : super(key:key){
    print("KeyItemLessWidget初始化-$name");
  }
  final Color randColor = Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256));

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(name, style: TextStyle(color: Colors.white, fontSize: 50),),
      height: 80,
      color: randColor,
    );
  }
}

class KeyItemFullWidget extends StatefulWidget {
  final String name;

  KeyItemFullWidget(this.name,Key key):super(key:key){
    print("初始化-$name");
  }

  @override
  _KeyItemFullWidgetState createState() => _KeyItemFullWidgetState();
}

class _KeyItemFullWidgetState extends State<KeyItemFullWidget> {

  final Color randColor = Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256));
  final String index = Random().nextInt(255).toString();
  @override
  Widget build(BuildContext context) {
    print("KeyItemFullWidgetState-初始化方法");
    return Container(
      child: Text('${widget.name}-$index', style: TextStyle(color: Colors.white, fontSize: 50),),
      height: 80,
      color: randColor,
    );
  }
}

