import 'package:flutter/material.dart';

void main() {


  FutureWaitClass.func();

}

class FutureWaitClass {

  static void func(){

    Future.wait([
      Future.delayed(Duration(seconds: 3),(){
        return "hello";
      }),

      Future.delayed(Duration(seconds: 3),(){
        return "world";
      }),
    ]).then((result){
      print(result);
    }).whenComplete((){
      print('complete');
    });
  }

}

class FutureThenClass {

  static void func(){
    var f = FutureBasicClass();
    Future t = f.getData();
    t.then((value){
      print(value);
    }).catchError((e){
      print(e);
    }).whenComplete((){
      print("Complete");
    });
  }
}

class FutureBasicClass {

  Future<String> getData()async{

   print("getData~");
   return await Future.delayed(Duration(seconds: 3),(){
     throw AssertionError("Error");
//      return "网络数据";
    });
  }
}

class SynchroClass {

  Iterable<int> naturalsTo(int n) sync* {
    int k = 0;
    while (k < n) yield k++;
  }
}

class FutureUseClass {

  static void func(){
    var f = FutureClass();
    Future future = f.checkVersion();
    future.then((value){
      print("value=$value");
    });
  }
}

class FutureClass {

  Future<String> checkVersion() async {
    var version = await lookUpVersion();
    return version;
  }

  Future<String> lookUpVersion() async => '1.0.0';
}

abstract class ObjectCache {
  Object getByKey(String key);
  void setByKey(String key, String value);
}

abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}

abstract class StringCache {
  String getByKey(String key);
  void setByKey(String key, String value);
}

class AssignClass with Musical {
  static void func(){
    var a = 100;
    a ??= 120;
    print("a=$a");

  }
}

//mixin 是复用类代码的一种途径， 复用的类可以在不同层级，之间可以不存在继承关系。
//如果 Mixin 不希望作为常规类被使用，使用关键字 mixin 替换 class
class Musical {
  bool canPlayPiano = false;
  bool canCompose = false;
  bool canConduct = false;

  void entertainMe() {
    if (canPlayPiano) {
      print('Playing piano');
    } else if (canConduct) {
      print('Waving hands');
    } else {
      print('Humming to self');
    }
  }
}

void voidFunc(){

  //所有函数都会返回一个值。 如果没有明确指定返回值， 函数体会被隐式的添加 return null; 语句。
  print("voidFunc");
  return null;
}


void foo() {} // 顶级函数

class A {
  static void bar() {} // 静态方法
  void baz() {} // 示例方法
}


class LambdaClass {

  static void func(){
    var list = ['apples', 'bananas', 'oranges'];
//    list.forEach((item){
//      print(item);
//    });
    list.forEach((item) => print(item));
  }
}

class ConstListClass {

  static void func(){
    var constantList = const[1,2,3];
//    constantList[0] = 1;//运行时报错
    print("constantList:$constantList}");
    constantList = [4,5,6];
    print("constantList:$constantList}");
    const constantList0 = [1,2,3,4];
//    constantList0 = [];报错
  }
}


class RawClassString {

  static void func(){
    var s = r"In a raw string, even \n isn't special.";
    print(s);
  }
}


class IntClassOperation {

  static void func(){

    int a = 3;
    print("a<<1:${a << 1}");
    print("a>>1:${a >> 1}");
  }
}

class NumClass {

  static void func(){
    num a = 9;
    print("a:$a");
    a = 10.2;
    print("a:$a");
  }
}

class Const {
  static const constValue1 = 10000;

  void func(){
    const bar = 1000000; // 压力单位 (dynes/cm2)
    const double atm = 1.01325 * bar; // 标准气压
    print("bar:$bar,atm:$atm");
  }
}

void immutablePointTest(){
  ImmutablePoint point = ImmutablePoint(2,3);
  var originPoint = ImmutablePoint.origin;
  print("originPoint.x : ${originPoint.x},originPoint.y : ${originPoint.y}");
}


class ImmutablePoint {
  static final ImmutablePoint origin =
  const ImmutablePoint(0, 0);

  final num x, y;
  const ImmutablePoint(this.x, this.y);
}

class FirstTwoLetters {
final String letterOne;
final String letterTwo;

FirstTwoLetters(String word)
    :assert(
(word?.length ?? 0) >= 2,
'word less than two characters.',
),
letterOne = word[0],
letterTwo = word[1];
}
//class FirstTwoLetters {
//   String letterOne;
//   String letterTwo;
//
//  FirstTwoLetters(String word)
//      :assert(
//  (word?.length ?? 0) >= 2){
//    letterOne = word[0];
//    letterTwo = word[1];
//    print('word less than two characters.');
//  }
//}



class Point {
num x;
num y;

Point(this.x, this.y);

Point.fromJson(Map jsonMap)
    : x = jsonMap['x'],
y = jsonMap['y'] {
print('In Point.fromJson(): ($x, $y)');
}
//重定向构造函数:定向构造函数的函数体为空， 构造函数的调用在冒号 (:) 之后
Point.alongXAxis(num x) : this(x,0);
}

class Box{
int width,height;
Box.fromJSON(Map json):width=json['width'],height=json['height'];
}

//void printName(String firstName, String lastName, {String suffix}){
//
//  print("$firstName $lastName ${suffix ?? ''}");
//}

void printName(String firstName, String lastName, {String suffix = ''}){

print("$firstName $lastName $suffix");
}


class BigObject {
int anInt = 0;
String aString = '';
List<double> aList = [];
bool _done = false;

void allDone() {
_done = true;
}
}

///setter和getter方法
class MyClass {

int _aProperty = 0;
int get aProperty => _aProperty;
set aProperty (int value){
if(value >0){
_aProperty = value;
}
}


List<int> _values = [];
void addValue(int value){
_values.add(value);
}

//define a computed property
int get count {

return _values.length;
}
}

class ExceptionExam {

void throwException (int value){
if(value < 0){
throw Exception("Some thing bad happend.");
}else{
print(value);
}
}

void tryCatchExam() {

try{
dynamic a = 1;
print(a.length);
}on Exception catch(e){
print("Catch exception: $e");
}catch(e){
print("Something really unknown: $e");
}

try{

}catch(e){

} finally {
print("finally must be excused");
}
}
}


class AnObject {

int a;
int b;
//  AnObject(int a,int b){
//    this.a = a;
//    this.b = b;
//  }
//语法糖
AnObject(this.a,this.b);
log() {
print(a);
}
}


//void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
// This widget is the root of your application.
@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Flutter Demo',
theme: ThemeData(
// This is the theme of your application.
//
// Try running your application with "flutter run". You'll see the
// application has a blue toolbar. Then, without quitting the app, try
// changing the primarySwatch below to Colors.green and then invoke
// "hot reload" (press "r" in the console where you ran "flutter run",
// or simply save your changes to "hot reload" in a Flutter IDE).
// Notice that the counter didn't reset back to zero; the application
// is not restarted.
primarySwatch: Colors.blue,
),
home: MyHomePage(title: 'Flutter Demo Home Page'),
);
}
}

class MyHomePage extends StatefulWidget {
MyHomePage({Key key, this.title}) : super(key: key);

// This widget is the home page of your application. It is stateful, meaning
// that it has a State object (defined below) that contains fields that affect
// how it looks.

// This class is the configuration for the state. It holds the values (in this
// case the title) provided by the parent (in this case the App widget) and
// used by the build method of the State. Fields in a Widget subclass are
// always marked "final".

final String title;

@override
_MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
int _counter = 0;

void _incrementCounter() {
setState(() {
// This call to setState tells the Flutter framework that something has
// changed in this State, which causes it to rerun the build method below
// so that the display can reflect the updated values. If we changed
// _counter without calling setState(), then the build method would not be
// called again, and so nothing would appear to happen.
_counter++;
});
}

@override
Widget build(BuildContext context) {
// This method is rerun every time setState is called, for instance as done
// by the _incrementCounter method above.
//
// The Flutter framework has been optimized to make rerunning build methods
// fast, so that you can just rebuild anything that needs updating rather
// than having to individually change instances of widgets.
return Scaffold(
appBar: AppBar(
// Here we take the value from the MyHomePage object that was created by
// the App.build method, and use it to set our appbar title.
title: Text(widget.title),
),
body: Center(
// Center is a layout widget. It takes a single child and positions it
// in the middle of the parent.
child: Column(
// Column is also a layout widget. It takes a list of children and
// arranges them vertically. By default, it sizes itself to fit its
// children horizontally, and tries to be as tall as its parent.
//
// Invoke "debug painting" (press "p" in the console, choose the
// "Toggle Debug Paint" action from the Flutter Inspector in Android
// Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
// to see the wireframe for each widget.
//
// Column has various properties to control how it sizes itself and
// how it positions its children. Here we use mainAxisAlignment to
// center the children vertically; the main axis here is the vertical
// axis because Columns are vertical (the cross axis would be
// horizontal).
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
Text(
'You have pushed the button this many times:',
),
Text(
'$_counter',
style: Theme.of(context).textTheme.display1,
),
],
),
),
floatingActionButton: FloatingActionButton(
onPressed: _incrementCounter,
tooltip: 'Increment',
child: Icon(Icons.add),
), // This trailing comma makes auto-formatting nicer for build methods.
);
}
}
