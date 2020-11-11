import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
          cacheExtent: 100,
          itemBuilder: (BuildContext context, int index) {
            return MySubCell(index);
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              height: 0.2,
              color: Colors.red,
              thickness: 0.15,
              indent: 15,
              endIndent: 15,
            );
          },
          itemCount: 50),
    );
  }
}

class MySubCell extends StatelessWidget {
  final int index;

  MySubCell(this.index) {
    print('预加载...$index');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Text(
        "$index",
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

class ListBuilder extends StatelessWidget {
  const ListBuilder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 40,
        itemExtent: 30,
        itemBuilder: (BuildContext context, int index) {
          return Text(
            "$index",
            style: TextStyle(fontSize: 20),
          );
        });
  }
}

class ListViewGenerate extends StatelessWidget {
  const ListViewGenerate({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: List.generate(50, (index) {
      return ListTile(
        leading: Icon(Icons.people),
        title: Text(
          "联系人$index",
          style: TextStyle(fontSize: 18),
        ),
        subtitle: Text(
          "13278278930",
          style: TextStyle(fontSize: 18),
        ),
        trailing: Icon(Icons.delete),
      );
    }));
  }
}

class ListViewChildren extends StatelessWidget {
  const ListViewChildren({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      itemExtent: 90,
      children: [
        Text(
          "a",
          style: TextStyle(color: Colors.black, backgroundColor: Colors.yellow),
        ),
        Text(
          "b",
          style: TextStyle(color: Colors.black, backgroundColor: Colors.cyan),
        ),
        Text(
          "c",
          style: TextStyle(color: Colors.black, backgroundColor: Colors.pink),
        ),
        Text(
          "d",
          style: TextStyle(color: Colors.black, backgroundColor: Colors.orange),
        ),
      ],
    );
  }
}
