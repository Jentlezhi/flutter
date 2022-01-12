import 'package:flutter/material.dart';
import 'package:flutter_ui/friends_data.dart';

class ListViewDemo extends StatefulWidget {
  @override
  _ListViewDemoState createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (BuildContext context){
            return MyListView();
          }
        ));
      },
      child: Container(
        height: 40,
        width: double.infinity,
        color: Colors.blue,
        child: Text('跳转至通讯录'),
      ),
    );
  }
}


class MyListView extends StatefulWidget {
  @override
  _MyListViewListViewState createState() => _MyListViewListViewState();
}

class _MyListViewListViewState extends State<MyListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('通讯录'),),
      body: Container(
        child: ListView.builder(
            itemCount:datas.length,
          itemBuilder:cellForListView,
        ),
      ),
    );
  }

  Widget cellForListView(BuildContext context, int index){
    return _FriendCell(name: datas[index].name,imageUrl:datas[index].imageUrl);
  }
}

class _FriendCell extends StatelessWidget {
  final String name;
  final String imageUrl;
  _FriendCell({this.name,this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(10.0),
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              image: DecorationImage(image: NetworkImage(imageUrl))
            ),
          ),
          Text('$name')
        ],
      ),
    );
  }
}

