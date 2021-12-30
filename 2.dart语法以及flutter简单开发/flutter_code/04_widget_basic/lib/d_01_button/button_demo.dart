import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              child: ButtonTheme(
                minWidth: 30,
                height: 9,
                child: RaisedButton(
                  padding: EdgeInsets.all(0),
                  child: Text('RaisedButton'),
                  textColor: Colors.white,
                  color: Colors.orange,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  onPressed: () => print('RaisedButton'),
                ),
              )),
          Container(
              child: FlatButton(
                child: Text('FlatButton'),
                textColor: Colors.white,
                color: Colors.purple,
                onPressed: () => print('FlatButton'),
              )),
          Container(
              child: OutlineButton(
                child: Text('OutlineButton'),
                textColor: Colors.black,
                onPressed: () => print('OutlineButton'),
              )),
          Container(
              color: Colors.yellow,
              child: FlatButton(
                //row默认占整行：
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.favorite,color: Colors.red,),
                    Text("喜欢作者"),
                  ],
                ),
              )),

          Container(
              color: Colors.white,
              child: FlatButton(
                color: Colors.red,
                //row默认占整行：
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.fastfood,color: Colors.black,),
                    Text("喜欢作者"),
                  ],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                onPressed: ()=> print('FlatButton'),
              )),

        ],
      ),
    );
  }
}