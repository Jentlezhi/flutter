import 'package:flutter/material.dart';

void main(List<String> args) {

  int sumValue = sum(2, 3);
//  print("sumValue=$sumValue");
//  sayGoodbye("Jack","My friend");
//  excuseFunc(myAction(name: "Jack"));

  //匿名函数
//  excuseFunc((){
//    print("匿名函数被调用");
//  });
  //箭头函数：条件-函数体只有一行代码
//  excuseFunc(()=>print("箭头函数被调用"));

//  excuseAssignFunc((a, b) => a - b);

//  excuseAssignFunction((a,b) => a + b);

   Function returnFun = returnFunc();
   int result = returnFun(10,20);
   print("result=$result");//result=200
}


///返回值类型可以省略（开发中不推荐）
int sum(int v1, int v2){

  return v1 + v2;
}

///函数的可选参数：位置可选参数
void sayGoodbye([String name, String suffix]){

  print("Goodbye $name $suffix");
}
///函数的可选参数：命名可选参数
void sayHello({String name}){
  print("Hello $name");
}

///函数可以作为参数传递
void excuseFunc(Function function){
  function();
}
dynamic myAction({String name}){
  print("Hello $name");
}

///函数作为参数，指定函数类型
void excuseAssignFunc(int func(int a, int b)){
  int result = func(1,3);
  print("result=$result");
}

///开发中的建议:typedef给类型取个新名字
//typedef Calculate_ = int Function(int a, int b);
typedef int Calculate(int a, int b);
void excuseAssignFunction(Calculate cal){
  int result = cal(12,17);
  print("result=$result");
}

///函数作为返回值
Function returnFunc(){
  ///返回一个函数
  return (int a, int b){
    return a*b;
  };
}



