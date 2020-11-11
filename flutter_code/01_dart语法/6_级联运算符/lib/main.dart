import 'package:flutter/material.dart';

void main(List<String> args) {

  Person p = Person();
  p.name = "Jentle";
  p.run();
  p.eat();

  ///级联运算符：类似于链式调用
  Person p1 = Person()
    ..name = "Jentle"
    ..run()
    ..eat();

  p1.name = "Jentle-zhi";
}

class Person{

  String name;

  void eat(){
    print("$name eating");
  }

  void run(){
    print("$name running");
  }
}



