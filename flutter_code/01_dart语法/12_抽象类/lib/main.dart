import 'package:flutter/material.dart';

void main(List<String> args) {

  final rectangle = Rectangle()
    ..getArea()
    ..getInfo();

  ///注意：系统一些抽象函数可以实例化
  final map = Map();///external factory Map();
  ///external 方法的实现和方法的声明分离
  ///@patch（注解）补丁：针对不同的平台进行不同的实现，（在运行时，对iOS、安卓等不同的实现）
}

///抽象类，在class前加abstract
///抽象类可以没有方法的实现（当然，也可以给方法实现）
///抽象类不能实例化
abstract class Shape {
  String getArea();
  String getInfo(){
    return "形状";
  }
}

///继承自抽象类的类，必须实现抽象类的抽象方法
class Rectangle extends Shape {
  @override
  String getArea() {
    return "矩形面积100";
  }
}



