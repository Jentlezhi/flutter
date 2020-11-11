import 'package:flutter/material.dart';

void main(List<String> args) {

  ///1.列表List:[]
  var names = ["a","b","c","a"];
  print("names:$names");//names:[a, b, c, a]
  ///2.集合Set:{}
  var colors = {"蓝色","红色","白色","黑色","蓝色"};
  print("colors:$colors");//colors:{蓝色, 红色, 白色, 黑色},去重了
  ///3.映射Map:{}
  var msg = {
    "name":"Jentle",
    "age":19,
    "height":1.83
  };
  print("msg:$msg");//msg:{name: Jentle, age: 19, height: 1.83}
}



