import 'package:flutter/cupertino.dart';

class Counter with ChangeNotifier {
  int _value = 0;

  int get count => _value;

  void increment() {
    ++_value;
    notifyListeners();
  }
}
