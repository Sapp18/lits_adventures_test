import 'package:flutter/material.dart';

class ExerciseTwoProvider extends ChangeNotifier {
  double _hoursWorked = 0.0;
  bool _showResult = false;
  double salary = 0.0;

  double get hoursWorked => _hoursWorked;
  set hoursWorked(double value) {
    _hoursWorked = value;
    notifyListeners();
  }

  bool get showResult => _showResult;
  set showResult(bool value) {
    _showResult = value;
    notifyListeners();
  }

  void calculate() {
    if (hoursWorked <= 40) {
      salary = hoursWorked * 10;
    } else {
      final double extraHours = hoursWorked - 40;
      salary = ((hoursWorked - extraHours) * 10) + (extraHours * 15);
    }
  }
}
