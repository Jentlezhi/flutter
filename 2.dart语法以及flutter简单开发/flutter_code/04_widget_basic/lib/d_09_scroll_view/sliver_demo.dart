import 'dart:math';

import 'package:flutter/material.dart';

class MySliverDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MySlieverDemoState();
}

class _MySlieverDemoState extends State<MySliverDemo> {

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {

//    _scrollController.addListener(() {
//      print("监听到滚动...${_scrollController.offset}");
//    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: NotificationListener(
        onNotification: (Notification notification){
          ///判断类型
          if(notification is ScrollStartNotification){
            //滚动最大位置:notification.metrics.maxScrollExtent
            print("开始滚动:${notification.metrics.maxScrollExtent}");
          }else if(notification is ScrollEndNotification){
            print("结束滚动");
          }else if(notification is ScrollUpdateNotification){
            //滚动的位置:notification.metrics.pixels
            print("正在滚动-${notification.metrics.pixels}");
          }
          return true;
        },
        child: CustomScrollView(
          controller: _scrollController,
          //List<Widget>
          slivers: [
            SliverSafeArea(
              sliver: SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                  ),
                  delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                        return Container(
                          color: Color.fromARGB(255, Random().nextInt(255),
                              Random().nextInt(255), Random().nextInt(255)),
                        );
                      }, childCount: 20)),
            ),
            SliverFixedExtentList(
              delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
                return Container(
                  height: 1,
                  color: Colors.red,
                );
              }, childCount: 1),
              itemExtent: 100,
            ),
            SliverSafeArea(
              sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
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
                      }, childCount: 20)),
            )
          ],
        ),
      ),
    );
  }


}
