import 'package:flutter/material.dart';

void main(List<String> args) {
  ///1.明确的声明
  String name = 'Jack';
  print("name=${name}");
  ///2.类型推导(var、final、const)
  ///类型推导的方式虽然没有明确的指定变量的类型，但是变量是有自己的明确类型
  ///2.1var声明变量
  var age = 20;
  age = 21;
  print("age=$age");
  ///2.2final声明常量
  final PI = 3.1415;
  print("PI=$PI");
//  PI = 3.2; Error: Can't assign to the final variable 'PI'.
  ///2.3const声明常量
  const ADDRESS = "北京市";
//  ADDRESS = "上海市";Error: Can't assign to the const variable 'ADDRESS'.
  ///2.4final与const的区别
  ///const必须赋值常量值（编译期间需要有一个确定的值）
  ///final可以通过计算/函数获取一个值（运行区间来确定一个值）
  ///2.5final与const的区别

  var a = const [1,2,3];
  a = [2,3,4];
  print(a);

  ///2.5.1const修饰
  var p1 = Person('Jack');
  var p2 = Person('Jack');
  print(p1.name);
  print("p1和p2是否相等：${identical(p1, p2)}");//false

  ///在dart2.0之后，const可以省略
//  const s = const Student("Jack");
  const s1 = Student("Jack");
  const s2 = Student("Jack");
  const s3 = Student("Jack3");
  print("s1和s2是否相等：${identical(s1, s2)}");//true
  print("s1和s3是否相等：${identical(s1, s3)}");//false
}

class Person {

  String name;
  Person(String name){
    this.name = name;
  }
}

///当const修饰类的构造函数时，它要求该类的所有成员都必须是final的
class Student {
  final String name;
  const Student(this.name);
}


