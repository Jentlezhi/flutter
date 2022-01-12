import 'package:flutter/material.dart';

class LayoutDemo extends StatefulWidget {
  @override
  _LayoutDemoState createState() => _LayoutDemoState();
}

class _LayoutDemoState extends State<LayoutDemo> {
  @override
  Color bgColor = Colors.green;
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(left: 20.0,right: 10.0),
          child: Row(
            children: [
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    image: DecorationImage(image: AssetImage("images/pic_cheshangquan.png"))
                ),
              ),
              Expanded(child: Container(
                color: Colors.deepOrange,
                height: 50,
                padding: EdgeInsets.only(left: 10.0,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: Text('微信号：juniortwx', style: TextStyle(fontSize: 15.0,color: Colors.black38),),),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(child: Text('微信号：juniortwx',maxLines: 1,overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 15.0,color: Colors.black38),)),
                          Text('微信号：juniortwx', style: TextStyle(fontSize: 15.0,color: Colors.black38),),
                          Container(
                            margin: EdgeInsets.only(left: 10.0),
                            width: 25.0,
                            height: 25.0,
                            color: Colors.blue,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ))
            ],
          ),
        )
      ],
    );
  }}
