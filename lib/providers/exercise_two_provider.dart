/// Clase para la manipulación y el estado de las variables del ejercicio 2.
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

/// Funcion para calcular el número de horas trabajadas.
/// Si las horas trabajadas es menor a 40, se le pagará a 10 la hora.
/// Sino se obtiene las horas extras trabajadas y se calculará el nuevo salario.
  void calculate() {
    if (hoursWorked <= 40) {
      salary = hoursWorked * 10;
    } else {
      final double extraHours = hoursWorked - 40;
      salary = ((hoursWorked - extraHours) * 10) + (extraHours * 15);
    }
  }
}
