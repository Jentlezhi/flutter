import 'package:flutter/material.dart';

void main(List<String> args) {

  var a;
  a = 'ducafecat';
  a = 123;
  a = true;
  a = {'key': 'val123'};
  a = ['abc'];
  print(a);

  var b = "abc";
//  b = 123;//A value of type 'int' can't be assigned to a variable of type 'String'.

  ///Object 对象调用方法，当Object没有这个方法时，编译期就会报错
  Object c = 'abc';
  c = 123;
  c = [2222];

  ///dynamic 对象调用方法，编译期不会报错，但是运行时会存在安全隐患
  dynamic d = "abc";
  d.substring(1);
  d = 123;
  d = [1111];
//  d.substring(1);//此处在运行时会报错

  var doc = Doctor('Jentle-zhi');
  print(doc.age);
}

void defineMyClass(){

}

class Student {

  //
}

void defineClass() {
  ///一旦提供了构造函数，默认的构造函数就会被覆盖掉
  ///2 positional argument(s) expected, but 0 found
//  var p = Person("Jentle",001);
}

class Person {

  String name;
  int no;
  int height;
  ///一旦提供了构造函数，默认的构造函数就会被覆盖掉
//  Person(String name, int no){
//    this.name = name;
//    this.no = no;
//  }
  ///语法糖：等价于上面的构造函数
  Person(this.name, this.no);

  ///命名构造函数
  Person.origin(this.name, this.no, this.height);
}

const temp = null;
const defaultValue = 1;
class Doctor {

  String name;
  final int age;
//  Doctor(this.name, this.age);
  ///初始化列表，flutter源码常见写法
//  Doctor(this.name,{int age}) : this.age = age ?? 10 {}
  Doctor(this.name,{this.age = temp ?? (defaultValue != null ? defaultValue : null)});
}






