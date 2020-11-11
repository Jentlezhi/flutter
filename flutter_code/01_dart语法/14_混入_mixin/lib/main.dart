import 'package:flutter/material.dart';

class Animal{}

mixin Walk {
  void walk() {
    print("会走路了");
  }
}

///这里限定了Dance必须在Walk之后
mixin Dance on Animal, Walk {
  void dance() {
    print("居然会跳舞了");
  }
}

//'Dance' can't be mixed onto 'Object' because 'Object' doesn't implement 'Animal'.
//class Person with Dance {}
//class Person with Walk, Dance {}

//'Dance' can't be mixed onto 'Animal' because 'Animal' doesn't implement 'Walk'.
//class Person extends Animal with Dance, Walk {}
class Person extends Animal with Walk, Dance {}

void main() {
  Person person = new Person();
  person.walk();
  person.dance();
}









