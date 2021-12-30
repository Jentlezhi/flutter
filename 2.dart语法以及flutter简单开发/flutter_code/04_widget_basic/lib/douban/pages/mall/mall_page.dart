import 'package:flutter/material.dart';
import 'mall_content.dart';

class DBMallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("市集"),
      ),
      body: DBMallContent(),
    );
  }
}
