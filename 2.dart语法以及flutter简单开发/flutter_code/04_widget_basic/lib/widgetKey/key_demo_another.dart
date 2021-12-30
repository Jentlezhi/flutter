import 'dart:math';

import 'package:flutter/material.dart';

class KeyDemo1Page extends StatefulWidget {
  @override
  _KeyDemo1PageState createState() => _KeyDemo1PageState();
}

class _KeyDemo1PageState extends State<KeyDemo1Page> {

  List<Widget> tiles = [
    StatelessColorfulTitle(),
    StatelessColorfulTitle(),
//    Padding(child: StatefulColorfulTitle(uniqueKey: 'a',key: Key('a'),)),
//    Padding(child: StatefulColorfulTitle(uniqueKey: 'b',key: Key('b'),),)
  ];

  Widget _itemForRow(BuildContext context, int index) {
    return tiles[index];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Key demo"),
      ),
      body: Column(children: tiles,),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.delete),
        onPressed: (){
          setState(() {
            print('交换两个色块的位置');
//            StatelessColorfulTile w1 = tiles.first;
//            StatelessColorfulTile w2 = tiles.last;
//            print('w1:${w1.uniqueKey}');
//            print('w2:${w2.uniqueKey}');
//            print('-----------------------------');
            tiles.insert(1, tiles.removeAt(0));
//            w1 = tiles.first;
//            w2 = tiles.last;
//            print('w1:${w1.uniqueKey}');
//            print('w2:${w2.uniqueKey}');

          });
        },
      ),
    );
  }
}

class StatelessColorfulTitle extends StatelessWidget {

  StatelessColorfulTitle(){
    print('StatelessColorfulTitle-初始化');
  }
  Color myColor = Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256));
  @override
  Widget build(BuildContext context) {
    print('执行build方法');
    return Container(
        color: myColor,
        child: Padding(padding: EdgeInsets.all(70.0))
    );
  }
}


class StatefulColorfulTitle extends StatefulWidget {

  final String uniqueKey;
  final Color color;
  StatefulColorfulTitle({this.uniqueKey,this.color,Key key}):super(key:key);
  @override
  _StatefulColorfulTitleState createState() => _StatefulColorfulTitleState();
}

class _StatefulColorfulTitleState extends State<StatefulColorfulTitle> {
  Color myColor = Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256));

  @override
  Widget build(BuildContext context) {
    print('执行build方法:${widget.uniqueKey}');
    return Container(
        color: myColor,
        child: Padding(padding: EdgeInsets.all(70.0))
    );
  }
}
