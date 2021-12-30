import 'package:flutter/material.dart';

class InheritedDemo extends StatefulWidget {
  @override
  _InheritedDemoState createState() => _InheritedDemoState();
}

class _InheritedDemoState extends State<InheritedDemo> {

   int _count = 100;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyDataWidget(
        counter: _count,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyShowData1(),
              MyShowData2(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            _count+=1;
          });
        },
      ),
    );
  }
}

class MyDataWidget extends InheritedWidget {
  final int counter;

  MyDataWidget({this.counter, Widget child}) : super(child: child);

  static MyDataWidget of(BuildContext context) {
    //沿着Element树，去找到最近的MyDataElement,从MyDataElement中取出Widget对象
    return context.dependOnInheritedWidgetOfExactType();
  }

  ///
  @override
  bool updateShouldNotify(MyDataWidget oldWidget) {
    return oldWidget.counter != counter;
  }
}

class MyShowData1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int counter = MyDataWidget.of(context).counter;
    return Container(
      child: Text(
        counter.toString() ?? '',
        style: TextStyle(fontSize: 30, color: Colors.blue),
      ),
    );
  }
}

class MyShowData2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int counter = MyDataWidget.of(context).counter;
    return Container(
      child: Text(
        counter.toString() ?? '',
        style: TextStyle(fontSize: 30, color: Colors.blue),
      ),
    );
  }
}
