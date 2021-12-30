import 'package:flutter/material.dart';

void main(List<String> args) {
  ///此处用final是一种编码规范（可以用var替换），为了之后不被修改。
  final p1 = Person.withName("Jentle");
  final p2 = Person.withName("Jentle");
  print(identical(p1, p2));
}

class Person {

  String name;
  String address;

  static final Map<String,Person> _nameCache = {};
  static final Map<String,Person> _addressCache = {};

  factory Person.withName(String name){

    if(_nameCache.containsKey(name)){
       return _nameCache[name];
    }else{
      final p = Person(name, "default");
      _nameCache[name] = p;
      return p;
    }
  }

  factory Person.withAddress(String address){

    if(_addressCache.containsKey(address)){
      return _addressCache[address];
    }else{
      final p = Person("default", address);
      _addressCache[address] = p;
      return p;
    }
  }
  Person(this.name, this.address);
}



