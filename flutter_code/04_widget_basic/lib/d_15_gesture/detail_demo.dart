import 'package:flutter/material.dart';

class DetailDemo extends StatelessWidget {

  final String _showMsg;
  DetailDemo(this._showMsg);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("详情页面"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "详情页面:" + _showMsg??'',
              style: TextStyle(fontSize: 25, color: Colors.red),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              child: Text('返回上一页'),
              onPressed: () {
                Navigator.of(context).pop('详情数据');
              },
            )
          ],
        ),
      ),
    );
  }
}
