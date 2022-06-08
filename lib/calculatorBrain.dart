import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  int height = 10;
  int weight = 10;

  CalculatorBrain({required this.height, required this.weight});

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}

class Point {
  double x = 0;
  double y = 0;

  Point(double x, double y) {
    // See initializing parameters for a better way
    // to initialize instance variables.
    this.x = x;
    this.y = y;
  }
}
