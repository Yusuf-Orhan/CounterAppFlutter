import 'package:flutter/material.dart';

class CounterModel extends ChangeNotifier{
  int counter = 0;
  int getCounter() => counter;


  void increase(){
    counter += 1;
    notifyListeners();
  }
  void decrease(){
    counter -= 1;
    notifyListeners();
  }
}