import 'package:flutter/material.dart';
import 'package:hello_flutter/d_16_animation/event_bus.dart';
import 'animation_demo.dart';
import 'animation_optimize_demo.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  String _title = "动画";
  @override
  Widget build(BuildContext context) {
    final widget = MyWidget();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(_title),
        ),
        body: widget,
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NotificationListener(child: AnimationOptimizeDemo(),onNotification: (value){
      if(value is MyNotification){
        print("object:${value.runtimeType}");
      }
      return false;
    },);
  }
}

class MyNotification extends Notification {
//  final String msg;
//  MyNotification();
}

class NotificationRoute extends StatefulWidget {
  @override
  _NotificationRouteState createState() {
    // TODO: implement createState
    return _NotificationRouteState();
  }
}

class _NotificationRouteState extends State<NotificationRoute> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return NotificationListener(
      onNotification: (MyNotification notification) {
        setState(() {
//          text = notification.msg;
        });
        return false;
      },
      child: Center(
        child: Column(
          children: <Widget>[
            Text('msg: $text'),
            Builder(
              builder: (context) => RaisedButton(
//                onPressed: () => MyNotification('接受到通知').dispatch(context),
                child: Text('发送通知'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
