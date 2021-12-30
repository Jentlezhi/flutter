import 'package:flutter/material.dart';

void main(List<String> args) {
  const text1 = const Text("Jentle");
  const text2 = const Text("Jentle");
  print(identical(text1, text2)); //false

  const p1 = const Person("Jentle");
  const p2 = const Person("Jentle");
  print(identical(p1, p2)); //true

  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: MyWidget(),
      ),
      body: MyBody(),
    ),
  ));
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('第一个flutter程序');
  }
}

class MyBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {

  final String _text = "final";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: const Text('Hello world'),
        ),
        Container(
          margin: EdgeInsets.only(top: 60),
          child: RaisedButton(
            onPressed: () {
              setState(() {
//                _text = "Good morning";
                print('onPressed');
              });
            },
            child: Text("修改文字"),
          ),
        ),
        Container(
          child: const MyLastWidget("final"),
        ),
      ],
    );
  }
}

class MyLastWidget extends StatelessWidget {
  final String text;
  const MyLastWidget(this.text);
  @override
  Widget build(BuildContext context) {
    return Text(this.text ?? 'default');
  }
}

class Person {
  final String name;
  const Person(this.name);
}

class
