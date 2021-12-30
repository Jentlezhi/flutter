import 'package:flutter/material.dart';

void main(List<String> args) {

  assign2();
}

void assign1(){
  //??=
  //当原来的变量有值时，??=不执行
  //当原来的变量为null时，那么将值赋值给变量
  //
  var name = "Jentle";
  name ??= "Jack";
  print("name=$name");//name=Jentle
  name = null;
  name ??= "Jack";
  print("name=$name");//name=Jack
}

void assign2(){
  //??
  //如果??前面的数据有值，那么就使用??前面的值
  //如果??前面的数据无值，那么就使用??后面的值
  //其实是三目运算符的简写
  var name = "Jentle";
  var temp = name ?? "Jack";
  print("name=$name");//name=Jentle
  name = null;
  temp = name ?? "Jack";
  print("name=$temp");//name=Jack
}



