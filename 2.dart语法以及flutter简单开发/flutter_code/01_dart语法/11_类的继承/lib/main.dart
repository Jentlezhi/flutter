import 'package:flutter/material.dart';

void main(List<String> args) {
  
}

class Person {

  String name;
  String idCard;
  Person(this.name, this.idCard);
}

//The superclass 'Person' doesn't have a zero argument constructor.
class Student extends Person {

  ///子类的构造方法在执行前，将隐含调用父类的无参默认构造方法（没有参数且与类同名的构造方法）。
  String studentNo;
  ///若父类没有无参默认构造方法，则子类的构造方法必须在初始化列表中通过super显式调用父类的某个构造方法。
  Student(this.studentNo, String name, String idCard) : super(name, idCard);
}



