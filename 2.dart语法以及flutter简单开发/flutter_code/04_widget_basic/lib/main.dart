import 'dart:io';
import 'dart:isolate';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hello_flutter/d_03_icon/icon_demo.dart';
import 'package:hello_flutter/d_04_operator/operator_demo.dart';
import 'package:hello_flutter/d_11_network/dio_demo.dart';
import 'package:hello_flutter/service/http_request.dart';
import 'package:hello_flutter/widgetKey/key_demo.dart';
import 'package:hello_flutter/widgetKey/key_demo_another.dart';
import 'd_01_button/button_demo.dart';
import 'd_02_image/image_demo.dart';
import 'd_05_layout/align_demo.dart';
import 'd_06_flex/flex_demo.dart';
import 'd_06_flex/row_demo.dart';
import 'd_07_flexiable/flexiable.dart';
import 'd_09_scroll_view/grid_view_demo.dart';
import 'd_09_scroll_view/list_view_demo.dart';
import 'd_09_scroll_view/sliver_demo.dart';
import 'dart:ui';

import 'd_12_inherited_widget/inherited_widget.dart';


main(List<String> args) => runApp(MyApp());

//main(List<String> args) {
//
////  RenderObject
//RenderView
//  MyClass.from("Jentle")
//      ..eat()
//      ..walk();
//}

class MyClass {
  final String name;
  MyClass.from(this.name){
    print("MyClass-init");
  }

  void eat(){
    print("$name eat");
  }

  void walk(){
    print("$name walk");
  }
}

//main(List<String> args) async {
//  print("main function start");
////  compute(powerNum, 5).then((value) => print("value:$value"));
////  print("main function end");
//   print(first([1,'2',{"name":"Jentle"}]));
//  MyHttpRequest.request<Map>('https://httpbin.org/get',parameters: {"name":"Jentle"}).then((value) {
//    if(value is Map){
//      print("Map类型");
//    }
//    print("value:$value");
//  });
//}


int powerNum(int num) {
  return num * num;
}

T first<T>(List<T> list){
  return list[2];
}

//main(List<String> args) async {
//
//  print("main function start");
//  // 1.创建管道
//  ReceivePort receivePort= ReceivePort();
//
//  // 2.创建新的Isolate
//  Isolate isolate = await Isolate.spawn<SendPort>(foo, receivePort.sendPort);
//
//  // 3.监听管道消息
//  receivePort.listen((data) {
//    print('Data：$data');
//    // 不再使用时，我们会关闭管道
//    receivePort.close();
//    // 需要将isolate杀死
//    isolate?.kill(priority: Isolate.immediate);
//  });
//  print("main function end");
//
//  /*
//  flutter: main function start
//  flutter: main function end
//  flutter: Data：Hello World
//  */
//
//}

void foo(SendPort sendPort) {
  sendPort.send("Hello World");
}

void createIsolate(){
  print("main function start");
  Isolate.spawn(isolateFunction, "hello isolate");
  print("main function end");
  /*
  flutter: main function start
  flutter: main function end
  flutter: info:hello isolate
  */
}
void isolateFunction(info){
  print("info:$info");
}



void myTestAsync(){
  print("main function start");
  print(_getNetworkData().then((value) => print("value:$value")));
  print("main function end");
  print(_testAsync().then((value) => print("_testAsync:$value")));
  print(_testAsync_().then((value) => print("_testAsync:$value")));
}

Future _getNetworkData() async {
  var result = await Future.delayed(Duration(seconds: 3), () {
    return "network data";
  });
  print("result数据");
  return "请求到的数据" + result;
}

///async：语法糖，会自动把对象包装为Future对象
Future _testAsync() async{
  return [1,2];
}
///async：语法糖，会自动把对象包装为Future对象
Future _testAsync_() {
//  return [1,2];//不加async，不会包装为Future对象
  return Future.value([1,2]);
}

void futureDemo() {
  print("main start");
  Future(() {
    sleep(Duration(seconds: 5));
    return "第一次的结果";
  }).then((value) {
    print(value); //flutter: 第一次的结果
    sleep(Duration(seconds: 1));
    return "第二次的结果";
  }).then((value) {
    print(value); //flutter: 第二次的结果
    sleep(Duration(seconds: 3));
    return "第三次的结果";
  }).then((value) {
    print(value); //flutter: 第三次的结果
    sleep(Duration(seconds: 1));
    return "第四次的结果";
  }).then((value) {
    print(value); //flutter: 第四次的结果
  }).whenComplete(() {
    print("全部完毕"); //flutter: 全部完毕
  });
  print("main end");
  print("延时开始");
  Future.delayed(Duration(seconds: 1)).then((value) {
    print("开始执行延时");
  });
}

futureBasic() {
  print("请求数据");
  final Future result = getNetworkData();
  result.then((value) => print(value)).catchError((error) {
    print("error:$error");
  }).whenComplete(() => print("执行完成"));
  print("获取数据：$result");
  /*
  flutter: 请求数据
  flutter: 获取数据：Instance of 'Future<dynamic>'
  flutter: Hello world
  flutter: 执行完成
  */
}

Future getNetworkData() {
  return Future(() {
    sleep(Duration(seconds: 5));
    return "Hello world";
  });
}
//main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  GlobalKey<_GlobalKeyDemoState> _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InheritedDemo()
    );
  }
}

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class GlobalKeyDemo extends StatefulWidget {

  GlobalKeyDemo(Key key):super(key:key);
  final String widgetMessage = '我是Widget消息';
  @override
  _GlobalKeyDemoState createState() => _GlobalKeyDemoState();
}

class _GlobalKeyDemoState extends State<GlobalKeyDemo> {

  final String stateMessage = '我是state的消息';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Global Key demo"),
      ),
      body: Container(child: Text('Demo',style: TextStyle(color: Colors.blue),),),
    );
  }
}

