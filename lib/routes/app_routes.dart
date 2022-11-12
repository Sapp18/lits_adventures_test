import 'package:flutter/material.dart';
import 'package:lits_adventures_test/screens/screens.dart';

class AppRoutes {
  static const homeScreen = "homeScreen";
  static const exerciseOneScreen = "exerciseOneScreen";
  static const exerciseTwoScreen = "exerciseTwoScreen";
  static const exerciseThreeScreen = "exerciseThreeScreen";
  static const valueScreen = "valueScreen";

  static Map<String, Widget Function(BuildContext)> routes = {
    'homeScreen': (_) => const HomeScreen(),
    'exerciseOneScreen': (_) => const ExerciseOneScreen(),
    'exerciseTwoScreen': (_) => const ExerciseTwoScreen(),
    'exerciseThreeScreen': (_) => const ExerciseThreeScreen(),
    'valueScreen': (_) => const ValueScreen(),
  };
}
