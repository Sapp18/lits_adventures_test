/// Clase para la manipulación y el estado de las variables del ejercicio 1.
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

/// Funcion para calcular el perímetro y área del circulo.
/// Se ocupó la librería math, para obtener el valor de PI y para elevar un número al cuadrado.
  void calculate() {
    perimeter = math.pi * diameter;
    area = (math.pi * (math.pow(diameter, 2))) / 4;
  }
}
