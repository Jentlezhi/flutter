import 'package:flutter/material.dart';
import 'package:hello_flutter/d_15_gesture/detail_demo.dart';

import 'event_bus_demo.dart';
import 'gesture_demo.dart';
import 'pointer_demo.dart';
import 'router_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  String _title = "事件冒泡的阻止";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(_title),
        ),
        body: MyWidget(),
      ),
      initialRoute: '/home',
      routes: {
//        '/detail':DetailDemo();
      },
      onGenerateRoute: (settings){
        if(settings.name == '/detail'){
          String arg = settings.arguments as String;
          return  MaterialPageRoute(
              builder: (ctx) {
            return DetailDemo(settings.arguments);
          });
        }
        return null;
      },
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RouterDemo();
  }
}
