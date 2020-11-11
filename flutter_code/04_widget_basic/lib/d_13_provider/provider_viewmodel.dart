import 'package:flutter/material.dart';

class ProviderViewModel extends ChangeNotifier {

  int _counter = 10;

  int get counter => _counter;

  set counter(int value) {
    _counter = value;
    //数据赋值：通知所有的监听者
    notifyListeners();
  }
}

class UserModel {
  final String name;
  final int age;
  UserModel({this.name, this.age});
}

class ProviderViewModel2 with ChangeNotifier {

  ProviderViewModel2(this._userModel);
  UserModel _userModel;

  UserModel get userModel => _userModel;

  set userModel(UserModel value) {
    _userModel = value;
    //数据赋值：通知所有的监听者
    notifyListeners();
  }
}