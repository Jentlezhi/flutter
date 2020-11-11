import 'package:flutter/material.dart';

void main(List<String> args) {
  
}

///dart中没有关键字来定义接口（没有关键字：interface/protocol）
///默认情况下所有的类都是隐式接口
///dart只支持单继承
///当我们把一个类当做接口使用时，那么实现这个接口的类必须实现这个接口中所有的方法
class Runner {
  void running(){}
}

class Flyer {
  void flying(){}
}

class SuperMan implements Runner, Flyer {
  @override
  void flying() {
    // TODO: implement flying
    print("SuperMan-flying");
  }

  @override
  void running() {
    // TODO: implement running
    print("SuperMan-running");
  }
}



