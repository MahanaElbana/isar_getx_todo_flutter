import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int _count = 0;
  Color _selectedColor = Colors.grey;

  int get count => _count;
  Color get selectedColor => _selectedColor;
  void increment() {
    _count++;
    if (_count <= 33) {
      _selectedColor = Colors.orange;
    } else if (_count > 33 && _count <= 66) {
      _selectedColor = Colors.blue;
    } else {
      _selectedColor = Colors.green;
    }
    notifyListeners();
  }

  void restartCounter() {
    _count = 0;
    notifyListeners();
  }
}
