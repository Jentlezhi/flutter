import 'package:flutter/material.dart';

void main(List<String> args) {

  stringValue();
}

void boolValue(){

  ///必须明确指定布尔类型的值，并没有非0即为真
  var flag = true;
  if (flag){
    print(flag);
  }
}

void stringValue(){
  ///当引号
  var str1 = '字符串';
  ///双引号
  var str2 = "字符串2";
  ///三引号，支持换行
  var str3 = """
  abc
  def
  ghi
  """;

  var name = 'Jentle';
  var age = 19;
  var height = 1.83;
  //如果${var} 大括号内为变量，那么{}可以省略
  var message = "my name is $name, age is $age, height is $height";
  print(message);
  var address = "北京市" + "海淀区";
  var detail = "甘家口街道";
  //如果${exp} 表达式不能省略{}
  print("address:${address.runtimeType}");
  print("address:${address+detail}");

}



