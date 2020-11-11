import 'package:flutter/material.dart';

void main(List<String> args) {
  
}

class Person {
  //一般情况下，只有私有
  String _name;
  String _idCardNo;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get idCardNo => _idCardNo;

  set idCardNo(String value) {
    _idCardNo = value;
  }
}



