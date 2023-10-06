import 'package:flutter/material.dart';
class Data extends ChangeNotifier{
  Map data={
    'name': 'Sammy shark',
    'email': 'example@gmail.com',
    'age': 42
  };
  void updataAccount(input){
    data = input;
    notifyListeners();
  }
}