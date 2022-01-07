import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Demo'),),
        body: Center(
          child: Container(
            width: 400,
            height: 400,
            color: Colors.orange,
            child: Center(
              child: SizedBox.expand(
                // height: double.infinity,
                // width: double.infinity,
                child: MyButton(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        child: Center(child: Text('Button',style: TextStyle(fontSize: 25, color: Colors.white,),),)
    );
  }
}


