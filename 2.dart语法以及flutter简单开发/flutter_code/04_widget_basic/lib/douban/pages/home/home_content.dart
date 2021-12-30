import 'package:flutter/material.dart';
import 'package:hello_flutter/douban/pages/home/top_moive_model.dart';
import 'package:hello_flutter/service/home_request.dart';

class DBHomeContent extends StatefulWidget {
  @override
  _DBHomeContentState createState() => _DBHomeContentState();
}

class _DBHomeContentState extends State<DBHomeContent> {

  DBTopMoiveModel _model;
  @override
  void initState() {
    HomeRequest.movieList().then((value){
      setState(() {
        _model = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(itemCount: _model?.subjects?.length ?? 0,itemBuilder: (cxt, index){
        Subject subject = (_model?.subjects?.length ?? 0)  > 0 ? _model?.subjects[index] : null;
        return Container(height: 50,child: Text("${subject?.title ?? ''}"),);
      },),
    );
  }
}
