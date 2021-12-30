import 'test_export.dart';
import 'package:flutter/material.dart';

class DioDemo extends StatefulWidget {
  @override
  _DioDemoState createState() => _DioDemoState();
}

class _DioDemoState extends State<DioDemo> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //1.创建dio对象
    final dio = Dio();
    //2.发送网络请求
    dio.get('https://httpbin.org/get').then((value){
      print("value:$value");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


