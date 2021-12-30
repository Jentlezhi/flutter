import 'package:flutter/material.dart';

void main(List<String> args) {
  
//  Person p = Person('Jentle');
//  print("name=${p.name} age=${p.age}");
    const s1 = Student("Jack", 1);
    const s2 = Student("Jack", 1);
    const s3 = Student("Jack", 2);
    print(identical(s1, s2));//true
    print(identical(s1, s3));//false
}

class Student {
  final String name;
  final int age;
  const Student(this.name, this.age);
}

class Person {

  String name;
  int age;

  Person._internal(this.name, this.age);
  ///构造函数的重定向: 构造函数的相互调用
  Person(String name) : this._internal(name, 0);
}





