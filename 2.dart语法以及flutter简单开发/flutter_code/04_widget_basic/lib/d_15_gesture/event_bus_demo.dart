import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';

///1.创建全局的EventBus对象
final EventBus _eventBus = EventBus();

class EventBusDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          RaisedButton(
            child: Icon(Icons.add),
            onPressed: (){
              _eventBus.fire(UserInfo("李雪琴",20,165.5));
            },
          ),
          MyText(),
        ],
      ),
    );
  }
}

class MyText extends StatefulWidget {

  @override
  _MyTextState createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  String _message = "User name: ";

  @override
  void initState() {
    _eventBus.on<UserInfo>().listen((event) {
      setState(() {
        _message = "User name: ${event.name}";
      });
      print(event.name);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text(_message,style: TextStyle(color: Colors.blue, fontSize: 25),);
  }
}

class UserInfo {
  String name;
  int age;
  double height;
  UserInfo(this.name, this.age, this.height);
}


