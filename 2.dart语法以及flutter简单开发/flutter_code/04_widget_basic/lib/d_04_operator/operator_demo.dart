
import 'package:flutter/material.dart';

class Role {
  final String name;
  final int _accessLevel;

  const Role(this.name, this._accessLevel);

  ///运算符重载
  bool operator > (Role other) {
    return this._accessLevel < other._accessLevel;
  }
}

class MyColorStr {

  final String name;
  const MyColorStr(this.name);
  static const MyColorStr orange = const MyColorStr("Orange");
  String operator [](int index) {
    return this.name + "$index";
  }

}