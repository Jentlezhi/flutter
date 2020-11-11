import 'package:flutter/material.dart';

import 'detail_demo.dart';

class RouterDemo extends StatefulWidget {
  @override
  _RouterDemoState createState() => _RouterDemoState();
}

class _RouterDemoState extends State<RouterDemo> {

  String _showMsg = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            child: Text('跳转到详情'),
            onPressed: (){
//              Future result = Navigator.of(context).push(MaterialPageRoute(builder: (context){
//                return DetailDemo("首页数据");
//              }));
              Future result = Navigator.of(context).pushNamed('/detail',arguments: "我是首页数据~~~");
              result.then((value){
                print('data:$value');
                setState(() {
                  _showMsg = value;
                });
              });
            },
          ),
          Text(
            "详情页面回传数据：" + _showMsg??'',
            style: TextStyle(fontSize: 25, color: Colors.red),
           ),
        ],
      ),
    );
  }
}
