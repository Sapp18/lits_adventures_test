import 'dart:math' as math;
import 'package:flutter/material.dart';

class ExerciseOneProvider extends ChangeNotifier {
  double _diameter = 0.0;
  bool _showResult = false;
  double area = 0.0;
  double perimeter = 0.0;

  double get diameter => _diameter;
  set diameter(double value) {
    _diameter = value;
    notifyListeners();
  }

  bool get showResult => _showResult;
  set showResult(bool value) {
    _showResult = value;
    notifyListeners();
  }

  void calculate() {
    perimeter = math.pi * diameter;
    area = (math.pi * (math.pow(diameter, 2))) / 4;
  }
}
