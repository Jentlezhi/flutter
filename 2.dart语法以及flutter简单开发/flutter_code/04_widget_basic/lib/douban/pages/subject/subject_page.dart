import 'package:flutter/material.dart';
import 'package:hello_flutter/douban/pages/subject/subject_content.dart';

class DBSubjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("书影音"),
      ),
      body: DBSubjectContent(),
    );
  }
}
