import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider_viewmodel.dart';

class ProviderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ProviderDemo'),
        ),
        body: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ProviderShowItemA(
              bgColor: Colors.blue,
            ),
            ProviderShowItemB(
              bgColor: Colors.green,
            ),
            ProviderShowItemC(
              bgColor: Colors.red,
            ),
          ],
        )),
        floatingActionButton: Selector<ProviderViewModel, ProviderViewModel>(
          builder: (context, value, child) {
            print('floatingActionButton-builder');
            return FloatingActionButton(
              child: child,
              onPressed: () {
                value.counter += 1;
              },
            );
          },
          ///要不要重新构建：
          shouldRebuild: (previous, next){
            return false;
          },
          selector: (context, s) {
            print('floatingActionButton-selector');
            return s;
          },
          child: Icon(Icons.add),
        ),
//        floatingActionButton: Consumer<ProviderViewModel>(
//          child: Icon(Icons.add),
//          builder: (context, value, child){
//            print('floatingActionButton-build');
//            return FloatingActionButton(
//              child: child,
//              onPressed: (){
//                value.counter += 1;
//              },
//            );
//          },
//        ),
      ),
    );
  }
}

class ProviderShowItemA extends StatelessWidget {
  final Color bgColor;
  ProviderShowItemA({@required this.bgColor});
  @override
  Widget build(BuildContext context) {
    int counter = Provider.of<ProviderViewModel>(context).counter;
    return Container(
      color: this.bgColor,
      child: Text(
        "组件A当前数量：${counter != null ? counter.toString() : '0'}",
        style: TextStyle(fontSize: 25, color: Colors.black),
      ),
    );
  }
}

class ProviderShowItemB extends StatelessWidget {
  final Color bgColor;

  ProviderShowItemB({@required this.bgColor});

  @override
  Widget build(BuildContext context) {
    print('ProviderShowItemB-build');
//    int counter = Provider.of<ProviderViewModel>(context).counter;
    return Consumer<ProviderViewModel>(
      builder: (context, value, child) {
        print('ProviderShowItemB-Consumer-build');
        return Container(
          color: this.bgColor,
          child: Text(
            "组件B当前数量：${value.counter != null ? value.counter.toString() : '0'}",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
        );
      },
    );
  }
}

class ProviderShowItemC extends StatelessWidget {
  final Color bgColor;

  ProviderShowItemC({@required this.bgColor});

  @override
  Widget build(BuildContext context) {
    print('ProviderShowItemB-build');
//    int counter = Provider.of<ProviderViewModel>(context).counter;
    return Consumer2<ProviderViewModel,ProviderViewModel2>(
      builder: (context, value, value2, child) {
        print('ProviderShowItemB-Consumer-build');
        return Container(
          color: this.bgColor,
          child: Text(
            "${value2.userModel.name ?? ''}组件B当前数量：${value.counter != null ? value.counter.toString() : '0'}",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
        );
      },
    );
  }
}