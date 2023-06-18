import 'package:flutter/material.dart';

class CounterProvier extends ChangeNotifier {

  int _count=0;
  int get count =>   _count;

  void addCounter()
  {

    _count++;
    notifyListeners();


  }





}